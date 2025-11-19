@interface PBControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)applicationDidFinishLaunching:(id)a3;
@end

@implementation PBControllerInvertColorsAccessibility

- (void)applicationDidFinishLaunching:(id)a3
{
  v4.receiver = self;
  v4.super_class = PBControllerInvertColorsAccessibility;
  [(PBControllerInvertColorsAccessibility *)&v4 applicationDidFinishLaunching:a3];
  [(PBControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 view];
  v5 = [v4 window];
  [(PBControllerInvertColorsAccessibility *)self accessibilityApplyIgnoreInvertToWindow:v5];
}

@end