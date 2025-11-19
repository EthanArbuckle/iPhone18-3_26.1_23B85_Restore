@interface NSURL(CAMLWriter)
- (uint64_t)encodeWithCAMLWriter:()CAMLWriter;
@end

@implementation NSURL(CAMLWriter)

- (uint64_t)encodeWithCAMLWriter:()CAMLWriter
{
  v4 = CFURLGetString(a1);

  return [a3 setElementContent:v4];
}

@end