@interface HKFeatureAvailabilityRequirementFitnessTrackingIsEnabledInPrivacy
- (BOOL)isEqual:(id)equal;
- (NSArray)requiredEntitlements;
- (id)isSatisfiedWithDataSource:(id)source error:(id *)error;
- (unint64_t)hash;
- (void)registerObserver:(id)observer forDataSource:(id)source;
- (void)unregisterObserver:(id)observer fromDataSource:(id)source;
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

- (id)isSatisfiedWithDataSource:(id)source error:(id *)error
{
  v4 = MEMORY[0x1E696AD98];
  privacyPreferencesDataSource = [source privacyPreferencesDataSource];
  userDefaults = [privacyPreferencesDataSource userDefaults];
  v7 = [v4 numberWithBool:HKIsFitnessTrackingEnabledWithUserDefaults(userDefaults)];

  return v7;
}

- (void)registerObserver:(id)observer forDataSource:(id)source
{
  observerCopy = observer;
  sourceCopy = source;
  objc_initWeak(&location, sourceCopy);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __100__HKFeatureAvailabilityRequirementFitnessTrackingIsEnabledInPrivacy_registerObserver_forDataSource___block_invoke;
  aBlock[3] = &unk_1E7379DC8;
  objc_copyWeak(&v19, &location);
  aBlock[4] = self;
  v8 = _Block_copy(aBlock);
  v9 = +[_HKBehavior sharedBehavior];
  isAppleWatch = [v9 isAppleWatch];

  if (isAppleWatch)
  {
    privacyPreferencesDataSource = [sourceCopy privacyPreferencesDataSource];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __100__HKFeatureAvailabilityRequirementFitnessTrackingIsEnabledInPrivacy_registerObserver_forDataSource___block_invoke_11;
    v16[3] = &unk_1E737FBB0;
    v17 = v8;
    [privacyPreferencesDataSource registerObserver:observerCopy forKey:@"EnableFitnessTracking" newValueHandler:v16];

    v12 = v17;
  }

  else
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.tcc.access.changed"];
    darwinNotificationDataSource = [sourceCopy darwinNotificationDataSource];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __100__HKFeatureAvailabilityRequirementFitnessTrackingIsEnabledInPrivacy_registerObserver_forDataSource___block_invoke_2;
    v14[3] = &unk_1E737BAB0;
    v15 = v8;
    [darwinNotificationDataSource registerObserver:observerCopy forKey:v12 newValueHandler:v14];
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

- (void)unregisterObserver:(id)observer fromDataSource:(id)source
{
  sourceCopy = source;
  observerCopy = observer;
  v6 = +[_HKBehavior sharedBehavior];
  isAppleWatch = [v6 isAppleWatch];

  if (isAppleWatch)
  {
    privacyPreferencesDataSource = [sourceCopy privacyPreferencesDataSource];
    [privacyPreferencesDataSource unregisterObserver:observerCopy forKey:@"EnableFitnessTracking"];
  }

  else
  {
    privacyPreferencesDataSource = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.tcc.access.changed"];
    darwinNotificationDataSource = [sourceCopy darwinNotificationDataSource];
    [darwinNotificationDataSource unregisterObserver:observerCopy forKey:privacyPreferencesDataSource];

    observerCopy = darwinNotificationDataSource;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
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