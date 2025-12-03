@interface HUCCControlCenterCompactModule
- (BOOL)isDeviceUnlockedForModuleContentViewController:(id)controller;
- (HUCCControlCenterCompactModule)init;
- (id)contentViewControllerForContext:(id)context;
- (void)launchHomeAppForModuleContentViewController:(id)controller;
- (void)moduleContentViewController:(id)controller viewDidDisappear:(BOOL)disappear;
- (void)moduleContentViewController:(id)controller viewWillAppear:(BOOL)appear;
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
      mEMORY[0x29EDC54A8] = [MEMORY[0x29EDC54A8] sharedManager];
      [mEMORY[0x29EDC54A8] bootstrap];
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

- (id)contentViewControllerForContext:(id)context
{
  v3 = [[HUCCCompactModuleContentViewController alloc] initWithDelegate:self];

  return v3;
}

- (void)moduleContentViewController:(id)controller viewWillAppear:(BOOL)appear
{
  if (_os_feature_enabled_impl())
  {
    mEMORY[0x29EDC54A8] = [MEMORY[0x29EDC54A8] sharedManager];
    [mEMORY[0x29EDC54A8] enterModuleViewWillAppear];
  }

  else
  {

    HUCCUpdateRunningState(1);
  }
}

- (void)moduleContentViewController:(id)controller viewDidDisappear:(BOOL)disappear
{
  if (_os_feature_enabled_impl())
  {
    mEMORY[0x29EDC54A8] = [MEMORY[0x29EDC54A8] sharedManager];
    [mEMORY[0x29EDC54A8] exitModuleViewDidDisappear];
  }

  else
  {

    HUCCUpdateRunningState(0);
  }
}

- (void)launchHomeAppForModuleContentViewController:(id)controller
{
  controllerCopy = controller;
  contentModuleContext = [(HUCCControlCenterCompactModule *)self contentModuleContext];
  launchHomeAppForModuleViewController(controllerCopy, contentModuleContext);
}

- (BOOL)isDeviceUnlockedForModuleContentViewController:(id)controller
{
  lockStateHandler = [(HUCCControlCenterCompactModule *)self lockStateHandler];
  isDeviceUnlocked = [lockStateHandler isDeviceUnlocked];

  return isDeviceUnlocked;
}

@end