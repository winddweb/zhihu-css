#!/bin/bash
output='css/zhihu-question-stylish.css'
file='css/zhihu-question.css'
insertBegin='@-moz-document url-prefix("https://www.zhihu.com/question") {\n'

if [ ! -e "$output" ] ; then
    touch "$output"
fi
tail -n +2 "$file" > "$output"
gsed -i "1i $insertBegin" $output
gsed -i '$s/$/\n}/' $output