@interface HUCameraPlayerFooterViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation HUCameraPlayerFooterViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HUCameraPlayerFooterViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"HUCameraPlayerFooterViewController" hasInstanceMethod:@"liveButton" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = HUCameraPlayerFooterViewControllerAccessibility;
  [(HUCameraPlayerFooterViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(HUCameraPlayerFooterViewControllerAccessibility *)self safeValueForKey:@"liveButton"];
  [v3 _setAccessibilityLabelBlock:&__block_literal_global_5];
  [v3 _setAccessibilityTraitsBlock:&__block_literal_global_300];
}

id __93__HUCameraPlayerFooterViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke()
{
  v0 = *MEMORY[0x29EDC7378];
  v1 = accessibilityHomeUILocalizedString(@"camera.live.button");
  v2 = AXAttributedStringForBetterPronuciation();

  return v2;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HUCameraPlayerFooterViewControllerAccessibility;
  [(HUCameraPlayerFooterViewControllerAccessibility *)&v3 viewDidLoad];
  [(HUCameraPlayerFooterViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end