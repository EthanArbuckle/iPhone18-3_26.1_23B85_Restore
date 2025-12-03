@interface HKFeatureOnboardingRecord
- (BOOL)isEqual:(id)equal;
- (HKFeatureOnboardingRecord)initWithCoder:(id)coder;
- (HKFeatureOnboardingRecord)initWithOnboardingState:(int64_t)state onboardingCompletion:(id)completion featureSettings:(id)settings;
- (HKFeatureOnboardingRecord)initWithOnboardingState:(int64_t)state onboardingCompletionsByState:(id)byState featureSettings:(id)settings;
- (HKOnboardingCompletion)onboardingCompletion;
- (NSArray)allOnboardingCompletionsRegardlessOfSupportedState;
- (NSDate)earliestDateOfAnyOnboardingCompletion;
- (NSSet)allOnboardedCountryCodesRegardlessOfSupportedState;
- (NSSet)onboardedCountryCodesForOnboardingState;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKFeatureOnboardingRecord

- (HKFeatureOnboardingRecord)initWithOnboardingState:(int64_t)state onboardingCompletion:(id)completion featureSettings:(id)settings
{
  v23[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (completionCopy)
  {
    v9 = MEMORY[0x1E696AD98];
    settingsCopy = settings;
    v11 = [v9 numberWithInteger:state];
    v22 = v11;
    v12 = [completionCopy copy];
    v21 = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    v23[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v15 = [(HKFeatureOnboardingRecord *)self initWithOnboardingState:state onboardingCompletionsByState:v14 featureSettings:settingsCopy];

    v16 = v15;
  }

  else
  {
    settingsCopy2 = settings;
    v18 = [(HKFeatureOnboardingRecord *)self initWithOnboardingState:state onboardingCompletionsByState:MEMORY[0x1E695E0F8] featureSettings:settingsCopy2];

    v16 = v18;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

- (HKFeatureOnboardingRecord)initWithOnboardingState:(int64_t)state onboardingCompletionsByState:(id)byState featureSettings:(id)settings
{
  byStateCopy = byState;
  settingsCopy = settings;
  v17.receiver = self;
  v17.super_class = HKFeatureOnboardingRecord;
  v10 = [(HKFeatureOnboardingRecord *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_onboardingState = state;
    v12 = [byStateCopy copy];
    onboardingCompletionsByState = v11->_onboardingCompletionsByState;
    v11->_onboardingCompletionsByState = v12;

    v14 = [settingsCopy copy];
    featureSettings = v11->_featureSettings;
    v11->_featureSettings = v14;
  }

  return v11;
}

- (HKOnboardingCompletion)onboardingCompletion
{
  onboardingCompletionsByState = self->_onboardingCompletionsByState;
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_onboardingState];
  v4 = [(NSDictionary *)onboardingCompletionsByState objectForKeyedSubscript:v3];
  firstObject = [v4 firstObject];

  return firstObject;
}

- (NSDate)earliestDateOfAnyOnboardingCompletion
{
  v29 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(NSDictionary *)self->_onboardingCompletionsByState allValues];
  v2 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v24;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v20;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v20 != v11)
              {
                objc_enumerationMutation(v8);
              }

              completionDate = [*(*(&v19 + 1) + 8 * j) completionDate];
              v14 = completionDate;
              if (v4)
              {
                v15 = [v4 earlierDate:completionDate];

                v4 = v15;
              }

              else
              {
                v4 = completionDate;
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v10);
        }
      }

      v3 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v4;
}

- (NSSet)onboardedCountryCodesForOnboardingState
{
  v2 = MEMORY[0x1E695DFD8];
  onboardingCompletionsByState = self->_onboardingCompletionsByState;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_onboardingState];
  v5 = [(NSDictionary *)onboardingCompletionsByState objectForKeyedSubscript:v4];
  v6 = [v5 hk_map:&__block_literal_global_60];
  v7 = [v2 setWithArray:v6];

  return v7;
}

- (NSSet)allOnboardedCountryCodesRegardlessOfSupportedState
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allValues = [(NSDictionary *)self->_onboardingCompletionsByState allValues];
  v5 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) hk_map:&__block_literal_global_11];
        [v3 addObjectsFromArray:v9];
      }

      v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (NSArray)allOnboardingCompletionsRegardlessOfSupportedState
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allValues = [(NSDictionary *)self->_onboardingCompletionsByState allValues];
  v5 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        [v3 addObjectsFromArray:*(*(&v12 + 1) + 8 * i)];
      }

      v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v9 = [v3 copy];
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v12.receiver = self;
  v12.super_class = HKFeatureOnboardingRecord;
  if (![(HKFeatureOnboardingRecord *)&v12 isEqual:equalCopy])
  {
    if (![equalCopy isMemberOfClass:objc_opt_class()])
    {
      v5 = 0;
      goto LABEL_14;
    }

    v6 = equalCopy;
    if (self->_onboardingState != v6[2])
    {
      goto LABEL_12;
    }

    onboardingCompletionsByState = self->_onboardingCompletionsByState;
    v8 = v6[3];
    if (onboardingCompletionsByState != v8 && (!v8 || ![(NSDictionary *)onboardingCompletionsByState isEqual:?]))
    {
      goto LABEL_12;
    }

    featureSettings = self->_featureSettings;
    v10 = v6[1];
    if (featureSettings == v10)
    {
      v5 = 1;
      goto LABEL_13;
    }

    if (v10)
    {
      v5 = [(HKFeatureSettings *)featureSettings isEqual:?];
    }

    else
    {
LABEL_12:
      v5 = 0;
    }

LABEL_13:

    goto LABEL_14;
  }

  v5 = 1;
LABEL_14:

  return v5;
}

- (unint64_t)hash
{
  onboardingState = self->_onboardingState;
  v4 = [(NSDictionary *)self->_onboardingCompletionsByState hash]^ onboardingState;
  return v4 ^ [(HKFeatureSettings *)self->_featureSettings hash];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  onboardingCompletionsByState = self->_onboardingCompletionsByState;
  return [v3 stringWithFormat:@"<%@:%p completionsByState:%@ settings:%@>", v4, self, onboardingCompletionsByState, self->_featureSettings];
}

- (HKFeatureOnboardingRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = HKFeatureOnboardingRecord;
  v5 = [(HKFeatureOnboardingRecord *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"featureSettings"];
    featureSettings = v5->_featureSettings;
    v5->_featureSettings = v6;

    v8 = objc_alloc(MEMORY[0x1E695DFD8]);
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v8 initWithObjects:{v9, v10, v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"onboardingCompletionsByState"];
    onboardingCompletionsByState = v5->_onboardingCompletionsByState;
    v5->_onboardingCompletionsByState = v13;

    v5->_onboardingState = [coderCopy decodeIntegerForKey:@"onboardingState"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  featureSettings = self->_featureSettings;
  coderCopy = coder;
  [coderCopy encodeObject:featureSettings forKey:@"featureSettings"];
  [coderCopy encodeObject:self->_onboardingCompletionsByState forKey:@"onboardingCompletionsByState"];
  [coderCopy encodeInteger:self->_onboardingState forKey:@"onboardingState"];
}

@end