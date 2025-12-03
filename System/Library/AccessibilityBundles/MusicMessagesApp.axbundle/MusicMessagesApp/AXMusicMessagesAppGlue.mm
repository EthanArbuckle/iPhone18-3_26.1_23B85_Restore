@interface AXMusicMessagesAppGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXMusicMessagesAppGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [objc_allocWithZone(AXMusicMessagesAppGlue) init];
    v3 = _Failover;
    _Failover = v2;

    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_290 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_299];
  }
}

uint64_t __55__AXMusicMessagesAppGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"MusicMessagesApp Bundle"];
  [v2 setOverrideProcessName:@"MusicMessagesApp"];

  return MEMORY[0x2A1C5E698]();
}

void __55__AXMusicMessagesAppGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"LaunchMusicCellViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TrackCellViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SharingCollectionViewHeaderAccessibility" canInteractWithTargetClass:1];
}

@end