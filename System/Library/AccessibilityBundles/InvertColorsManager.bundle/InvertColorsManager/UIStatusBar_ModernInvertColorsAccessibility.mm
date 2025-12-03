@interface UIStatusBar_ModernInvertColorsAccessibility
- (BOOL)_accessibilityAppliesInvertColors;
- (BOOL)_accessibilityWindowHasInvertedApps;
- (BOOL)accessibilityIgnoresInvertColors;
- (void)_accessibilityLoadInvertColors;
- (void)didMoveToWindow;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation UIStatusBar_ModernInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  selfCopy = self;
  window = [(UIStatusBar_ModernInvertColorsAccessibility *)selfCopy window];
  traitCollection = [window traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (_AXSInvertColorsEnabled() && userInterfaceStyle == &dword_0 + 2)
  {
    if (([(UIStatusBar_ModernInvertColorsAccessibility *)selfCopy accessibilityInvertColorsIsolatedTree]& 1) != 0)
    {
      goto LABEL_8;
    }

    [(UIStatusBar_ModernInvertColorsAccessibility *)selfCopy setAccessibilityInvertColorsIsolatedTree:1];
    layer = [(UIStatusBar_ModernInvertColorsAccessibility *)selfCopy layer];
    [AXInvertColorsAppHelper applyInvertFilterToLayer:layer];
  }

  else
  {
    if ([(UIStatusBar_ModernInvertColorsAccessibility *)selfCopy _accessibilityAppliesInvertColors])
    {
      goto LABEL_8;
    }

    [(UIStatusBar_ModernInvertColorsAccessibility *)selfCopy setAccessibilityInvertColorsIsolatedTree:0];
    layer = [(UIStatusBar_ModernInvertColorsAccessibility *)selfCopy layer];
    [AXInvertColorsAppHelper unapplyInvertFilterToLayer:layer];
  }

LABEL_8:

  _objc_release_x1();
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = UIStatusBar_ModernInvertColorsAccessibility;
  [(UIStatusBar_ModernInvertColorsAccessibility *)&v4 traitCollectionDidChange:change];
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
  selfCopy = self;
  window = [(UIStatusBar_ModernInvertColorsAccessibility *)selfCopy window];
  NSClassFromString(@"SBMainDisplaySceneLayoutWindow");
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    objc_opt_class();
    v5 = [(UIStatusBar_ModernInvertColorsAccessibility *)selfCopy safeValueForKey:@"foregroundColor"];
    v6 = __UIAccessibilityCastAsClass();

    if ([(UIStatusBar_ModernInvertColorsAccessibility *)selfCopy accessibilityIgnoresInvertColors]&& [(UIStatusBar_ModernInvertColorsAccessibility *)selfCopy _accessibilityWindowHasInvertedApps])
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
        v7 = ![(UIStatusBar_ModernInvertColorsAccessibility *)selfCopy _accessibilityWindowHasInvertedApps];
      }
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  else if ([(UIStatusBar_ModernInvertColorsAccessibility *)selfCopy accessibilityIgnoresInvertColors])
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
  selfCopy = self;
  window = [(UIStatusBar_ModernInvertColorsAccessibility *)selfCopy window];
  traitCollection = [window traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == &dword_0 + 2)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    objc_opt_class();
    v7 = [(UIStatusBar_ModernInvertColorsAccessibility *)selfCopy safeValueForKey:@"foregroundColor"];
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
  selfCopy = self;
  objc_opt_class();
  window = [(UIStatusBar_ModernInvertColorsAccessibility *)selfCopy window];
  v4 = __UIAccessibilityCastAsSafeCategory();

  LOBYTE(window) = [v4 _accessibilityWindowHasInvertedApps];
  return window;
}

@end