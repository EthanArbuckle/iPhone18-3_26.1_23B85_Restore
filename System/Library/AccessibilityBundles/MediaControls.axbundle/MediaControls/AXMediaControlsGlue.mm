@interface AXMediaControlsGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXMediaControlsGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXMediaControlsGlue accessibilityInitializeBundle];
  }
}

void __52__AXMediaControlsGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_286 withPreValidationHandler:&__block_literal_global_288 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_294];
}

uint64_t __52__AXMediaControlsGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"MediaControls (ControlCenter)"];
  [v2 setOverrideProcessName:@"MediaControls (ControlCenter)"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __52__AXMediaControlsGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 installSafeCategory:@"MRUTransportButtonAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"MRUNowPlayingHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"MRUNowPlayingLabelViewAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"MRUNowPlayingViewAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"MRUNowPlayingTimeControlsViewAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"MRUMediaSuggestionCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"MRUMediaSuggestionsViewAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"MRURoutingTableViewCellAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"MRUVolumeStepperViewAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"MRUContinuousSliderViewAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"MRUViewServiceRoutingViewAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"MRUNowPlayingVolumeControlsViewAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"MRUSliderAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"MRUActivityNowPlayingViewAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"MRUActivityMirroringViewAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"MRUActivityTrailingAccessoryViewAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"MRUHapticViewAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"MediaControlsEndpointsViewControllerAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"MRPlatterViewControllerAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"MediaControlsTransportStackViewAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"MediaControlsTransportButtonAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"MediaControlsHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"MediaControlsTimeControlAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"MediaControlsRoutingCornerViewAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"MediaControlsUIScrollViewAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"MediaControlsRelativeVolumeStepperAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"MediaControlsRoutingViewControllerAccessibility" canInteractWithTargetClass:1];
  v2 = [MEMORY[0x29EDC7348] sharedInstance];
  [v2 setNeedsLoadAccessibilityInformation];

  [v3 installSafeCategory:@"MediaControlsParentContainerViewAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"MediaControlsRoutingButtonViewAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"MediaControlsRoundButtonAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"MediaControlsExpandableButtonAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"MediaControlsContainerViewAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"MediaControlsBluetoothListeningModeButtonAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"MRUNowPlayingTransportControlsViewAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"MRUActivityNowPlayingViewControllerAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"MRUAmbientCompactNowPlayingViewAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"MRUAmbientNowPlayingVolumeControlsViewAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"MRUVolumeViewControllerAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"RoutePickerItemCellAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SessionViewAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"MediaControlsModuleRouteButtonAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"MRUExpandableButtonSubtitleViewAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SessionActionButtonAccessibility" canInteractWithTargetClass:1];
}

@end