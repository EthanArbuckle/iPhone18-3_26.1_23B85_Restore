@interface HKFeatureAvailabilityRequirementSeedIsNotExpired
- (BOOL)isEqual:(id)equal;
- (NSArray)requiredEntitlements;
- (NSString)requirementDescription;
- (id)isSatisfiedWithOnboardingEligibility:(id)eligibility error:(id *)error;
@end

@implementation HKFeatureAvailabilityRequirementSeedIsNotExpired

- (NSString)requirementDescription
{
  v2 = MEMORY[0x1E696AEC0];
  featureIdentifier = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)self featureIdentifier];
  v4 = [v2 stringWithFormat:@"The developer seed must not have expired for %@", featureIdentifier];

  return v4;
}

- (NSArray)requiredEntitlements
{
  v7[1] = *MEMORY[0x1E69E9840];
  featureIdentifier = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)self featureIdentifier];
  v3 = [HKFeatureAvailabilityRequirementEntitlement featureAvailabilityReadEntitlementForFeatureIdentifier:featureIdentifier];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)isSatisfiedWithOnboardingEligibility:(id)eligibility error:(id *)error
{
  v4 = MEMORY[0x1E696AD98];
  v5 = ([eligibility ineligibilityReasons] & 0x80) == 0;

  return [v4 numberWithInt:v5];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = HKFeatureAvailabilityRequirementSeedIsNotExpired;
  if ([(HKFeatureAvailabilityOnboardingEligibilityRequirement *)&v7 isEqual:equalCopy])
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