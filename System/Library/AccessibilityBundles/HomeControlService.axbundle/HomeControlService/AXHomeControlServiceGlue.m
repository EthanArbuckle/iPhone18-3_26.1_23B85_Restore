@interface AXHomeControlServiceGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXHomeControlServiceGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXHomeControlServiceGlue accessibilityInitializeBundle];
  }
}

void __57__AXHomeControlServiceGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_285 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];
}

uint64_t __57__AXHomeControlServiceGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"AX HomeControlService"];
  [v2 setOverrideProcessName:@"AX HomeControlService"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

@end