@interface AXCallsDialerGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXCallsDialerGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_331 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_340];

    _Failover = [objc_allocWithZone(AXCallsDialerGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __50__AXCallsDialerGlue_accessibilityInitializeBundle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"PHAbstractDialerView" hasInstanceMethod:@"lcdView" withFullSignature:{"@", 0}];
  [v2 validateClass:@"UIView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [v2 validateClass:@"PHHandsetDialerLCDView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v2 validateClass:@"PHAbstractDialerView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v2 validateClass:@"PHHandsetDialerLCDView" hasInstanceMethod:@"deleteCharacter" withFullSignature:{"v", 0}];
  [v2 validateClass:@"PHHandsetDialerLCDView" hasInstanceMethod:@"setText: needsFormat:" withFullSignature:{"v", "@", "B", 0}];
  [v2 validateClass:@"PHAbstractDialerView" hasInstanceVariable:@"_addContactButton" withType:"UIControl"];
  [v2 validateClass:@"PHAbstractDialerView" hasInstanceVariable:@"_deleteButton" withType:"UIControl"];
  [v2 validateClass:@"PHAbstractDialerView" hasInstanceVariable:@"_callButton" withType:"UIButton"];
  [v2 validateClass:@"PHLCDViewTextField" isKindOfClass:@"UITextField"];
  [v2 validateClass:@"PHHandsetDialerLCDView" hasInstanceVariable:@"_numberTextField" withType:"PHLCDViewTextField"];

  return 1;
}

uint64_t __50__AXCallsDialerGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"CallsDialer AX"];
  [v2 setOverrideProcessName:@"CallsDialer"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __50__AXCallsDialerGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"PHHandsetDialerLCDViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PHDialerResultButtonViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PHAbstractDialerViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PHLCDViewTextFieldAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DialerControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PHHandsetDialerDeleteButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PHHandsetDialerViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PHTextCycleLabelAccessibility" canInteractWithTargetClass:1];
}

@end