@interface NSArray(HAOpticalSamples)
+ (uint64_t)sr_arrayWithHAOpticalSamples:()HAOpticalSamples;
@end

@implementation NSArray(HAOpticalSamples)

+ (uint64_t)sr_arrayWithHAOpticalSamples:()HAOpticalSamples
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = [[SRPhotoplethysmogramOpticalSample alloc] initWithHAPPGOpticalSample:*(*(&v12 + 1) + 8 * v8)];
        [v4 addObject:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  result = [MEMORY[0x1E695DEC8] arrayWithArray:v4];
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

@end