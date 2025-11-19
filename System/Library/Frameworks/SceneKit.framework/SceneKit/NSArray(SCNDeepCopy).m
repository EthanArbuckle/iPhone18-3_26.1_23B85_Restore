@interface NSArray(SCNDeepCopy)
- (void)SCNMutableDeepCopy;
@end

@implementation NSArray(SCNDeepCopy)

- (void)SCNMutableDeepCopy
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [a1 mutableCopy];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    LODWORD(v5) = 0;
    v6 = *v12;
    do
    {
      v7 = 0;
      v5 = v5;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(a1);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          v9 = [v8 SCNMutableDeepCopy];
          [v2 replaceObjectAtIndex:v5 withObject:v9];
        }

        ++v5;
        ++v7;
      }

      while (v4 != v7);
      v4 = [a1 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  return v2;
}

@end