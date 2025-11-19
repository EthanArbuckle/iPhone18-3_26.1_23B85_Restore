@interface AXMediaPlayerFrameworkGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXMediaPlayerFrameworkGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [MEMORY[0x29EDBD6E8] sharedInstance];
    [v2 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_330 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_339];

    _Failover = [objc_allocWithZone(AXMediaPlayerFrameworkGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __59__AXMediaPlayerFrameworkGlue_accessibilityInitializeBundle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"MPDetailSlider"];
  [v2 validateClass:@"MPVolumeView"];
  [v2 validateClass:@"MPDetailSlider" isKindOfClass:@"UISlider"];
  [v2 validateClass:@"MPAVItem" hasInstanceMethod:@"album" withFullSignature:{"@", 0}];
  [v2 validateClass:@"MPDetailSlider" hasInstanceMethod:@"_stringForCurrentTime:" withFullSignature:{"@", "d", 0}];
  [v2 validateClass:@"MPDetailSlider" hasInstanceMethod:@"continueTrackingWithTouch: withEvent:" withFullSignature:{"B", "@", "@", 0}];
  [v2 validateClass:@"MPDetailSlider" hasInstanceMethod:@"_updateTimeDisplayForTime:" withFullSignature:{"v", "d", 0}];
  [v2 validateClass:@"MPVolumeSlider" hasInstanceMethod:@"_commitVolumeChange" withFullSignature:{"v", 0}];
  [v2 validateClass:@"MPVolumeView" hasInstanceMethod:@"_routeButton" withFullSignature:{"@", 0}];
  [v2 validateClass:@"UISlider" hasInstanceMethod:@"value" withFullSignature:{"f", 0}];
  [v2 validateClass:@"MPDetailSlider" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v2 validateClass:@"MPDetailSlider" hasInstanceVariable:@"_allowsScrubbing" withType:"BOOL"];

  return 1;
}

uint64_t __59__AXMediaPlayerFrameworkGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Media Player AX Bundle"];
  [v2 setOverrideProcessName:@"MediaPlayer"];

  return MEMORY[0x2A1C5E698]();
}

void __59__AXMediaPlayerFrameworkGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"UINavigationButtonAccessibility__MediaPlayer__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MPAVRoutingViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MPAVRoutingSheetAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MPAVItemAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MPDetailSliderAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MPVolumeSliderAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MPVolumeViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UITableViewCellAccessibility__MediaPlayer__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MPAVRoutingTableViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MPModalPresentationWindowAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MPAddKeepLocalControlAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MPRouteLabelAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MPRouteButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MPAVRoutingControllerAccessibility" canInteractWithTargetClass:1];
}

@end