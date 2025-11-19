@interface AXGameCenterUIServiceGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXGameCenterUIServiceGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXGameCenterUIServiceGlue accessibilityInitializeBundle];
  }
}

void __58__AXGameCenterUIServiceGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_293 withPreValidationHandler:&__block_literal_global_295 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_304];
}

uint64_t __58__AXGameCenterUIServiceGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setOverrideProcessName:@"GameCenterUIService"];
  [v2 setValidationTargetName:@"GameCenterUIService Accessibility Bundle"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

@end