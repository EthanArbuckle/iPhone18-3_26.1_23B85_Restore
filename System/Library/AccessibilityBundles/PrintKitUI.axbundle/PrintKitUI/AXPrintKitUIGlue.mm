@interface AXPrintKitUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXPrintKitUIGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];

    _Failover = [objc_allocWithZone(AXPrintKitUIGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __49__AXPrintKitUIGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"PrintKitUI AX"];
  [v2 setOverrideProcessName:@"PrintKitUI"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __49__AXPrintKitUIGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"UIPrintPanelWindowAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIPrinterTableViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIPrintPanelViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIPrintOrientationOptionAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIPrintPreviewPageCellAccessibility" canInteractWithTargetClass:1];
}

@end