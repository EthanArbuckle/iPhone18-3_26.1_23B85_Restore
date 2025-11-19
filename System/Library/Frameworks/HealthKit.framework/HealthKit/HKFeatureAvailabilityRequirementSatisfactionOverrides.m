@interface HKFeatureAvailabilityRequirementSatisfactionOverrides
- (HKFeatureAvailabilityRequirementSatisfactionOverrides)initWithFeatureIdentifier:(id)a3;
- (HKFeatureAvailabilityRequirementSatisfactionOverrides)initWithUserDefaults:(id)a3 featureIdentifier:(id)a4 requirementOverridableEvaluator:(id)a5;
- (id)overriddenRequirementIdentifiers;
- (id)overriddenSatisfactionOfRequirementWithIdentifier:(id)a3;
- (void)overrideSatisfactionOfRequirementWithIdentifier:(id)a3 isSatisfied:(id)a4;
- (void)resetAllRequirementSatisfactionOverrides;
@end

@implementation HKFeatureAvailabilityRequirementSatisfactionOverrides

- (HKFeatureAvailabilityRequirementSatisfactionOverrides)initWithFeatureIdentifier:(id)a3
{
  v4 = MEMORY[0x1E695E000];
  v5 = a3;
  v6 = [v4 hk_featureAvailabilityRequirementEvaluationOverridesUserDefaults];
  v7 = [(HKFeatureAvailabilityRequirementSatisfactionOverrides *)self initWithUserDefaults:v6 featureIdentifier:v5];

  return v7;
}

uint64_t __96__HKFeatureAvailabilityRequirementSatisfactionOverrides_initWithUserDefaults_featureIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = objc_alloc_init(HKFeatureAvailabilityRequirementSatisfactionOverrideEligibility);
  v7 = objc_alloc_init(HKImportExclusionDeviceDataSource);
  v8 = +[_HKBehavior sharedBehavior];
  v9 = [(HKFeatureAvailabilityRequirementSatisfactionOverrideEligibility *)v6 isRequirementOverridable:v4 featureIdentifier:v5 importExclusionDeviceDataSource:v7 behavior:v8];

  return v9;
}

- (HKFeatureAvailabilityRequirementSatisfactionOverrides)initWithUserDefaults:(id)a3 featureIdentifier:(id)a4 requirementOverridableEvaluator:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = HKFeatureAvailabilityRequirementSatisfactionOverrides;
  v12 = [(HKFeatureAvailabilityRequirementSatisfactionOverrides *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_userDefaults, a3);
    v14 = [v10 copy];
    featureIdentifier = v13->_featureIdentifier;
    v13->_featureIdentifier = v14;

    v16 = _Block_copy(v11);
    requirementOverridableEvaluator = v13->_requirementOverridableEvaluator;
    v13->_requirementOverridableEvaluator = v16;
  }

  return v13;
}

- (id)overriddenSatisfactionOfRequirementWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[_HKBehavior sharedBehavior];
  v6 = [v5 featureRequirementOverrides];

  v7 = +[_HKBehavior sharedBehavior];
  v8 = [v7 isAppleInternalInstall];

  if ((v8 & 1) == 0)
  {
    if (!v6)
    {
      goto LABEL_17;
    }

    _HKInitializeLogging();
    v22 = HKLogInfrastructure();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG);

    if (!v23)
    {
      goto LABEL_17;
    }

    v24 = HKLogInfrastructure();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [HKFeatureAvailabilityRequirementSatisfactionOverrides overriddenSatisfactionOfRequirementWithIdentifier:v24];
    }

    goto LABEL_16;
  }

  if (self)
  {
    requirementOverridableEvaluator = self->_requirementOverridableEvaluator;
  }

  else
  {
    requirementOverridableEvaluator = 0;
  }

  if ((requirementOverridableEvaluator[2](requirementOverridableEvaluator, self->_featureIdentifier, v4) & 1) == 0)
  {
    _HKInitializeLogging();
    v25 = HKLogInfrastructure();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG);

    if (!v26)
    {
LABEL_17:
      v21 = 0;
      goto LABEL_24;
    }

    v24 = HKLogInfrastructure();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [HKFeatureAvailabilityRequirementSatisfactionOverrides overriddenSatisfactionOfRequirementWithIdentifier:v24];
    }

LABEL_16:

    goto LABEL_17;
  }

  if (!v6)
  {
    goto LABEL_19;
  }

  v10 = +[_HKBehavior sharedBehavior];
  v11 = [v10 featureRequirementOverrides];
  v12 = [v11 objectForKeyedSubscript:self->_featureIdentifier];
  if (!v12)
  {

    goto LABEL_19;
  }

  v13 = v12;
  v14 = +[_HKBehavior sharedBehavior];
  v15 = [v14 featureRequirementOverrides];
  v16 = [v15 objectForKeyedSubscript:self->_featureIdentifier];
  v17 = [v16 objectForKeyedSubscript:v4];

  if (!v17)
  {
LABEL_19:
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", self->_featureIdentifier, v4];
    v19 = [(NSUserDefaults *)self->_userDefaults objectForKey:v18];
    if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v21 = v19;
    }

    else
    {
      v21 = 0;
    }

    goto LABEL_23;
  }

  v18 = +[_HKBehavior sharedBehavior];
  v19 = [v18 featureRequirementOverrides];
  v20 = [v19 objectForKeyedSubscript:self->_featureIdentifier];
  v21 = [v20 objectForKeyedSubscript:v4];

LABEL_23:
LABEL_24:

  return v21;
}

- (id)overriddenRequirementIdentifiers
{
  v24 = *MEMORY[0x1E69E9840];
  v18 = [MEMORY[0x1E695DFA8] set];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [(NSUserDefaults *)self->_userDefaults dictionaryRepresentation];
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        featureIdentifier = self->_featureIdentifier;
        v9 = MEMORY[0x1E696AEC0];
        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v9 stringWithFormat:@"%@_", featureIdentifier];
        LODWORD(featureIdentifier) = [v10 hasPrefix:v11];

        if (featureIdentifier)
        {
          v12 = [v10 componentsSeparatedByString:@"_"];
          if ([v12 count] == 2)
          {
            v13 = [v12 objectAtIndexedSubscript:1];

            if (v13)
            {
              v14 = self->_featureIdentifier;
              if ((*(self->_requirementOverridableEvaluator + 2))())
              {
                [v18 addObject:v13];
              }
            }
          }

          else
          {

            v13 = 0;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  v15 = [MEMORY[0x1E695DFD8] setWithSet:v18];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)overrideSatisfactionOfRequirementWithIdentifier:(id)a3 isSatisfied:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[_HKBehavior sharedBehavior];
  v9 = [v8 isAppleInternalInstall];

  if (v9)
  {
    [(HKFeatureAvailabilityRequirementSatisfactionOverrides *)self overrideSatisfactionOfRequirementWithIdentifier:v6 isSatisfied:v7];
  }
}

- (void)resetAllRequirementSatisfactionOverrides
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(NSUserDefaults *)self->_userDefaults dictionaryRepresentation];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        featureIdentifier = self->_featureIdentifier;
        v9 = MEMORY[0x1E696AEC0];
        v10 = *(*(&v13 + 1) + 8 * v7);
        v11 = [v9 stringWithFormat:@"%@_", featureIdentifier];
        LODWORD(featureIdentifier) = [v10 hasPrefix:v11];

        if (featureIdentifier)
        {
          [(NSUserDefaults *)self->_userDefaults removeObjectForKey:v10];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)overrideSatisfactionOfRequirementWithIdentifier:(uint64_t)a3 isSatisfied:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    a1 = *(a1 + 24);
  }

  if ((*(a1 + 16))(a1, *(v5 + 16), a2))
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", *(v5 + 16), a2];
    [*(v5 + 8) setObject:a3 forKey:?];
    v6 = *MEMORY[0x1E69E9840];
  }

  else
  {
    _HKInitializeLogging();
    v7 = HKLogInfrastructure();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);

    if (v8)
    {
      v9 = HKLogInfrastructure();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v13 = a2;
        _os_log_debug_impl(&dword_19197B000, v9, OS_LOG_TYPE_DEBUG, "Override for %@ is ignored since it is not an overridable requirement.", buf, 0xCu);
      }
    }

    v10 = *MEMORY[0x1E69E9840];
  }
}

@end