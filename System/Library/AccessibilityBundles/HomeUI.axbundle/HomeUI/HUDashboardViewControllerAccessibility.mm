@interface HUDashboardViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation HUDashboardViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HUDashboardContext" hasInstanceMethod:@"accessoryTypeGroup" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUDashboardContext" hasInstanceMethod:@"room" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUDashboardContext" hasInstanceMethod:@"home" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUDashboardViewController" hasInstanceMethod:@"navigationAnnounceButton" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = HUDashboardViewControllerAccessibility;
  [(HUDashboardViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(HUDashboardViewControllerAccessibility *)self safeValueForKey:@"navigationAnnounceButton"];
  v4.receiver = self;
  v4.super_class = HUDashboardViewControllerAccessibility;
  [v3 setAccessibilityTraits:{*MEMORY[0x29EDC7FC8] | -[HUDashboardViewControllerAccessibility accessibilityTraits](&v4, sel_accessibilityTraits)}];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HUDashboardViewControllerAccessibility;
  [(HUDashboardViewControllerAccessibility *)&v3 viewDidLoad];
  [(HUDashboardViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end