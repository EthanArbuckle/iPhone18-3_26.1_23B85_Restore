@interface AXMusicUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXMusicUIGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [objc_allocWithZone(AXMusicUIGlue) init];
    v3 = _Failover;
    _Failover = v2;

    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_299 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_308];
  }
}

uint64_t __46__AXMusicUIGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"MusicUI AX Bundle"];
  [v2 setOverrideProcessName:@"MusicUI"];

  return MEMORY[0x2A1C5E698]();
}

void __46__AXMusicUIGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"UICollectionViewAccessibility__MusicUI__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UITabBarButtonAccessibility__MusicUI__UIKit" canInteractWithTargetClass:1];
  if (AXDeviceIsPad())
  {
    [v2 installSafeCategory:@"MusicPlaylistEditingPickerOverlayAccessibility" canInteractWithTargetClass:1];
  }
}

@end