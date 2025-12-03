@interface HKFeatureAvailabilityRequirementCurrentCountryIsSupportedOnLocalDevice
- (id)isSatisfiedWithDataSource:(id)source error:(id *)error;
- (id)requiredEntitlements;
- (id)requirementDescription;
@end

@implementation HKFeatureAvailabilityRequirementCurrentCountryIsSupportedOnLocalDevice

- (id)requirementDescription
{
  v2 = MEMORY[0x1E696AEC0];
  featureIdentifier = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)self featureIdentifier];
  v4 = [v2 stringWithFormat:@"The current country must be supported for %@ on the local device", featureIdentifier];

  return v4;
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

- (id)isSatisfiedWithDataSource:(id)source error:(id *)error
{
  sourceCopy = source;
  currentCountryCode = [sourceCopy currentCountryCode];
  featureIdentifier = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)self featureIdentifier];
  v9 = [sourceCopy onboardingEligibilityForFeatureWithIdentifier:featureIdentifier countryCode:currentCountryCode error:error];

  if (v9)
  {
    v10 = [(_HKFeatureAvailabilityRequirementCountryIsSupportedOnLocalDevice *)self isSatisfiedWithOnboardingEligibility:v9 error:error];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end