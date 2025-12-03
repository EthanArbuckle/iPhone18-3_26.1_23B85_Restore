@interface AXBaseBoardUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXBaseBoardUIGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    v5[0] = MEMORY[0x29EDCA5F8];
    v5[1] = 3221225472;
    v5[2] = __50__AXBaseBoardUIGlue_accessibilityInitializeBundle__block_invoke_2;
    v5[3] = &unk_29F2A7578;
    v6 = @"BaseBoardUI AX Bundle";
    v7 = @"BaseBoardUI";
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:v5 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_289];

    v3 = [objc_allocWithZone(AXBaseBoardUIGlue) init];
    v4 = _Failover;
    _Failover = v3;
  }
}

uint64_t __50__AXBaseBoardUIGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setValidationTargetName:v3];
  [v4 setOverrideProcessName:*(a1 + 40)];
  [v4 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __50__AXBaseBoardUIGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"BSUIRelativeDateLabelAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BSUIEmojiLabelViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BSUIVibrancyEffectViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BSUIOrientationTransformWrapperViewAccessibility" canInteractWithTargetClass:1];
}

@end