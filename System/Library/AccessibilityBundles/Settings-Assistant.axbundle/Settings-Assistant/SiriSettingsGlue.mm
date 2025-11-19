@interface SiriSettingsGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation SiriSettingsGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[SiriSettingsGlue accessibilityInitializeBundle];
  }
}

void __49__SiriSettingsGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_314 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_323];

  v1 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v1 installSafeCategories:&__block_literal_global_328 afterDelay:@"Siri Settings AX Bundle" validationTargetName:@"Siri View Service" overrideProcessName:0.1];
}

uint64_t __49__SiriSettingsGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"ACSettingsSliderUIController" hasInstanceVariable:@"_setting" withType:"ACSettingsSliderSetting"];
  [v2 validateClass:@"ACSettingsBasicSetting" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
  [v2 validateClass:@"ACSettingsSwitchView" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v2 validateClass:@"ACSettingsSwitchView" hasInstanceMethod:@"switchControl" withFullSignature:{"@", 0}];
  [v2 validateClass:@"ACSettingsSliderView" hasInstanceMethod:@"slider" withFullSignature:{"@", 0}];

  return 1;
}

uint64_t __49__SiriSettingsGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Siri Settings AX Bundle"];
  [v2 setOverrideProcessName:@"Siri Settings"];

  return MEMORY[0x2A1C5E698]();
}

@end