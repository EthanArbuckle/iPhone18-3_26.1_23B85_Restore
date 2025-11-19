@interface AXDictionarySettingsGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXDictionarySettingsGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXDictionarySettingsGlue accessibilityInitializeBundle];
  }
}

void __57__AXDictionarySettingsGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_285 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];
}

uint64_t __57__AXDictionarySettingsGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Dictionary Settings"];
  [v2 setOverrideProcessName:@"Dictionary Settings"];

  return MEMORY[0x2A1C5E698]();
}

@end