@interface NSString(AAAFoundation)
+ (id)URLQueryValueAllowedCharacterSet;
- (id)aaf_base64Padded;
- (id)aaf_toBase64DecodedData;
- (id)aaf_toBase64DecodedString;
- (id)aaf_toBase64EncodedString;
- (id)aaf_toSHA256Data;
- (id)aaf_toSHA256String;
- (id)aaf_urlEncoded;
@end

@implementation NSString(AAAFoundation)

+ (id)URLQueryValueAllowedCharacterSet
{
  if (URLQueryValueAllowedCharacterSet__onceToken != -1)
  {
    +[NSString(AAAFoundation) URLQueryValueAllowedCharacterSet];
  }

  v1 = URLQueryValueAllowedCharacterSet__URLQueryValueAllowedCharacterSet;

  return v1;
}

- (id)aaf_urlEncoded
{
  v2 = [MEMORY[0x1E696AEC0] URLQueryValueAllowedCharacterSet];
  v3 = [a1 stringByAddingPercentEncodingWithAllowedCharacters:v2];

  return v3;
}

- (id)aaf_toBase64DecodedData
{
  v2 = objc_alloc(MEMORY[0x1E695DEF0]);
  v3 = [a1 aaf_base64Padded];
  v4 = [v2 initWithBase64EncodedString:v3 options:0];

  return v4;
}

- (id)aaf_toBase64DecodedString
{
  v1 = [a1 aaf_toBase64DecodedData];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v1 encoding:4];

  return v2;
}

- (id)aaf_toBase64EncodedString
{
  v1 = [a1 dataUsingEncoding:4 allowLossyConversion:0];
  v2 = [v1 base64EncodedStringWithOptions:0];

  return v2;
}

- (id)aaf_base64Padded
{
  v2 = [a1 length] & 3;
  if (v2 == 3)
  {
    v3 = @"=";
    goto LABEL_5;
  }

  if (v2 == 2)
  {
    v3 = @"==";
LABEL_5:
    v4 = [a1 stringByAppendingString:v3];
    goto LABEL_7;
  }

  v4 = a1;
LABEL_7:

  return v4;
}

- (id)aaf_toSHA256Data
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = [a1 UTF8String];
  v2 = strlen(v1);
  CC_SHA256(v1, v2, md);
  v3 = [MEMORY[0x1E695DEF0] dataWithBytes:md length:32];
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)aaf_toSHA256String
{
  v1 = [a1 aaf_toSHA256Data];
  v2 = [v1 aaf_toHexString];

  return v2;
}

@end