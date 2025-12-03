@interface AXPreBoardGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXPreBoardGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];

    _Failover = [objc_allocWithZone(AXPreBoardGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __47__AXPreBoardGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"PreBoard AX Bundle"];
  [v2 setOverrideProcessName:@"PreBoard"];

  return MEMORY[0x2A1C5E698]();
}

void __47__AXPreBoardGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"PBAApplicationAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PBADeviceUnlockViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PBA_SBUICallToActionLabelAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PBAPasscodeEntryViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PBADataRecoveryViewControllerAccessibility" canInteractWithTargetClass:1];
}

@end