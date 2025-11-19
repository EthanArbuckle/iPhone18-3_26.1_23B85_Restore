@interface HKFeatureAvailabilityRequirementAgeIsPresent
- (BOOL)isEqual:(id)a3;
- (NSArray)requiredEntitlements;
- (id)isSatisfiedWithDataSource:(id)a3 error:(id *)a4;
- (unint64_t)hash;
- (void)registerObserver:(id)a3 forDataSource:(id)a4;
- (void)unregisterObserver:(id)a3 fromDataSource:(id)a4;
@end

@implementation HKFeatureAvailabilityRequirementAgeIsPresent

- (NSArray)requiredEntitlements
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = +[HKFeatureAvailabilityRequirementEntitlement healthKitAccessEntitlement];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)isSatisfiedWithDataSource:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierDateOfBirth"];
  v7 = [v5 healthDataSource];

  v14 = 0;
  v8 = [v7 userCharacteristicForDataType:v6 error:&v14];
  v9 = v14;

  if (v9)
  {
    _HKInitializeLogging();
    v10 = HKLogInfrastructure();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [HKFeatureAvailabilityRequirementAgeIsPresent isSatisfiedWithDataSource:error:];
    }

    if (a4)
    {
      v11 = v9;
      v12 = 0;
      *a4 = v9;
    }

    else
    {
      _HKLogDroppedError(v9);
      v12 = 0;
    }
  }

  else
  {
    v12 = [MEMORY[0x1E696AD98] numberWithInt:v8 != 0];
  }

  return v12;
}

- (void)registerObserver:(id)a3 forDataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.healthd.user-characteristics.did-change"];
  objc_initWeak(&location, v7);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__HKFeatureAvailabilityRequirementAgeIsPresent_registerObserver_forDataSource___block_invoke;
  aBlock[3] = &unk_1E7379DC8;
  objc_copyWeak(&v15, &location);
  aBlock[4] = self;
  v9 = _Block_copy(aBlock);
  v10 = [v7 darwinNotificationDataSource];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__HKFeatureAvailabilityRequirementAgeIsPresent_registerObserver_forDataSource___block_invoke_12;
  v12[3] = &unk_1E737BAB0;
  v11 = v9;
  v13 = v11;
  [v10 registerObserver:v6 forKey:v8 newValueHandler:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __79__HKFeatureAvailabilityRequirementAgeIsPresent_registerObserver_forDataSource___block_invoke(uint64_t a1, void *a2)
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
        __79__HKFeatureAvailabilityRequirementAgeIsPresent_registerObserver_forDataSource___block_invoke_cold_1(v5);
      }
    }
  }
}

- (void)unregisterObserver:(id)a3 fromDataSource:(id)a4
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a4;
  v7 = a3;
  v9 = [v5 stringWithUTF8String:"com.apple.healthd.user-characteristics.did-change"];
  v8 = [v6 darwinNotificationDataSource];

  [v8 unregisterObserver:v7 forKey:v9];
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (unint64_t)hash
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [v3 hash];

  return v4;
}

- (void)isSatisfiedWithDataSource:error:.cold.1()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_0_11(v0);
  OUTLINED_FUNCTION_1_5(&dword_19197B000, v2, v3, "[%{public}@] Error while pulling date of birth characteristic: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __79__HKFeatureAvailabilityRequirementAgeIsPresent_registerObserver_forDataSource___block_invoke_cold_1(uint64_t *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_0_11(v2);
  OUTLINED_FUNCTION_1_5(&dword_19197B000, v4, v5, "[%{public}@]: Error determining satisfaction in response to change in feature availability: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

@end