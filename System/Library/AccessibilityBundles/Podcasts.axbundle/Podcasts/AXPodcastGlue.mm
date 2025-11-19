@interface AXPodcastGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXPodcastGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [MEMORY[0x29EDBD6E8] sharedInstance];
    [v2 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_382 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_388];

    _Failover = [objc_allocWithZone(AXPodcastGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __46__AXPodcastGlue_accessibilityInitializeBundle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"MTSwitch" hasInstanceMethod:@"isOn" withFullSignature:{"B", 0}];
  [v2 validateClass:@"UIViewController" hasInstanceMethod:@"isEditing" withFullSignature:{"B", 0}];
  [v2 validateClass:@"UIImage" hasClassMethod:@"nowPlayingIcon" withFullSignature:{"@", 0}];
  [v2 validateClass:@"UIImage" hasClassMethod:@"unplayedIcon" withFullSignature:{"@", 0}];
  [v2 validateClass:@"UIImage" hasClassMethod:@"halfPlayedIcon" withFullSignature:{"@", 0}];
  [v2 validateClass:@"UIImage" hasClassMethod:@"infoIcon" withFullSignature:{"@", 0}];
  [v2 validateClass:@"UITableViewCell" hasInstanceMethod:@"_accessibilityClearChildren" withFullSignature:{"v", 0}];
  [v2 validateClass:@"MTPodcastPlaylistCell" hasInstanceMethod:@"isAdded" withFullSignature:{"B", 0}];
  [v2 validateClass:@"IMAVPlayer" hasInstanceMethod:@"playbackSpeed" withFullSignature:{"Q", 0}];
  [v2 validateClass:@"MTTableViewCell" hasInstanceMethod:@"leftAccessoryView" withFullSignature:{"@", 0}];
  [v2 validateClass:@"MTAddPodcastCellAccessoryView" hasInstanceMethod:@"isAdded" withFullSignature:{"B", 0}];
  [v2 validateClass:@"MTAddPodcastCellAccessoryView" hasInstanceVariable:@"_added" withType:"c"];
  [v2 validateClass:@"MPCPlayerResponse" hasInstanceMethod:@"tracklist" withFullSignature:{"@", 0}];
  [v2 validateClass:@"MPCPlayerResponse" hasInstanceMethod:@"state" withFullSignature:{"q", 0}];
  [v2 validateClass:@"MPCPlayerResponseTracklist" hasInstanceMethod:@"playingItem" withFullSignature:{"@", 0}];
  [v2 validateClass:@"MPCPlayerResponseItem" hasInstanceMethod:@"seekCommand" withFullSignature:{"@", 0}];
  [v2 validateProtocol:@"MPCPlayerSeekCommand" hasRequiredInstanceMethod:@"preferredBackwardJumpIntervals"];
  [v2 validateProtocol:@"MPCPlayerSeekCommand" hasRequiredInstanceMethod:@"preferredForwardJumpIntervals"];

  return 1;
}

uint64_t __46__AXPodcastGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Podcasts"];
  [v2 setOverrideProcessName:@"Podcasts"];

  return MEMORY[0x2A1C5E698]();
}

void __46__AXPodcastGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"PodcastsUIApplicationAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UITransitionViewAccessibility__Podcasts__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTUIViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTUILabelAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTUIImageAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTEpisodeDownloadCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTPodcastPlaylistCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTEpisodeLockupAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTEpisodeCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTSwitchAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTTableViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MarmosetUITextFieldAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTAddPodcastCellAccessoryViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTActionButtonContainerViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTPodcastCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTLabelStackViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTUIStatusBarAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EpisodeViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"LargeLockupCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EditorialCardCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NowPlayingContentViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NowPlayingTransportButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NowPlayingViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NowPlayingEpisodeUpsellBannerViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PlayerTimeControlAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TitleSectionHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BrickCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ArtworkViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MusicLibraryAddKeepLocalControlAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ProductRatingCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"RatingRowViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ReviewRatingViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"GlyphButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIScrollViewAccessibility__Podcasts__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SongCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ProductTapToRateCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"LargeLockupViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PowerSwooshCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UpsellBannerViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SwiftUIAccessibilityNode__Podcasts__SwiftUI" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DeprecatedChapterCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTSwitchCellAccessibility_temp" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MarmosetUIButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ArtworkWithPlaybackStatusViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTPodcastPlaylistSheetHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIButtonBarButtonAccessibility__Podcasts__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CachingArtworkViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ChartEpisodeCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ModernTitleHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EpisodeInfoViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EpisodeStateControlsStackViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MultiShowEpisodeCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SingleShowEpisodeCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ModernProductReviewCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SearchLandingCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ExternalLinkCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ChevronButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"LinkListCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HighlightItemCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ShowcaseCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ShowMetadataViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CircleListCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PodcastsContextUIButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PlayControlsStackViewAccessibility" canInteractWithTargetClass:1];
}

@end