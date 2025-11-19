@interface NSData(CAMLWriter)
- (uint64_t)encodeWithCAMLWriter:()CAMLWriter;
@end

@implementation NSData(CAMLWriter)

- (uint64_t)encodeWithCAMLWriter:()CAMLWriter
{
  v4 = [a1 base64EncodedStringWithOptions:0];

  return [a3 setElementContent:v4];
}

@end