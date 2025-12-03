@interface VSAuthenticationSchemeValueTransformer
- (id)reverseTransformedValue:(id)value;
- (id)transformedValue:(id)value;
@end

@implementation VSAuthenticationSchemeValueTransformer

- (id)transformedValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [valueCopy componentsJoinedByString:{@", "}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)reverseTransformedValue:(id)value
{
  v28 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v4 = valueCopy;
  if (valueCopy)
  {
    v5 = valueCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v6 = MEMORY[0x277CBEAD8];
        v7 = *MEMORY[0x277CBE660];
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        [v6 raise:v7 format:{@"Unexpectedly, value was %@, instead of NSString.", v9}];
      }

      v10 = [v5 componentsSeparatedByString:{@", "}];
      if ([v10 count])
      {
        v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v22 = v10;
        v12 = v10;
        v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v24;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v24 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v23 + 1) + 8 * i);
              whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
              v19 = [v17 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

              if ([v19 length])
              {
                [v11 addObject:v19];
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
          }

          while (v14);
        }

        if ([v11 count])
        {
          v20 = v11;
        }

        else
        {
          v20 = 0;
        }

        v10 = v22;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

@end