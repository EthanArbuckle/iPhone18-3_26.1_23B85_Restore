@interface HKFeatureAvailabilityRequirementCountryListIsPresentOnActiveRemoteDevice
- (id)isSatisfiedWithOnboardingEligibility:(id)eligibility error:(id *)error;
- (id)requiredEntitlements;
@end

@implementation HKFeatureAvailabilityRequirementCountryListIsPresentOnActiveRemoteDevice

- (id)isSatisfiedWithOnboardingEligibility:(id)eligibility error:(id *)error
{
  eligibilityCopy = eligibility;
  ineligibilityReasons = [eligibilityCopy ineligibilityReasons];
  ineligibilityReasons2 = [eligibilityCopy ineligibilityReasons];

  if ((ineligibilityReasons & 2) != 0)
  {
    v7 = MEMORY[0x1E695E110];
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:(ineligibilityReasons2 & 0x10) == 0];
  }

  return v7;
}

- (id)requiredEntitlements
{
  v7[1] = *MEMORY[0x1E69E9840];
  featureIdentifier = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)self featureIdentifier];
  v3 = [HKFeatureAvailabilityRequirementEntitlement featureAvailabilityReadEntitlementForFeatureIdentifier:featureIdentifier];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end