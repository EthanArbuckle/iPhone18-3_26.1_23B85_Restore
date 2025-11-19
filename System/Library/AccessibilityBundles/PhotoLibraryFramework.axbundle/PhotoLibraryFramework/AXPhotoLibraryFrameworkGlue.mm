@interface AXPhotoLibraryFrameworkGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXPhotoLibraryFrameworkGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [MEMORY[0x29EDBD6E8] sharedInstance];
    [v2 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_611 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_620];

    v3 = [objc_allocWithZone(AXPhotoLibraryFrameworkGlue) init];
    v4 = _Failover;
    _Failover = v3;

    v5 = [MEMORY[0x29EDBD690] sharedInstance];
    [v5 addHandler:&__block_literal_global_682 forFramework:@"MessageUI"];
  }
}

uint64_t __60__AXPhotoLibraryFrameworkGlue_accessibilityInitializeBundle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"PLVideoRemaker"];
  [v2 validateClass:@"PLCropOverlayBottomBar"];
  [v2 validateClass:@"PLVideoView"];
  [v2 validateClass:@"PLExpandableImageView"];
  [v2 validateClass:@"PLProgressView"];
  [v2 validateClass:@"PLCropOverlay"];
  [v2 validateClass:@"PLUIImageViewController"];
  [v2 validateClass:@"PLManagedAsset" isKindOfClass:@"_PLManagedAsset"];
  [v2 validateClass:@"PLProgressView" isKindOfClass:@"UIView"];
  [v2 validateClass:@"UIToolbar" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v2 validateClass:@"PLCropOverlayBottomBar" hasInstanceMethod:@"_updatePreviewBottomBarForPlaybackState" withFullSignature:{"v", 0}];
  [v2 validateClass:@"PLProgressView" hasInstanceMethod:@"percentComplete" withFullSignature:{"f", 0}];
  [v2 validateClass:@"PLProgressView" hasInstanceMethod:@"setPercentComplete:" withFullSignature:{"v", "f", 0}];
  [v2 validateClass:@"PLVideoRemaker" hasInstanceMethod:@"cancel" withFullSignature:{"v", 0}];
  [v2 validateClass:@"PLVideoRemaker" hasInstanceMethod:@"_didEndRemakingWithTemporaryPath:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"PLUIImageViewController" hasInstanceMethod:@"cropOverlayWasOKed:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"PLVideoView" hasInstanceMethod:@"_showVideoOverlay" withFullSignature:{"v", 0}];
  [v2 validateClass:@"PLVideoView" hasInstanceMethod:@"_videoOverlayFadeOutDidFinish" withFullSignature:{"v", 0}];
  [v2 validateClass:@"PLVideoView" hasInstanceMethod:@"viewDidDisappear" withFullSignature:{"v", 0}];
  [v2 validateClass:@"PLVideoView" hasInstanceMethod:@"_createScrubberIfNeeded" withFullSignature:{"v", 0}];
  [v2 validateClass:@"PLVideoView" hasInstanceMethod:@"duration" withFullSignature:{"d", 0}];
  [v2 validateClass:@"PLExpandableImageView" hasInstanceMethod:@"videoView" withFullSignature:{"@", 0}];
  [v2 validateClass:@"PLExpandableImageView" hasInstanceMethod:@"image" withFullSignature:{"@", 0}];
  [v2 validateClass:@"PLExpandableView" hasInstanceMethod:@"state" withFullSignature:{"i", 0}];
  [v2 validateClass:@"PLExpandableView" hasInstanceMethod:@"setState: withDuration:" withFullSignature:{"v", "i", "d", 0}];
  [v2 validateClass:@"PLExpandableImageView" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
  [v2 validateClass:@"PLPhotoTileViewController" hasInstanceMethod:@"_configureViews" withFullSignature:{"v", 0}];
  [v2 validateClass:@"PLExpandableImageView" hasInstanceMethod:@"setPhoto:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"PLExpandableImageView" hasInstanceMethod:@"photo" withFullSignature:{"@", 0}];
  [v2 validateClass:@"UIView" hasInstanceMethod:@"_accessibilityViewIsVisible" withFullSignature:{"B", 0}];
  [v2 validateClass:@"PLProgressView" hasInstanceVariable:@"_labelView" withType:"UILabel"];
  [v2 validateClass:@"PLVideoView" hasInstanceVariable:@"_scrubber" withType:"UIMovieScrubber"];
  [v2 validateClass:@"PLVideoView" hasInstanceVariable:@"_videoOverlayPlayButton" withType:"UIView<PLVideoOverlayButton>"];
  [v2 validateClass:@"PLVideoView" hasInstanceVariable:@"_moviePlayer" withType:"PLMoviePlayerController"];
  [v2 validateClass:@"PLExpandableImageView" hasInstanceVariable:@"_imageView" withType:"PLImageView"];
  [v2 validateClass:@"PLExpandableImageView" hasInstanceVariable:@"_photo" withType:"PLManagedAsset"];
  [v2 validateClass:@"PLCropOverlayBottomBar" hasInstanceVariable:@"_previewBottomBar" withType:"PLCropOverlayPreviewBottomBar"];
  [v2 validateClass:@"PLPhotoTileViewController" hasInstanceVariable:@"_modelPhoto" withType:"PHAsset"];

  return 1;
}

uint64_t __60__AXPhotoLibraryFrameworkGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Photo Library Framework AX Bundle"];
  [v2 setOverrideProcessName:@"PhotoLibrary"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __60__AXPhotoLibraryFrameworkGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"UITextFieldAccessibility__PhotoLibrary__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UITableViewCellAccessibility__PhotoLibrary__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIToolbarButtonAccessibility__PhotoLibrary__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PLCropOverlayBottomBarAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PLVideoViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PLProgressViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PLVideoRemakerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PLUIImageViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PLCropOverlayAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PLImageScrollViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UINavigationButtonAccessibility__PhotoLibrary__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PLExpandableImageViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PLExpandableViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PLSlalomRegionEditorAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PLPhotoTileViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PLContactPhotoOverlayAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PLHighFidelityVideoOverlayButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PLFlatVideoOverlayButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PLVideoEditingOverlayViewAccessibility" canInteractWithTargetClass:1];
}

void __60__AXPhotoLibraryFrameworkGlue_accessibilityInitializeBundle__block_invoke_5()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_686 withPreValidationHandler:&__block_literal_global_688 postValidationHandler:&__block_literal_global_694 safeCategoryInstallationHandler:&__block_literal_global_696];
}

uint64_t __60__AXPhotoLibraryFrameworkGlue_accessibilityInitializeBundle__block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Photo Library  - MessageUI Combo Framework AX Bundle"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __60__AXPhotoLibraryFrameworkGlue_accessibilityInitializeBundle__block_invoke_9(uint64_t a1, void *a2)
{
  [a2 installSafeCategory:@"MFComposeRecipientViewAccessibility__PhotoLibrary__MessageUI" canInteractWithTargetClass:1];
  v2 = [MEMORY[0x29EDC7348] sharedInstance];
  [v2 setNeedsLoadAccessibilityInformation];
}

@end