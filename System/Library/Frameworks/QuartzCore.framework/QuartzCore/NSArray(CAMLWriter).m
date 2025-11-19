@interface NSArray(CAMLWriter)
- (uint64_t)encodeWithCAMLWriter:()CAMLWriter;
@end

@implementation NSArray(CAMLWriter)

- (uint64_t)encodeWithCAMLWriter:()CAMLWriter
{
  result = [a1 count];
  if (result)
  {
    v6 = result;
    for (i = 0; i != v6; ++i)
    {
      result = [a3 encodeObject:{objc_msgSend(a1, "objectAtIndex:", i)}];
    }
  }

  return result;
}

@end