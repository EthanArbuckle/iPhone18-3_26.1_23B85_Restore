@interface EKEventViewControllerDefaultImplAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)loadView;
@end

@implementation EKEventViewControllerDefaultImplAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"EKEventViewControllerDefaultImpl" hasInstanceMethod:@"loadView" withFullSignature:{"v", 0}];
  [v3 validateClass:@"EKEventViewControllerDefaultImpl" hasInstanceVariable:@"_tableView" withType:"UITableView"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = EKEventViewControllerDefaultImplAccessibility;
  [(EKEventViewControllerDefaultImplAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(EKEventViewControllerDefaultImplAccessibility *)self safeValueForKey:@"_tableView"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 setAccessibilityIdentifier:@"EventDetailsContainer"];
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = EKEventViewControllerDefaultImplAccessibility;
  [(EKEventViewControllerDefaultImplAccessibility *)&v3 loadView];
  [(EKEventViewControllerDefaultImplAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end