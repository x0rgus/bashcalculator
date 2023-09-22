#!/bin/bash
clear
default_sleep=1

function soma()
{
    r=$(($1 + $2))
    echo "$1 + $2 = $r"
    sleep $default_sleep
}
function sub()
{
    r=$(($1 - $2))
    echo "subtracao = $r"
    sleep $default_sleep
}
function div()
{
    r=$(($1 / $2))
    echo "divisao = $r"
    sleep $default_sleep
}
function mult()
{
    r=$(($1 * $2))
    echo "multiplicacao = $r"
    sleep $default_sleep
}
# funçoes cli
function greet()
{
    echo "1-soma"
    echo "2-subtracao"
    echo "3-divisao"
    echo "4-multiplicao"
    read input_oper
}
function get_operands()
{
    echo "digite o primeiro valor:"
    read x
    echo "digite o segundo valor:"
    read y
}
function calc()
{
    case $input_oper in
    1)
        soma $x $y
    ;;
    2)
        sub $x $y
    ;;
    3)
        div $x $y
    ;;
    4)
        mult $x $y
    ;;
    *)
        echo "opcao invalida!"
    ;;
    esac
}
function pause()
{
    read -p "Aperte enter para continuar..."
}
run_flag=1

while [ $run_flag -eq 1 ]
do
    greet
    get_operands
    calc
    pause
    clear
    echo "Realizar outra operação? 1- sim 2- não"
    read run_flag
    sleep $default_sleep
done
