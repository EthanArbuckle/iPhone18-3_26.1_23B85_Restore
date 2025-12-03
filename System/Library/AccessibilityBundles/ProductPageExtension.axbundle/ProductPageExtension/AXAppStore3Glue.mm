@interface AXAppStore3Glue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXAppStore3Glue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_293 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_299];

    _Failover = [objc_allocWithZone(AXAppStore3Glue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __48__AXAppStore3Glue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"ProductPageExtension Bundle"];
  [v2 setOverrideProcessName:@"ProductPageExtension"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __48__AXAppStore3Glue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"AccountDetailCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AccountButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AccountActionSectionFooterViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AlertActionTrailingImageViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ArtworkCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BadgeParagraphViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BadgeViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BaseLockupViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ComponentViewOverflowViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DetailCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DeveloperLinkViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"FootnoteCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"FootnoteViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"InAppPurchaseLockupCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"InAppPurchaseLockupViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"LargeLockupCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MediumLockupCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PlatformSelectorViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ProductRatingsCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ProductReviewCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ProductTapToRateCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"RatingViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SearchHintCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SmallLockupCollectionViewTableCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SmallSearchLockupViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"StandardLinkViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TitledParagraphCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UpdatesLockupCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AppStore_UITransitionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CrossLinkLockupViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"GuidedSearchTokenCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UICollectionViewListCellAccessibility__AppStore__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SearchAdTransparencyLabelAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NotifyMeButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CondensedEditorialSearchResultContentViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CondensedAppEventCardViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AppTrailerLockupCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MetadataRibbonStarRatingViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MetadataRibbonEditorsChoiceViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MetadataRibbonBorderedLabelWithDescriptionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MetadataRibbonIconWithLabelViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"RiverTodayCardCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ShelfHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SearchActionCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"StoryCardCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ListTodayCardCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AppEventTodayCardCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ArcadeHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ScrollablePillViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SearchLinkViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TodayCardChinLockupListIconViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MultiAppFallbackCardCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SearchButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EditorialCardCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"OfferButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ExpandableTextViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SmallLockupCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BrickCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ActionCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ContentSearchResultCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ProductLockupCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ArtworkViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AnnotationCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EditorsChoiceViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ProductPageLinkCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ScreenshotCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AppStore_UIScrollViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AppStore_UICollectionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ParagraphCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EditorialSearchResultCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AppStore_UINavigationControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SearchResultsContainerViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AppStore_UIButtonBarButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"VideoCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ProductNoRatingsViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MixedMediaLockupCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ChartOrCategoryBrickCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TitleHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ProductCapabilityCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ReviewSummaryViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CardHeaderButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ArcadeDownloadPackCategoryButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"GuidedSearchTokenPaletteViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MetadataRibbonBarViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"LargeGameCenterPlayerCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AchievementSummaryCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"IOS_SmallLockupViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BreakoutDetailsViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SmallBreakoutCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PosterLockupCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"StoreCollectionViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"VideoViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PlayButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AppStoreApplicationAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ProductDescriptionCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"RibbonBarItemCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PrivacyTypeCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PrivacyCategoryViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ArticleDiffablePageViewControllerAccessibility" canInteractWithTargetClass:1];
}

@end