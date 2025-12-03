@interface AXHearingTestUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXHearingTestUIGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];

    _Failover = [objc_allocWithZone(AXHearingTestUIGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __52__AXHearingTestUIGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"HearingTestUI AX"];
  [v2 setOverrideProcessName:@"HearingTestUI"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __52__AXHearingTestUIGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"BinaryConfirmationSelectTableViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HearingTestStepViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HearingTestPreEvaluationCoachingViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HTUIEvaluationViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_HTUIEvaluationViewControllerViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HearingTestSessionManagerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HearingTestMainViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HearingTestInterruptionsViewControllerAccessibility" canInteractWithTargetClass:1];
}

@end