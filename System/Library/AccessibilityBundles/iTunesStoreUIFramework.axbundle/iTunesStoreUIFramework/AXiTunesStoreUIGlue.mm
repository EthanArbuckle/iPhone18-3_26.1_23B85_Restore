@interface AXiTunesStoreUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXiTunesStoreUIGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v3 = [MEMORY[0x29EDBD6E8] sharedInstance];
    [v3 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_558 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_567];

    v4 = [objc_allocWithZone(AXiTunesStoreUIGlue) init];
    v5 = _Failover;
    _Failover = v4;

    AXPerformBlockOnMainThreadAfterDelay();
  }

  if ([*MEMORY[0x29EDC8008] _accessibilityBoolValueForKey:@"_accessibilityWebKitLoaded"])
  {

    [a1 _webKitInitialized];
  }

  else
  {
    v6 = [MEMORY[0x29EDBA068] defaultCenter];
    [v6 addObserver:a1 selector:sel__webKitInitialized name:@"UIApplicationLoadedWebKit" object:0];
  }
}

uint64_t __52__AXiTunesStoreUIGlue_accessibilityInitializeBundle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"SUBannerCellConfiguration"];
  [v2 validateClass:@"SUCompletionCellConfiguration"];
  [v2 validateClass:@"SUTableCell"];
  [v2 validateClass:@"SUMaskedView"];
  [v2 validateClass:@"SUTableCellContentView"];
  [v2 validateClass:@"SUItemOfferButton"];
  [v2 validateClass:@"SUStorePageViewController"];
  [v2 validateClass:@"SUCellConfigurationCache"];
  [v2 validateClass:@"SUTermsAndConditionsView"];
  [v2 validateClass:@"SULinkControl"];
  [v2 validateClass:@"SUReviewsButton"];
  [v2 validateClass:@"SUReviewCellConfiguration"];
  [v2 validateClass:@"SUReviewsHeaderCellConfiguration"];
  [v2 validateClass:@"SULoadMoreCellConfiguration"];
  [v2 validateClass:@"SUTextContentView"];
  [v2 validateClass:@"SUPlaceholderViewController"];
  [v2 validateClass:@"SUViewController"];
  [v2 validateClass:@"SUItem"];
  [v2 validateClass:@"SUItemCellConfiguration"];
  [v2 validateClass:@"SUOverlayBackgroundViewController"];
  [v2 validateClass:@"SUSubtitledButton"];
  [v2 validateClass:@"SUNavigationButton"];
  [v2 validateClass:@"SUStoreController" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SUClientController" hasClassMethod:@"sharedController" withFullSignature:{"@", 0}];
  [v2 validateClass:@"ISUDownload" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v2 validateClass:@"ISUDownload" hasInstanceMethod:@"artistName" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SUTouchCaptureView" hasInstanceMethod:@"passThroughViews" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SUTableHeaderView" hasInstanceMethod:@"subtitle" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SUTableHeaderView" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SUStoreController" hasInstanceMethod:@"storeContentLanguage" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SUStorePageViewController" hasInstanceMethod:@"reloadForSectionsWithGroup:" withFullSignature:{"B", "@", 0}];
  [v2 validateClass:@"SUItemOfferButton" hasInstanceMethod:@"_reloadButton" withFullSignature:{"v", 0}];
  [v2 validateClass:@"SUArrayCellConfiguration" hasInstanceMethod:@"_accessibilityStringsArrayPointer" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SUCellConfigurationCache" hasInstanceMethod:@"configurationForRow:" withFullSignature:{"@", "Q", 0}];
  [v2 validateClass:@"SUTermsAndConditionsView" hasInstanceMethod:@"_termsAndConditionsControl" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SUItemOfferButton" hasInstanceMethod:@"itemOfferButtonStyle" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SUTextContentView" hasInstanceMethod:@"placeholder" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SUDeferredUISegmentedControl" hasInstanceMethod:@"_commitDeferredInterfaceUpdates" withFullSignature:{"v", 0}];
  [v2 validateClass:@"SUStorePageViewController" hasInstanceMethod:@"_handleViewControllerBecameReady:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"UIScrollView" hasInstanceMethod:@"setTopExtensionViewColor:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"SUComposeTextFieldConfiguration" hasInstanceMethod:@"label" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SUItem" hasInstanceMethod:@"reviewStatistics" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SUItemReviewStatistics" hasInstanceMethod:@"numberOfUserRatings" withFullSignature:{"q", 0}];
  [v2 validateClass:@"SUItemReviewStatistics" hasInstanceMethod:@"averageUserRating" withFullSignature:{"f", 0}];
  [v2 validateClass:@"SUItem" hasInstanceMethod:@"contentRating" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SUItemContentRating" hasInstanceMethod:@"isExplicitContent" withFullSignature:{"B", 0}];
  [v2 validateClass:@"UITableView" hasInstanceMethod:@"_accessibilityUIScrollViewScrollStatus" withFullSignature:{"@", 0}];
  [v2 validateClass:@"UITableView" hasInstanceMethod:@"_accessibilityHeaderElement" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SUClientController" hasInstanceMethod:@"rootViewController" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SUTabBarController" hasInstanceMethod:@"overlayBackgroundViewController" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SUSubtitledButton" hasInstanceMethod:@"currentSubtitle" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SSDownload" hasInstanceMethod:@"status" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SSDownloadStatus" hasInstanceMethod:@"isFailed" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SSDownloadStatus" hasInstanceMethod:@"isPaused" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SUTableCell" hasInstanceMethod:@"showHighlight" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SUStorePageViewController" hasInstanceMethod:@"_setActiveChildViewController: shouldTearDown:" withFullSignature:{"v", "@", "B", 0}];
  [v2 validateClass:@"SUScriptNotificationObserver" hasInstanceMethod:@"init" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SUScriptNotificationObserver" hasInstanceMethod:@"_accessibilityPerformScrollUp" withFullSignature:{"v", 0}];
  [v2 validateClass:@"SUScriptNotificationObserver" hasInstanceMethod:@"_accessibilityPerformScrollDown" withFullSignature:{"v", 0}];
  [v2 validateClass:@"SUScriptNotificationObserver" hasInstanceMethod:@"_accessibilityPerformScrollLeft" withFullSignature:{"v", 0}];
  [v2 validateClass:@"SUScriptNotificationObserver" hasInstanceMethod:@"_accessibilityPerformScrollRight" withFullSignature:{"v", 0}];
  [v2 validateClass:@"SUScriptNotificationObserver" hasInstanceMethod:@"_accessibilityPerformEscape" withFullSignature:{"v", 0}];
  [v2 validateClass:@"SUStorePageViewController" hasInstanceVariable:@"_segmentedControl" withType:"SUSegmentedControl"];
  [v2 validateClass:@"SUItemCellConfiguration" hasInstanceVariable:@"_representedObject" withType:"@"];
  [v2 validateClass:@"SUCellConfiguration" hasInstanceVariable:@"_representedObject" withType:"@"];
  [v2 validateClass:@"SUTableCell" hasInstanceVariable:@"_configurationView" withType:"SUTableCellContentView"];
  [v2 validateClass:@"SUTableCellContentView" hasInstanceVariable:@"_configuration" withType:"SUCellConfiguration"];
  [v2 validateClass:@"SUCellConfigurationCache" hasInstanceVariable:@"_configurations" withType:"NSMutableArray"];
  [v2 validateClass:@"SULinkControl" hasInstanceVariable:@"_label" withType:"UILabel"];
  [v2 validateClass:@"SUReviewsButton" hasInstanceVariable:@"_userRating" withType:"f"];
  [v2 validateClass:@"SUStorePageViewController" hasInstanceVariable:@"_activeChildViewController" withType:"SUViewController"];
  [v2 validateClass:@"SUOverlayBackgroundViewController" hasInstanceVariable:@"_viewControllers" withType:"NSMutableArray"];
  [v2 validateClass:@"SUOverlayBackgroundViewController" hasInstanceVariable:@"_selectedViewControllerIndex" withType:"q"];

  return 1;
}

uint64_t __52__AXiTunesStoreUIGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"iTunes Store UI AX Bundle"];
  [v2 setOverrideProcessName:@"iTunes Store UI"];

  return MEMORY[0x2A1C5E698]();
}

void __52__AXiTunesStoreUIGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"SUTableCellContentViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUItemOfferButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUTableCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUCellConfigurationAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUCompletionCellConfigurationAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUTouchCaptureViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUCellConfigurationCacheAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUBannerCellConfigurationAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUBannerCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUStructuredPageViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUTermsAndConditionsViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUReviewsButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUApplicationAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUStorePageViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUReviewCellConfigurationAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUReviewsHeaderCellConfigurationAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SULoadMoreCellConfigurationAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUTextContentViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUTableHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUDeferredUISegmentedControlAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIScrollViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUShortLinkCellConfigurationAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUTallLinkCellConfigurationAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUThreeLineTrackCellConfigurationAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SULoadMoreMediaCellConfigurationAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUItemCellConfigurationAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUMaskedViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUTwoLineTrackCellConfigurationAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUTableViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUButtonCellConfigurationAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUSubtitledButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUNavigationButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUScriptNotificationObserverAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SURedeemCameraViewControllerAccessibility" canInteractWithTargetClass:1];
}

void __41__AXiTunesStoreUIGlue__webKitInitialized__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_684 withPreValidationHandler:&__block_literal_global_695 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_703];
}

uint64_t __41__AXiTunesStoreUIGlue__webKitInitialized__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"SUWebViewController" hasInstanceMethod:@"_removePlaceholderBackgroundView" withFullSignature:{"v", 0}];
  [v2 validateClass:@"SUWebView"];

  return 1;
}

uint64_t __41__AXiTunesStoreUIGlue__webKitInitialized__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"iTunesStoreUI Web Framework AX Bundle"];
  [v2 setOverrideProcessName:@"iTunesStoreUI - Web"];

  return MEMORY[0x2A1C5E698]();
}

void __41__AXiTunesStoreUIGlue__webKitInitialized__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"SUWebViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUWebViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUUIWebDocumentViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SUiBooksOverrideWebViewAccessibility" canInteractWithTargetClass:1];
}

@end