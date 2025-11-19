@interface AXCommunicationsSetupUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXCommunicationsSetupUIGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXCommunicationsSetupUIGlue accessibilityInitializeBundle];
  }
}

void __60__AXCommunicationsSetupUIGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_285 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_294];
}

uint64_t __60__AXCommunicationsSetupUIGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"CommunicationsSetupUI AX Bundle"];
  [v2 setOverrideProcessName:@"CommunicationsSetupUI"];

  return MEMORY[0x2A1C5E698]();
}

void __60__AXCommunicationsSetupUIGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"CKMultipleIDSSubscriptionsTableCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CNFRegAliasTableCellAccessibility" canInteractWithTargetClass:1];
}

@end