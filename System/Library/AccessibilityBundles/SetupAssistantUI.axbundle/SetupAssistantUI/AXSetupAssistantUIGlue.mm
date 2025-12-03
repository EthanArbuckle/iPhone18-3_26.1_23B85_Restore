@interface AXSetupAssistantUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXSetupAssistantUIGlue

+ (void)accessibilityInitializeBundle
{
  mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
  [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_290 postValidationHandler:&__block_literal_global_299 safeCategoryInstallationHandler:&__block_literal_global_302];
}

uint64_t __55__AXSetupAssistantUIGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"SetupAssistantUI Accessibility"];
  [v2 setOverrideProcessName:@"SetupAssistantUI"];

  return MEMORY[0x2A1C5E698]();
}

void __55__AXSetupAssistantUIGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"BFFPaneHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BFFWindowAccessibility" canInteractWithTargetClass:1];
}

@end