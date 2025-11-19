@interface SAHACommand(HMLogging)
- (id)hm_shortDescription;
@end

@implementation SAHACommand(HMLogging)

- (id)hm_shortDescription
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD60] string];
  v3 = *MEMORY[0x1E69C7D78];
  v4 = [a1 filter];
  v5 = [v4 hm_shortDescription];
  [v2 appendFormat:@"\t%@: %@", v3, v5];

  v6 = *MEMORY[0x1E69C7D50];
  v7 = [a1 commandTimeout];
  [v2 appendFormat:@"\n\t%@: %@", v6, v7];

  v8 = *MEMORY[0x1E69C7D90];
  v9 = [a1 serverValidity];
  appendToShortDescription(v2, v8, v9);

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v32 = a1;
  v10 = [a1 actionRequests];
  v11 = [v10 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v38;
    v15 = *MEMORY[0x1E69C7D40];
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v38 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v37 + 1) + 8 * i);
        if (v13)
        {
          [v2 appendFormat:@"\n\t\t\t[%tu]", v13, v30];
        }

        else
        {
          [v2 appendFormat:@"\n\t%@: [%tu]", v15, 0];
        }

        v18 = [v17 hm_shortDescription];
        [v2 appendFormat:@"\n\t\t%@", v18];

        ++v13;
      }

      v12 = [v10 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v12);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v19 = [v32 actions];
  v20 = [v19 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = 0;
    v23 = *v34;
    v24 = *MEMORY[0x1E69C7D48];
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v34 != v23)
        {
          objc_enumerationMutation(v19);
        }

        v26 = [*(*(&v33 + 1) + 8 * j) hm_shortDescription];
        v27 = v26;
        if (v22)
        {
          [v2 appendFormat:@"\n\t\t[%tu] %@", v22, v26, v31];
        }

        else
        {
          [v2 appendFormat:@"\n\t%@: [%tu] %@", v24, 0, v26];
        }

        ++v22;
      }

      v21 = [v19 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v21);
  }

  v28 = *MEMORY[0x1E69E9840];

  return v2;
}

@end