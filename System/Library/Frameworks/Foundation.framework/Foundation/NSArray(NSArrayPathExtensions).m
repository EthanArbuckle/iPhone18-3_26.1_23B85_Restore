@interface NSArray(NSArrayPathExtensions)
- (void)pathsMatchingExtensions:()NSArrayPathExtensions;
- (void)stringsByAppendingPathComponent:()NSArrayPathExtensions;
@end

@implementation NSArray(NSArrayPathExtensions)

- (void)pathsMatchingExtensions:()NSArrayPathExtensions
{
  v5 = [a1 count];
  v6 = [MEMORY[0x1E695DF70] array];
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      v8 = [a1 objectAtIndex:i];
      v9 = [v8 pathExtension];
      if (([v9 isEqual:&stru_1EEEFDF90] & 1) == 0 && objc_msgSend(a3, "containsObject:", v9))
      {
        [v6 addObject:v8];
      }
    }
  }

  return v6;
}

- (void)stringsByAppendingPathComponent:()NSArrayPathExtensions
{
  v5 = [a1 count];
  v6 = [MEMORY[0x1E695DF70] array];
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      [v6 addObject:{objc_msgSend(objc_msgSend(a1, "objectAtIndex:", i), "stringByAppendingPathComponent:", a3)}];
    }
  }

  return v6;
}

@end