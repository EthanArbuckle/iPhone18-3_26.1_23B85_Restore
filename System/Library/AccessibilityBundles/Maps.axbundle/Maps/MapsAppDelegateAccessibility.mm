@interface MapsAppDelegateAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityLoadAccessibilityInformationWithKeyPath:(id)path retries:(unint64_t)retries;
@end

@implementation MapsAppDelegateAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = MapsAppDelegateAccessibility;
  [(MapsAppDelegateAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(MapsAppDelegateAccessibility *)self _accessibilityLoadAccessibilityInformationWithKeyPath:@"chromeViewController.mapView.mapLayer" retries:8];
}

- (void)_accessibilityLoadAccessibilityInformationWithKeyPath:(id)path retries:(unint64_t)retries
{
  pathCopy = path;
  v7 = [(MapsAppDelegateAccessibility *)self safeValueForKeyPath:pathCopy];
  v8 = v7;
  if (v7)
  {
    [v7 _accessibilityLoadAccessibilityInformation];
  }

  else if (retries)
  {
    v9 = pathCopy;
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

@end