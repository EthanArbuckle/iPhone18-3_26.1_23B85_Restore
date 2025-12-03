@interface HKFeatureAvailabilityRequirementSomeRegionIsSupported
- (id)isSatisfiedWithRegionAvailability:(id)availability dataSource:(id)source error:(id *)error;
- (id)requiredEntitlements;
- (id)requirementDescription;
@end

@implementation HKFeatureAvailabilityRequirementSomeRegionIsSupported

- (id)isSatisfiedWithRegionAvailability:(id)availability dataSource:(id)source error:(id *)error
{
  availabilityCopy = availability;
  allowedCountries = [availabilityCopy allowedCountries];

  if (allowedCountries)
  {
    v7 = MEMORY[0x1E696AD98];
    allowedCountries2 = [availabilityCopy allowedCountries];
    v9 = [v7 numberWithBool:{objc_msgSend(allowedCountries2, "someRegionIsSupported")}];
  }

  else
  {
    v9 = MEMORY[0x1E695E118];
  }

  return v9;
}

- (id)requirementDescription
{
  v2 = MEMORY[0x1E696AEC0];
  featureIdentifier = [(HKFeatureAvailabilityRegionAvailabilityRequirement *)self featureIdentifier];
  v4 = [v2 stringWithFormat:@"At least one country must be supported for %@", featureIdentifier];

  return v4;
}

- (id)requiredEntitlements
{
  v7[1] = *MEMORY[0x1E69E9840];
  featureIdentifier = [(HKFeatureAvailabilityRegionAvailabilityRequirement *)self featureIdentifier];
  v3 = [HKFeatureAvailabilityRequirementEntitlement featureAvailabilityReadEntitlementForFeatureIdentifier:featureIdentifier];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end