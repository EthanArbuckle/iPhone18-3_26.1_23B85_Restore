@interface NSMutableDictionary(ASDTUtils)
- (void)asdtAddMissingEntriesFromDictionary:()ASDTUtils;
@end

@implementation NSMutableDictionary(ASDTUtils)

- (void)asdtAddMissingEntriesFromDictionary:()ASDTUtils
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allKeys = [v4 allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [self objectForKey:v10];

        if (!v11)
        {
          v12 = [v4 objectForKey:v10];
          [self setObject:v12 forKey:v10];
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end