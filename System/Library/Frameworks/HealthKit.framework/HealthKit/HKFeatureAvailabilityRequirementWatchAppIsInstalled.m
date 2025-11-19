@interface HKFeatureAvailabilityRequirementWatchAppIsInstalled
- (BOOL)isEqual:(id)a3;
- (HKFeatureAvailabilityRequirementWatchAppIsInstalled)initWithBundleIdentifier:(id)a3;
- (HKFeatureAvailabilityRequirementWatchAppIsInstalled)initWithCoder:(id)a3;
- (NSArray)requiredEntitlements;
- (unint64_t)hash;
- (void)registerObserver:(id)a3 forDataSource:(id)a4;
- (void)unregisterObserver:(id)a3 fromDataSource:(id)a4;
@end

@implementation HKFeatureAvailabilityRequirementWatchAppIsInstalled

- (HKFeatureAvailabilityRequirementWatchAppIsInstalled)initWithBundleIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HKFeatureAvailabilityRequirementWatchAppIsInstalled;
  v6 = [(HKFeatureAvailabilityRequirementWatchAppIsInstalled *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleIdentifier, a3);
  }

  return v7;
}

- (NSArray)requiredEntitlements
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = +[HKFeatureAvailabilityRequirementEntitlement machLookupGlobalNameForAppConduitdDeviceConnectionEntitlement];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)registerObserver:(id)a3 forDataSource:(id)a4
{
  v6 = a3;
  v7 = [a4 watchAppInstallationDataSource];
  bundleIdentifier = self->_bundleIdentifier;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86__HKFeatureAvailabilityRequirementWatchAppIsInstalled_registerObserver_forDataSource___block_invoke;
  v9[3] = &unk_1E737C118;
  v9[4] = self;
  [v7 registerObserver:v6 forKey:bundleIdentifier newValueHandler:v9];
}

void __86__HKFeatureAvailabilityRequirementWatchAppIsInstalled_registerObserver_forDataSource___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  [v5 featureAvailabilityRequirement:v4 didUpdateSatisfaction:{objc_msgSend(a3, "BOOLValue")}];
}

- (void)unregisterObserver:(id)a3 fromDataSource:(id)a4
{
  v6 = a3;
  v7 = [a4 watchAppInstallationDataSource];
  [v7 unregisterObserver:v6 forKey:self->_bundleIdentifier];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bundleIdentifier = self->_bundleIdentifier;
    v6 = [v4 bundleIdentifier];
    v7 = [(NSString *)bundleIdentifier isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v4 hash];
  v6 = [(NSString *)self->_bundleIdentifier hash];

  return v6 ^ v5;
}

- (HKFeatureAvailabilityRequirementWatchAppIsInstalled)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];

  v6 = [(HKFeatureAvailabilityRequirementWatchAppIsInstalled *)self initWithBundleIdentifier:v5];
  return v6;
}

@end