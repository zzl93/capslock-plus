#Include lib_myMD5.ahk
#Include lib_json.ahk 

appKey := "1393610e519aa2c0"
appSecret := "PPNoxXg1BHJ66sbJcxfm8X80JmPAXvQi"
query := "sorry"
salt := A_MSec
sign := ZZL_MD5("1393610e519aa2c0%64%%64%64166PPNoxXg1BHJ66sbJcxfm8X80JmPAXvQi")
youdaoApiString=http://openapi.youdao.com/api?from=auto&to=auto&appKey=%appKey%
sendStr:=youdaoApiString . "&salt=" . salt . "&sign=" . sign . "&q=" . query
MsgBox % sign