@interface SAHAActionRequest(HMLogging)
- (id)hm_shortDescription;
@end

@implementation SAHAActionRequest(HMLogging)

- (id)hm_shortDescription
{
  v25 = *MEMORY[0x1E69E9840];
  string = [MEMORY[0x1E696AD60] string];
  v3 = *MEMORY[0x1E69C7D78];
  filter = [self filter];
  hm_shortDescription = [filter hm_shortDescription];
  [string appendFormat:@"\t%@: %@", v3, hm_shortDescription];

  v6 = *MEMORY[0x1E69C7CF8];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(self, "executionOrder")}];
  [string appendFormat:@"\n\t\t\t%@: %@", v6, v7];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  actions = [self actions];
  v9 = [actions countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(actions);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        if (v11)
        {
          [string appendFormat:@"\n\t\t\t\t [%tu]", v11, v19];
        }

        else
        {
          [string appendFormat:@"\n\t\t\t%@: [%tu]", v13, 0];
        }

        hm_shortDescription2 = [v15 hm_shortDescription];
        [string appendFormat:@"\n\t\t\t\t %@", hm_shortDescription2];

        ++v11;
      }

      v10 = [actions countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v17 = *MEMORY[0x1E69E9840];

  return string;
}

@end