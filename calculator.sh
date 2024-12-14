#!/bin/bash

# Function to perform addition
addition() {
    echo "$1 + $2 = $(($1 + $2))"
}

# Function to perform subtraction
subtraction() {
    echo "$1 - $2 = $(($1 - $2))"
}

# Function to perform multiplication
multiplication() {
    echo "$1 * $2 = $(($1 * $2))"
}

# Function to perform division
division() {
    if [ $2 -eq 0 ]; then
        echo "Error: Division by zero is not allowed."
    else
        echo "$1 / $2 = $(($1 / $2))"
    fi
}

# Loop to display menu and get user input
while true; do
    echo "Select an operation:"
    echo "1. Addition (+)"
    echo "2. Subtraction (-)"
    echo "3. Multiplication (*)"
    echo "4. Division (/)"
    echo "5. Exit"
    read -p "Enter Operator (1-5): " choice

    # Exit the loop if the user chooses 5
    if [ "$choice" -eq 5 ]; then
        echo "Exiting the calculator. Goodbye!"
        break
    fi

    # Validate the user choice
    if [ "$choice" -lt 1 ] || [ "$choice" -gt 4 ]; then
        echo "Invalid choice, please select a number between 1 and 5."
        continue
    fi

    # Get two numbers as input
    read -p "Enter the first number: " num1
    read -p "Enter the second number: " num2

    # Perform the selected operation
    case $choice in
        1) addition $num1 $num2 ;;
        2) subtraction $num1 $num2 ;;
        3) multiplication $num1 $num2 ;;
        4) division $num1 $num2 ;;
    esac
done
