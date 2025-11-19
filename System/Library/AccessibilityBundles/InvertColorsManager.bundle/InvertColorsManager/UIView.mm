@interface UIView
- (BOOL)_accessibilityAncestorMatchesBlock:(id)a3;
- (BOOL)_accessibilityAppliesInvertColors;
- (BOOL)_accessibilityAppliesInvertColorsInDarkUI;
- (BOOL)_accessibilityInvertEnabled;
- (void)_accessibilityApplyInvertFilter;
@end

@implementation UIView

- (BOOL)_accessibilityInvertEnabled
{
  v3 = [(UIView *)self accessibilityInvertEnabledOverride];
  if (!v3)
  {
    return _AXSInvertColorsEnabled() != 0;
  }

  v4 = v3;
  v5 = [(UIView *)self accessibilityInvertEnabledOverride];
  v6 = [v5 integerValue];

  if (v6 == -1)
  {
    return _AXSInvertColorsEnabled() != 0;
  }

  v7 = [(UIView *)self accessibilityInvertEnabledOverride];
  v8 = [v7 integerValue] == &dword_0 + 1;

  return v8;
}

- (BOOL)_accessibilityAppliesInvertColors
{
  v3 = [(UIView *)self accessibilityIgnoresInvertColors];
  if (v3)
  {

    LOBYTE(v3) = [(UIView *)self _accessibilityInvertEnabled];
  }

  return v3;
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
  v3 = [(UIView *)self window];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 screen];
    if ([v5 _isCarScreen])
    {
    }

    else
    {
      v6 = [v4 screen];
      v7 = [v6 _isCarInstrumentsScreen];

      if ((v7 & 1) == 0)
      {
        v8 = [v4 traitCollection];
        if ([v8 userInterfaceStyle] == &dword_0 + 2)
        {
          v9 = [(UIView *)self _accessibilityInvertColorsSupportsDarkWindowInvert];
        }

        else
        {
          v9 = 0;
        }

        v10 = [v4 _accessibilityInvertColorsIsInHostedDarkWindow];
        if ([(UIView *)self _accessibilityAppliesInvertColors]&& ([(UIView *)self safeBoolForKey:@"_ancestorHasInvertFilterApplied"]& 1) == 0)
        {
          v11 = (v9 | v10) ^ 1;
        }

        else
        {
          v11 = 0;
        }

        if ([(UIView *)self _accessibilityAppliesInvertColorsInDarkUI]&& [(UIView *)self _accessibilityInvertEnabled])
        {
          v11 |= v9 | v10;
        }

        v12 = [(UIView *)self accessibilityInvertEnabledOverride];
        if (v12)
        {
          v13 = v12;
          v14 = [(UIView *)self accessibilityInvertEnabledOverride];
          v15 = [v14 integerValue];

          if (v15 != -1)
          {
            v16 = +[AXSubsystemInvertColors sharedInstance];
            v17 = [v16 ignoreLogging];

            if ((v17 & 1) == 0)
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
          v23 = [(UIView *)self accessibilityInvertEnabledOverride];
          if ([v23 integerValue] == &dword_0 + 1)
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

- (BOOL)_accessibilityAncestorMatchesBlock:(id)a3
{
  v4 = a3;
  v5 = [(UIView *)self superview];
  if (v5)
  {
    v6 = v5;
    do
    {
      v7 = v4[2](v4, v6);
      if (v7)
      {
        break;
      }

      v8 = [v6 superview];

      v6 = v8;
    }

    while (v8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end