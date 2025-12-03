@interface HKRemoteFeatureAvailabilityCompoundRule
- (BOOL)evaluate;
- (void)processUserInfo:(id)info;
@end

@implementation HKRemoteFeatureAvailabilityCompoundRule

- (void)processUserInfo:(id)info
{
  v33 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v5 = [infoCopy objectForKeyedSubscript:@"grouping"];
  [(HKRemoteFeatureAvailabilityCompoundRule *)self setGrouping:v5];

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(HKRemoteFeatureAvailabilityCompoundRule *)self setRules:v6];

  v25 = infoCopy;
  v7 = [infoCopy objectForKeyedSubscript:@"rules"];
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
          rules = [(HKRemoteFeatureAvailabilityCompoundRule *)self rules];
          v20 = [v18 alloc];
          dataSource = [(HKRemoteFeatureAvailabilityBaseRule *)self dataSource];
          v22 = [v20 initWithRawValue:v16 dataSource:dataSource];
          [rules addObject:v22];
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
  rules = [(HKRemoteFeatureAvailabilityCompoundRule *)self rules];
  firstObject = [rules firstObject];
  evaluate = [firstObject evaluate];

  rules2 = [(HKRemoteFeatureAvailabilityCompoundRule *)self rules];
  v7 = [rules2 count];

  if (v7 >= 2)
  {
    v8 = 1;
    do
    {
      rules3 = [(HKRemoteFeatureAvailabilityCompoundRule *)self rules];
      v10 = [rules3 objectAtIndexedSubscript:v8];

      evaluate2 = [v10 evaluate];
      grouping = [(HKRemoteFeatureAvailabilityCompoundRule *)self grouping];
      v13 = [grouping isEqualToString:@"AND"];

      if (v13)
      {
        evaluate &= evaluate2;
      }

      else
      {
        grouping2 = [(HKRemoteFeatureAvailabilityCompoundRule *)self grouping];
        v15 = [grouping2 isEqualToString:@"OR"];

        if (v15)
        {
          evaluate |= evaluate2;
        }
      }

      ++v8;
      rules4 = [(HKRemoteFeatureAvailabilityCompoundRule *)self rules];
      v17 = [rules4 count];
    }

    while (v8 < v17);
  }

  return evaluate & 1;
}

@end