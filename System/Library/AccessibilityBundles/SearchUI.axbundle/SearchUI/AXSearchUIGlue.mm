@interface AXSearchUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXSearchUIGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_285 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_294];

    _Failover = objc_alloc_init(AXSearchUIGlue);

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __47__AXSearchUIGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"SearchUI AX bundle"];
  [v2 setOverrideProcessName:@"SearchUI"];

  return MEMORY[0x2A1C5E698]();
}

void __47__AXSearchUIGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"SearchUITableViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SearchUIScoreSummaryCardSectionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SearchUIRowCardSectionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SearchUITrailersCardSectionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SearchUITrailerViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SearchUIDescriptionCardSectionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SearchUIMovieCardSectionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SearchUIMovieCardSectionBuyButtonViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SearchUILabelAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SearchUITitleCardSectionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SearchUIDetailedRowCardSectionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SearchUIRichTitleCardSectionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SearchUIButtonCardSectionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SearchUICombinedCardSectionsViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SearchUICollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SearchUICompactCardSectionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SearchUIMultiResultAppCollectionCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SearchUICardSectionCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SearchUIPersonHeaderCardSectionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SearchUIInfoCardSectionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SearchUIHeroCardSectionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SearchUIVerticalLayoutCardSectionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SearchUIMiniCardSectionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SearchUINewsCardSectionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SearchUIHomeScreenAppIconViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SearchUICombinedCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SearchUILargeTitleDetailedRowCardSectionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SearchUIAppIconCardSectionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SearchUIHeroTitleCardSectionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SearchUITableRowCardViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SearchUIButtonItemViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SearchUIFlightCardSectionViewAccessibility" canInteractWithTargetClass:1];
}

@end