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
  uRLQueryValueAllowedCharacterSet = [MEMORY[0x1E696AEC0] URLQueryValueAllowedCharacterSet];
  v3 = [self stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryValueAllowedCharacterSet];

  return v3;
}

- (id)aaf_toBase64DecodedData
{
  v2 = objc_alloc(MEMORY[0x1E695DEF0]);
  aaf_base64Padded = [self aaf_base64Padded];
  v4 = [v2 initWithBase64EncodedString:aaf_base64Padded options:0];

  return v4;
}

- (id)aaf_toBase64DecodedString
{
  aaf_toBase64DecodedData = [self aaf_toBase64DecodedData];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:aaf_toBase64DecodedData encoding:4];

  return v2;
}

- (id)aaf_toBase64EncodedString
{
  v1 = [self dataUsingEncoding:4 allowLossyConversion:0];
  v2 = [v1 base64EncodedStringWithOptions:0];

  return v2;
}

- (id)aaf_base64Padded
{
  v2 = [self length] & 3;
  if (v2 == 3)
  {
    v3 = @"=";
    goto LABEL_5;
  }

  if (v2 == 2)
  {
    v3 = @"==";
LABEL_5:
    selfCopy = [self stringByAppendingString:v3];
    goto LABEL_7;
  }

  selfCopy = self;
LABEL_7:

  return selfCopy;
}

- (id)aaf_toSHA256Data
{
  v7 = *MEMORY[0x1E69E9840];
  uTF8String = [self UTF8String];
  v2 = strlen(uTF8String);
  CC_SHA256(uTF8String, v2, md);
  v3 = [MEMORY[0x1E695DEF0] dataWithBytes:md length:32];
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)aaf_toSHA256String
{
  aaf_toSHA256Data = [self aaf_toSHA256Data];
  aaf_toHexString = [aaf_toSHA256Data aaf_toHexString];

  return aaf_toHexString;
}

@end