@interface AXHomeControlCenterModuleGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXHomeControlCenterModuleGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXHomeControlCenterModuleGlue accessibilityInitializeBundle];
  }
}

void __62__AXHomeControlCenterModuleGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_285 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];
}

uint64_t __62__AXHomeControlCenterModuleGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Home Module (ControlCenter)"];
  [v2 setOverrideProcessName:@"Home Module (ControlCenter)"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __62__AXHomeControlCenterModuleGlue_accessibilityInitializeBundle__block_invoke_4()
{
  v0 = [MEMORY[0x29EDC7348] sharedInstance];
  [v0 setNeedsLoadAccessibilityInformation];
}

@end