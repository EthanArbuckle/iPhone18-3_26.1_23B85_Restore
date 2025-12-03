@interface AXDiagnosticsGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXDiagnosticsGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];

    _Failover = [objc_allocWithZone(AXDiagnosticsGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __50__AXDiagnosticsGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Diagnostics AX"];
  [v2 setOverrideProcessName:@"Diagnostics"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __50__AXDiagnosticsGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"DeviceInformationViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CardViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TestRunnerViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PromptViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TextButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ImageButtonAccessibility" canInteractWithTargetClass:1];
}

@end