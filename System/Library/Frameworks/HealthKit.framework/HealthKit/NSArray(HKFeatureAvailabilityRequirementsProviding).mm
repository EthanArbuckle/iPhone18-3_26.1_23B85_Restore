@interface NSArray(HKFeatureAvailabilityRequirementsProviding)
- (id)_hk_featureAvailabilityRequirements;
@end

@implementation NSArray(HKFeatureAvailabilityRequirementsProviding)

- (id)_hk_featureAvailabilityRequirements
{
  v20 = *MEMORY[0x1E69E9840];
  if ([a1 count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = a1;
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

          v10 = *(*(&v15 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v11 = [v10 _hk_featureAvailabilityRequirements];
            [v4 addObjectsFromArray:v11];
          }

          else
          {
            v11 = [MEMORY[0x1E696AAA8] currentHandler];
            [v11 handleFailureInMethod:a2 object:v5 file:@"HKFeatureAvailabilityRequirementProviding.m" lineNumber:26 description:{@"Unexpected array element %@ does not respond to @selector(_hk_featureAvailabilityRequirements)", v10}];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    v12 = [v4 copy];
  }

  else
  {
    v12 = a1;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

@end