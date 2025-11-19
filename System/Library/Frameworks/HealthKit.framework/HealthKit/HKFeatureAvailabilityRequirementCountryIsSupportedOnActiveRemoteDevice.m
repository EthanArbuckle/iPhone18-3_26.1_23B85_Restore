@interface HKFeatureAvailabilityRequirementCountryIsSupportedOnActiveRemoteDevice
- (id)requiredEntitlements;
- (id)requirementDescription;
@end

@implementation HKFeatureAvailabilityRequirementCountryIsSupportedOnActiveRemoteDevice

- (id)requirementDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)self featureIdentifier];
  v4 = [v2 stringWithFormat:@"The current or onboarded country for %@ must be supported on the active device", v3];

  return v4;
}

- (id)requiredEntitlements
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)self featureIdentifier];
  v3 = [HKFeatureAvailabilityRequirementEntitlement featureAvailabilityReadEntitlementForFeatureIdentifier:v2];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end