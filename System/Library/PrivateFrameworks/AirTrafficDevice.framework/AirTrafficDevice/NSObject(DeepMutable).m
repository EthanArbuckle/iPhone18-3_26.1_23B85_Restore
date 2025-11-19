@interface NSObject(DeepMutable)
- (id)deepMutableObject;
@end

@implementation NSObject(DeepMutable)

- (id)deepMutableObject
{
  v27 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a1, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v3 = a1;
    v4 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v22;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v22 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [*(*(&v21 + 1) + 8 * i) deepMutableObject];
          [v2 addObject:v8];
        }

        v5 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v5);
    }

LABEL_18:

    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(a1, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v3 = a1;
    v9 = [v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (j = 0; j != v10; ++j)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v3);
          }

          v13 = *(*(&v17 + 1) + 8 * j);
          v14 = [v3 objectForKey:{v13, v17}];
          v15 = [v14 deepMutableObject];
          [v2 setObject:v15 forKey:v13];
        }

        v10 = [v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v10);
    }

    goto LABEL_18;
  }

  v2 = a1;
LABEL_20:

  return v2;
}

@end