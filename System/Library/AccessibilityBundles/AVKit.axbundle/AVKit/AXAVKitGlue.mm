@interface AXAVKitGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXAVKitGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global_5 withPreValidationHandler:&__block_literal_global_297 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_303];

    v3 = [objc_allocWithZone(AXAVKitGlue) init];
    v4 = _Failover;
    _Failover = v3;

    mEMORY[0x29EDBD690] = [MEMORY[0x29EDBD690] sharedInstance];
    [mEMORY[0x29EDBD690] addHandler:&__block_literal_global_398 forFramework:@"MediaPlayer"];
  }
}

uint64_t __44__AXAVKitGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"AVKit"];
  [v2 setOverrideProcessName:@"AVKit"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __44__AXAVKitGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"AVButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVActionAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVTransportControlsViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVLabelAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVPlaybackControlsViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVPlayerViewControllerContentViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVTouchIgnoringViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVScrubberAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVPlaybackControlsRoutePickerViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVTurboModePlaybackControlsPlaceholderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVPlaybackControlsControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVPlayerLayerViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVMobileChromelessSliderAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVMobileChromelessFluidSliderAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVMobileChromelessControlsViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVMobileTitlebarViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVMobileChromelessTimelineViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVMobileChromelessVolumeControlsViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVVolumeButtonControlAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVMobileChromelessPlaybackControlButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVMobileChromelessContentTabsViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVMobileGlassControlsViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVMobileGlassContentTabsViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVMobileGlassContentTabSelectionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVMobileGlassVolumeControlsViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVMobileGlassTimelineViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVPlayerViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVPictureInPicturePlatformAdapterAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVPictureInPictureViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVPictureInPictureUIViewAccessibility" canInteractWithTargetClass:1];
}

void __44__AXAVKitGlue_accessibilityInitializeBundle__block_invoke_4()
{
  v0 = MEMORY[0x29EDC7358];
  v1 = MEMORY[0x29EDB9F48];
  v2 = MEMORY[0x29EDBA0F8];
  v5 = MEMORY[0x29C2C6310]();
  v3 = [v2 stringWithFormat:@"%@/%@", v5, @"MediaPlayerUIFramework.axbundle"];
  v4 = [v1 bundleWithPath:v3];
  [v0 loadAccessibilityBundleForBundle:v4 didLoadCallback:0];
}

@end