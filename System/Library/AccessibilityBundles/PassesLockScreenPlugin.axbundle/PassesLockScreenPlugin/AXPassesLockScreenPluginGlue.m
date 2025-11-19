@interface AXPassesLockScreenPluginGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXPassesLockScreenPluginGlue

+ (void)accessibilityInitializeBundle
{
  v2 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v2 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_289 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_298];
}

uint64_t __61__AXPassesLockScreenPluginGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"PassKit Lockscreen plugin"];
  [v2 setOverrideProcessName:@"PassKit LockScreen plugin"];

  return MEMORY[0x2A1C5E698]();
}

@end