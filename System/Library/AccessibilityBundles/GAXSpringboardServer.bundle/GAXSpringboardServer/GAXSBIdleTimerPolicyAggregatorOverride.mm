@interface GAXSBIdleTimerPolicyAggregatorOverride
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)idleTimerDidExpire:(id)expire;
- (void)idleTimerDidWarn:(id)warn;
@end

@implementation GAXSBIdleTimerPolicyAggregatorOverride

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBIdleTimerPolicyAggregator" hasInstanceMethod:@"idleTimerDidWarn:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SBIdleTimerPolicyAggregator" hasInstanceMethod:@"idleTimerDidExpire:" withFullSignature:{"v", "@", 0}];
}

- (void)idleTimerDidWarn:(id)warn
{
  warnCopy = warn;
  v5 = +[AXSettings sharedInstance];
  guestPassSessionIsActive = [v5 guestPassSessionIsActive];

  if (guestPassSessionIsActive)
  {
    v7 = GAXLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Guided Access is preventing warn/dim during active Guest Pass", buf, 2u);
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = GAXSBIdleTimerPolicyAggregatorOverride;
    [(GAXSBIdleTimerPolicyAggregatorOverride *)&v8 idleTimerDidWarn:warnCopy];
  }
}

- (void)idleTimerDidExpire:(id)expire
{
  expireCopy = expire;
  v5 = +[AXSettings sharedInstance];
  guestPassSessionIsActive = [v5 guestPassSessionIsActive];

  if (guestPassSessionIsActive)
  {
    v7 = AXGuestPassManager();
    v8 = v7;
    if (v7)
    {
      [v7 endGuestPassSessionWithCompletionBlock:&stru_2D028];
    }

    else
    {
      v9 = GAXLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_16B5C(v9);
      }
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = GAXSBIdleTimerPolicyAggregatorOverride;
    [(GAXSBIdleTimerPolicyAggregatorOverride *)&v10 idleTimerDidExpire:expireCopy];
  }
}

@end