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
  actionResults = [self actionResults];
  v4 = [v2 arrayWithCapacity:{objc_msgSend(actionResults, "count")}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  actionResults2 = [self actionResults];
  v6 = [actionResults2 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(actionResults2);
        }

        v10 = MEMORY[0x1E696AEC0];
        hm_shortDescription = [*(*(&v15 + 1) + 8 * i) hm_shortDescription];
        v12 = [v10 stringWithFormat:@"\n\t%@", hm_shortDescription];
        [v4 addObject:v12];
      }

      v7 = [actionResults2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)hm_headerDescription
{
  string = [MEMORY[0x1E696AD60] string];
  v3 = *MEMORY[0x1E69C7D60];
  commandOutcome = [self commandOutcome];
  appendToShortDescription(string, v3, commandOutcome);

  v5 = *MEMORY[0x1E69C7D58];
  clientValidity = [self clientValidity];
  appendToShortDescription(string, v5, clientValidity);

  v7 = *MEMORY[0x1E69C7D70];
  serverValidity = [self serverValidity];
  appendToShortDescription(string, v7, serverValidity);

  v9 = *MEMORY[0x1E69C7D68];
  homeIdentifier = [self homeIdentifier];
  appendToShortDescription(string, v9, homeIdentifier);

  return string;
}

- (id)hm_shortDescription
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AD60];
  hm_headerDescription = [self hm_headerDescription];
  v4 = [v2 stringWithString:hm_headerDescription];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  actionResults = [self actionResults];
  v6 = [actionResults countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(actionResults);
        }

        hm_shortDescription = [*(*(&v13 + 1) + 8 * i) hm_shortDescription];
        [v4 appendFormat:@"\n\t%@", hm_shortDescription];
      }

      v7 = [actionResults countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

@end