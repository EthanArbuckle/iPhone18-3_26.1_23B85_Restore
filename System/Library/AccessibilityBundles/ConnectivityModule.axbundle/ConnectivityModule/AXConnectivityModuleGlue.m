@interface AXConnectivityModuleGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXConnectivityModuleGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXConnectivityModuleGlue accessibilityInitializeBundle];
  }
}

void __57__AXConnectivityModuleGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_285 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];
}

uint64_t __57__AXConnectivityModuleGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Connectivity Module (ControlCenter)"];
  [v2 setOverrideProcessName:@"Connectivity Module (ControlCenter)"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __57__AXConnectivityModuleGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"CCUIConnectivityButtonViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CCUIConnectivityAirplaneViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CCUIConnectivityModuleViewControllerAccessibility" canInteractWithTargetClass:1];

  v3 = [MEMORY[0x29EDC7348] sharedInstance];
  [v3 setNeedsLoadAccessibilityInformation];
}

@end