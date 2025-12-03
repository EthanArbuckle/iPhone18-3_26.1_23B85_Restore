@interface NSObject
- (BOOL)_accessibilityInvertColorsActsAsDarkWindow;
- (BOOL)_accessibilityInvertColorsSupportsDarkWindowInvert;
- (id)_accessibilityInvertColorsSupportsDarkWindowInvertBlock;
- (void)_accessibilitySetInvertColorsActsAsDarkWindowBlock:(id)block;
- (void)_accessibilitySetInvertColorsSupportsDarkWindowInvertBlock:(id)block;
- (void)accessibilityApplyIgnoreInvertToWindow:(id)window;
- (void)accessibilityDeapplyIgnoreInvertToWindow:(id)window;
@end

@implementation NSObject

- (void)accessibilityApplyIgnoreInvertToWindow:(id)window
{
  windowCopy = window;
  if (windowCopy)
  {
    v5 = +[AXSubsystemInvertColors sharedInstance];
    ignoreLogging = [v5 ignoreLogging];

    if ((ignoreLogging & 1) == 0)
    {
      v7 = +[AXSubsystemInvertColors identifier];
      v8 = AXLoggerForFacility();

      v9 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = AXColorizeFormatLog();
        v20 = windowCopy;
        v11 = _AXStringForArgs();
        if (os_log_type_enabled(v8, v9))
        {
          *buf = 138543362;
          v22 = v11;
          _os_log_impl(&dword_0, v8, v9, "%{public}@", buf, 0xCu);
        }
      }
    }

    if (([windowCopy accessibilityIgnoresInvertColors] & 1) == 0)
    {
      [windowCopy setAccessibilityIgnoresInvertColors:1];
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

- (void)accessibilityDeapplyIgnoreInvertToWindow:(id)window
{
  windowCopy = window;
  if (windowCopy)
  {
    v5 = +[AXSubsystemInvertColors sharedInstance];
    ignoreLogging = [v5 ignoreLogging];

    if ((ignoreLogging & 1) == 0)
    {
      v7 = +[AXSubsystemInvertColors identifier];
      v8 = AXLoggerForFacility();

      v9 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = AXColorizeFormatLog();
        v20 = windowCopy;
        v11 = _AXStringForArgs();
        if (os_log_type_enabled(v8, v9))
        {
          *buf = 138543362;
          v22 = v11;
          _os_log_impl(&dword_0, v8, v9, "%{public}@", buf, 0xCu);
        }
      }
    }

    if ([windowCopy accessibilityIgnoresInvertColors])
    {
      [windowCopy setAccessibilityIgnoresInvertColors:0];
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
  _accessibilityInvertColorsActsAsDarkWindowBlock = [self _accessibilityInvertColorsActsAsDarkWindowBlock];

  if (_accessibilityInvertColorsActsAsDarkWindowBlock)
  {
    _accessibilityInvertColorsActsAsDarkWindowBlock2 = [self _accessibilityInvertColorsActsAsDarkWindowBlock];
    bOOLValue = _accessibilityInvertColorsActsAsDarkWindowBlock2[2]();
  }

  else
  {
    v6 = [self _accessibilityValueForKey:@"_accessibilityInvertColorsActsAsDarkWindow"];
    _accessibilityInvertColorsActsAsDarkWindowBlock2 = v6;
    if (!v6)
    {
      v7 = 0;
      goto LABEL_6;
    }

    bOOLValue = [v6 BOOLValue];
  }

  v7 = bOOLValue;
LABEL_6:

  return v7;
}

- (void)_accessibilitySetInvertColorsActsAsDarkWindowBlock:(id)block
{
  v4 = objc_retainBlock(block);
  [self _accessibilitySetRetainedValue:v4 forKey:@"_accessibilityInvertColorsActsAsDarkWindowBlock"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    [AXInvertColorsManager toggleDarkModeWindowInvert:self];
  }
}

- (BOOL)_accessibilityInvertColorsSupportsDarkWindowInvert
{
  _accessibilityInvertColorsSupportsDarkWindowInvertBlock = [self _accessibilityInvertColorsSupportsDarkWindowInvertBlock];

  if (_accessibilityInvertColorsSupportsDarkWindowInvertBlock)
  {
    _accessibilityInvertColorsSupportsDarkWindowInvertBlock2 = [self _accessibilityInvertColorsSupportsDarkWindowInvertBlock];
    bOOLValue = _accessibilityInvertColorsSupportsDarkWindowInvertBlock2[2]();
  }

  else
  {
    v6 = [self _accessibilityValueForKey:@"_accessibilityInvertColorsSupportsDarkWindowInvert"];
    _accessibilityInvertColorsSupportsDarkWindowInvertBlock2 = v6;
    if (!v6)
    {
      v7 = 1;
      goto LABEL_6;
    }

    bOOLValue = [v6 BOOLValue];
  }

  v7 = bOOLValue;
LABEL_6:

  return v7;
}

- (void)_accessibilitySetInvertColorsSupportsDarkWindowInvertBlock:(id)block
{
  v4 = objc_retainBlock(block);
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