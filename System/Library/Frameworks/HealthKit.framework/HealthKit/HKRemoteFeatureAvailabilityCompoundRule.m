@interface HKRemoteFeatureAvailabilityCompoundRule
- (BOOL)evaluate;
- (void)processUserInfo:(id)a3;
@end

@implementation HKRemoteFeatureAvailabilityCompoundRule

- (void)processUserInfo:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"grouping"];
  [(HKRemoteFeatureAvailabilityCompoundRule *)self setGrouping:v5];

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(HKRemoteFeatureAvailabilityCompoundRule *)self setRules:v6];

  v25 = v4;
  v7 = [v4 objectForKeyedSubscript:@"rules"];
  v8 = v7;
  v9 = MEMORY[0x1E695E0F0];
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v26 + 1) + 8 * i);
        v17 = [HKRemoteFeatureAvailabilityBaseRule ruleClassForRawValue:v16];
        if (v17)
        {
          v18 = v17;
          v19 = [(HKRemoteFeatureAvailabilityCompoundRule *)self rules];
          v20 = [v18 alloc];
          v21 = [(HKRemoteFeatureAvailabilityBaseRule *)self dataSource];
          v22 = [v20 initWithRawValue:v16 dataSource:v21];
          [v19 addObject:v22];
        }

        else
        {
          _HKInitializeLogging();
          v23 = HKLogDefault;
          if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v31 = v16;
            _os_log_impl(&dword_19197B000, v23, OS_LOG_TYPE_INFO, "Unknown HKRemoteFeatureAvailabilityRule for raw payload: %{public}@", buf, 0xCu);
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v13);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (BOOL)evaluate
{
  v3 = [(HKRemoteFeatureAvailabilityCompoundRule *)self rules];
  v4 = [v3 firstObject];
  v5 = [v4 evaluate];

  v6 = [(HKRemoteFeatureAvailabilityCompoundRule *)self rules];
  v7 = [v6 count];

  if (v7 >= 2)
  {
    v8 = 1;
    do
    {
      v9 = [(HKRemoteFeatureAvailabilityCompoundRule *)self rules];
      v10 = [v9 objectAtIndexedSubscript:v8];

      v11 = [v10 evaluate];
      v12 = [(HKRemoteFeatureAvailabilityCompoundRule *)self grouping];
      v13 = [v12 isEqualToString:@"AND"];

      if (v13)
      {
        v5 &= v11;
      }

      else
      {
        v14 = [(HKRemoteFeatureAvailabilityCompoundRule *)self grouping];
        v15 = [v14 isEqualToString:@"OR"];

        if (v15)
        {
          v5 |= v11;
        }
      }

      ++v8;
      v16 = [(HKRemoteFeatureAvailabilityCompoundRule *)self rules];
      v17 = [v16 count];
    }

    while (v8 < v17);
  }

  return v5 & 1;
}

@end