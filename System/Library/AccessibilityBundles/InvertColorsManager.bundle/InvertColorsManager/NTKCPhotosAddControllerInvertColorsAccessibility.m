@interface NTKCPhotosAddControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)picker:(id)a3 didFinishPicking:(id)a4;
@end

@implementation NTKCPhotosAddControllerInvertColorsAccessibility

- (void)picker:(id)a3 didFinishPicking:(id)a4
{
  v5.receiver = self;
  v5.super_class = NTKCPhotosAddControllerInvertColorsAccessibility;
  [(NTKCPhotosAddControllerInvertColorsAccessibility *)&v5 picker:a3 didFinishPicking:a4];
  [(NTKCPhotosAddControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 isEqualToString:AX_BridgeBundleName];

  if (v4)
  {
    objc_opt_class();
    v5 = __UIAccessibilityCastAsClass();
    v6 = [v5 view];
    v7 = [v6 window];
    v8 = [v7 layer];
    [AXInvertColorsAppHelper toggleInvertColors:v8];
  }
}

@end