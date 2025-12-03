@interface BCSParser
+ (id)parseString:(id)string;
@end

@implementation BCSParser

+ (id)parseString:(id)string
{
  v19[9] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  _bcs_trimmedString = [stringCopy _bcs_trimmedString];
  if ([_bcs_trimmedString length])
  {
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v19[2] = objc_opt_class();
    v19[3] = objc_opt_class();
    v19[4] = objc_opt_class();
    v19[5] = objc_opt_class();
    v19[6] = objc_opt_class();
    v19[7] = objc_opt_class();
    v19[8] = objc_opt_class();
    [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:9];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v17 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v14 + 1) + 8 * i) parseString:{_bcs_trimmedString, v14}];
          if (v10)
          {
            v11 = v10;

            goto LABEL_12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v11 = [[BCSStringData alloc] initWithString:stringCopy];
LABEL_12:
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end