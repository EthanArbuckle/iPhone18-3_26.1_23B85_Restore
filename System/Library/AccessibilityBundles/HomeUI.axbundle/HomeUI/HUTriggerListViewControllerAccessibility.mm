@interface HUTriggerListViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation HUTriggerListViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HUTriggerListViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"HUTriggerListViewController" isKindOfClass:@"UITableViewController"];
  [validationsCopy validateClass:@"HUTriggerListViewController" hasInstanceMethod:@"navigationAddButton" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = HUTriggerListViewControllerAccessibility;
  [(HUTriggerListViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(HUTriggerListViewControllerAccessibility *)self safeValueForKey:@"navigationAddButton"];
  v4 = accessibilityHomeLocalizedString(@"navBar.plus");
  [v3 setAccessibilityLabel:v4];
}

@end