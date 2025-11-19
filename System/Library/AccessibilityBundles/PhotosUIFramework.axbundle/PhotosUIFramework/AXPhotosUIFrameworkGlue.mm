@interface AXPhotosUIFrameworkGlue
+ (BOOL)_shouldActuallyInstallBundle;
+ (void)accessibilityInitializeBundle;
@end

@implementation AXPhotosUIFrameworkGlue

+ (BOOL)_shouldActuallyInstallBundle
{
  v2 = [MEMORY[0x29EDB9F48] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 hasPrefix:*MEMORY[0x29EDBD678]];

  return v4 ^ 1;
}

+ (void)accessibilityInitializeBundle
{
  if ([a1 _shouldActuallyInstallBundle])
  {
    v3 = [MEMORY[0x29EDBD6E8] sharedInstance];
    [v3 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_595 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_604];

    v7 = [MEMORY[0x29EDBD690] sharedInstance];
    [v7 addHandler:&__block_literal_global_791 forFramework:@"PhotosEditUI"];
  }

  else
  {
    v7 = [MEMORY[0x29EDB9F48] bundleForClass:a1];
    v4 = [v7 bundleIdentifier];
    v5 = [MEMORY[0x29EDB9F48] mainBundle];
    v6 = [v5 bundleIdentifier];
    _AXLogWithFacility();
  }
}

uint64_t __56__AXPhotosUIFrameworkGlue_accessibilityInitializeBundle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"PUPhotoCommentEntryView"];
  [v2 validateClass:@"PUPhotoPostCommentTextEntryCell"];
  [v2 validateClass:@"PUPhotosGridCell" hasInstanceVariable:@"_selectionBadgeVisible" withType:"BOOL"];
  [v2 validateClass:@"PUPhotosGridCell" hasInstanceMethod:@"isSelectionBadgeVisible" withFullSignature:{"B", 0}];
  [v2 validateClass:@"PUPhotosGridViewController" hasInstanceMethod:@"photoCollectionAtIndex:" withFullSignature:{"@", "Q", 0}];
  [v2 validateClass:@"PXFeedSectionInfo" hasInstanceMethod:@"assetForItemAtIndex:" withFullSignature:{"@", "q", 0}];
  [v2 validateClass:@"PXFeedSectionInfo" hasInstanceMethod:@"hasMultipleAssetsForItemAtIndex:" withFullSignature:{"B", "q", 0}];
  [v2 validateClass:@"PUActivityViewController" isKindOfClass:@"UIViewController"];
  [v2 validateProtocol:@"PLAssetContainer" hasMethod:@"assets" isInstanceMethod:1 isRequired:1];
  [v2 validateClass:@"PUBrowsingSession" hasInstanceMethod:@"viewModel" withFullSignature:{"@", 0}];
  [v2 validateClass:@"PUAssetsDataSource" hasInstanceMethod:@"numberOfAssetsWithMaximum:" withFullSignature:{"q", "q", 0}];
  [v2 validateClass:@"PUTilingDataSource" hasInstanceMethod:@"enumerateIndexPathsStartingAtIndexPath: reverseDirection: usingBlock:" withFullSignature:{"v", "@", "B", "@?", 0}];
  [v2 validateClass:@"PUNavigationController" hasInstanceMethod:@"_extendedToolbar" withFullSignature:{"@", 0}];
  [v2 validateClass:@"PUScrubberView"];
  [v2 validateProtocol:@"PXLivePhotoTrimScrubberDelegate" hasMethod:@"trimScrubber:didEndInteractivelyEditingElement:successful:" isInstanceMethod:1 isRequired:0];
  [v2 validateProtocol:@"PXLivePhotoTrimScrubberDelegate" hasMethod:@"trimScrubber:didBeginInteractivelyEditingElement:" isInstanceMethod:1 isRequired:0];
  [v2 validateClass:@"PUFilterToolController"];
  [v2 validateClass:@"PUAdjustmentsViewController"];
  [v2 validateClass:@"PUFilterToolController" hasInstanceMethod:@"_effectForIndex:" withFullSignature:{"@", "q", 0}];
  [v2 validateClass:@"PUFilterToolController" hasInstanceVariable:@"_slider" withType:"CEKSlider"];
  [v2 validateClass:@"PUFilterToolController" hasInstanceVariable:@"_scrubberView" withType:"CEKWheelScrubberView"];
  [v2 validateClass:@"PUAdjustmentsViewController" hasInstanceMethod:@"sliderWillBeginScrolling:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"PUAdjustmentsViewController" hasInstanceMethod:@"sliderDidEndScrolling:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"PUAdjustmentsViewController" hasInstanceMethod:@"sliderValueChanged:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"PUFilterToolController" hasInstanceMethod:@"sliderWillBeginScrolling:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"PUFilterToolController" hasInstanceMethod:@"sliderDidScroll:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"PUFilterToolController" hasInstanceMethod:@"sliderDidEndScrolling:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"PUPhotoEditApertureToolbar"];
  [v2 validateClass:@"PUPhotoEditApertureToolbar" hasInstanceMethod:@"_apertureSliderDidChangeValue:" withFullSignature:{"v", "@", 0}];

  return 1;
}

uint64_t __56__AXPhotosUIFrameworkGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Photos UI Framework AX Bundle"];
  [v2 setOverrideProcessName:@"PhotosUI Framework"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __56__AXPhotosUIFrameworkGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"UIButtonAccessibility__PhotosUI__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIImageViewAccessibility__PhotosUI__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIToolbarTextButtonAccessibility__PhotosUI__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UITextViewAccessibility__PhotosUI__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUScrubberViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUOneUpViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UICollectionViewAccessibility__PhotosUI__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUVideoPlayerViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUTileControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUPhotosGridCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUGridRenderedStripAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUPhotosGridViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUPhotosSharingGridCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUActivityViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUCollectionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUAlbumListTableViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUAvalancheReviewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUOneUpBarsControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUImageTileViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUUserTransformViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUSlideshowViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUSlideshowSpeedCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUPhotosAlbumViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUTilingViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUOneUpSelectionIndicatorTileViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUAdjustmentsToolControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUFilterToolControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PHLivePhotoViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUVideoTileViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUAlbumListCellContentViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUAlbumListViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUReviewScreenControlBarAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUPhotoCommentEntryViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUPhotoPostCommentTextEntryCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUPhotoEditViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUCropToolControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUPhotoEditMediaToolControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUPhotoEditPortraitToolControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUCropAspectViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUCropHandleViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUAdjustmentsViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUPhotoEditBaseAdjustmentCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUCropAspectFlipperViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PURedeyeToolControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUTrimToolControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUCarouselSharingViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUPhotoEditToolControllerViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUOutlineCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUOneUpDetailsBarButtonControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PULivePhotoVideoOverlayTileViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUCinematicSubjectIndicatorAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUVideoEditOverlayViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUPickerOnboardingHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUWallpaperPosterEditorControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AmbientPhotoFrameControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUFilmstripWrapperViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUPhotoEditToolControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUAudioToolControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUPickerNavigationBarPaletteAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUReviewAssetAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UINavigationBarAccessibility__PhotosUI__UIKit" canInteractWithTargetClass:1];
}

void __56__AXPhotosUIFrameworkGlue_accessibilityInitializeBundle__block_invoke_5()
{
  v0 = MEMORY[0x29EDC7358];
  v1 = [MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.PhotosEditUI"];
  [v0 loadAccessibilityBundleForBundle:v1 didLoadCallback:0 force:1 loadAllAccessibilityInfo:1];
}

@end