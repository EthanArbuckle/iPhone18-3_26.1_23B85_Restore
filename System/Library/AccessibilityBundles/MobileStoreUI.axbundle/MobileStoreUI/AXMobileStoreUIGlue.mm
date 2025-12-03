@interface AXMobileStoreUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXMobileStoreUIGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global_0 withPreValidationHandler:&__block_literal_global_391 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_400];

    _Failover = [objc_allocWithZone(AXMobileStoreUIGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __52__AXMobileStoreUIGlue_accessibilityInitializeBundle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"SUUIComposeTextField" hasInstanceMethod:@"initWithConfiguration: style:" withFullSignature:{"@", "@", "q", 0}];
  [v2 validateClass:@"SUUIRatingStarsCache" hasInstanceMethod:@"ratingStarsImageForRating:" withFullSignature:{"@", "d", 0}];
  [v2 validateClass:@"SUUIStarRatingControl" hasInstanceMethod:@"setUserRating:" withFullSignature:{"v", "q", 0}];
  [v2 validateClass:@"SUUIStarRatingControl" hasInstanceMethod:@"userRating" withFullSignature:{"q", 0}];
  [v2 validateClass:@"SUUIOverlayContainerViewController" hasInstanceMethod:@"_popViewControllers" withFullSignature:{"v", 0}];
  [v2 validateClass:@"SUUIComposeTextField" hasInstanceVariable:@"_configuration" withType:"SUUIComposeTextFieldConfiguration"];
  [v2 validateClass:@"SUUISwooshView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v2 validateClass:@"SUUIItemCollectionViewCell" hasInstanceMethod:@"layout" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SUUIItemCellLayout" hasInstanceVariable:@"_itemOfferButton" withType:"SUUIItemOfferButton"];
  [v2 validateClass:@"SUUIIPadCustomerReviewsHeaderView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v2 validateClass:@"SUUIReviewsHistogramView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v2 validateClass:@"SUUIProductPageFeatureView" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SUUIProductPageFeatureView" hasInstanceMethod:@"subtitle" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SUUIOverlayContainerViewController" hasInstanceMethod:@"backstopControl" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SUUIBrickCollectionViewCell" hasInstanceMethod:@"accessibilityLabel" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SUUIIPadCustomerReviewsHeaderView" hasInstanceMethod:@"initWithClientContext:" withFullSignature:{"@", "@", 0}];
  [v2 validateClass:@"SUUILink" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SUUIIPhoneProductPageViewController" hasInstanceMethod:@"_shareButtonAction:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"SUUIGiftTextFieldTableViewCell" hasInstanceMethod:@"label" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SUUIGiftTextFieldTableViewCell" hasInstanceMethod:@"value" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SUUIGiftTextFieldTableViewCell" hasInstanceMethod:@"textField" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SUUIGiftRecipientTableViewCell" hasInstanceMethod:@"recipientAddresses" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SUUIGiftRecipientTableViewCell" hasInstanceMethod:@"label" withFullSignature:{"@", 0}];

  return 1;
}

uint64_t __52__AXMobileStoreUIGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"MobileStoreUI AX"];
  [v2 setOverrideProcessName:@"MobileStoreUI"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __52__AXMobileStoreUIGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"SU_UIBarButtonItemAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SU_UITableViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SU_UICollectionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUICollectionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUISettingsTableViewCellAcccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIStorePageSectionsViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUILockupSwooshCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUILockupSwooshCellLayoutAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIImageCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIDownloadsCellViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIDocumentContainerViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIItemTableViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIGiftDateTableViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUISegmentedTableHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIProductPageFeaturesViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIProductPageTableViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIComposeTextFieldAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIBrickCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUISwooshViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIHorizontalListViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIItemOfferButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIProductPageHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIRatingStarsCacheAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIOverlayContainerViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIProductInformationViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIStarRatingControlAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUITextBoxViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIItemCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIBrowseHeaderCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIIPhoneProductPageViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIItemBrowseCellLayoutAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIBannerViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUILockupItemCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIReviewsHistogramViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIIPadCustomerReviewsHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIGiftTextFieldTableViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIGiftRecipientTableViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIReviewListTitleViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIToggleButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIProductPageHeaderLabelAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIItemBrowseTableViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUISearchControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIGiftItemViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIProductPageTableExpandableHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUILockupItemCellLayoutAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIIPhoneSlideshowCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIProductPageReviewsViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUICircleProgressIndicatorAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIGiftComposeViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIProductPageTableUpdateHistorySectionAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIGiftTextTableViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIRedeemCameraViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIProductPageInAppPurchaseTableCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIHorizontalLockupViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIRoundedRectButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIStackListCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIStackItemViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIBadgeTextAttachmentAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIAttributedStringViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUITabularLockupViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIStarRatingViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIVerticalLockupCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIStyledButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIChartColumnHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUISectionHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIButtonCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUILabelViewElementAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIStarBarViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIViewElementSlideshowControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIProductPageOverlayControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIShelfPageSectionAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUICarouselPageSectionAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUISearchFieldTableViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUICardViewElementCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIStarRatingViewElementViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIButtonViewElementAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIImageViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIReviewCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUITracklistLockupCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIBarRatingViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIVideoThumbnailViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIStyledImageButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIShelfCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIBrowseItemCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIHorizontalLockupCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIPreviewProgressIndicatorAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIOverlayContainerViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUITabBarControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUICrossFadingTabBarButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIPlayButtonControlAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIScrollingTabBarContentCollectionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIStandardInteractiveSegmentAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIIndexBarControlAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIOnboardingCircleViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIOnboardingProgressViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIScrollingSegmentedControllerCollectionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIScrollingSegmentedControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_SUUIModalSheetNavigationControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIProfileSettingDescriptionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIEditProfileSettingDescriptionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIPhysicalCirclesViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIOnboardingAffiliationCirclesViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIViewReusePoolAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUICrossFadingTabBarAcccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIImageDeckViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIGiftThemePickerViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIPageControlAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIStackedBarCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIFlexibleSegmentedControlAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUI_UIViewAccessibility" canInteractWithTargetClass:1];
}

@end