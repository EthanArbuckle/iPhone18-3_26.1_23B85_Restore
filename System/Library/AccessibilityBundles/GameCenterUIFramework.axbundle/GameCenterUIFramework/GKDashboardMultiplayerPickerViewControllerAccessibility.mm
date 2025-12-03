@interface GKDashboardMultiplayerPickerViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation GKDashboardMultiplayerPickerViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"GKDashboardMultiplayerPickerViewController" hasInstanceMethod:@"showContactPickerButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GKDashboardMultiplayerPickerViewController" isKindOfClass:@"UIViewController"];
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