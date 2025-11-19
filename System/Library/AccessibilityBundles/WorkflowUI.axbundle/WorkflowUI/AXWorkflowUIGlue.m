@interface AXWorkflowUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXWorkflowUIGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [MEMORY[0x29EDBD6E8] sharedInstance];
    [v2 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];

    _Failover = [objc_allocWithZone(AXWorkflowUIGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __49__AXWorkflowUIGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"WorkflowUI AX"];
  [v2 setOverrideProcessName:@"WorkflowUI"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __49__AXWorkflowUIGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"WFAutomationListViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WFRichContentItemCellViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WFTriggerOptionSelectionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WFTableViewFooterLinkViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WFComposeNavigationControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WFAutomationTypeExplanationPlatterViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WFAutomationEmptyStateCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WFCompactPlatterPresentationControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WFCompactDialogViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WFCompactPlatterSashViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WFDrawerActionCellAccessibility" canInteractWithTargetClass:1];
}

@end