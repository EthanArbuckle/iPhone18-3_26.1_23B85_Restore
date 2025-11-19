@interface GAXSBIdleTimerGlobalStateMonitorOverride
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isBatterySaverModeActive;
- (id)autoLockTimeout;
@end

@implementation GAXSBIdleTimerGlobalStateMonitorOverride

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBIdleTimerGlobalStateMonitor" hasInstanceMethod:@"autoLockTimeout" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBIdleTimerGlobalStateMonitor" hasInstanceMethod:@"isBatterySaverModeActive" withFullSignature:{"B", 0}];
}

- (id)autoLockTimeout
{
  v18.receiver = self;
  v18.super_class = GAXSBIdleTimerGlobalStateMonitorOverride;
  v2 = [(GAXSBIdleTimerGlobalStateMonitorOverride *)&v18 autoLockTimeout];
  v3 = +[GAXSpringboard sharedInstance];
  if (![v3 isActive])
  {
    goto LABEL_19;
  }

  v4 = +[AXSettings sharedInstance];
  v5 = [v4 guestPassSessionIsActive];

  if (!v5)
  {
    if ([v3 allowsAutolock])
    {
      if ([v3 profileConfiguration] != 1)
      {
        v10 = GAXLogCommon();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v11 = "Using system idle timer because profile allows auto lock.";
          goto LABEL_17;
        }

LABEL_18:

LABEL_19:
        v2 = v2;
        v7 = v2;
        goto LABEL_20;
      }

      v8 = +[AXSettings sharedInstance];
      v9 = [v8 guidedAccessAutoLockTimeInSeconds];

      if (v9 == AXSGuidedAccessAutoLockTimeMirrorSystem)
      {
        v10 = GAXLogCommon();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v11 = "Using system idle timer in order to mirror Display & Brightness.";
LABEL_17:
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, v11, buf, 2u);
          goto LABEL_18;
        }

        goto LABEL_18;
      }

      if (v9 == AXSGuidedAccessAutoLockTimeNever)
      {
        v12 = GAXLogCommon();
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          goto LABEL_14;
        }

        *buf = 0;
        v13 = "Disabling idle timer per Guided Access auto-lock setting.";
      }

      else
      {
        v15 = +[AXSettings sharedInstance];
        v16 = [v15 gaxInternalSettingsTimeRestrictionHasExpired];

        v12 = GAXLogCommon();
        v17 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
        if ((v16 & 1) == 0)
        {
          if (v17)
          {
            *buf = 134217984;
            v20 = v9;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Using custom time %ld for idle timer.", buf, 0xCu);
          }

          [NSNumber numberWithInteger:v9];
          v2 = v10 = v2;
          goto LABEL_18;
        }

        if (!v17)
        {
          goto LABEL_14;
        }

        *buf = 0;
        v13 = "Disabling idle timer because time restriction has expired.";
      }
    }

    else
    {
      v12 = GAXLogCommon();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
LABEL_14:

        v10 = v2;
        v2 = &off_32840;
        goto LABEL_18;
      }

      *buf = 0;
      v13 = "Disabling idle timer because it is not allowed by the profile.";
    }

    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, v13, buf, 2u);
    goto LABEL_14;
  }

  v6 = GAXLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Guided Access detected active Guest Pass session - will automatically release after inactivity.", buf, 2u);
  }

  v7 = &off_32830;
LABEL_20:

  return v7;
}

- (BOOL)isBatterySaverModeActive
{
  v3 = +[GAXSpringboard sharedInstance];
  if ([v3 isActive])
  {
    v4 = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = GAXSBIdleTimerGlobalStateMonitorOverride;
    v4 = [(GAXSBIdleTimerGlobalStateMonitorOverride *)&v6 isBatterySaverModeActive];
  }

  return v4;
}

@end