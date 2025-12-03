@interface ECHTMLStringAndMIMECharset(MessageUIAdditions)
- (uint64_t)initWithCoder:()MessageUIAdditions;
- (void)encodeWithCoder:()MessageUIAdditions;
@end

@implementation ECHTMLStringAndMIMECharset(MessageUIAdditions)

- (void)encodeWithCoder:()MessageUIAdditions
{
  v6 = a3;
  string = [self string];
  [v6 encodeObject:string forKey:@"String"];

  charset = [self charset];
  [v6 encodeObject:charset forKey:@"Charset"];
}

- (uint64_t)initWithCoder:()MessageUIAdditions
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"String"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Charset"];
  v7 = [self initWithString:v5 charset:v6];

  return v7;
}

@end