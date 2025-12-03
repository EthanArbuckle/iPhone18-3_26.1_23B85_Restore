@interface UIView
- (BOOL)_accessibilityAncestorMatchesBlock:(id)block;
- (BOOL)_accessibilityAppliesInvertColors;
- (BOOL)_accessibilityAppliesInvertColorsInDarkUI;
- (BOOL)_accessibilityInvertEnabled;
- (void)_accessibilityApplyInvertFilter;
@end

@implementation UIView

- (BOOL)_accessibilityInvertEnabled
{
  accessibilityInvertEnabledOverride = [(UIView *)self accessibilityInvertEnabledOverride];
  if (!accessibilityInvertEnabledOverride)
  {
    return _AXSInvertColorsEnabled() != 0;
  }

  v4 = accessibilityInvertEnabledOverride;
  accessibilityInvertEnabledOverride2 = [(UIView *)self accessibilityInvertEnabledOverride];
  integerValue = [accessibilityInvertEnabledOverride2 integerValue];

  if (integerValue == -1)
  {
    return _AXSInvertColorsEnabled() != 0;
  }

  accessibilityInvertEnabledOverride3 = [(UIView *)self accessibilityInvertEnabledOverride];
  v8 = [accessibilityInvertEnabledOverride3 integerValue] == &dword_0 + 1;

  return v8;
}

- (BOOL)_accessibilityAppliesInvertColors
{
  accessibilityIgnoresInvertColors = [(UIView *)self accessibilityIgnoresInvertColors];
  if (accessibilityIgnoresInvertColors)
  {

    LOBYTE(accessibilityIgnoresInvertColors) = [(UIView *)self _accessibilityInvertEnabled];
  }

  return accessibilityIgnoresInvertColors;
}

- (BOOL)_accessibilityAppliesInvertColorsInDarkUI
{
  if (![(UIView *)self accessibilityAppliesInvertColorsInDarkUI]|| ![(UIView *)self _accessibilityInvertEnabled])
  {
    return 0;
  }

  return [(UIView *)self _accessibilityShouldApplyInvertColorsInDarkUI];
}

- (void)_accessibilityApplyInvertFilter
{
  window = [(UIView *)self window];
  v4 = window;
  if (window)
  {
    screen = [window screen];
    if ([screen _isCarScreen])
    {
    }

    else
    {
      screen2 = [v4 screen];
      _isCarInstrumentsScreen = [screen2 _isCarInstrumentsScreen];

      if ((_isCarInstrumentsScreen & 1) == 0)
      {
        traitCollection = [v4 traitCollection];
        if ([traitCollection userInterfaceStyle] == &dword_0 + 2)
        {
          _accessibilityInvertColorsSupportsDarkWindowInvert = [(UIView *)self _accessibilityInvertColorsSupportsDarkWindowInvert];
        }

        else
        {
          _accessibilityInvertColorsSupportsDarkWindowInvert = 0;
        }

        _accessibilityInvertColorsIsInHostedDarkWindow = [v4 _accessibilityInvertColorsIsInHostedDarkWindow];
        if ([(UIView *)self _accessibilityAppliesInvertColors]&& ([(UIView *)self safeBoolForKey:@"_ancestorHasInvertFilterApplied"]& 1) == 0)
        {
          v11 = (_accessibilityInvertColorsSupportsDarkWindowInvert | _accessibilityInvertColorsIsInHostedDarkWindow) ^ 1;
        }

        else
        {
          v11 = 0;
        }

        if ([(UIView *)self _accessibilityAppliesInvertColorsInDarkUI]&& [(UIView *)self _accessibilityInvertEnabled])
        {
          v11 |= _accessibilityInvertColorsSupportsDarkWindowInvert | _accessibilityInvertColorsIsInHostedDarkWindow;
        }

        accessibilityInvertEnabledOverride = [(UIView *)self accessibilityInvertEnabledOverride];
        if (accessibilityInvertEnabledOverride)
        {
          v13 = accessibilityInvertEnabledOverride;
          accessibilityInvertEnabledOverride2 = [(UIView *)self accessibilityInvertEnabledOverride];
          integerValue = [accessibilityInvertEnabledOverride2 integerValue];

          if (integerValue != -1)
          {
            v16 = +[AXSubsystemInvertColors sharedInstance];
            ignoreLogging = [v16 ignoreLogging];

            if ((ignoreLogging & 1) == 0)
            {
              v18 = +[AXSubsystemInvertColors identifier];
              v19 = AXLoggerForFacility();

              v20 = AXOSLogLevelFromAXLogLevel();
              if (os_log_type_enabled(v19, v20))
              {
                v21 = AXColorizeFormatLog();
                [(UIView *)self accessibilityInvertEnabledOverride];
                v28 = v11 & 1;
                v27 = v29 = self;
                v22 = _AXStringForArgs();

                if (os_log_type_enabled(v19, v20))
                {
                  *buf = 138543362;
                  v31 = v22;
                  _os_log_impl(&dword_0, v19, v20, "%{public}@", buf, 0xCu);
                }
              }
            }
          }
        }

        if (v11)
        {
          accessibilityInvertEnabledOverride3 = [(UIView *)self accessibilityInvertEnabledOverride];
          if ([accessibilityInvertEnabledOverride3 integerValue] == &dword_0 + 1)
          {
            v24 = 2;
          }

          else
          {
            v24 = 1;
          }
        }

        else
        {
          v24 = 0;
        }

        v25 = [(UIView *)self layer:v27];
        v26 = [AXInvertColorsAppHelper _accessibilityUpdateInvertColorsFilters:v25 traverseAncestors:0 updateType:v24];
      }
    }
  }
}

- (BOOL)_accessibilityAncestorMatchesBlock:(id)block
{
  blockCopy = block;
  superview = [(UIView *)self superview];
  if (superview)
  {
    v6 = superview;
    do
    {
      v7 = blockCopy[2](blockCopy, v6);
      if (v7)
      {
        break;
      }

      superview2 = [v6 superview];

      v6 = superview2;
    }

    while (superview2);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end