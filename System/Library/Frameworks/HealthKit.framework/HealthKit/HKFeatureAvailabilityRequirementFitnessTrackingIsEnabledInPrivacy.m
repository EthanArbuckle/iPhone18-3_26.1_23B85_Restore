@interface HKFeatureAvailabilityRequirementFitnessTrackingIsEnabledInPrivacy
- (BOOL)isEqual:(id)a3;
- (NSArray)requiredEntitlements;
- (id)isSatisfiedWithDataSource:(id)a3 error:(id *)a4;
- (unint64_t)hash;
- (void)registerObserver:(id)a3 forDataSource:(id)a4;
- (void)unregisterObserver:(id)a3 fromDataSource:(id)a4;
@end

@implementation HKFeatureAvailabilityRequirementFitnessTrackingIsEnabledInPrivacy

- (NSArray)requiredEntitlements
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = +[HKFeatureAvailabilityRequirementEntitlement tccManagerAllServiceReadAccessEntitlement];
  v7[0] = v2;
  v3 = +[HKFeatureAvailabilityRequirementEntitlement userDefaultsNanolifestylePrivacyDomainReadWriteAccessEntitlement];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)isSatisfiedWithDataSource:(id)a3 error:(id *)a4
{
  v4 = MEMORY[0x1E696AD98];
  v5 = [a3 privacyPreferencesDataSource];
  v6 = [v5 userDefaults];
  v7 = [v4 numberWithBool:HKIsFitnessTrackingEnabledWithUserDefaults(v6)];

  return v7;
}

- (void)registerObserver:(id)a3 forDataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, v7);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __100__HKFeatureAvailabilityRequirementFitnessTrackingIsEnabledInPrivacy_registerObserver_forDataSource___block_invoke;
  aBlock[3] = &unk_1E7379DC8;
  objc_copyWeak(&v19, &location);
  aBlock[4] = self;
  v8 = _Block_copy(aBlock);
  v9 = +[_HKBehavior sharedBehavior];
  v10 = [v9 isAppleWatch];

  if (v10)
  {
    v11 = [v7 privacyPreferencesDataSource];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __100__HKFeatureAvailabilityRequirementFitnessTrackingIsEnabledInPrivacy_registerObserver_forDataSource___block_invoke_11;
    v16[3] = &unk_1E737FBB0;
    v17 = v8;
    [v11 registerObserver:v6 forKey:@"EnableFitnessTracking" newValueHandler:v16];

    v12 = v17;
  }

  else
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.tcc.access.changed"];
    v13 = [v7 darwinNotificationDataSource];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __100__HKFeatureAvailabilityRequirementFitnessTrackingIsEnabledInPrivacy_registerObserver_forDataSource___block_invoke_2;
    v14[3] = &unk_1E737BAB0;
    v15 = v8;
    [v13 registerObserver:v6 forKey:v12 newValueHandler:v14];
  }

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __100__HKFeatureAvailabilityRequirementFitnessTrackingIsEnabledInPrivacy_registerObserver_forDataSource___block_invoke(uint64_t a1, void *a2)
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
  v10 = a4;
  v5 = a3;
  v6 = +[_HKBehavior sharedBehavior];
  v7 = [v6 isAppleWatch];

  if (v7)
  {
    v8 = [v10 privacyPreferencesDataSource];
    [v8 unregisterObserver:v5 forKey:@"EnableFitnessTracking"];
  }

  else
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.tcc.access.changed"];
    v9 = [v10 darwinNotificationDataSource];
    [v9 unregisterObserver:v5 forKey:v8];

    v5 = v9;
  }
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

@end