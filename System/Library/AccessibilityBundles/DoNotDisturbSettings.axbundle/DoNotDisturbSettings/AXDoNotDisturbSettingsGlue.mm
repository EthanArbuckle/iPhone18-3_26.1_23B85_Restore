@interface AXDoNotDisturbSettingsGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXDoNotDisturbSettingsGlue

+ (void)accessibilityInitializeBundle
{
  v2 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v2 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_290 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_299];
}

uint64_t __59__AXDoNotDisturbSettingsGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"DoNotDisturbSettings AX Bundle"];
  [v2 setOverrideProcessName:@"DoNotDisturbSettings"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

@end