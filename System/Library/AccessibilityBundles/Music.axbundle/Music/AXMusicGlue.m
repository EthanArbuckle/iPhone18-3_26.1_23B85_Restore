@interface AXMusicGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXMusicGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [MEMORY[0x29EDBD6E8] sharedInstance];
    [v2 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_354 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_363];

    _Failover = [objc_allocWithZone(AXMusicGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __44__AXMusicGlue_accessibilityInitializeBundle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"MPCPlayerResponse" hasInstanceMethod:@"tracklist" withFullSignature:{"@", 0}];
  [v2 validateClass:@"MPCPlayerResponseItem" hasInstanceMethod:@"likeCommand" withFullSignature:{"@", 0}];
  [v2 validateClass:@"MPCPlayerResponseItem" hasInstanceMethod:@"dislikeCommand" withFullSignature:{"@", 0}];
  [v2 validateClass:@"MPCPlayerResponseTracklist" hasInstanceMethod:@"playingItem" withFullSignature:{"@", 0}];
  [v2 validateClass:@"MPCPlayerResponseItem" hasInstanceMethod:@"seekCommand" withFullSignature:{"@", 0}];
  [v2 validateClass:@"MPCPlayerResponse" hasInstanceMethod:@"state" withFullSignature:{"q", 0}];
  [v2 validateProtocol:@"MPCPlayerSeekCommand" hasRequiredInstanceMethod:@"preferredBackwardJumpIntervals"];
  [v2 validateProtocol:@"MPCPlayerSeekCommand" hasRequiredInstanceMethod:@"preferredForwardJumpIntervals"];
  [v2 validateProtocol:@"MPCPlayerSeekCommand" hasRequiredInstanceMethod:@"jumpByInterval:"];
  [v2 validateClass:@"UIControl" hasInstanceMethod:@"isEnabled" withFullSignature:{"B", 0}];

  return 1;
}

uint64_t __44__AXMusicGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Music AX"];
  [v2 setOverrideProcessName:@"Music"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __44__AXMusicGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"UIButtonAccessibility__Music__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UILabelAccessibility__Music__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UICollectionViewAccessibility__Music__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIViewControllerAccessibility__Music__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MusicUINavigationButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BottomPlayerViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NowPlayingControlsViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NowPlayingContentViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PlayerTimeControlAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NowPlayingTransportButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NowPlayingShuffleButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NowPlayingRepeatButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MusicUIScrollViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SyncedLyricsLineViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NowPlayingAutoPlayButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UITransitionViewAccessibility__MusicUI__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SymbolButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SyncedLyricsViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIButtonBarButtonAccessibility__Music__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"LyricsSelectionViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"VolumeSliderAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"VerticalToggleSliderAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AudioTraitButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"VocalsAttenuationSliderAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"QRCodeOverlayViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ReactionsButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NowPlayingQueueCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NowPlayingQueueHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NowPlayingQueueAddCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NowPlayingQueueControlsViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UICollectionViewListCellAccessibility__Music__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NowPlayingRouteSharePlayTogetherControlAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NowPlayingQueueRepeatCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"LibraryMainViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WindowAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ActivityViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NowPlayingLyricsTranslationButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIViewAccessibility__MusicUI__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AccessibilityNode__Music__SwiftUI" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NowPlayingTrackTitleStackViewAccessibility" canInteractWithTargetClass:1];
}

@end