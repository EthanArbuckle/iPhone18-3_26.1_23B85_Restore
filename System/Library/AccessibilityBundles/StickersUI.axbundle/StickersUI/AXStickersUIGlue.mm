@interface AXStickersUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXStickersUIGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];

    _Failover = [objc_allocWithZone(AXStickersUIGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __49__AXStickersUIGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"StickersUI AX"];
  [v2 setOverrideProcessName:@"StickersUI"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __49__AXStickersUIGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"StickerCollectionStickerCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"LiveButtonAccessibility" canInteractWithTargetClass:1];
}

@end