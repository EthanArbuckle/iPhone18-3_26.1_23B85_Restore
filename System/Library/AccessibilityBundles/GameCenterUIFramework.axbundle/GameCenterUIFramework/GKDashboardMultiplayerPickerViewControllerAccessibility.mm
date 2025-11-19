@interface GKDashboardMultiplayerPickerViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation GKDashboardMultiplayerPickerViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"GKDashboardMultiplayerPickerViewController" hasInstanceMethod:@"showContactPickerButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"GKDashboardMultiplayerPickerViewController" isKindOfClass:@"UIViewController"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = GKDashboardMultiplayerPickerViewControllerAccessibility;
  [(GKDashboardMultiplayerPickerViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(GKDashboardMultiplayerPickerViewControllerAccessibility *)self safeValueForKey:@"showContactPickerButton"];
  [v3 _setAccessibilityLabelBlock:&__block_literal_global_0];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = GKDashboardMultiplayerPickerViewControllerAccessibility;
  [(GKDashboardMultiplayerPickerViewControllerAccessibility *)&v3 viewDidLoad];
  [(GKDashboardMultiplayerPickerViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end