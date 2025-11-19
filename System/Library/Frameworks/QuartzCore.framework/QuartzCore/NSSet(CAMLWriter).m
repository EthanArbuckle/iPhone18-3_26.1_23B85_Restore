@interface NSSet(CAMLWriter)
- (uint64_t)encodeWithCAMLWriter:()CAMLWriter;
@end

@implementation NSSet(CAMLWriter)

- (uint64_t)encodeWithCAMLWriter:()CAMLWriter
{
  v4 = [a1 allObjects];
  result = [v4 count];
  if (result)
  {
    v6 = result;
    for (i = 0; i != v6; ++i)
    {
      result = [a3 encodeObject:{objc_msgSend(v4, "objectAtIndex:", i)}];
    }
  }

  return result;
}

@end