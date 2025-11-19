@interface AXWeatherGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXWeatherGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXWeatherGlue accessibilityInitializeBundle];
  }
}

void __46__AXWeatherGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_291 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_300];
}

uint64_t __46__AXWeatherGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setOverrideProcessName:@"Weather App"];
  [v2 setValidationTargetName:@"Weather Accessibility Bundle"];

  return MEMORY[0x2A1C5E698]();
}

@end