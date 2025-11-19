@interface NSDictionary(CAMLWriter)
- (uint64_t)encodeWithCAMLWriter:()CAMLWriter;
@end

@implementation NSDictionary(CAMLWriter)

- (uint64_t)encodeWithCAMLWriter:()CAMLWriter
{
  v5 = [objc_msgSend(a1 "allKeys")];
  result = [v5 count];
  if (result)
  {
    v7 = result;
    for (i = 0; i != v7; ++i)
    {
      v9 = [v5 objectAtIndex:i];
      v10 = [a1 objectForKey:v9];
      [a3 beginPropertyElement:v9];
      [a3 encodeObject:v10];
      result = [a3 endElement];
    }
  }

  return result;
}

@end