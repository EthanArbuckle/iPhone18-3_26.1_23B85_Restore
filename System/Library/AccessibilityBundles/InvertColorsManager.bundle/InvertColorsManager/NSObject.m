@interface NSObject
- (BOOL)_accessibilityInvertColorsActsAsDarkWindow;
- (BOOL)_accessibilityInvertColorsSupportsDarkWindowInvert;
- (id)_accessibilityInvertColorsSupportsDarkWindowInvertBlock;
- (void)_accessibilitySetInvertColorsActsAsDarkWindowBlock:(id)a3;
- (void)_accessibilitySetInvertColorsSupportsDarkWindowInvertBlock:(id)a3;
- (void)accessibilityApplyIgnoreInvertToWindow:(id)a3;
- (void)accessibilityDeapplyIgnoreInvertToWindow:(id)a3;
@end

@implementation NSObject

- (void)accessibilityApplyIgnoreInvertToWindow:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = +[AXSubsystemInvertColors sharedInstance];
    v6 = [v5 ignoreLogging];

    if ((v6 & 1) == 0)
    {
      v7 = +[AXSubsystemInvertColors identifier];
      v8 = AXLoggerForFacility();

      v9 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = AXColorizeFormatLog();
        v20 = v4;
        v11 = _AXStringForArgs();
        if (os_log_type_enabled(v8, v9))
        {
          *buf = 138543362;
          v22 = v11;
          _os_log_impl(&dword_0, v8, v9, "%{public}@", buf, 0xCu);
        }
      }
    }

    if (([v4 accessibilityIgnoresInvertColors] & 1) == 0)
    {
      [v4 setAccessibilityIgnoresInvertColors:1];
      v12 = AXLogInvertColors();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_205D0(self, v12, v13, v14, v15, v16, v17, v18);
      }

      LocalCenter = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(LocalCenter, UIAccessibilityInvertColorsStatusDidChangeNotification, 0, 0, 1u);
    }
  }
}

- (void)accessibilityDeapplyIgnoreInvertToWindow:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = +[AXSubsystemInvertColors sharedInstance];
    v6 = [v5 ignoreLogging];

    if ((v6 & 1) == 0)
    {
      v7 = +[AXSubsystemInvertColors identifier];
      v8 = AXLoggerForFacility();

      v9 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = AXColorizeFormatLog();
        v20 = v4;
        v11 = _AXStringForArgs();
        if (os_log_type_enabled(v8, v9))
        {
          *buf = 138543362;
          v22 = v11;
          _os_log_impl(&dword_0, v8, v9, "%{public}@", buf, 0xCu);
        }
      }
    }

    if ([v4 accessibilityIgnoresInvertColors])
    {
      [v4 setAccessibilityIgnoresInvertColors:0];
      v12 = AXLogInvertColors();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_2063C(self, v12, v13, v14, v15, v16, v17, v18);
      }

      LocalCenter = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(LocalCenter, UIAccessibilityInvertColorsStatusDidChangeNotification, 0, 0, 1u);
    }
  }
}

- (BOOL)_accessibilityInvertColorsActsAsDarkWindow
{
  v3 = [self _accessibilityInvertColorsActsAsDarkWindowBlock];

  if (v3)
  {
    v4 = [self _accessibilityInvertColorsActsAsDarkWindowBlock];
    v5 = v4[2]();
  }

  else
  {
    v6 = [self _accessibilityValueForKey:@"_accessibilityInvertColorsActsAsDarkWindow"];
    v4 = v6;
    if (!v6)
    {
      v7 = 0;
      goto LABEL_6;
    }

    v5 = [v6 BOOLValue];
  }

  v7 = v5;
LABEL_6:

  return v7;
}

- (void)_accessibilitySetInvertColorsActsAsDarkWindowBlock:(id)a3
{
  v4 = objc_retainBlock(a3);
  [self _accessibilitySetRetainedValue:v4 forKey:@"_accessibilityInvertColorsActsAsDarkWindowBlock"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    [AXInvertColorsManager toggleDarkModeWindowInvert:self];
  }
}

- (BOOL)_accessibilityInvertColorsSupportsDarkWindowInvert
{
  v3 = [self _accessibilityInvertColorsSupportsDarkWindowInvertBlock];

  if (v3)
  {
    v4 = [self _accessibilityInvertColorsSupportsDarkWindowInvertBlock];
    v5 = v4[2]();
  }

  else
  {
    v6 = [self _accessibilityValueForKey:@"_accessibilityInvertColorsSupportsDarkWindowInvert"];
    v4 = v6;
    if (!v6)
    {
      v7 = 1;
      goto LABEL_6;
    }

    v5 = [v6 BOOLValue];
  }

  v7 = v5;
LABEL_6:

  return v7;
}

- (void)_accessibilitySetInvertColorsSupportsDarkWindowInvertBlock:(id)a3
{
  v4 = objc_retainBlock(a3);
  [self _accessibilitySetRetainedValue:v4 forKey:@"_accessibilitySetInvertColorsSupportsDarkWindowInvertBlock"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    [AXInvertColorsManager toggleDarkModeWindowInvert:self];
  }
}

- (id)_accessibilityInvertColorsSupportsDarkWindowInvertBlock
{
  v2 = [self _accessibilityValueForKey:@"_accessibilitySetInvertColorsSupportsDarkWindowInvertBlock"];
  v3 = objc_retainBlock(v2);

  return v3;
}

@end