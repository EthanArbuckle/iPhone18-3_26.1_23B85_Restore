@interface AXDocumentManagerServiceGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXDocumentManagerServiceGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken_0 != -1)
  {
    +[AXDocumentManagerServiceGlue accessibilityInitializeBundle];
  }
}

void __61__AXDocumentManagerServiceGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_283_0 withPreValidationHandler:&__block_literal_global_288 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_297];
}

uint64_t __61__AXDocumentManagerServiceGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"DocumentManagerService AX"];
  [v2 setOverrideProcessName:@"DocumentManagerService"];

  return MEMORY[0x2A1C5E698]();
}

@end