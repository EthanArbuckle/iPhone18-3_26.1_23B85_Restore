@interface HKRemoteFeatureAvailabilityRuleSet
- (HKRemoteFeatureAvailabilityRuleSet)initWithRawValue:(id)a3 dataSource:(id)a4 supportedConditions:(id)a5;
- (id)evaluateAll;
- (void)_parseRulesFromRawValue:(id)a3 dataSource:(id)a4;
@end

@implementation HKRemoteFeatureAvailabilityRuleSet

- (HKRemoteFeatureAvailabilityRuleSet)initWithRawValue:(id)a3 dataSource:(id)a4 supportedConditions:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = HKRemoteFeatureAvailabilityRuleSet;
  v11 = [(HKRemoteFeatureAvailabilityRuleSet *)&v17 init];
  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    conditions = v11->_conditions;
    v11->_conditions = v12;

    v14 = [v10 copy];
    supportedConditions = v11->_supportedConditions;
    v11->_supportedConditions = v14;

    [(HKRemoteFeatureAvailabilityRuleSet *)v11 _parseRulesFromRawValue:v8 dataSource:v9];
  }

  return v11;
}

- (void)_parseRulesFromRawValue:(id)a3 dataSource:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v23;
    *&v9 = 138543362;
    v21 = v9;
    do
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v22 + 1) + 8 * v12);
        v14 = [(HKRemoteFeatureAvailabilityRuleSet *)self supportedConditions];
        v15 = [v14 containsObject:v13];

        if (v15)
        {
          v16 = [v6 objectForKeyedSubscript:v13];
          if ([HKRemoteFeatureAvailabilityBaseRule ruleClassForRawValue:v16])
          {
            v17 = [objc_alloc(objc_opt_class()) initWithRawValue:v16 dataSource:v7];
            v18 = [(HKRemoteFeatureAvailabilityRuleSet *)self conditions];
            [v18 setObject:v17 forKeyedSubscript:v13];
          }

          else
          {
            _HKInitializeLogging();
            v19 = HKLogDefault;
            if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_INFO))
            {
              *buf = v21;
              v27 = v16;
              _os_log_impl(&dword_19197B000, v19, OS_LOG_TYPE_INFO, "Unknown HKRemoteFeatureAvailabilityRule for raw payload: %{public}@", buf, 0xCu);
            }
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v6 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v10);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (id)evaluateAll
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [(HKRemoteFeatureAvailabilityRuleSet *)self conditions];
  v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = MEMORY[0x1E696AD98];
        v10 = [(HKRemoteFeatureAvailabilityRuleSet *)self conditions];
        v11 = [v10 objectForKeyedSubscript:v8];
        v12 = [v9 numberWithBool:{objc_msgSend(v11, "evaluate")}];
        [v3 setObject:v12 forKeyedSubscript:v8];
      }

      v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v3;
}

@end