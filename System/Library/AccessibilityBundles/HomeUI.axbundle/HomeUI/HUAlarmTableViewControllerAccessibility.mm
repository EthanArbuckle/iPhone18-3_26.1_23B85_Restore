@interface HUAlarmTableViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation HUAlarmTableViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = HUAlarmTableViewControllerAccessibility;
  [(HUAlarmTableViewControllerAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
}

@end