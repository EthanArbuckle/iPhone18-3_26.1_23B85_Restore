@interface NSObject(AskPermission)
- (id)ap_generateDescriptionWithSubObjects:()AskPermission;
@end

@implementation NSObject(AskPermission)

- (id)ap_generateDescriptionWithSubObjects:()AskPermission
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"<%@: %p>", objc_opt_class(), a1];
  if ([v4 count])
  {
    [v5 appendString:@" {\n"];
    v6 = [v4 allKeys];
    v7 = [v6 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          v14 = [v4 objectForKeyedSubscript:v13];
          [v5 appendFormat:@"  %@ = %@, \n", v13, v14, v17];
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    [v5 appendString:@"}"];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

@end