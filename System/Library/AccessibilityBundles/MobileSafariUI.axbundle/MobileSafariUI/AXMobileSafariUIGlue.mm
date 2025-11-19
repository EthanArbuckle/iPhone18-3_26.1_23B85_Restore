@interface AXMobileSafariUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXMobileSafariUIGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXMobileSafariUIGlue accessibilityInitializeBundle];
  }
}

void __53__AXMobileSafariUIGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_310 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_319];
}

uint64_t __53__AXMobileSafariUIGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"BrowserController" hasInstanceMethod:@"_bookmarksPresentationStyle" withFullSignature:{"q", 0}];
  [v2 validateClass:@"TabController"];
  [v2 validateClass:@"TabController" hasInstanceMethod:@"activeTabGroup" withFullSignature:{"@", 0}];
  [v2 validateClass:@"TabController" hasInstanceMethod:@"setActiveTabGroupUUID:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"BrowserController" hasInstanceMethod:@"activeProfileIdentifier" withFullSignature:{"@", 0}];
  [v2 validateClass:@"BrowserController" hasInstanceVariable:@"_profileTitleInScene" withType:"NSString"];

  return 1;
}

uint64_t __53__AXMobileSafariUIGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"MobileSafariUI Bundle"];
  [v2 setOverrideProcessName:@"MobileSafariUI"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __53__AXMobileSafariUIGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"MobileSafariUIToolbarButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BookmarksBarLabelButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BookmarksBarViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BookmarksNavigationControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BookmarksTableViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BrowserControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BrowserToolbarAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ReadingListViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ReadingListTableViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TabControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TabDocumentAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SidebarContentDimmingViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DownloadTableViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ContinuousReadingViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TabBarItemViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BrowserRootViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CatalogViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UnifiedFieldAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CapsuleNavigationBarRegistrationAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TabGroupCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TabCollectionViewManagerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CompletionArrowViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UnifiedTabBarAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AddedBookmarkToastViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MobileSafariWindowAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TabDocumentViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BookmarksViewControllerAccessibility" canInteractWithTargetClass:1];
}

@end