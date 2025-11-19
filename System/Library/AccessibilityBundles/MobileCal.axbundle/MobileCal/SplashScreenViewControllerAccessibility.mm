@interface SplashScreenViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SplashScreenViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = SplashScreenViewControllerAccessibility;
  [(SplashScreenViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 view];
  [v3 setAccessibilityIdentifier:@"SplashScreen"];
}

@end