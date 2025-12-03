@interface SURedeemCameraViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_setupNavigationItem;
@end

@implementation SURedeemCameraViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SURedeemCameraViewController" hasInstanceMethod:@"toggleCameraBarButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SURedeemCameraViewController" hasInstanceMethod:@"_setupNavigationItem" withFullSignature:{"v", 0}];
}

- (void)_setupNavigationItem
{
  v3.receiver = self;
  v3.super_class = SURedeemCameraViewControllerAccessibility;
  [(SURedeemCameraViewControllerAccessibility *)&v3 _setupNavigationItem];
  [(SURedeemCameraViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = SURedeemCameraViewControllerAccessibility;
  [(SURedeemCameraViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(SURedeemCameraViewControllerAccessibility *)self safeValueForKey:@"toggleCameraBarButton"];
  v4 = accessibilityLocalizedString(@"flip.camera.button");
  [v3 setAccessibilityLabel:v4];
}

@end