@interface HSPCCameraScanViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_handleSetupCode:(id)a3;
@end

@implementation HSPCCameraScanViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HSPCCameraScanViewController" hasInstanceMethod:@"viewWillAppear:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"HSPCCameraScanViewController" hasInstanceMethod:@"_handleSetupCode:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"HSPCCameraScanViewController" hasInstanceMethod:@"cameraReader" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CRCameraReader" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"HSPCCameraScanViewController" hasInstanceVariable:@"_contentView" withType:"PRXCardContentView"];
  [v3 validateClass:@"PRXCardContentView" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
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

- (void)_handleSetupCode:(id)a3
{
  v7.receiver = self;
  v7.super_class = HSPCCameraScanViewControllerAccessibility;
  v3 = a3;
  [(HSPCCameraScanViewControllerAccessibility *)&v7 _handleSetupCode:v3];
  v4 = MEMORY[0x29EDBA0F8];
  v5 = accessibilityLocalizedString(@"setupcode.complete");
  v6 = [v4 stringWithFormat:v5, v3];

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v6);
}

@end