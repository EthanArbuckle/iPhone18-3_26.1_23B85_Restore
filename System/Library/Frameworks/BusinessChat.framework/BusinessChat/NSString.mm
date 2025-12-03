@interface NSString
- (id)normalizedBase64Encoded;
@end

@implementation NSString

- (id)normalizedBase64Encoded
{
  if (self)
  {
    v1 = [self copy];
    v2 = [v1 stringByReplacingOccurrencesOfString:@"-" withString:@"+"];

    v3 = [v2 stringByReplacingOccurrencesOfString:@"_" withString:@"/"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end