@interface SBIconViewInvertColorsAccessibility
- (BOOL)accessibilityIgnoresInvertColors;
@end

@implementation SBIconViewInvertColorsAccessibility

- (BOOL)accessibilityIgnoresInvertColors
{
  if (_AXSInvertColorsEnabledGlobalCached())
  {
    isKindOfClass = 1;
  }

  else
  {
    v4 = [(SBIconViewInvertColorsAccessibility *)self safeValueForKey:@"superview"];
    NSClassFromString(@"SBFloatingDockIconListView");
    if (objc_opt_isKindOfClass())
    {
      isKindOfClass = 1;
    }

    else
    {
      NSClassFromString(@"SBDockIconListView");
      isKindOfClass = objc_opt_isKindOfClass();
    }
  }

  return isKindOfClass & 1;
}

@end