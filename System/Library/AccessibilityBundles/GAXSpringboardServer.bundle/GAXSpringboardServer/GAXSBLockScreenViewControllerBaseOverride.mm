@interface GAXSBLockScreenViewControllerBaseOverride
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)launchEmergencyDialer;
@end

@implementation GAXSBLockScreenViewControllerBaseOverride

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBLockScreenViewControllerBase" hasInstanceMethod:@"exitEmergencyDialerAnimated:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"SBLockScreenViewControllerBase" hasInstanceMethod:@"launchEmergencyDialer" withFullSignature:{"v", 0}];
}

- (void)launchEmergencyDialer
{
  v3 = +[GAXSpringboard sharedInstance];
  if ([v3 wantsSingleAppModeOrAppSelfLockMode])
  {
    v4 = GAXLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Device wants Single App mode / App self-lock mode. Not allowing emergency call", buf, 2u);
    }
  }

  else
  {
    v5.receiver = self;
    v5.super_class = GAXSBLockScreenViewControllerBaseOverride;
    [(GAXSBLockScreenViewControllerBaseOverride *)&v5 launchEmergencyDialer];
    [v3 notifyBackboardIsMakingEmergencyCall:1];
  }
}

@end