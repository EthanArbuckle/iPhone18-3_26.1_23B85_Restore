@interface HSPCCameraScanViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_handleSetupCode:(id)code;
@end

@implementation HSPCCameraScanViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HSPCCameraScanViewController" hasInstanceMethod:@"viewWillAppear:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"HSPCCameraScanViewController" hasInstanceMethod:@"_handleSetupCode:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"HSPCCameraScanViewController" hasInstanceMethod:@"cameraReader" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CRCameraReader" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"HSPCCameraScanViewController" hasInstanceVariable:@"_contentView" withType:"PRXCardContentView"];
  [validationsCopy validateClass:@"PRXCardContentView" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = HSPCCameraScanViewControllerAccessibility;
  [(HSPCCameraScanViewControllerAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  v3 = [(HSPCCameraScanViewControllerAccessibility *)self safeValueForKey:@"cameraReader"];
  v4 = [v3 safeValueForKey:@"view"];
  v5 = accessibilityLocalizedString(@"camera.scan.setupcode.hint");
  [v4 setAccessibilityHint:v5];

  v6 = [(HSPCCameraScanViewControllerAccessibility *)self safeValueForKey:@"_contentView"];
  v7 = [v6 safeValueForKey:@"subtitleLabel"];

  [v7 setAccessibilityTraits:*MEMORY[0x29EDC7F98]];
  v8 = accessibilityLocalizedString(@"hint.activate.embedded.link");
  [v7 setAccessibilityHint:v8];
}

- (void)_handleSetupCode:(id)code
{
  v7.receiver = self;
  v7.super_class = HSPCCameraScanViewControllerAccessibility;
  codeCopy = code;
  [(HSPCCameraScanViewControllerAccessibility *)&v7 _handleSetupCode:codeCopy];
  v4 = MEMORY[0x29EDBA0F8];
  v5 = accessibilityLocalizedString(@"setupcode.complete");
  codeCopy = [v4 stringWithFormat:v5, codeCopy];

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], codeCopy);
}

@end