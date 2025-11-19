@interface HKFeatureAvailabilityRequirementSomeRegionIsSupported
- (id)isSatisfiedWithRegionAvailability:(id)a3 dataSource:(id)a4 error:(id *)a5;
- (id)requiredEntitlements;
- (id)requirementDescription;
@end

@implementation HKFeatureAvailabilityRequirementSomeRegionIsSupported

- (id)isSatisfiedWithRegionAvailability:(id)a3 dataSource:(id)a4 error:(id *)a5
{
  v5 = a3;
  v6 = [v5 allowedCountries];

  if (v6)
  {
    v7 = MEMORY[0x1E696AD98];
    v8 = [v5 allowedCountries];
    v9 = [v7 numberWithBool:{objc_msgSend(v8, "someRegionIsSupported")}];
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
  v3 = [(HKFeatureAvailabilityRegionAvailabilityRequirement *)self featureIdentifier];
  v4 = [v2 stringWithFormat:@"At least one country must be supported for %@", v3];

  return v4;
}

- (id)requiredEntitlements
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [(HKFeatureAvailabilityRegionAvailabilityRequirement *)self featureIdentifier];
  v3 = [HKFeatureAvailabilityRequirementEntitlement featureAvailabilityReadEntitlementForFeatureIdentifier:v2];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end