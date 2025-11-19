@interface SAHAActionRequest(HMLogging)
- (id)hm_shortDescription;
@end

@implementation SAHAActionRequest(HMLogging)

- (id)hm_shortDescription
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD60] string];
  v3 = *MEMORY[0x1E69C7D78];
  v4 = [a1 filter];
  v5 = [v4 hm_shortDescription];
  [v2 appendFormat:@"\t%@: %@", v3, v5];

  v6 = *MEMORY[0x1E69C7CF8];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "executionOrder")}];
  [v2 appendFormat:@"\n\t\t\t%@: %@", v6, v7];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [a1 actions];
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v21;
    v13 = *MEMORY[0x1E69C7CF0];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        if (v11)
        {
          [v2 appendFormat:@"\n\t\t\t\t [%tu]", v11, v19];
        }

        else
        {
          [v2 appendFormat:@"\n\t\t\t%@: [%tu]", v13, 0];
        }

        v16 = [v15 hm_shortDescription];
        [v2 appendFormat:@"\n\t\t\t\t %@", v16];

        ++v11;
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v17 = *MEMORY[0x1E69E9840];

  return v2;
}

@end