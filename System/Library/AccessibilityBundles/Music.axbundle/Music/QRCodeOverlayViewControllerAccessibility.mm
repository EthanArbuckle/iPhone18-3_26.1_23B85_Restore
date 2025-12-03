@interface QRCodeOverlayViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation QRCodeOverlayViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicCoreUI.QRCodeOverlayViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"MusicCoreUI.QRCodeOverlayViewController" hasSwiftField:@"titleLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"MusicCoreUI.QRCodeOverlayViewController" hasSwiftField:@"subtitleLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"MusicCoreUI.QRCodeOverlayViewController" hasInstanceMethod:@"dismissAnimated" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  view = [v3 view];

  v5 = [(QRCodeOverlayViewControllerAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  [v5 setAccessibilityActivateBlock:&__block_literal_global_0];
  v6 = [(QRCodeOverlayViewControllerAccessibility *)self safeSwiftValueForKey:@"subtitleLabel"];
  [v6 setAccessibilityActivateBlock:&__block_literal_global_303];
  v7 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{2, v5, v6}];
  [view setAccessibilityElements:v7];
  v8.receiver = self;
  v8.super_class = QRCodeOverlayViewControllerAccessibility;
  [(QRCodeOverlayViewControllerAccessibility *)&v8 _accessibilityLoadAccessibilityInformation];
}

@end