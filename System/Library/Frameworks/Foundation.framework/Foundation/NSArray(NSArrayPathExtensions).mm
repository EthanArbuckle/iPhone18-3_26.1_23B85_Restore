@interface NSArray(NSArrayPathExtensions)
- (void)pathsMatchingExtensions:()NSArrayPathExtensions;
- (void)stringsByAppendingPathComponent:()NSArrayPathExtensions;
@end

@implementation NSArray(NSArrayPathExtensions)

- (void)pathsMatchingExtensions:()NSArrayPathExtensions
{
  v5 = [self count];
  array = [MEMORY[0x1E695DF70] array];
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      v8 = [self objectAtIndex:i];
      pathExtension = [v8 pathExtension];
      if (([pathExtension isEqual:&stru_1EEEFDF90] & 1) == 0 && objc_msgSend(a3, "containsObject:", pathExtension))
      {
        [array addObject:v8];
      }
    }
  }

  return array;
}

- (void)stringsByAppendingPathComponent:()NSArrayPathExtensions
{
  v5 = [self count];
  array = [MEMORY[0x1E695DF70] array];
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      [array addObject:{objc_msgSend(objc_msgSend(self, "objectAtIndex:", i), "stringByAppendingPathComponent:", a3)}];
    }
  }

  return array;
}

@end