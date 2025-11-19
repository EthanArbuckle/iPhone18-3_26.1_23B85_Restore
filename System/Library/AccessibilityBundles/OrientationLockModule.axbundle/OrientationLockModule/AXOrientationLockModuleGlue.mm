@interface AXOrientationLockModuleGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXOrientationLockModuleGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXOrientationLockModuleGlue accessibilityInitializeBundle];
  }
}

void __60__AXOrientationLockModuleGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_285 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];
}

uint64_t __60__AXOrientationLockModuleGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"OrientationLock Module (ControlCenter)"];
  [v2 setOverrideProcessName:@"OrientationLock Module (ControlCenter)"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __60__AXOrientationLockModuleGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  [a2 installSafeCategory:@"CCUIOrientationLockModuleAccessibility" canInteractWithTargetClass:1];
  v2 = [MEMORY[0x29EDC7348] sharedInstance];
  [v2 setNeedsLoadAccessibilityInformation];
}

@end