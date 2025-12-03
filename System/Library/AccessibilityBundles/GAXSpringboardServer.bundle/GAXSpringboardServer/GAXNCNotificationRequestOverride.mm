@interface GAXNCNotificationRequestOverride
- (BOOL)sb_shouldSuppressAlert;
@end

@implementation GAXNCNotificationRequestOverride

- (BOOL)sb_shouldSuppressAlert
{
  v4 = +[GAXSpringboard sharedInstance];
  isActive = [v4 isActive];

  if (isActive)
  {
    v6 = GAXLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      Name = sel_getName(a2);
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "GAX blocking notification request: returning true for %{public}s because GAX is active.", buf, 0xCu);
    }

    return 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = GAXNCNotificationRequestOverride;
    return [(GAXNCNotificationRequestOverride *)&v8 sb_shouldSuppressAlert];
  }
}

@end