@interface HUOLDAlarmTableViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation HUOLDAlarmTableViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = HUOLDAlarmTableViewControllerAccessibility;
  [(HUOLDAlarmTableViewControllerAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
}

@end