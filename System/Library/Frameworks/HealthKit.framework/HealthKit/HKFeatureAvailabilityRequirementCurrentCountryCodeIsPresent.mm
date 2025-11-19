@interface HKFeatureAvailabilityRequirementCurrentCountryCodeIsPresent
- (id)isSatisfiedWithDataSource:(id)a3 error:(id *)a4;
- (id)requiredEntitlements;
- (id)requirementDescription;
@end

@implementation HKFeatureAvailabilityRequirementCurrentCountryCodeIsPresent

- (id)requirementDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)self featureIdentifier];
  v4 = [v2 stringWithFormat:@"A current country code must be present for %@", v3];

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

- (id)isSatisfiedWithDataSource:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 currentCountryCode];
  v8 = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)self featureIdentifier];
  v9 = [v6 onboardingEligibilityForFeatureWithIdentifier:v8 countryCode:v7 error:a4];

  if (v9)
  {
    v10 = [(_HKFeatureAvailabilityRequirementCountryCodeIsPresent *)self isSatisfiedWithOnboardingEligibility:v9 error:a4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end