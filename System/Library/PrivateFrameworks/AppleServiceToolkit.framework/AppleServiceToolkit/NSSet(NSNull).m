@interface NSSet(NSNull)
- (id)setDroppingNSNullValues;
@end

@implementation NSSet(NSNull)

- (id)setDroppingNSNullValues
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = a1;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = [v8 arrayDroppingNSNullValues];
LABEL_13:
            v10 = v9;
            [v2 addObject:{v9, v14}];

            goto LABEL_14;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = [v8 setDroppingNSNullValues];
            goto LABEL_13;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = [v8 dictionaryDroppingNSNullValues];
            goto LABEL_13;
          }

          [v2 addObject:{v8, v14}];
        }

LABEL_14:
        ++v7;
      }

      while (v5 != v7);
      v11 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v5 = v11;
    }

    while (v11);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v2;
}

@end