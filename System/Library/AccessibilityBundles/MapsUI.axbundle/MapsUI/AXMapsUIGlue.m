@interface AXMapsUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXMapsUIGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [MEMORY[0x29EDBD6E8] sharedInstance];
    [v2 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_288 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_297];

    _Failover = [objc_allocWithZone(AXMapsUIGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __45__AXMapsUIGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"MapsUI AX"];
  [v2 setOverrideProcessName:@"MapsUI"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __45__AXMapsUIGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"MUPlaceHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MUPlaceRibbonItemViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MUPlaceRibbonItemViewModelAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MUPlaceHeaderButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MUPhotoTileViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MUPhotoTileCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MUHoursSummaryViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MUPlaceSectionHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MUPlaceReviewPlatterViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MUOverallRatingPlatterViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MUAmenityItemViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MULabeledValueActionRowViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MUPunchoutViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MUDayRowViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MUExpandableHoursViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MUPlacePhotoGalleryViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MUPlacePhotoViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MUBrowseCategoryCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MUActionRowItemViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MUPlaceAppLockupViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MUButtonCellRowViewAccessibility" canInteractWithTargetClass:1];
}

@end