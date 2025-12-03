@interface _HKFeatureAvailabilityRequirementCapabilityIsSupportedOnActiveRemoteDevice
+ (NSString)requirementIdentifier;
- (NSArray)requiredEntitlements;
- (NSString)requirementDescription;
- (id)isSatisfiedWithOnboardingEligibility:(id)eligibility error:(id *)error;
- (void)registerObserver:(id)observer forDataSource:(id)source;
@end

@implementation _HKFeatureAvailabilityRequirementCapabilityIsSupportedOnActiveRemoteDevice

+ (NSString)requirementIdentifier
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HKFeatureAvailabilityRequirementCapabilityIsSupportedOnActiveRemoteDevice.m" lineNumber:25 description:@"Subclasses must specify their own requirement identifiers"];

  return @"InvalidRequirement";
}

- (NSString)requirementDescription
{
  v2 = MEMORY[0x1E696AEC0];
  featureIdentifier = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)self featureIdentifier];
  v4 = [v2 stringWithFormat:@"The paired device capability for %@ must be supported", featureIdentifier];

  return v4;
}

- (NSArray)requiredEntitlements
{
  v8[2] = *MEMORY[0x1E69E9840];
  featureIdentifier = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)self featureIdentifier];
  v3 = [HKFeatureAvailabilityRequirementEntitlement featureAvailabilityReadEntitlementForFeatureIdentifier:featureIdentifier];
  v8[0] = v3;
  v4 = +[HKFeatureAvailabilityRequirementEntitlement nanoRegistryGeneralAccessEntitlement];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)isSatisfiedWithOnboardingEligibility:(id)eligibility error:(id *)error
{
  eligibilityCopy = eligibility;
  v5 = [eligibilityCopy ineligibilityReasons] & 2;
  v6 = v5 | [eligibilityCopy ineligibilityReasons] & 4;

  v7 = MEMORY[0x1E696AD98];

  return [v7 numberWithInt:v6 == 0];
}

- (void)registerObserver:(id)observer forDataSource:(id)source
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __109___HKFeatureAvailabilityRequirementCapabilityIsSupportedOnActiveRemoteDevice_registerObserver_forDataSource___block_invoke;
  v4[3] = &unk_1E737D4F8;
  v4[4] = self;
  [source registerObserverForDeviceCharacteristicAndPairingChanges:observer block:v4];
}

@end