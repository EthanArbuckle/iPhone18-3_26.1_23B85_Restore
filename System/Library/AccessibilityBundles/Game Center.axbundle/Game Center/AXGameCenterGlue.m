@interface AXGameCenterGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXGameCenterGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXGameCenterGlue accessibilityInitializeBundle];
  }
}

void __49__AXGameCenterGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_293 withPreValidationHandler:&__block_literal_global_295 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_301];
}

uint64_t __49__AXGameCenterGlue_accessibilityInitializeBundle__block_invoke_2()
{
  v0 = [MEMORY[0x29EDC7A58] currentDevice];
  [v0 userInterfaceIdiom];

  return 1;
}

uint64_t __49__AXGameCenterGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setOverrideProcessName:@"GameCenter"];
  [v2 setValidationTargetName:@"GameCenter Accessibility Bundle"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

@end