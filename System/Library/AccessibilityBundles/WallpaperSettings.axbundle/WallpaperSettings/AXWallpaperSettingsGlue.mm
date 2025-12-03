@interface AXWallpaperSettingsGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXWallpaperSettingsGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global_811 withPreValidationHandler:&__block_literal_global_813 postValidationHandler:&__block_literal_global_822 safeCategoryInstallationHandler:&__block_literal_global_825];

    _Failover = [objc_allocWithZone(AXWallpaperSettingsGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __56__AXWallpaperSettingsGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"WallpaperSettings AX Bundle"];
  [v2 setOverrideProcessName:@"WallpaperSettings"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __56__AXWallpaperSettingsGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"WSBundleCollectionOptionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WallpaperPhotoCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SwiftUIAccessibilityNode__WallpaperSettings__SwiftUI" canInteractWithTargetClass:1];
}

@end