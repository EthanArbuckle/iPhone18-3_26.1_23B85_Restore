@interface UIStatusBar_ModernInvertColorsAccessibility
- (BOOL)_accessibilityAppliesInvertColors;
- (BOOL)_accessibilityWindowHasInvertedApps;
- (BOOL)accessibilityIgnoresInvertColors;
- (void)_accessibilityLoadInvertColors;
- (void)didMoveToWindow;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation UIStatusBar_ModernInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v6 = self;
  v2 = [(UIStatusBar_ModernInvertColorsAccessibility *)v6 window];
  v3 = [v2 traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (_AXSInvertColorsEnabled() && v4 == &dword_0 + 2)
  {
    if (([(UIStatusBar_ModernInvertColorsAccessibility *)v6 accessibilityInvertColorsIsolatedTree]& 1) != 0)
    {
      goto LABEL_8;
    }

    [(UIStatusBar_ModernInvertColorsAccessibility *)v6 setAccessibilityInvertColorsIsolatedTree:1];
    v5 = [(UIStatusBar_ModernInvertColorsAccessibility *)v6 layer];
    [AXInvertColorsAppHelper applyInvertFilterToLayer:v5];
  }

  else
  {
    if ([(UIStatusBar_ModernInvertColorsAccessibility *)v6 _accessibilityAppliesInvertColors])
    {
      goto LABEL_8;
    }

    [(UIStatusBar_ModernInvertColorsAccessibility *)v6 setAccessibilityInvertColorsIsolatedTree:0];
    v5 = [(UIStatusBar_ModernInvertColorsAccessibility *)v6 layer];
    [AXInvertColorsAppHelper unapplyInvertFilterToLayer:v5];
  }

LABEL_8:

  _objc_release_x1();
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = UIStatusBar_ModernInvertColorsAccessibility;
  [(UIStatusBar_ModernInvertColorsAccessibility *)&v4 traitCollectionDidChange:a3];
  [(UIStatusBar_ModernInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = UIStatusBar_ModernInvertColorsAccessibility;
  [(UIStatusBar_ModernInvertColorsAccessibility *)&v3 didMoveToWindow];
  [(UIStatusBar_ModernInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (BOOL)_accessibilityAppliesInvertColors
{
  v2 = self;
  v3 = [(UIStatusBar_ModernInvertColorsAccessibility *)v2 window];
  NSClassFromString(@"SBMainDisplaySceneLayoutWindow");
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    objc_opt_class();
    v5 = [(UIStatusBar_ModernInvertColorsAccessibility *)v2 safeValueForKey:@"foregroundColor"];
    v6 = __UIAccessibilityCastAsClass();

    if ([(UIStatusBar_ModernInvertColorsAccessibility *)v2 accessibilityIgnoresInvertColors]&& [(UIStatusBar_ModernInvertColorsAccessibility *)v2 _accessibilityWindowHasInvertedApps])
    {
      LOBYTE(v7) = 1;
    }

    else if (_AXSInvertColorsEnabledGlobalCached())
    {
      v8 = +[UIColor whiteColor];
      if ([v6 isEqual:v8])
      {
        LOBYTE(v7) = 0;
      }

      else
      {
        v7 = ![(UIStatusBar_ModernInvertColorsAccessibility *)v2 _accessibilityWindowHasInvertedApps];
      }
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  else if ([(UIStatusBar_ModernInvertColorsAccessibility *)v2 accessibilityIgnoresInvertColors])
  {
    LOBYTE(v7) = _AXSInvertColorsEnabled() != 0;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)accessibilityIgnoresInvertColors
{
  v2 = self;
  v3 = [(UIStatusBar_ModernInvertColorsAccessibility *)v2 window];
  v4 = [v3 traitCollection];
  v5 = [v4 userInterfaceStyle];

  if (v5 == &dword_0 + 2)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    objc_opt_class();
    v7 = [(UIStatusBar_ModernInvertColorsAccessibility *)v2 safeValueForKey:@"foregroundColor"];
    v8 = __UIAccessibilityCastAsClass();

    if (v8 || (+[UIApplication _isClassic]& 1) == 0)
    {
      v9 = _AXSInvertColorsEnabledGlobalCached() == 0;
      v10 = +[UIColor whiteColor];
      v6 = [v8 isEqual:v10] ^ v9;
    }

    else
    {
      LOBYTE(v6) = 1;
    }
  }

  return v6;
}

- (BOOL)_accessibilityWindowHasInvertedApps
{
  v2 = self;
  objc_opt_class();
  v3 = [(UIStatusBar_ModernInvertColorsAccessibility *)v2 window];
  v4 = __UIAccessibilityCastAsSafeCategory();

  LOBYTE(v3) = [v4 _accessibilityWindowHasInvertedApps];
  return v3;
}

@end