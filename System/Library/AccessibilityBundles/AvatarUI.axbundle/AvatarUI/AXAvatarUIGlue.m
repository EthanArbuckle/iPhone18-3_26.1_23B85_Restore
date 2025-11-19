@interface AXAvatarUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXAvatarUIGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [MEMORY[0x29EDBD6E8] sharedInstance];
    [v2 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];

    _Failover = [objc_allocWithZone(AXAvatarUIGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __47__AXAvatarUIGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"AvatarUI AX"];
  [v2 setOverrideProcessName:@"AvatarUI"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __47__AXAvatarUIGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"AVTGroupDialAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVTAttributeEditorSectionHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVTAvatarAttributeEditorSectionColorControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVTAvatarAttributeEditorSectionControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVTAttributeValueViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVTAvatarAttributeEditorViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVTCarouselControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVTColorSliderAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVTAvatarColorSliderContainerViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVTColorWheelViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVTFunCamAvatarPickerControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVTFunCamAvatarPickerCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVTSimpleAvatarPickerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVTSplashScreenViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVTStickerSheetControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVTStickerRecentsViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVTSimpleAvatarPickerHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVTStickerPagingControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVTRecordingButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVTPoseSelectionViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVTFunCamAvatarPickerTitleCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVTPoseSelectionGridViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVTSelectableStickerSheetControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVTAttributeLabeledCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AVTAvatarAttributeEditorMulticolorPickerCellAccessibility" canInteractWithTargetClass:1];
}

@end