@interface NSArray(ImageCaptureCoreAdditions)
- (uint64_t)copyGroupIntoDictionary:()ImageCaptureCoreAdditions;
@end

@implementation NSArray(ImageCaptureCoreAdditions)

- (uint64_t)copyGroupIntoDictionary:()ImageCaptureCoreAdditions
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    [(NSArray(ImageCaptureCoreAdditions) *)a2 copyGroupIntoDictionary:a1];
  }

  v6 = [MEMORY[0x1E695DF90] dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = a1;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = v5[2](v5, v12);
        if (v13)
        {
          v14 = [v6 objectForKeyedSubscript:{v13, v18}];
          if (!v14)
          {
            v14 = [MEMORY[0x1E695DF70] array];
            [v6 setObject:v14 forKeyedSubscript:v13];
          }

          [v14 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v15 = [v6 copy];
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)copyGroupIntoDictionary:()ImageCaptureCoreAdditions .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ICUtilities.m" lineNumber:457 description:{@"Invalid parameter not satisfying: %@", @"keyFromObjectCallback"}];
}

@end