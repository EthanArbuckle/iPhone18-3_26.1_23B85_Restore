@interface AXTimerControlCenterModuleGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXTimerControlCenterModuleGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXTimerControlCenterModuleGlue accessibilityInitializeBundle];
  }
}

void __63__AXTimerControlCenterModuleGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_285 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];
}

uint64_t __63__AXTimerControlCenterModuleGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Timer Module (ControlCenter)"];
  [v2 setOverrideProcessName:@"Timer Module (ControlCenter)"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __63__AXTimerControlCenterModuleGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"MTCCTimerBackgroundViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTCCTimerViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTCCRoundButtonAccessibility" canInteractWithTargetClass:1];

  v3 = [MEMORY[0x29EDC7348] sharedInstance];
  [v3 setNeedsLoadAccessibilityInformation];
}

@end