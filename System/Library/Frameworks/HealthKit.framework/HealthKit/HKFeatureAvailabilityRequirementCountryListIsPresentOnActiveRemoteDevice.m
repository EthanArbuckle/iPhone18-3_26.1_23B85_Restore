@interface HKFeatureAvailabilityRequirementCountryListIsPresentOnActiveRemoteDevice
- (id)isSatisfiedWithOnboardingEligibility:(id)a3 error:(id *)a4;
- (id)requiredEntitlements;
@end

@implementation HKFeatureAvailabilityRequirementCountryListIsPresentOnActiveRemoteDevice

- (id)isSatisfiedWithOnboardingEligibility:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = [v4 ineligibilityReasons];
  v6 = [v4 ineligibilityReasons];

  if ((v5 & 2) != 0)
  {
    v7 = MEMORY[0x1E695E110];
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:(v6 & 0x10) == 0];
  }

  return v7;
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