@interface HKFeatureAvailabilityRequirementActiveWatchIsNotUnderInternalDevelopmentImportExclusion
- (BOOL)isEqual:(id)a3;
- (HKFeatureAvailabilityRequirementActiveWatchIsNotUnderInternalDevelopmentImportExclusion)initWithCoder:(id)a3;
- (HKFeatureAvailabilityRequirementActiveWatchIsNotUnderInternalDevelopmentImportExclusion)initWithFeatureIdentifier:(id)a3;
- (NSArray)requiredEntitlements;
- (NSString)requirementDescription;
- (id)isSatisfiedWithDataSource:(id)a3 error:(id *)a4;
- (unint64_t)hash;
- (void)registerObserver:(id)a3 forDataSource:(id)a4;
- (void)unregisterObserver:(id)a3 fromDataSource:(id)a4;
@end

@implementation HKFeatureAvailabilityRequirementActiveWatchIsNotUnderInternalDevelopmentImportExclusion

- (HKFeatureAvailabilityRequirementActiveWatchIsNotUnderInternalDevelopmentImportExclusion)initWithFeatureIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKFeatureAvailabilityRequirementActiveWatchIsNotUnderInternalDevelopmentImportExclusion;
  v5 = [(HKFeatureAvailabilityRequirementActiveWatchIsNotUnderInternalDevelopmentImportExclusion *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    featureIdentifier = v5->_featureIdentifier;
    v5->_featureIdentifier = v6;
  }

  return v5;
}

- (NSString)requirementDescription
{
  v2 = +[_HKBehavior sharedBehavior];
  v3 = [v2 isAppleWatch];

  if (v3)
  {
    return @"Current watch must not be excluded from import for internal development";
  }

  else
  {
    return @"The active watch must not be excluded from import for internal development";
  }
}

- (NSArray)requiredEntitlements
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = +[HKFeatureAvailabilityRequirementEntitlement mobileGestaltAllowedKeysToAccessDeviceInfoEntitlement];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)isSatisfiedWithDataSource:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(HKFeatureAvailabilityRequirementActiveWatchIsNotUnderInternalDevelopmentImportExclusion *)self featureIdentifier];
  v7 = [v6 isEqualToString:@"OxygenSaturationRecording"];

  if (v7 && ([v5 behavior], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isVirtualDevice"), v8, (v9 & 1) == 0))
  {
    v11 = [v5 importExclusionDeviceDataSource];
    v12 = [v5 behavior];
    v13 = [v11 isActiveWatchProdFusedWithBehavior:v12];

    if (v13)
    {
      if ([v13 BOOLValue])
      {
        v10 = MEMORY[0x1E695E118];
      }

      else
      {
        v14 = [v5 importExclusionDeviceDataSource];
        v15 = [v5 behavior];
        v16 = [v14 isImportAllowedForActiveWatchWithBehavior:v15 featureIdentifier:self->_featureIdentifier];

        if (v16 && ([v16 BOOLValue] & 1) != 0)
        {
          v10 = MEMORY[0x1E695E118];
        }

        else
        {
          v10 = MEMORY[0x1E695E110];
        }
      }
    }

    else
    {
      v10 = MEMORY[0x1E695E110];
    }
  }

  else
  {
    v10 = MEMORY[0x1E695E118];
  }

  return v10;
}

- (void)registerObserver:(id)a3 forDataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, v7);
  v8 = [v7 devicePairingAndSwitchingNotificationDataSource];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __122__HKFeatureAvailabilityRequirementActiveWatchIsNotUnderInternalDevelopmentImportExclusion_registerObserver_forDataSource___block_invoke;
  v9[3] = &unk_1E7379DC8;
  objc_copyWeak(&v10, &location);
  v9[4] = self;
  [v8 registerObserverForDevicePairingChanges:v6 block:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __122__HKFeatureAvailabilityRequirementActiveWatchIsNotUnderInternalDevelopmentImportExclusion_registerObserver_forDataSource___block_invoke(uint64_t a1, void *a2)
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
        __109__HKFeatureAvailabilityOnboardingEligibilityObservingRemoteDeviceRequirement_registerObserver_forDataSource___block_invoke_cold_1(v5, v8, v9);
      }
    }
  }
}

- (void)unregisterObserver:(id)a3 fromDataSource:(id)a4
{
  v5 = a3;
  v6 = [a4 devicePairingAndSwitchingNotificationDataSource];
  [v6 unregisterObserverForDevicePairingChanges:v5];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(HKFeatureAvailabilityRequirementActiveWatchIsNotUnderInternalDevelopmentImportExclusion *)self featureIdentifier];
    v7 = [v5 featureIdentifier];

    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v4 hash];
  v6 = [(HKFeatureAvailabilityRequirementActiveWatchIsNotUnderInternalDevelopmentImportExclusion *)self featureIdentifier];
  v7 = [v6 hash];

  return v7 ^ v5;
}

- (HKFeatureAvailabilityRequirementActiveWatchIsNotUnderInternalDevelopmentImportExclusion)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"featureIdentifier"];

  v6 = [(HKFeatureAvailabilityRequirementActiveWatchIsNotUnderInternalDevelopmentImportExclusion *)self initWithFeatureIdentifier:v5];
  return v6;
}

@end