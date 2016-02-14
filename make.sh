#!/bin/bash

if [[ "$OSTYPE" == 'msys' ]]; then
    # Msys installation, thus MinGW32
    echo \* Detected msys
    echo Building gps.exe
    g++ -std=c++11 -Wall -O2 -o gps main.cpp asar/asardll.c -static-libgcc -static-libstdc++
else
    echo \* Detected linux
    echo Building gps
    g++ -std=c++11 -Wall -ldl -O2 -o gps main.cpp asar/asardll.c
fi
echo \* Done
