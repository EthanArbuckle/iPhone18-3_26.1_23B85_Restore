@interface AXFilesGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXFilesGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXFilesGlue accessibilityInitializeBundle];
  }
}

void __44__AXFilesGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_288 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_297];
}

uint64_t __44__AXFilesGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Files AX"];
  [v2 setOverrideProcessName:@"Files"];

  return MEMORY[0x2A1C5E698]();
}

@end