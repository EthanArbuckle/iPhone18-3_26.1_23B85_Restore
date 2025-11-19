@interface NSData
- (NSString)enui_text;
@end

@implementation NSData

- (NSString)enui_text
{
  v3 = [NSMutableString stringWithCapacity:2 * [(NSData *)self length]];
  v4 = [(NSData *)self bytes];
  if ([(NSData *)self length])
  {
    v5 = 0;
    do
    {
      [v3 appendFormat:@"%02X", v4[v5++]];
    }

    while (v5 < [(NSData *)self length]);
  }

  v6 = [v3 copy];

  return v6;
}

@end