@interface NSArray(HKFeatureAvailabilityRequirementsProviding)
- (id)_hk_featureAvailabilityRequirements;
@end

@implementation NSArray(HKFeatureAvailabilityRequirementsProviding)

- (id)_hk_featureAvailabilityRequirements
{
  v20 = *MEMORY[0x1E69E9840];
  if ([self count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    selfCopy = self;
    v6 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(selfCopy);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            _hk_featureAvailabilityRequirements = [v10 _hk_featureAvailabilityRequirements];
            [array addObjectsFromArray:_hk_featureAvailabilityRequirements];
          }

          else
          {
            _hk_featureAvailabilityRequirements = [MEMORY[0x1E696AAA8] currentHandler];
            [_hk_featureAvailabilityRequirements handleFailureInMethod:a2 object:selfCopy file:@"HKFeatureAvailabilityRequirementProviding.m" lineNumber:26 description:{@"Unexpected array element %@ does not respond to @selector(_hk_featureAvailabilityRequirements)", v10}];
          }
        }

        v7 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    selfCopy2 = [array copy];
  }

  else
  {
    selfCopy2 = self;
  }

  v13 = *MEMORY[0x1E69E9840];

  return selfCopy2;
}

@end