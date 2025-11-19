@interface SAHACommandCompleted(HMLogging)
- (id)hm_contentDescription;
- (id)hm_headerDescription;
- (id)hm_shortDescription;
@end

@implementation SAHACommandCompleted(HMLogging)

- (id)hm_contentDescription
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DF70];
  v3 = [a1 actionResults];
  v4 = [v2 arrayWithCapacity:{objc_msgSend(v3, "count")}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [a1 actionResults];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = MEMORY[0x1E696AEC0];
        v11 = [*(*(&v15 + 1) + 8 * i) hm_shortDescription];
        v12 = [v10 stringWithFormat:@"\n\t%@", v11];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)hm_headerDescription
{
  v2 = [MEMORY[0x1E696AD60] string];
  v3 = *MEMORY[0x1E69C7D60];
  v4 = [a1 commandOutcome];
  appendToShortDescription(v2, v3, v4);

  v5 = *MEMORY[0x1E69C7D58];
  v6 = [a1 clientValidity];
  appendToShortDescription(v2, v5, v6);

  v7 = *MEMORY[0x1E69C7D70];
  v8 = [a1 serverValidity];
  appendToShortDescription(v2, v7, v8);

  v9 = *MEMORY[0x1E69C7D68];
  v10 = [a1 homeIdentifier];
  appendToShortDescription(v2, v9, v10);

  return v2;
}

- (id)hm_shortDescription
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AD60];
  v3 = [a1 hm_headerDescription];
  v4 = [v2 stringWithString:v3];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [a1 actionResults];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) hm_shortDescription];
        [v4 appendFormat:@"\n\t%@", v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

@end