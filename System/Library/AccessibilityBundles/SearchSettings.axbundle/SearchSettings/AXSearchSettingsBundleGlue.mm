@interface AXSearchSettingsBundleGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXSearchSettingsBundleGlue

+ (void)accessibilityInitializeBundle
{
  mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
  [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_292 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_298];
}

uint64_t __59__AXSearchSettingsBundleGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Search Settings Bundle"];
  [v2 setOverrideProcessName:@"Search Settings Bundle"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

@end