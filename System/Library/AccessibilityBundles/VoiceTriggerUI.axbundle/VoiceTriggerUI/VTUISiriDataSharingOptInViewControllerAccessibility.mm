@interface VTUISiriDataSharingOptInViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation VTUISiriDataSharingOptInViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = VTUISiriDataSharingOptInViewControllerAccessibility;
  [(VTUISiriDataSharingOptInViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(VTUISiriDataSharingOptInViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  [v3 setAccessibilityViewIsModal:1];
}

@end