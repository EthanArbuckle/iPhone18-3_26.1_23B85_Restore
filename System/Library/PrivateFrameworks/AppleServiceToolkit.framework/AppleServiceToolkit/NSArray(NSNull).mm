@interface NSArray(NSNull)
- (id)arrayDroppingNSNullValues;
@end

@implementation NSArray(NSNull)

- (id)arrayDroppingNSNullValues
{
  v19 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            arrayDroppingNSNullValues = [v8 arrayDroppingNSNullValues];
LABEL_13:
            v10 = arrayDroppingNSNullValues;
            [array addObject:{arrayDroppingNSNullValues, v14}];

            goto LABEL_14;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            arrayDroppingNSNullValues = [v8 setDroppingNSNullValues];
            goto LABEL_13;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            arrayDroppingNSNullValues = [v8 dictionaryDroppingNSNullValues];
            goto LABEL_13;
          }

          [array addObject:{v8, v14}];
        }

LABEL_14:
        ++v7;
      }

      while (v5 != v7);
      v11 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
      v5 = v11;
    }

    while (v11);
  }

  v12 = *MEMORY[0x277D85DE8];

  return array;
}

@end