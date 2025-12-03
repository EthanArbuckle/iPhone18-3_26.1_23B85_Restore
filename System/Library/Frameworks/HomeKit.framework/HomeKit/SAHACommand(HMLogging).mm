@interface SAHACommand(HMLogging)
- (id)hm_shortDescription;
@end

@implementation SAHACommand(HMLogging)

- (id)hm_shortDescription
{
  v43 = *MEMORY[0x1E69E9840];
  string = [MEMORY[0x1E696AD60] string];
  v3 = *MEMORY[0x1E69C7D78];
  filter = [self filter];
  hm_shortDescription = [filter hm_shortDescription];
  [string appendFormat:@"\t%@: %@", v3, hm_shortDescription];

  v6 = *MEMORY[0x1E69C7D50];
  commandTimeout = [self commandTimeout];
  [string appendFormat:@"\n\t%@: %@", v6, commandTimeout];

  v8 = *MEMORY[0x1E69C7D90];
  serverValidity = [self serverValidity];
  appendToShortDescription(string, v8, serverValidity);

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  selfCopy = self;
  actionRequests = [self actionRequests];
  v11 = [actionRequests countByEnumeratingWithState:&v37 objects:v42 count:16];
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
          objc_enumerationMutation(actionRequests);
        }

        v17 = *(*(&v37 + 1) + 8 * i);
        if (v13)
        {
          [string appendFormat:@"\n\t\t\t[%tu]", v13, v30];
        }

        else
        {
          [string appendFormat:@"\n\t%@: [%tu]", v15, 0];
        }

        hm_shortDescription2 = [v17 hm_shortDescription];
        [string appendFormat:@"\n\t\t%@", hm_shortDescription2];

        ++v13;
      }

      v12 = [actionRequests countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v12);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  actions = [selfCopy actions];
  v20 = [actions countByEnumeratingWithState:&v33 objects:v41 count:16];
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
          objc_enumerationMutation(actions);
        }

        hm_shortDescription3 = [*(*(&v33 + 1) + 8 * j) hm_shortDescription];
        v27 = hm_shortDescription3;
        if (v22)
        {
          [string appendFormat:@"\n\t\t[%tu] %@", v22, hm_shortDescription3, v31];
        }

        else
        {
          [string appendFormat:@"\n\t%@: [%tu] %@", v24, 0, hm_shortDescription3];
        }

        ++v22;
      }

      v21 = [actions countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v21);
  }

  v28 = *MEMORY[0x1E69E9840];

  return string;
}

@end