@interface NSDictionary(SCNDeepCopy)
- (void)SCNMutableDeepCopy;
@end

@implementation NSDictionary(SCNDeepCopy)

- (void)SCNMutableDeepCopy
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = [self mutableCopy];
  allKeys = [v1 allKeys];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(allKeys);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v1 objectForKey:v7];
        if (objc_opt_respondsToSelector())
        {
          sCNMutableDeepCopy = [v8 SCNMutableDeepCopy];
          [v1 setValue:sCNMutableDeepCopy forKey:v7];
        }
      }

      v4 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  return v1;
}

@end