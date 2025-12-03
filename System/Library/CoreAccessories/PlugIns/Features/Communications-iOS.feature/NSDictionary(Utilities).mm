@interface NSDictionary(Utilities)
+ (id)dictionaryOfChangesBetween:()Utilities and:;
@end

@implementation NSDictionary(Utilities)

+ (id)dictionaryOfChangesBetween:()Utilities and:
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (v6)
  {
    if (v5)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v21;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v21 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v20 + 1) + 8 * i);
            v14 = [v8 objectForKey:{v13, v20}];
            v15 = [v5 objectForKey:v13];
            if (([v15 isEqual:v14] & 1) == 0)
            {
              [dictionary setObject:v14 forKey:v13];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v10);
      }

      v16 = [dictionary copy];
    }

    else
    {
      v16 = v6;
    }

    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

@end