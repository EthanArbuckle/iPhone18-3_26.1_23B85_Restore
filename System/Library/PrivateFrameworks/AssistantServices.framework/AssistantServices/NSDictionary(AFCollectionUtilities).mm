@interface NSDictionary(AFCollectionUtilities)
- (id)_af_lenient:()AFCollectionUtilities map:;
@end

@implementation NSDictionary(AFCollectionUtilities)

- (id)_af_lenient:()AFCollectionUtilities map:
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  selfCopy = self;
  v8 = [selfCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(selfCopy);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [selfCopy objectForKeyedSubscript:{v12, v18}];
        v14 = v5[2](v5, v12, v13);

        if (v14)
        {
          [v6 setObject:v14 forKey:v12];
        }
      }

      v9 = [selfCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v15 = [v6 copy];
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

@end