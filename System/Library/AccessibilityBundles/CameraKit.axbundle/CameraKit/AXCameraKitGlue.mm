@interface AXCameraKitGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXCameraKitGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXCameraKitGlue accessibilityInitializeBundle];
  }
}

void __48__AXCameraKitGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_490 withPreValidationHandler:&__block_literal_global_492 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_501];

  v1 = [MEMORY[0x29EDBD690] sharedInstance];
  [v1 addHandler:&__block_literal_global_507 forFramework:@"Photos"];
}

uint64_t __48__AXCameraKitGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"CameraKit AX Bundle"];
  [v2 setOverrideProcessName:@"CameraKit"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __48__AXCameraKitGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v5 = a2;
  v2 = [MEMORY[0x29EDB9F48] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 isEqualToString:*MEMORY[0x29EDBD630]];

  if ((v4 & 1) == 0)
  {
    [v5 installSafeCategory:@"CMKShutterButtonAccessibility" canInteractWithTargetClass:1];
  }
}

void __48__AXCameraKitGlue_accessibilityInitializeBundle__block_invoke_6()
{
  v0 = MEMORY[0x29EDC7358];
  v1 = [MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.Photos"];
  [v0 loadAccessibilityBundleForBundle:v1 didLoadCallback:0];
}

@end