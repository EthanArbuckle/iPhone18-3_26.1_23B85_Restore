@interface JSABase64
+ (id)decode:(id)decode;
+ (id)encode:(id)encode;
@end

@implementation JSABase64

+ (id)encode:(id)encode
{
  v3 = [encode dataUsingEncoding:4];
  v4 = [v3 base64EncodedStringWithOptions:0];

  return v4;
}

+ (id)decode:(id)decode
{
  decodeCopy = decode;
  v4 = [[NSData alloc] initWithBase64EncodedString:decodeCopy options:0];

  v5 = [[NSString alloc] initWithData:v4 encoding:4];

  return v5;
}

@end