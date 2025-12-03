@interface AXMusicApplicationGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXMusicApplicationGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [objc_allocWithZone(AXMusicApplicationGlue) init];
    v3 = _Failover;
    _Failover = v2;

    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global_13 withPreValidationHandler:&__block_literal_global_360 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_369];
  }
}

uint64_t __55__AXMusicApplicationGlue_accessibilityInitializeBundle__block_invoke(uint64_t a1, void *a2)
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
  [v2 validateClass:@"MusicApplication.NotificationBadgeView"];
  [v2 validateClass:@"MusicApplication.NotificationBadgeView" hasInstanceMethod:@"value" withFullSignature:{"q", 0}];
  [v2 validateClass:@"UIControl" hasInstanceMethod:@"isEnabled" withFullSignature:{"B", 0}];

  return 1;
}

uint64_t __55__AXMusicApplicationGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"MusicApplication AX Bundle"];
  [v2 setOverrideProcessName:@"MusicApplication Framework"];

  return MEMORY[0x2A1C5E698]();
}

void __55__AXMusicApplicationGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"UIViewAccessibility__MusicApplication__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIButtonAccessibility__MusicApplication__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UILabelAccessibility__MusicApplication__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UICollectionViewAccessibility__MusicApplication__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIViewControllerAccessibility__MusicApplication__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PageHeaderContentViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"JSSettingsContainerViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CollectionAccessoryViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UpsellBannerViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"FeaturedShowcaseCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UserDetailsEditCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"GridItemButtonCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CustomRoomMusicVideoCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MusicVideoHorizontalCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"FeaturedSongCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"RankedMusicVideoVerticalCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MovieHorizontalCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"RadioShowCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SocialProfileArtworkEditorLockupViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MultiChoiceCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ToggleCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SocialPersonHorizontalCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SocialPersonVerticalCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"VibrancyLabelCompositingViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"VerticalLockupCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MusicUINavigationButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TitleSectionHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MenuCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AlbumCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PersonCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PlaylistCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"JSInlinePopupViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SongCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UserDetailsCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BottomPlayerViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NowPlayingControlsViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NowPlayingContentViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"RadioStationCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"FlowcaseCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SearchResultCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HorizontalLockupCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"FeaturedPlaylistCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ActionCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"FeaturedMusicVideoVerticalCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PersonVerticalCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PlayerTimeControlAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NowPlayingTransportButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"FeaturedRadioShowCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CuratorActivityCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"InformativeViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BrickCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CustomRoomAlbumCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MusicVideoVerticalCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"JSSocialProfileVerticalStackViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SocialOnboardingNetworkCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ParagraphViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TVShowCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TVShowPlayBarViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ProgressViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"VideoHeaderLockupViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TVShowEpisodeCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TVShowEpisodeDetailViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"GroupedTextListViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SearchResultsViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NowPlayingShuffleButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NowPlayingRepeatButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"JSDrivenViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MusicApplicationUIScrollViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PromotionalImageryViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SocialProfilesAccessoryViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ShowcaseCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SyncedLyricsLineViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SearchHintCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"LibraryRecommendationBannerViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NowPlayingAutoPlayButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PosterCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SearchLandingCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"JSSearchLandingViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UITransitionViewAccessibility__MusicUI__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TextViewLabelAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SymbolButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CircularProgressViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DetailHeaderAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SyncedLyricsViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIButtonBarButtonAccessibility__Music__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"LiveRadioCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UICollectionViewListCellAccessibility__MusicUI__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MusicArtworkComponentImageViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"LyricsSelectionViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ParallaxViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"VolumeSliderAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MusicInterstellarContentViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MusicApplicationSearchBarAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"VerticalToggleSliderAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"VocalsAttenuationSliderAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PersonHorizontalCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AccountButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"QRCodeOverlayViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ReactionsButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NowPlayingQueueCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NowPlayingQueueHeaderViewAccessibility" canInteractWithTargetClass:1];
}

@end