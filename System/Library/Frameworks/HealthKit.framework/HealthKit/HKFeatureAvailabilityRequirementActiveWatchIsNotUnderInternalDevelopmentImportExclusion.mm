@interface HKFeatureAvailabilityRequirementActiveWatchIsNotUnderInternalDevelopmentImportExclusion
- (BOOL)isEqual:(id)equal;
- (HKFeatureAvailabilityRequirementActiveWatchIsNotUnderInternalDevelopmentImportExclusion)initWithCoder:(id)coder;
- (HKFeatureAvailabilityRequirementActiveWatchIsNotUnderInternalDevelopmentImportExclusion)initWithFeatureIdentifier:(id)identifier;
- (NSArray)requiredEntitlements;
- (NSString)requirementDescription;
- (id)isSatisfiedWithDataSource:(id)source error:(id *)error;
- (unint64_t)hash;
- (void)registerObserver:(id)observer forDataSource:(id)source;
- (void)unregisterObserver:(id)observer fromDataSource:(id)source;
@end

@implementation HKFeatureAvailabilityRequirementActiveWatchIsNotUnderInternalDevelopmentImportExclusion

- (HKFeatureAvailabilityRequirementActiveWatchIsNotUnderInternalDevelopmentImportExclusion)initWithFeatureIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = HKFeatureAvailabilityRequirementActiveWatchIsNotUnderInternalDevelopmentImportExclusion;
  v5 = [(HKFeatureAvailabilityRequirementActiveWatchIsNotUnderInternalDevelopmentImportExclusion *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    featureIdentifier = v5->_featureIdentifier;
    v5->_featureIdentifier = v6;
  }

  return v5;
}

- (NSString)requirementDescription
{
  v2 = +[_HKBehavior sharedBehavior];
  isAppleWatch = [v2 isAppleWatch];

  if (isAppleWatch)
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

- (id)isSatisfiedWithDataSource:(id)source error:(id *)error
{
  sourceCopy = source;
  featureIdentifier = [(HKFeatureAvailabilityRequirementActiveWatchIsNotUnderInternalDevelopmentImportExclusion *)self featureIdentifier];
  v7 = [featureIdentifier isEqualToString:@"OxygenSaturationRecording"];

  if (v7 && ([sourceCopy behavior], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isVirtualDevice"), v8, (v9 & 1) == 0))
  {
    importExclusionDeviceDataSource = [sourceCopy importExclusionDeviceDataSource];
    behavior = [sourceCopy behavior];
    v13 = [importExclusionDeviceDataSource isActiveWatchProdFusedWithBehavior:behavior];

    if (v13)
    {
      if ([v13 BOOLValue])
      {
        v10 = MEMORY[0x1E695E118];
      }

      else
      {
        importExclusionDeviceDataSource2 = [sourceCopy importExclusionDeviceDataSource];
        behavior2 = [sourceCopy behavior];
        v16 = [importExclusionDeviceDataSource2 isImportAllowedForActiveWatchWithBehavior:behavior2 featureIdentifier:self->_featureIdentifier];

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

- (void)registerObserver:(id)observer forDataSource:(id)source
{
  observerCopy = observer;
  sourceCopy = source;
  objc_initWeak(&location, sourceCopy);
  devicePairingAndSwitchingNotificationDataSource = [sourceCopy devicePairingAndSwitchingNotificationDataSource];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __122__HKFeatureAvailabilityRequirementActiveWatchIsNotUnderInternalDevelopmentImportExclusion_registerObserver_forDataSource___block_invoke;
  v9[3] = &unk_1E7379DC8;
  objc_copyWeak(&v10, &location);
  v9[4] = self;
  [devicePairingAndSwitchingNotificationDataSource registerObserverForDevicePairingChanges:observerCopy block:v9];

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

- (void)unregisterObserver:(id)observer fromDataSource:(id)source
{
  observerCopy = observer;
  devicePairingAndSwitchingNotificationDataSource = [source devicePairingAndSwitchingNotificationDataSource];
  [devicePairingAndSwitchingNotificationDataSource unregisterObserverForDevicePairingChanges:observerCopy];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    featureIdentifier = [(HKFeatureAvailabilityRequirementActiveWatchIsNotUnderInternalDevelopmentImportExclusion *)self featureIdentifier];
    featureIdentifier2 = [v5 featureIdentifier];

    v8 = [featureIdentifier isEqualToString:featureIdentifier2];
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
  featureIdentifier = [(HKFeatureAvailabilityRequirementActiveWatchIsNotUnderInternalDevelopmentImportExclusion *)self featureIdentifier];
  v7 = [featureIdentifier hash];

  return v7 ^ v5;
}

- (HKFeatureAvailabilityRequirementActiveWatchIsNotUnderInternalDevelopmentImportExclusion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"featureIdentifier"];

  v6 = [(HKFeatureAvailabilityRequirementActiveWatchIsNotUnderInternalDevelopmentImportExclusion *)self initWithFeatureIdentifier:v5];
  return v6;
}

@end