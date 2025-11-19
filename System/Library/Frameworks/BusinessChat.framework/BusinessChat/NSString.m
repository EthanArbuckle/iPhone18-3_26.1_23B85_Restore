@interface NSString
- (id)normalizedBase64Encoded;
@end

@implementation NSString

- (id)normalizedBase64Encoded
{
  if (a1)
  {
    v1 = [a1 copy];
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