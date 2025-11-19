@interface NSString(Social)
- (id)_SHA256String;
- (id)sl_urlEncodedSHA256;
@end

@implementation NSString(Social)

- (id)sl_urlEncodedSHA256
{
  v1 = [a1 _SHA256String];
  v2 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
  v3 = [v1 stringByAddingPercentEncodingWithAllowedCharacters:v2];

  v4 = [v3 stringByReplacingOccurrencesOfString:@"+" withString:@"-"];

  v5 = [v4 stringByReplacingOccurrencesOfString:@"/" withString:@"_"];

  v6 = [v5 stringByReplacingOccurrencesOfString:@"=" withString:&stru_1F41EC300];

  return v6;
}

- (id)_SHA256String
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = [a1 UTF8String];
  v2 = strlen(v1);
  CC_SHA256(v1, v2, md);
  v3 = [MEMORY[0x1E695DEF0] dataWithBytes:md length:32];
  v4 = [v3 base64EncodedStringWithOptions:0];

  return v4;
}

@end