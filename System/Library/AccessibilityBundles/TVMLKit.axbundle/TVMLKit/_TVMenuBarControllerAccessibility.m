@interface _TVMenuBarControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation _TVMenuBarControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = _TVMenuBarControllerAccessibility;
  [(_TVMenuBarControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(_TVMenuBarControllerAccessibility *)self safeValueForKey:@"view"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 setAccessibilityNavigationStyle:2];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = _TVMenuBarControllerAccessibility;
  [(_TVMenuBarControllerAccessibility *)&v3 viewDidLoad];
  [(_TVMenuBarControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end