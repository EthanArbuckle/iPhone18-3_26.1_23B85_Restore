@interface NSSet(CAMLWriter)
- (uint64_t)encodeWithCAMLWriter:()CAMLWriter;
@end

@implementation NSSet(CAMLWriter)

- (uint64_t)encodeWithCAMLWriter:()CAMLWriter
{
  allObjects = [self allObjects];
  result = [allObjects count];
  if (result)
  {
    v6 = result;
    for (i = 0; i != v6; ++i)
    {
      result = [a3 encodeObject:{objc_msgSend(allObjects, "objectAtIndex:", i)}];
    }
  }

  return result;
}

@end