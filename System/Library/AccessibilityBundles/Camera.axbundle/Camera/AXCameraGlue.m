@interface AXCameraGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXCameraGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [MEMORY[0x29EDBD6E8] sharedInstance];
    [v2 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_292 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_301];

    v3 = [objc_allocWithZone(AXCameraGlue) init];
    v4 = _Failover;
    _Failover = v3;
  }

  v5 = [MEMORY[0x29EDBD690] sharedInstance];
  [v5 addHandler:&__block_literal_global_309 forFramework:@"CameraKit"];

  v6 = [MEMORY[0x29EDBD690] sharedInstance];
  [v6 addHandler:&__block_literal_global_320 forFramework:@"PhotosUI"];
}

uint64_t __45__AXCameraGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Camera AX Bundle"];
  [v2 setOverrideProcessName:@"Camera Bundle"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __45__AXCameraGlue_accessibilityInitializeBundle__block_invoke_5()
{
  v0 = MEMORY[0x29EDC7358];
  v1 = [MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.CameraKit"];
  [v0 loadAccessibilityBundleForBundle:v1 didLoadCallback:0];
}

void __45__AXCameraGlue_accessibilityInitializeBundle__block_invoke_7()
{
  v0 = MEMORY[0x29EDC7358];
  v1 = [MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.PhotosUI"];
  [v0 loadAccessibilityBundleForBundle:v1 didLoadCallback:0];
}

@end