@interface _HKFeatureAvailabilityRequirementCapabilityIsSupportedOnActiveRemoteDevice
+ (NSString)requirementIdentifier;
- (NSArray)requiredEntitlements;
- (NSString)requirementDescription;
- (id)isSatisfiedWithOnboardingEligibility:(id)a3 error:(id *)a4;
- (void)registerObserver:(id)a3 forDataSource:(id)a4;
@end

@implementation _HKFeatureAvailabilityRequirementCapabilityIsSupportedOnActiveRemoteDevice

+ (NSString)requirementIdentifier
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"HKFeatureAvailabilityRequirementCapabilityIsSupportedOnActiveRemoteDevice.m" lineNumber:25 description:@"Subclasses must specify their own requirement identifiers"];

  return @"InvalidRequirement";
}

- (NSString)requirementDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)self featureIdentifier];
  v4 = [v2 stringWithFormat:@"The paired device capability for %@ must be supported", v3];

  return v4;
}

- (NSArray)requiredEntitlements
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)self featureIdentifier];
  v3 = [HKFeatureAvailabilityRequirementEntitlement featureAvailabilityReadEntitlementForFeatureIdentifier:v2];
  v8[0] = v3;
  v4 = +[HKFeatureAvailabilityRequirementEntitlement nanoRegistryGeneralAccessEntitlement];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)isSatisfiedWithOnboardingEligibility:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = [v4 ineligibilityReasons] & 2;
  v6 = v5 | [v4 ineligibilityReasons] & 4;

  v7 = MEMORY[0x1E696AD98];

  return [v7 numberWithInt:v6 == 0];
}

- (void)registerObserver:(id)a3 forDataSource:(id)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __109___HKFeatureAvailabilityRequirementCapabilityIsSupportedOnActiveRemoteDevice_registerObserver_forDataSource___block_invoke;
  v4[3] = &unk_1E737D4F8;
  v4[4] = self;
  [a4 registerObserverForDeviceCharacteristicAndPairingChanges:a3 block:v4];
}

@end