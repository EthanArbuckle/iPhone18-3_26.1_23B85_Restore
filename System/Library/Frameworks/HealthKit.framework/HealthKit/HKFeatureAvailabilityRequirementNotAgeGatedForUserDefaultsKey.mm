@interface HKFeatureAvailabilityRequirementNotAgeGatedForUserDefaultsKey
- (HKFeatureAvailabilityRequirementNotAgeGatedForUserDefaultsKey)initWithUserDefaultsKey:(id)key;
- (id)requiredEntitlements;
- (id)requirementDescription;
@end

@implementation HKFeatureAvailabilityRequirementNotAgeGatedForUserDefaultsKey

- (HKFeatureAvailabilityRequirementNotAgeGatedForUserDefaultsKey)initWithUserDefaultsKey:(id)key
{
  v4.receiver = self;
  v4.super_class = HKFeatureAvailabilityRequirementNotAgeGatedForUserDefaultsKey;
  return [(HKFeatureAvailabilityRequirementUserDefaultEvaluator *)&v4 initWithUserDefaultsKey:key];
}

- (id)requirementDescription
{
  v2 = MEMORY[0x1E696AEC0];
  userDefaultsKey = [(HKFeatureAvailabilityRequirementUserDefaultEvaluator *)self userDefaultsKey];
  v4 = [v2 stringWithFormat:@"The value of the age gating user defaults key %@ must not be YES", userDefaultsKey];

  return v4;
}

- (id)requiredEntitlements
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = +[HKFeatureAvailabilityRequirementEntitlement userDefaultsAgeGatingDomainAccessEntitlement];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

@end