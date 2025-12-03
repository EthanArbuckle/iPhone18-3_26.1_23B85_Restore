@interface AXWallpaperGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXWallpaperGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_290 postValidationHandler:&__block_literal_global_299 safeCategoryInstallationHandler:&__block_literal_global_302];

    _Failover = [objc_allocWithZone(AXWallpaperGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __48__AXWallpaperGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Wallpaper AX Bundle"];
  [v2 setOverrideProcessName:@"Wallpaper"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

@end