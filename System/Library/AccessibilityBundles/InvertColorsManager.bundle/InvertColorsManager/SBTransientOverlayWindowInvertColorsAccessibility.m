@interface SBTransientOverlayWindowInvertColorsAccessibility
- (BOOL)_accessibilityInvertColorsSupportsDarkWindowInvert;
- (void)_setDelegateViewController:(id)a3;
@end

@implementation SBTransientOverlayWindowInvertColorsAccessibility

- (BOOL)_accessibilityInvertColorsSupportsDarkWindowInvert
{
  v3 = [(SBTransientOverlayWindowInvertColorsAccessibility *)self safeValueForKey:@"delegate"];
  v4 = [v3 safeValueForKey:@"_hostContentAdapter"];
  v5 = [v4 safeStringForKey:@"serviceBundleIdentifier"];
  v6 = [v5 isEqualToString:@"com.apple.ScreenshotServicesService"];

  if (v6)
  {
    return 0;
  }

  v8.receiver = self;
  v8.super_class = SBTransientOverlayWindowInvertColorsAccessibility;
  return [(SBTransientOverlayWindowInvertColorsAccessibility *)&v8 _accessibilityInvertColorsSupportsDarkWindowInvert];
}

- (void)_setDelegateViewController:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBTransientOverlayWindowInvertColorsAccessibility;
  [(SBTransientOverlayWindowInvertColorsAccessibility *)&v4 _setDelegateViewController:a3];
  [AXInvertColorsManager toggleDarkModeWindowInvert:self];
}

@end