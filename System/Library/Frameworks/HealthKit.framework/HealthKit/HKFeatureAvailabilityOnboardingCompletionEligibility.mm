@interface HKFeatureAvailabilityOnboardingCompletionEligibility
- (HKFeatureAvailabilityOnboardingCompletionEligibility)initWithOnboardingCompletion:(id)completion onboardingEligibility:(id)eligibility;
@end

@implementation HKFeatureAvailabilityOnboardingCompletionEligibility

- (HKFeatureAvailabilityOnboardingCompletionEligibility)initWithOnboardingCompletion:(id)completion onboardingEligibility:(id)eligibility
{
  completionCopy = completion;
  eligibilityCopy = eligibility;
  v14.receiver = self;
  v14.super_class = HKFeatureAvailabilityOnboardingCompletionEligibility;
  v8 = [(HKFeatureAvailabilityOnboardingCompletionEligibility *)&v14 init];
  if (v8)
  {
    v9 = [completionCopy copy];
    onboardingCompletion = v8->_onboardingCompletion;
    v8->_onboardingCompletion = v9;

    v11 = [eligibilityCopy copy];
    onboardingEligibility = v8->_onboardingEligibility;
    v8->_onboardingEligibility = v11;
  }

  return v8;
}

@end