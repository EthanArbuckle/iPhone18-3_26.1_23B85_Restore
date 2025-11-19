@interface AXPhotosUICoreGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXPhotosUICoreGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXPhotosUICoreGlue accessibilityInitializeBundle];
  }
}

void __51__AXPhotosUICoreGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_501 withPreValidationHandler:&__block_literal_global_510 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_519];
}

uint64_t __51__AXPhotosUICoreGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"PXTextBannerView"];
  [v2 validateClass:@"PXTextBannerView" hasInstanceVariable:@"_textLabel" withType:"UILabel"];

  return 1;
}

uint64_t __51__AXPhotosUICoreGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"PhotosUICore AX Bundle"];
  [v2 setOverrideProcessName:@"PhotosUICore"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __51__AXPhotosUICoreGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"PXPeopleConfirmationViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXPeopleCandidateBannerViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXAssetUIImageViewTileAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXFocusableUIImageViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXScrollViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXUIScrollViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_PXUIScrollViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXTitleSubtitleUILabelAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXUIWidgetHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXPhotosDetailsUIViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXHighFidelityVideoOverlayButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXPhotosDetailsHeaderTileWidgetAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXNavigationTitleViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXPhotosDetailsAssetsWidgetAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXPeopleCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXUIMapWidgetAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXUIAssetBadgeViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXPeopleBootstrapCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXPeopleSuggestionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXPeopleScalableAvatarViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXUIAssetsSceneAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXTilingControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXVideoPlayerViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXAssetLoopUIViewTileAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXCMMPosterHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXPhotosDetailsBarsControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXCMMAssetsViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXTilingControllerCompositionEngineAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXLivePhotoTrimScrubberAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXCuratedLibraryZoomLevelControlAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXCuratedLibraryOverlayButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXCuratedLibraryUIViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXCuratedLibraryFooterControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXPhotosGlobalFooterViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXVideoSessionUIViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXGReusableAXInfoAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXGBasicAXGroupAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXZoomableInlineHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXCaptionHashtagsEntryViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXPhotosContentControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXCuratedLibraryViewProviderAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXComposeRecipientTableViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXGSingleViewContainerViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXPhotosGridAddButtonViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXFilterFooterViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXStoryChromeButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXStoryPlayButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXMessagesStackViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXStoryViewModelAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXGPageControlAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXFocusTimelineViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXFocusTimelineEventAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXCloudQuotaBannerViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXPhotosSectionHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXSubjectTrackingViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXPhotosViewRoundedAccessoryButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PXPhotosUIViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PhotosPageContainerViewAccessibility" canInteractWithTargetClass:1];
}

@end