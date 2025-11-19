@interface HKRPRespiratoryHealthBridgeSetupBaseController
- (id)_buildPrimaryViewControllerWithSettings:(id)a3 onboardingManager:(id)a4;
- (id)viewController;
- (void)miniFlowStepComplete:(id)a3;
- (void)miniFlowStepComplete:(id)a3 nextControllerClass:(Class)a4;
@end

@implementation HKRPRespiratoryHealthBridgeSetupBaseController

- (id)_buildPrimaryViewControllerWithSettings:(id)a3 onboardingManager:(id)a4
{
  v5 = [HKRPOnboardingViewControllerFactory onboardingViewControllerWithStyle:0 settings:a3 onboardingManager:a4 onboardingDelegate:0];
  [v5 setMiniFlowDelegate:self];

  return v5;
}

- (id)viewController
{
  v3 = objc_alloc_init(HKRPOxygenSaturationOnboardingManager);
  if ([v3 onboardingDuringPairingShouldAppear])
  {
    v4 = +[HKRPOxygenSaturationSettings standardSettings];
    v5 = [(HKRPRespiratoryHealthBridgeSetupBaseController *)self _buildPrimaryViewControllerWithSettings:v4 onboardingManager:v3];
  }

  else
  {
    _HKInitializeLogging();
    v6 = HKLogRespiratoryCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = objc_opt_class();
      v7 = v11;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipped onboarding during pairing", &v10, 0xCu);
    }

    [v3 cacheCompletedOnboardingStateIfNeeded];
    v8 = [(HKRPRespiratoryHealthBridgeSetupBaseController *)self delegate];
    [v8 buddyControllerReleaseHoldAndSkip:self];

    v5 = 0;
  }

  return v5;
}

- (void)miniFlowStepComplete:(id)a3
{
  v4 = [(HKRPRespiratoryHealthBridgeSetupBaseController *)self delegate];
  [v4 buddyControllerDone:self];
}

- (void)miniFlowStepComplete:(id)a3 nextControllerClass:(Class)a4
{
  v5 = [(HKRPRespiratoryHealthBridgeSetupBaseController *)self delegate:a3];
  [v5 buddyControllerDone:self];
}

@end