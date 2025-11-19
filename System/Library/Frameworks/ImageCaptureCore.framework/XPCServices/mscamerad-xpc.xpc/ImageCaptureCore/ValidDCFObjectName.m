@interface ValidDCFObjectName
@end

@implementation ValidDCFObjectName

void ___ValidDCFObjectName_block_invoke(id a1)
{
  v4 = 0;
  v1 = [NSRegularExpression regularExpressionWithPattern:@"^[\\w]{4}(E|O|A){0 options:1}(\\d){4}\\.([\\w]){3 error:5}$", 16, &v4];
  v2 = v4;
  v3 = _ValidDCFObjectName_file;
  _ValidDCFObjectName_file = v1;
}

void ___ValidDCFObjectName_block_invoke_2(id a1)
{
  v4 = 0;
  v1 = [NSRegularExpression regularExpressionWithPattern:@"^([1-9]{1}[\\d]{2}[\\w]{5})$|^((?i)\\bDCIM\\b)$" options:16 error:&v4];
  v2 = v4;
  v3 = _ValidDCFObjectName_folder;
  _ValidDCFObjectName_folder = v1;
}

@end