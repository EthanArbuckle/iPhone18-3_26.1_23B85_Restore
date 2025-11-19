@interface HKFeatureAvailabilityOnboardingCompletionEligibility
- (HKFeatureAvailabilityOnboardingCompletionEligibility)initWithOnboardingCompletion:(id)a3 onboardingEligibility:(id)a4;
@end

@implementation HKFeatureAvailabilityOnboardingCompletionEligibility

- (HKFeatureAvailabilityOnboardingCompletionEligibility)initWithOnboardingCompletion:(id)a3 onboardingEligibility:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HKFeatureAvailabilityOnboardingCompletionEligibility;
  v8 = [(HKFeatureAvailabilityOnboardingCompletionEligibility *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    onboardingCompletion = v8->_onboardingCompletion;
    v8->_onboardingCompletion = v9;

    v11 = [v7 copy];
    onboardingEligibility = v8->_onboardingEligibility;
    v8->_onboardingEligibility = v11;
  }

  return v8;
}

@end