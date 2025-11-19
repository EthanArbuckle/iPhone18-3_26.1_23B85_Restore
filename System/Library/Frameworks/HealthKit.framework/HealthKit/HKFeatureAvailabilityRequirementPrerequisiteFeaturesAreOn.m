@interface HKFeatureAvailabilityRequirementPrerequisiteFeaturesAreOn
- (BOOL)isEqual:(id)a3;
- (HKFeatureAvailabilityRequirementPrerequisiteFeaturesAreOn)initWithCoder:(id)a3;
- (HKFeatureAvailabilityRequirementPrerequisiteFeaturesAreOn)initWithPrerequisiteFeatureSettings:(id)a3;
- (NSString)requirementDescription;
- (id)isSatisfiedWithDataSource:(id)a3 error:(id *)a4;
- (void)registerObserver:(id)a3 forDataSource:(id)a4;
- (void)unregisterObserver:(id)a3 fromDataSource:(id)a4;
@end

@implementation HKFeatureAvailabilityRequirementPrerequisiteFeaturesAreOn

- (HKFeatureAvailabilityRequirementPrerequisiteFeaturesAreOn)initWithPrerequisiteFeatureSettings:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HKFeatureAvailabilityRequirementPrerequisiteFeaturesAreOn;
  v6 = [(HKFeatureAvailabilityRequirementPrerequisiteFeaturesAreOn *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_prerequisiteFeatureSettings, a3);
  }

  return v7;
}

- (NSString)requirementDescription
{
  if ([(NSArray *)self->_prerequisiteFeatureSettings count]== 1)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = [(NSArray *)self->_prerequisiteFeatureSettings firstObject];
    v5 = [v4 featureIdentifier];
    [v3 stringWithFormat:@"%@ must be on", v5];
  }

  else
  {
    v4 = [(NSArray *)self->_prerequisiteFeatureSettings hk_map:&__block_literal_global_48];
    v6 = MEMORY[0x1E696AEC0];
    v5 = [v4 componentsJoinedByString:{@", "}];
    [v6 stringWithFormat:@"%@ must all be on", v5];
  }
  v7 = ;

  return v7;
}

id __81__HKFeatureAvailabilityRequirementPrerequisiteFeaturesAreOn_requiredEntitlements__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 featureIdentifier];
  v3 = [HKFeatureAvailabilityRequirementEntitlement featureAvailabilityReadEntitlementForFeatureIdentifier:v2];

  return v3;
}

- (id)isSatisfiedWithDataSource:(id)a3 error:(id *)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_prerequisiteFeatureSettings;
  v7 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [v11 featureIdentifier];
        v13 = [v6 onboardingRecordForFeatureWithIdentifier:v12 error:a4];

        v14 = [v13 featureSettings];
        if (v14)
        {
        }

        else if (([v11 isOnWhenSettingIsAbsent] & 1) == 0)
        {
          goto LABEL_17;
        }

        v15 = [v13 featureSettings];
        v16 = [v11 settingsOnKey];
        v17 = [v15 numberForKey:v16];

        if (v17)
        {
          if (![v17 BOOLValue])
          {
            goto LABEL_16;
          }
        }

        else if (([v11 isOnWhenSettingIsAbsent] & 1) == 0)
        {
LABEL_16:

LABEL_17:
          v18 = MEMORY[0x1E695E110];
          goto LABEL_18;
        }
      }

      v8 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v18 = MEMORY[0x1E695E118];
LABEL_18:

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)registerObserver:(id)a3 forDataSource:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, v7);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __92__HKFeatureAvailabilityRequirementPrerequisiteFeaturesAreOn_registerObserver_forDataSource___block_invoke;
  aBlock[3] = &unk_1E7379DC8;
  objc_copyWeak(&v24, &location);
  aBlock[4] = self;
  v8 = _Block_copy(aBlock);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = self->_prerequisiteFeatureSettings;
  v9 = [(NSArray *)obj countByEnumeratingWithState:&v19 objects:v26 count:16];
  if (v9)
  {
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        v13 = [v7 featureAvailabilityProvidingDataSource];
        v14 = [v12 featureIdentifier];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __92__HKFeatureAvailabilityRequirementPrerequisiteFeaturesAreOn_registerObserver_forDataSource___block_invoke_18;
        v17[3] = &unk_1E737DBD0;
        v18 = v8;
        [v13 registerObserver:v6 forKey:v14 newValueHandler:v17];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)obj countByEnumeratingWithState:&v19 objects:v26 count:16];
    }

    while (v9);
  }

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);

  v15 = *MEMORY[0x1E69E9840];
}

void __92__HKFeatureAvailabilityRequirementPrerequisiteFeaturesAreOn_registerObserver_forDataSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = *(a1 + 32);
    v5 = (a1 + 32);
    v10 = 0;
    v7 = [v6 isSatisfiedWithDataSource:WeakRetained error:&v10];
    v8 = v10;
    if (v7)
    {
      [v3 featureAvailabilityRequirement:*v5 didUpdateSatisfaction:{objc_msgSend(v7, "BOOLValue")}];
    }

    else
    {
      _HKInitializeLogging();
      v9 = HKLogInfrastructure();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __92__HKFeatureAvailabilityRequirementPrerequisiteFeaturesAreOn_registerObserver_forDataSource___block_invoke_cold_1(v5, v8, v9);
      }
    }
  }
}

- (void)unregisterObserver:(id)a3 fromDataSource:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = self->_prerequisiteFeatureSettings;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        v14 = [v7 featureAvailabilityProvidingDataSource];
        v15 = [v13 featureIdentifier];
        [v14 unregisterObserver:v6 forKey:v15];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSArray *)self->_prerequisiteFeatureSettings isEqual:v4[1]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (HKFeatureAvailabilityRequirementPrerequisiteFeaturesAreOn)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"prerequisiteFeatureSettings"];

  v9 = [(HKFeatureAvailabilityRequirementPrerequisiteFeaturesAreOn *)self initWithPrerequisiteFeatureSettings:v8];
  return v9;
}

void __92__HKFeatureAvailabilityRequirementPrerequisiteFeaturesAreOn_registerObserver_forDataSource___block_invoke_cold_1(uint64_t *a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v8 = 138543618;
  v9 = objc_opt_class();
  v10 = 2114;
  v11 = a2;
  v6 = v9;
  _os_log_error_impl(&dword_19197B000, a3, OS_LOG_TYPE_ERROR, "[%{public}@]: Error determining satisfaction in response to change in feature availability: %{public}@", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

@end