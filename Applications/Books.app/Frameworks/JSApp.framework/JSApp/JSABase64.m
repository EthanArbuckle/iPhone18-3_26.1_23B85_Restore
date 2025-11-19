@interface JSABase64
+ (id)decode:(id)a3;
+ (id)encode:(id)a3;
@end

@implementation JSABase64

+ (id)encode:(id)a3
{
  v3 = [a3 dataUsingEncoding:4];
  v4 = [v3 base64EncodedStringWithOptions:0];

  return v4;
}

+ (id)decode:(id)a3
{
  v3 = a3;
  v4 = [[NSData alloc] initWithBase64EncodedString:v3 options:0];

  v5 = [[NSString alloc] initWithData:v4 encoding:4];

  return v5;
}

@end