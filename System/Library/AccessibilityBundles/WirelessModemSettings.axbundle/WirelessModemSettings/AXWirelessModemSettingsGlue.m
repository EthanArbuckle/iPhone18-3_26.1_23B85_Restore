@interface AXWirelessModemSettingsGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXWirelessModemSettingsGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXWirelessModemSettingsGlue accessibilityInitializeBundle];
  }
}

void __60__AXWirelessModemSettingsGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_293 withPreValidationHandler:&__block_literal_global_295 postValidationHandler:&__block_literal_global_301 safeCategoryInstallationHandler:&__block_literal_global_304];
}

uint64_t __60__AXWirelessModemSettingsGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"WirelessModem settings"];
  [v2 setOverrideProcessName:@"WirelessModem settings"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

@end