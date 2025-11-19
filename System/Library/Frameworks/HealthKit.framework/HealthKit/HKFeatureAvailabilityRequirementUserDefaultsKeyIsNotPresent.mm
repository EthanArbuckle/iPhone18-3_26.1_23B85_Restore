@interface HKFeatureAvailabilityRequirementUserDefaultsKeyIsNotPresent
- (id)requiredEntitlements;
- (id)requirementDescription;
@end

@implementation HKFeatureAvailabilityRequirementUserDefaultsKeyIsNotPresent

- (id)requirementDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(HKFeatureAvailabilityRequirementUserDefaultEvaluator *)self userDefaultsKey];
  v4 = [v2 stringWithFormat:@"The value of the user defaults key %@ must be nil", v3];

  return v4;
}

- (id)requiredEntitlements
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = +[HKFeatureAvailabilityRequirementEntitlement userDefaultsHealthSharedDomainReadWriteAccessEntitlement];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

@end