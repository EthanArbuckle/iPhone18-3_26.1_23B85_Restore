@interface AXVideoConferenceControlCenterModuleGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXVideoConferenceControlCenterModuleGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXVideoConferenceControlCenterModuleGlue accessibilityInitializeBundle];
  }
}

void __73__AXVideoConferenceControlCenterModuleGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_285 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];
}

uint64_t __73__AXVideoConferenceControlCenterModuleGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"VideoConferenceControlCenterModule Module (ControlCenter)"];
  [v2 setOverrideProcessName:@"VideoConferenceControlCenterModule Module (ControlCenter)"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __73__AXVideoConferenceControlCenterModuleGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x29EDC7348];
  v4 = a2;
  v3 = [v2 sharedInstance];
  [v3 setNeedsLoadAccessibilityInformation];

  [v4 installSafeCategory:@"VideoConferenceControlCenterModuleEffectControlAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"VideoEffectsViewAccessibility" canInteractWithTargetClass:1];
}

@end