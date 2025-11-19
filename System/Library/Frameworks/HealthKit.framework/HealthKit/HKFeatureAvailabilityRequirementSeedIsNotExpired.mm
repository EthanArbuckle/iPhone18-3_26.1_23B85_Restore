@interface HKFeatureAvailabilityRequirementSeedIsNotExpired
- (BOOL)isEqual:(id)a3;
- (NSArray)requiredEntitlements;
- (NSString)requirementDescription;
- (id)isSatisfiedWithOnboardingEligibility:(id)a3 error:(id *)a4;
@end

@implementation HKFeatureAvailabilityRequirementSeedIsNotExpired

- (NSString)requirementDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)self featureIdentifier];
  v4 = [v2 stringWithFormat:@"The developer seed must not have expired for %@", v3];

  return v4;
}

- (NSArray)requiredEntitlements
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)self featureIdentifier];
  v3 = [HKFeatureAvailabilityRequirementEntitlement featureAvailabilityReadEntitlementForFeatureIdentifier:v2];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)isSatisfiedWithOnboardingEligibility:(id)a3 error:(id *)a4
{
  v4 = MEMORY[0x1E696AD98];
  v5 = ([a3 ineligibilityReasons] & 0x80) == 0;

  return [v4 numberWithInt:v5];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = HKFeatureAvailabilityRequirementSeedIsNotExpired;
  if ([(HKFeatureAvailabilityOnboardingEligibilityRequirement *)&v7 isEqual:v4])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

@end