@interface NSMutableDictionary(NSKeyValueCoding)
- (uint64_t)setValue:()NSKeyValueCoding forKey:;
@end

@implementation NSMutableDictionary(NSKeyValueCoding)

- (uint64_t)setValue:()NSKeyValueCoding forKey:
{
  if (a3)
  {
    return [a1 setObject:? forKey:?];
  }

  else
  {
    return [a1 removeObjectForKey:a4];
  }
}

@end