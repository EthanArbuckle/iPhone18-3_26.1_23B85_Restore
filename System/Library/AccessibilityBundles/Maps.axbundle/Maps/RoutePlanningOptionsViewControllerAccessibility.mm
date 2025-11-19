@interface RoutePlanningOptionsViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation RoutePlanningOptionsViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"RoutePlanningOptionsViewController" hasInstanceMethod:@"modalHeaderView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"RoutePlanningOptionsViewController" isKindOfClass:@"ContaineeViewController"];
  [v3 validateClass:@"ContaineeViewController" hasInstanceMethod:@"contentView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3 = objc_opt_new();
  v4 = [(RoutePlanningOptionsViewControllerAccessibility *)self safeUIViewForKey:@"contentView"];
  v5 = [(RoutePlanningOptionsViewControllerAccessibility *)self safeUIViewForKey:@"modalHeaderView"];
  v6 = [v4 superview];
  [v3 axSafelyAddObject:v5];
  [v3 axSafelyAddObject:v4];
  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 3221225472;
  v15[2] = __93__RoutePlanningOptionsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v15[3] = &unk_29F2CC388;
  v16 = v3;
  v7 = v3;
  [v6 setAccessibilityElementsBlock:v15];
  v10 = MEMORY[0x29EDCA5F8];
  v11 = 3221225472;
  v12 = __93__RoutePlanningOptionsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v13 = &unk_29F2CC3B0;
  v14 = v5;
  v8 = v5;
  AXPerformBlockOnMainThreadAfterDelay();
  v9.receiver = self;
  v9.super_class = RoutePlanningOptionsViewControllerAccessibility;
  [(RoutePlanningOptionsViewControllerAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = RoutePlanningOptionsViewControllerAccessibility;
  [(RoutePlanningOptionsViewControllerAccessibility *)&v3 viewDidLoad];
  [(RoutePlanningOptionsViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end