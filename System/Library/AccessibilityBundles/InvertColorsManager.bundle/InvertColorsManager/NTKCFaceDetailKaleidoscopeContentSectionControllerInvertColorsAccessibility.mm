@interface NTKCFaceDetailKaleidoscopeContentSectionControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)_presentPhotoPicker;
@end

@implementation NTKCFaceDetailKaleidoscopeContentSectionControllerInvertColorsAccessibility

- (void)_presentPhotoPicker
{
  v3.receiver = self;
  v3.super_class = NTKCFaceDetailKaleidoscopeContentSectionControllerInvertColorsAccessibility;
  [(NTKCFaceDetailKaleidoscopeContentSectionControllerInvertColorsAccessibility *)&v3 _presentPhotoPicker];
  [(NTKCFaceDetailKaleidoscopeContentSectionControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  v3 = +[NSBundle mainBundle];
  bundleIdentifier = [v3 bundleIdentifier];
  v5 = [bundleIdentifier isEqualToString:AX_BridgeBundleName];

  if (v5)
  {
    objc_opt_class();
    v6 = [(NTKCFaceDetailKaleidoscopeContentSectionControllerInvertColorsAccessibility *)self safeValueForKey:@"parentViewController"];
    v7 = __UIAccessibilityCastAsClass();

    view = [v7 view];
    window = [view window];
    layer = [window layer];
    [AXInvertColorsAppHelper toggleInvertColors:layer];
  }
}

@end