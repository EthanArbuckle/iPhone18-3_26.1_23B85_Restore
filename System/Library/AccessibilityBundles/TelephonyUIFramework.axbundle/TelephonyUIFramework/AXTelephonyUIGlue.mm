@interface AXTelephonyUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXTelephonyUIGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_403 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_409];

    _Failover = [objc_allocWithZone(AXTelephonyUIGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __50__AXTelephonyUIGlue_accessibilityInitializeBundle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"TPButton"];
  [v2 validateClass:@"TPLCDTextView"];
  [v2 validateClass:@"TPPhonePad"];
  [v2 validateClass:@"TPNumberPad"];
  [v2 validateClass:@"TPNumberPadButton"];
  [v2 validateClass:@"TPSetPINKeyPadButton"];
  [v2 validateClass:@"TPBottomDoubleButtonBar" isKindOfClass:@"TPBottomSingleButtonBar"];
  [v2 validateClass:@"TPLCDView" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [v2 validateClass:@"TPLCDView" hasInstanceMethod:@"secondLineText" withFullSignature:{"@", 0}];
  [v2 validateClass:@"TPLCDView" hasInstanceMethod:@"label" withFullSignature:{"@", 0}];
  [v2 validateClass:@"TPLCDTextView" hasInstanceMethod:@"sizeToFit" withFullSignature:{"{CGSize=dd}", 0}];
  [v2 validateClass:@"TPLCDTextView" hasInstanceMethod:@"textRect" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [v2 validateClass:@"TPPhonePad" hasInstanceMethod:@"_buttonForKeyAtIndex:" withFullSignature:{"@", "Q", 0}];
  [v2 validateClass:@"TPPhonePad" hasInstanceMethod:@"_keyForPoint:" withFullSignature:{"i", "{CGPoint=dd}", 0}];
  [v2 validateClass:@"TPPhonePad" hasInstanceMethod:@"_rectForKey:" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", "Q", 0}];
  [v2 validateClass:@"TPLCDTextView" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [v2 validateClass:@"TPBottomSingleButtonBar" hasInstanceMethod:@"button" withFullSignature:{"@", 0}];
  [v2 validateClass:@"TPBottomDoubleButtonBar" hasInstanceMethod:@"button2" withFullSignature:{"@", 0}];
  [v2 validateClass:@"TPNumberPadButton" hasInstanceMethod:@"character" withFullSignature:{"q", 0}];
  [v2 validateClass:@"TPLCDView" hasInstanceVariable:@"_textView" withType:"TPLCDTextView"];
  [v2 validateClass:@"TPLCDView" hasInstanceVariable:@"_labelView" withType:"TPLCDTextView"];
  [v2 validateClass:@"TPNumberPad" hasInstanceVariable:@"_buttons" withType:"NSMutableArray"];
  [v2 validateClass:@"TPSlidingButton" hasInstanceVariable:@"_acceptButton" withType:"_UIActionSlider"];

  return 1;
}

uint64_t __50__AXTelephonyUIGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"TelephonyUI"];
  [v2 setOverrideProcessName:@"TelephonyUI"];

  return MEMORY[0x2A1C5E698]();
}

void __50__AXTelephonyUIGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"TPLCDTextViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TPPhonePadAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TPButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TPLCDViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TPNumberPadButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TPSetPINKeyPadButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TPNumberPadAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TPSlidingButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TPSimpleNumberPadAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIButtonAccessibility__TelephonyUI__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TPSetPINViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TPPasscodeViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TPPillViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TPDialerNumberPadAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MessageIndicatorViewAccessibility" canInteractWithTargetClass:1];
}

@end