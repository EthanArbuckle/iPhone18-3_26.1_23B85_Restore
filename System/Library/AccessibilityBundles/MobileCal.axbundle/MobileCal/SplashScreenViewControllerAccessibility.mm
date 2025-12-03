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
  view = [v2 view];
  [view setAccessibilityIdentifier:@"SplashScreen"];
}

@end