@interface NSArray(ABSExtensions)
- (id)abs_arrayByMappingTransform:()ABSExtensions;
@end

@implementation NSArray(ABSExtensions)

- (id)abs_arrayByMappingTransform:()ABSExtensions
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    array = [MEMORY[0x277CBEB18] array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    selfCopy = self;
    v7 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(selfCopy);
          }

          v11 = v4[2](v4, *(*(&v14 + 1) + 8 * i));
          if (v11)
          {
            [array addObject:{v11, v14}];
          }
        }

        v8 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    v12 = [array copy];
  }

  else
  {
    v12 = [self copy];
  }

  return v12;
}

@end