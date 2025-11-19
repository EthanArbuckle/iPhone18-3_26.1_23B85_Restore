@interface NSData
- (id)hexString;
@end

@implementation NSData

- (id)hexString
{
  v3 = [NSMutableString stringWithCapacity:2 * [(NSData *)self length]];
  if ([(NSData *)self length])
  {
    v4 = 0;
    do
    {
      [v3 appendFormat:@"%02hhX", *(-[NSData bytes](self, "bytes") + v4++)];
    }

    while (v4 < [(NSData *)self length]);
  }

  return v3;
}

@end