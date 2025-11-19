@interface HUCCControlCenterCompactModule
- (BOOL)isDeviceUnlockedForModuleContentViewController:(id)a3;
- (HUCCControlCenterCompactModule)init;
- (id)contentViewControllerForContext:(id)a3;
- (void)launchHomeAppForModuleContentViewController:(id)a3;
- (void)moduleContentViewController:(id)a3 viewDidDisappear:(BOOL)a4;
- (void)moduleContentViewController:(id)a3 viewWillAppear:(BOOL)a4;
@end

@implementation HUCCControlCenterCompactModule

- (HUCCControlCenterCompactModule)init
{
  v7.receiver = self;
  v7.super_class = HUCCControlCenterCompactModule;
  v2 = [(HUCCControlCenterCompactModule *)&v7 init];
  if (v2)
  {
    if (_os_feature_enabled_impl())
    {
      v3 = [MEMORY[0x29EDC54A8] sharedManager];
      [v3 bootstrap];
    }

    else
    {
      HUCCPerformCommonInitialization();
    }

    v4 = [[HUCCLockStateHandler alloc] initWithDelegate:v2];
    lockStateHandler = v2->_lockStateHandler;
    v2->_lockStateHandler = v4;

    if (qword_2A179A1C8 != -1)
    {
      sub_29C98CB9C();
    }
  }

  return v2;
}

- (id)contentViewControllerForContext:(id)a3
{
  v3 = [[HUCCCompactModuleContentViewController alloc] initWithDelegate:self];

  return v3;
}

- (void)moduleContentViewController:(id)a3 viewWillAppear:(BOOL)a4
{
  if (_os_feature_enabled_impl())
  {
    v4 = [MEMORY[0x29EDC54A8] sharedManager];
    [v4 enterModuleViewWillAppear];
  }

  else
  {

    HUCCUpdateRunningState(1);
  }
}

- (void)moduleContentViewController:(id)a3 viewDidDisappear:(BOOL)a4
{
  if (_os_feature_enabled_impl())
  {
    v4 = [MEMORY[0x29EDC54A8] sharedManager];
    [v4 exitModuleViewDidDisappear];
  }

  else
  {

    HUCCUpdateRunningState(0);
  }
}

- (void)launchHomeAppForModuleContentViewController:(id)a3
{
  v4 = a3;
  v5 = [(HUCCControlCenterCompactModule *)self contentModuleContext];
  launchHomeAppForModuleViewController(v4, v5);
}

- (BOOL)isDeviceUnlockedForModuleContentViewController:(id)a3
{
  v3 = [(HUCCControlCenterCompactModule *)self lockStateHandler];
  v4 = [v3 isDeviceUnlocked];

  return v4;
}

@end