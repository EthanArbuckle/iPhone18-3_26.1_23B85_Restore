@interface MapsAppDelegateAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityLoadAccessibilityInformationWithKeyPath:(id)a3 retries:(unint64_t)a4;
@end

@implementation MapsAppDelegateAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = MapsAppDelegateAccessibility;
  [(MapsAppDelegateAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(MapsAppDelegateAccessibility *)self _accessibilityLoadAccessibilityInformationWithKeyPath:@"chromeViewController.mapView.mapLayer" retries:8];
}

- (void)_accessibilityLoadAccessibilityInformationWithKeyPath:(id)a3 retries:(unint64_t)a4
{
  v6 = a3;
  v7 = [(MapsAppDelegateAccessibility *)self safeValueForKeyPath:v6];
  v8 = v7;
  if (v7)
  {
    [v7 _accessibilityLoadAccessibilityInformation];
  }

  else if (a4)
  {
    v9 = v6;
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

@end