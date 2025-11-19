@interface AXDisplayModuleGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXDisplayModuleGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXDisplayModuleGlue accessibilityInitializeBundle];
  }
}

void __52__AXDisplayModuleGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_285 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];
}

uint64_t __52__AXDisplayModuleGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Display Module (ControlCenter)"];
  [v2 setOverrideProcessName:@"Display Module (ControlCenter)"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __52__AXDisplayModuleGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"CCUIDisplayModuleViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CCUIDisplayBackgroundViewControllerAccessibility" canInteractWithTargetClass:1];

  v3 = [MEMORY[0x29EDC7348] sharedInstance];
  [v3 setNeedsLoadAccessibilityInformation];
}

@end