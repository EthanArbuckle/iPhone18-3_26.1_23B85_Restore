@interface NSMutableArray(removeExactObject)
- (void)removeExactObject:()removeExactObject;
- (void)removeExactObjectsInArray:()removeExactObject;
@end

@implementation NSMutableArray(removeExactObject)

- (void)removeExactObject:()removeExactObject
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = a1;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = 0;
    v8 = *v12;
    while (2)
    {
      v9 = 0;
      v10 = v7;
      v7 += v6;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (*(*(&v11 + 1) + 8 * v9) == v4)
        {

          [v5 removeObjectAtIndex:{v10, v11}];
          goto LABEL_11;
        }

        ++v9;
        ++v10;
      }

      while (v6 != v9);
      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)removeExactObjectsInArray:()removeExactObject
{
  v26 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v4 = [MEMORY[0x277CCAB58] indexSet];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = a1;
  v5 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    LODWORD(v6) = 0;
    v7 = *v21;
    do
    {
      v8 = 0;
      v6 = v6;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * v8);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v10 = v15;
        v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v11)
        {
          v12 = *v17;
          do
          {
            v13 = 0;
            do
            {
              if (*v17 != v12)
              {
                objc_enumerationMutation(v10);
              }

              if (v9 == *(*(&v16 + 1) + 8 * v13))
              {
                [v4 addIndex:v6];
              }

              ++v13;
            }

            while (v11 != v13);
            v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v11);
        }

        ++v6;
        ++v8;
      }

      while (v8 != v5);
      v5 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v5);
  }

  [obj removeObjectsAtIndexes:v4];
}

@end