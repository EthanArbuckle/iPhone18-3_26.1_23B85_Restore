@interface GAXSBIdleTimerGlobalStateMonitorOverride
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isBatterySaverModeActive;
- (id)autoLockTimeout;
@end

@implementation GAXSBIdleTimerGlobalStateMonitorOverride

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBIdleTimerGlobalStateMonitor" hasInstanceMethod:@"autoLockTimeout" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBIdleTimerGlobalStateMonitor" hasInstanceMethod:@"isBatterySaverModeActive" withFullSignature:{"B", 0}];
}

- (id)autoLockTimeout
{
  v18.receiver = self;
  v18.super_class = GAXSBIdleTimerGlobalStateMonitorOverride;
  autoLockTimeout = [(GAXSBIdleTimerGlobalStateMonitorOverride *)&v18 autoLockTimeout];
  v3 = +[GAXSpringboard sharedInstance];
  if (![v3 isActive])
  {
    goto LABEL_19;
  }

  v4 = +[AXSettings sharedInstance];
  guestPassSessionIsActive = [v4 guestPassSessionIsActive];

  if (!guestPassSessionIsActive)
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
        autoLockTimeout = autoLockTimeout;
        v7 = autoLockTimeout;
        goto LABEL_20;
      }

      v8 = +[AXSettings sharedInstance];
      guidedAccessAutoLockTimeInSeconds = [v8 guidedAccessAutoLockTimeInSeconds];

      if (guidedAccessAutoLockTimeInSeconds == AXSGuidedAccessAutoLockTimeMirrorSystem)
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

      if (guidedAccessAutoLockTimeInSeconds == AXSGuidedAccessAutoLockTimeNever)
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
        gaxInternalSettingsTimeRestrictionHasExpired = [v15 gaxInternalSettingsTimeRestrictionHasExpired];

        v12 = GAXLogCommon();
        v17 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
        if ((gaxInternalSettingsTimeRestrictionHasExpired & 1) == 0)
        {
          if (v17)
          {
            *buf = 134217984;
            v20 = guidedAccessAutoLockTimeInSeconds;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Using custom time %ld for idle timer.", buf, 0xCu);
          }

          [NSNumber numberWithInteger:guidedAccessAutoLockTimeInSeconds];
          autoLockTimeout = v10 = autoLockTimeout;
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

        v10 = autoLockTimeout;
        autoLockTimeout = &off_32840;
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
    isBatterySaverModeActive = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = GAXSBIdleTimerGlobalStateMonitorOverride;
    isBatterySaverModeActive = [(GAXSBIdleTimerGlobalStateMonitorOverride *)&v6 isBatterySaverModeActive];
  }

  return isBatterySaverModeActive;
}

@end