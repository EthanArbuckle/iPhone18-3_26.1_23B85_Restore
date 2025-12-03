@interface PBControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)applicationDidFinishLaunching:(id)launching;
@end

@implementation PBControllerInvertColorsAccessibility

- (void)applicationDidFinishLaunching:(id)launching
{
  v4.receiver = self;
  v4.super_class = PBControllerInvertColorsAccessibility;
  [(PBControllerInvertColorsAccessibility *)&v4 applicationDidFinishLaunching:launching];
  [(PBControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  view = [v3 view];
  window = [view window];
  [(PBControllerInvertColorsAccessibility *)self accessibilityApplyIgnoreInvertToWindow:window];
}

@end