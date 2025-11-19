@interface NSDictionary(NSNull)
- (id)dictionaryDroppingNSNullValues;
@end

@implementation NSDictionary(NSNull)

- (id)dictionaryDroppingNSNullValues
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [a1 mutableCopy];
  v3 = [v2 allKeys];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [a1 objectForKeyedSubscript:v8];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 setObject:0 forKeyedSubscript:v8];
          goto LABEL_15;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 arrayDroppingNSNullValues];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = [v9 setDroppingNSNullValues];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_15;
            }

            v10 = [v9 dictionaryDroppingNSNullValues];
          }
        }

        v11 = v10;
        [v2 setObject:v10 forKeyedSubscript:v8];

LABEL_15:
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v2;
}

@end