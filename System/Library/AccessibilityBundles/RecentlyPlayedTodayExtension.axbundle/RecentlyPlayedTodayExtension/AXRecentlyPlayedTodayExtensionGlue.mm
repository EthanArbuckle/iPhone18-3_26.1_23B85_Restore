@interface AXRecentlyPlayedTodayExtensionGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXRecentlyPlayedTodayExtensionGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [objc_allocWithZone(AXRecentlyPlayedTodayExtensionGlue) init];
    v3 = _Failover;
    _Failover = v2;

    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_290 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_299];
  }
}

uint64_t __67__AXRecentlyPlayedTodayExtensionGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"RecentlyPlayedTodayExtension Bundle"];
  [v2 setOverrideProcessName:@"RecentlyPlayedTodayExtension"];

  return MEMORY[0x2A1C5E698]();
}

void __67__AXRecentlyPlayedTodayExtensionGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"RecentlyPlayedCollectionCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"RecentlyPlayedTodayViewControllerAccessibility" canInteractWithTargetClass:1];
}

@end