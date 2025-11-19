@interface AXPerformanceTraceModuleGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXPerformanceTraceModuleGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXPerformanceTraceModuleGlue accessibilityInitializeBundle];
  }
}

void __61__AXPerformanceTraceModuleGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_285 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];
}

uint64_t __61__AXPerformanceTraceModuleGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"PerformanceTrace Module (ControlCenter)"];
  [v2 setOverrideProcessName:@"PerformanceTrace Module (ControlCenter)"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __61__AXPerformanceTraceModuleGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  [a2 installSafeCategory:@"CCUIPerformanceTraceModuleViewControllerAccessibility" canInteractWithTargetClass:1];
  v2 = [MEMORY[0x29EDC7348] sharedInstance];
  [v2 setNeedsLoadAccessibilityInformation];
}

@end