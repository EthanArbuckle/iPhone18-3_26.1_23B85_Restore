@interface CKVideoMessageRecordingViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)presentVideoActionMenuController;
- (void)swapCamera:(id)camera;
- (void)viewDidLoad;
@end

@implementation CKVideoMessageRecordingViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKVideoMessageRecordingViewController" hasInstanceMethod:@"presentVideoActionMenuController" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CKVideoMessageRecordingViewController" hasInstanceMethod:@"videoActionMenuController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKActionMenuItem" hasInstanceMethod:@"view" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKActionMenuItem" hasInstanceMethod:@"label" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKVideoMessageRecordingViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CKVideoMessageRecordingViewController" hasInstanceMethod:@"swapCameraButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKVideoMessageRecordingViewController" hasInstanceMethod:@"cameraViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKVideoMessageRecordingViewController" hasInstanceMethod:@"swapCamera:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v10.receiver = self;
  v10.super_class = CKVideoMessageRecordingViewControllerAccessibility;
  [(CKVideoMessageRecordingViewControllerAccessibility *)&v10 _accessibilityLoadAccessibilityInformation];
  v3 = [(CKVideoMessageRecordingViewControllerAccessibility *)self safeValueForKey:@"cameraViewController"];
  v4 = __UIAccessibilitySafeClass();

  cameraDevice = [v4 cameraDevice];
  v6 = [(CKVideoMessageRecordingViewControllerAccessibility *)self safeValueForKey:@"swapCameraButton"];
  v7 = accessibilityCameraKitLocalizedString(@"camera.chooser.button.text");
  [v6 setAccessibilityLabel:v7];

  [v6 setAccessibilityIdentifier:@"FrontBackFacingCameraChooser"];
  if (cameraDevice == 1)
  {
    v8 = @"camera.chooser.front.text";
  }

  else
  {
    v8 = @"camera.chooser.back.text";
  }

  v9 = accessibilityCameraKitLocalizedString(v8);
  [v6 setAccessibilityValue:v9];
}

- (void)swapCamera:(id)camera
{
  v4.receiver = self;
  v4.super_class = CKVideoMessageRecordingViewControllerAccessibility;
  [(CKVideoMessageRecordingViewControllerAccessibility *)&v4 swapCamera:camera];
  [(CKVideoMessageRecordingViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CKVideoMessageRecordingViewControllerAccessibility;
  [(CKVideoMessageRecordingViewControllerAccessibility *)&v3 viewDidLoad];
  [(CKVideoMessageRecordingViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)presentVideoActionMenuController
{
  v6.receiver = self;
  v6.super_class = CKVideoMessageRecordingViewControllerAccessibility;
  [(CKVideoMessageRecordingViewControllerAccessibility *)&v6 presentVideoActionMenuController];
  v3 = [(CKVideoMessageRecordingViewControllerAccessibility *)self safeValueForKey:@"videoActionMenuController"];
  objc_opt_class();
  v4 = [v3 safeValueForKey:@"actionMenuItems"];
  v5 = __UIAccessibilityCastAsClass();

  [v5 enumerateObjectsUsingBlock:&__block_literal_global_7];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], *MEMORY[0x29EDBDAB0]);
}

void __86__CKVideoMessageRecordingViewControllerAccessibility_presentVideoActionMenuController__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  objc_opt_class();
  v5 = [v4 safeValueForKey:@"view"];
  v6 = __UIAccessibilityCastAsClass();

  [v6 setIsAccessibilityElement:1];
  v7 = *MEMORY[0x29EDC7F70];
  [v6 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  objc_opt_class();
  v8 = [v4 safeValueForKey:@"label"];
  v9 = __UIAccessibilityCastAsClass();

  [v9 setIsAccessibilityElement:0];
  if (a3 == 2)
  {
    v12 = accessibilityLocalizedString(@"cancel.button");
LABEL_9:
    v13 = v12;
    [v6 setAccessibilityLabel:v12];

    goto LABEL_10;
  }

  if (a3 == 1)
  {
    v11 = accessibilityLocalizedString(@"media.message.picture");
    [v6 setAccessibilityLabel:v11];

    goto LABEL_6;
  }

  if (a3)
  {
    v12 = [v9 accessibilityLabel];
    goto LABEL_9;
  }

  v10 = accessibilityLocalizedString(@"media.message.video");
  [v6 setAccessibilityLabel:v10];

  [v6 setAccessibilityTraits:*MEMORY[0x29EDC7FC8] | v7];
LABEL_6:
  [v6 _accessibilitySetBoolValue:1 forKey:@"AXShouldBypassAXActivate"];
LABEL_10:
}

@end