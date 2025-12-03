@interface _HKFeatureAvailabilityRequirementCountryCodeIsPresent
- (BOOL)isEqual:(id)equal;
- (id)isSatisfiedWithOnboardingEligibility:(id)eligibility error:(id *)error;
@end

@implementation _HKFeatureAvailabilityRequirementCountryCodeIsPresent

- (id)isSatisfiedWithOnboardingEligibility:(id)eligibility error:(id *)error
{
  v4 = MEMORY[0x1E696AD98];
  v5 = ([eligibility ineligibilityReasons] & 1) == 0;

  return [v4 numberWithInt:v5];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = _HKFeatureAvailabilityRequirementCountryCodeIsPresent;
  if ([(HKFeatureAvailabilityOnboardingEligibilityRequirement *)&v7 isEqual:equalCopy])
  {
    v5 = [equalCopy isMemberOfClass:objc_opt_class()];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end