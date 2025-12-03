@interface MenstrualCyclesOnboardingChangeDetector
- (void)onboardingManagerDidUpdateOnboardingCompletion:(id)completion;
@end

@implementation MenstrualCyclesOnboardingChangeDetector

- (void)onboardingManagerDidUpdateOnboardingCompletion:(id)completion
{
  completionCopy = completion;

  sub_29E271B98();
}

@end