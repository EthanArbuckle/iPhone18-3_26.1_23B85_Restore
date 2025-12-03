@interface NTKCPhotosAddControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)picker:(id)picker didFinishPicking:(id)picking;
@end

@implementation NTKCPhotosAddControllerInvertColorsAccessibility

- (void)picker:(id)picker didFinishPicking:(id)picking
{
  v5.receiver = self;
  v5.super_class = NTKCPhotosAddControllerInvertColorsAccessibility;
  [(NTKCPhotosAddControllerInvertColorsAccessibility *)&v5 picker:picker didFinishPicking:picking];
  [(NTKCPhotosAddControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  v2 = +[NSBundle mainBundle];
  bundleIdentifier = [v2 bundleIdentifier];
  v4 = [bundleIdentifier isEqualToString:AX_BridgeBundleName];

  if (v4)
  {
    objc_opt_class();
    v5 = __UIAccessibilityCastAsClass();
    view = [v5 view];
    window = [view window];
    layer = [window layer];
    [AXInvertColorsAppHelper toggleInvertColors:layer];
  }
}

@end