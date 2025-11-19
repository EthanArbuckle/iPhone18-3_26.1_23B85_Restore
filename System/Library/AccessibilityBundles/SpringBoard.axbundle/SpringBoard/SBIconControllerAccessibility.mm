@interface SBIconControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axIsShowingAppLibrary;
- (BOOL)_axIsSidebarPinned;
- (BOOL)_axNeedsToDismissHomeScreenTodayView;
- (SBIconControllerAccessibility)init;
- (id)_axCurrentPageControl;
- (id)_axDragManager;
- (id)_axIconScrollView;
- (id)_axLabelForIcons:(id)a3;
- (int64_t)_accessibilityCurrentPageIndex;
- (int64_t)_accessibilityIconListCount;
- (int64_t)_accessibilityIconListIndex;
- (void)_accessibilityMarkIconAsAnimating:(id)a3;
- (void)_accessibilitySwitchControlStatusChanged;
- (void)_accessibilityVoiceOverStatusChanged;
- (void)_axHideAppLibrary;
- (void)_axHideTodayView;
- (void)_axShowAppLibrary;
- (void)_axShowTodayView;
@end

@implementation SBIconControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBIconController" hasInstanceMethod:@"_currentFolderController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBHomeScreenController" hasInstanceMethod:@"presentLibraryForIconManager:windowScene:animated:" withFullSignature:{"v", "@", "@", "B", 0}];
  [v3 validateClass:@"SBHomeScreenController" hasInstanceMethod:@"presentTodayOverlayForIconManager:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SBHomeScreenController" hasInstanceMethod:@"dismissTodayOverlay" withFullSignature:{"v", 0}];
  [v3 validateClass:@"SBHomeScreenController" hasInstanceMethod:@"dismissHomeScreenOverlaysAnimated:completion:" withFullSignature:{"v", "B", "@?", 0}];
  [v3 validateClass:@"SBHomeScreenController" hasInstanceMethod:@"todayViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBHomeScreenController" hasInstanceMethod:@"overlayLibraryViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBHIconManager" hasInstanceMethod:@"isMainDisplayLibraryViewVisible" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBIconController" hasInstanceMethod:@"isTodayOverlayPresented" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBTodayViewController" isKindOfClass:@"SBHTodayViewController"];
  [v3 validateClass:@"SBHTodayViewController" hasInstanceMethod:@"listView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBHLibraryViewController" hasInstanceMethod:@"containerViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBHLibrarySearchController" hasInstanceMethod:@"searchBar" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBHSearchBar" hasInstanceMethod:@"searchTextField" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBIconListView" hasInstanceMethod:@"icons" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFolderController" hasInstanceMethod:@"currentPageIndex" withFullSignature:{"q", 0}];
  [v3 validateClass:@"SBFolderController" hasInstanceMethod:@"minimumPageIndex" withFullSignature:{"q", 0}];
  [v3 validateClass:@"SBIcon" hasInstanceMethod:@"isFolderIcon" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBIconListModel" hasInstanceMethod:@"isFull" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBIcon" hasInstanceMethod:@"isLeafIcon" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBIcon" hasInstanceMethod:@"nodeIdentifier" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBHIconManager" hasInstanceMethod:@"openedFolder" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBHIconManager" hasInstanceMethod:@"closeFolderAnimated:withCompletion:" withFullSignature:{"v", "B", "@?", 0}];
  [v3 validateClass:@"SBFolderIcon" hasInstanceVariable:@"_folder" withType:"SBFolder"];
  [v3 validateClass:@"SBHomeScreenController" hasInstanceMethod:@"homeScreenViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBHomeScreenViewController" hasInstanceMethod:@"iconContentView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBHomeScreenController" hasInstanceMethod:@"iconDragManager" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBIconDragManager"];
  [v3 validateClass:@"SBIconDragManager" hasInstanceMethod:@"performSpringLoadedInteractionForIconDragOnIconView:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SBFolder" hasInstanceMethod:@"displayName" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFolder" hasInstanceMethod:@"icon" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFolderController"];
  [v3 validateClass:@"SBFolderController" hasInstanceVariable:@"_contentView" withType:"SBFolderView"];
  [v3 validateClass:@"SBFolderController" hasInstanceMethod:@"setCurrentPageIndex:animated:" withFullSignature:{"B", "q", "B", 0}];
  [v3 validateClass:@"SBFolderView"];
  [v3 validateClass:@"SBFolderView" hasInstanceVariable:@"_pageControl" withType:"SBIconListPageControl"];
  [v3 validateClass:@"SBIconController" hasInstanceMethod:@"iconManager" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBHomeScreenController" hasInstanceMethod:@"_rootFolderController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBRootFolderController" hasInstanceMethod:@"rootFolderView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBRootFolderView" hasInstanceMethod:@"_overscrollScrollPanGestureRecognizerDidUpdate:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SBHomeScreenDefaults" hasInstanceMethod:@"isSidebarPinned" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBRootFolderView" hasInstanceMethod:@"_captureInitialSearchScrollTrackingState" withFullSignature:{"v", 0}];
  [v3 validateClass:@"SBRootFolderView" hasInstanceMethod:@"_cleanUpAfterScrolling" withFullSignature:{"v", 0}];
  [v3 validateClass:@"SBIconController" hasInstanceMethod:@"dndStateService" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBHomeScreenController" hasInstanceMethod:@"isModalAppLibrarySupported" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBWindowScene" hasInstanceMethod:@"modalLibraryController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBModalLibraryController" hasProperty:@"libraryViewController" withType:"@"];
  [v3 validateClass:@"SBDefaults"];
  [v3 validateClass:@"SBDefaults" hasClassMethod:@"localDefaults" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBLocalDefaults" hasInstanceMethod:@"homeScreenDefaults" withFullSignature:{"@", 0}];
}

- (SBIconControllerAccessibility)init
{
  v6.receiver = self;
  v6.super_class = SBIconControllerAccessibility;
  v2 = [(SBIconControllerAccessibility *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x29EDBA068] defaultCenter];
    [v3 addObserver:v2 selector:sel__accessibilityVoiceOverStatusChanged name:*MEMORY[0x29EDC8000] object:0];

    v4 = [MEMORY[0x29EDBA068] defaultCenter];
    [v4 addObserver:v2 selector:sel__accessibilitySwitchControlStatusChanged name:*MEMORY[0x29EDC7F48] object:0];
  }

  return v2;
}

- (void)_accessibilitySwitchControlStatusChanged
{
  if (!UIAccessibilityIsSwitchControlRunning())
  {

    [(SBIconControllerAccessibility *)self _accessibilityStatusChanged];
  }
}

- (void)_accessibilityVoiceOverStatusChanged
{
  if (!UIAccessibilityIsVoiceOverRunning())
  {

    [(SBIconControllerAccessibility *)self _accessibilityStatusChanged];
  }
}

- (id)_axLabelForIcons:(id)a3
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    v7 = &stru_2A22F9D20;
    do
    {
      v8 = 0;
      v9 = v7;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v11 = [*(*(&v13 + 1) + 8 * v8) accessibilityLabel];
        v12 = @"__AXStringForVariablesSentinel";
        v7 = __UIAXStringForVariables();

        ++v8;
        v9 = v7;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:{16, v11, @"__AXStringForVariablesSentinel"}];
    }

    while (v5);
  }

  else
  {
    v7 = &stru_2A22F9D20;
  }

  return v7;
}

- (void)_accessibilityMarkIconAsAnimating:(id)a3
{
  v3 = a3;
  v4 = SBAXDroppedIconsAnimatingIntoPlace;
  v7 = v3;
  if (!SBAXDroppedIconsAnimatingIntoPlace)
  {
    v5 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v6 = SBAXDroppedIconsAnimatingIntoPlace;
    SBAXDroppedIconsAnimatingIntoPlace = v5;

    v3 = v7;
    v4 = SBAXDroppedIconsAnimatingIntoPlace;
  }

  if (([v4 containsObject:v3] & 1) == 0)
  {
    [SBAXDroppedIconsAnimatingIntoPlace axSafelyAddObject:v7];
  }
}

void __62__SBIconControllerAccessibility__accessibilityCloseOpenFolder__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) safeValueForKey:@"iconManager"];
  [v1 closeFolderAnimated:1 withCompletion:0];
}

- (int64_t)_accessibilityIconListIndex
{
  v2 = [(SBIconControllerAccessibility *)self _axCurrentPageControl];
  v3 = [v2 currentPage];

  return v3;
}

- (int64_t)_accessibilityIconListCount
{
  v2 = [(SBIconControllerAccessibility *)self _axCurrentPageControl];
  v3 = [v2 numberOfPages];

  return v3;
}

- (id)_axCurrentPageControl
{
  v2 = [(SBIconControllerAccessibility *)self safeValueForKey:@"_currentFolderController"];
  v3 = [v2 safeValueForKey:@"_contentView"];
  objc_opt_class();
  v4 = [v3 safeValueForKey:@"_pageControl"];
  v5 = __UIAccessibilityCastAsClass();

  return v5;
}

- (id)_axDragManager
{
  v2 = AXMainSBHomeScreenController();
  v3 = [v2 safeValueForKey:@"iconDragManager"];

  return v3;
}

- (id)_axIconScrollView
{
  v2 = AXMainSBHomeScreenController();
  v3 = [v2 safeValueForKey:@"homeScreenViewController"];
  v4 = [v3 safeUIViewForKey:@"iconContentView"];

  objc_opt_class();
  v5 = [v4 _accessibilityDescendantOfType:NSClassFromString(&cfstr_Sbiconscrollvi.isa)];
  v6 = __UIAccessibilityCastAsClass();

  return v6;
}

- (void)_axShowTodayView
{
  if ([(SBIconControllerAccessibility *)self _axIsShowingAppLibrary])
  {
    [(SBIconControllerAccessibility *)self _axHideAppLibrary];
  }

  AXPerformSafeBlock();
  v3 = accessibilityLocalizedString(@"did.show.today.view.announcement");
  UIAccessibilitySpeakAndDoNotBeInterrupted();
}

void __49__SBIconControllerAccessibility__axShowTodayView__block_invoke()
{
  v1 = AXMainSBHomeScreenController();
  v0 = AXSBHIconManagerFromSharedIconController();
  [v1 presentTodayOverlayForIconManager:v0];
}

- (void)_axHideTodayView
{
  if ([(SBIconControllerAccessibility *)self _axIsShowingHomeScreenTodayView])
  {
    AXPerformSafeBlock();
    v3 = [(SBIconControllerAccessibility *)self _accessibilityCurrentPageIndex];
    IsPad = AXDeviceIsPad();
    v5 = AXSBScrollDescriptionForCurrentPage(v3 + IsPad);
    UIAccessibilitySpeakAndDoNotBeInterrupted();
  }
}

void __49__SBIconControllerAccessibility__axHideTodayView__block_invoke()
{
  v0 = AXMainSBHomeScreenController();
  [v0 dismissTodayOverlay];
}

- (void)_axShowAppLibrary
{
  AXPerformSafeBlock();
  v2 = AXLibraryViewController(@"activeDisplayWindowScene");
  argument = [v2 safeValueForKeyPath:@"containerViewController.searchBar.searchTextField"];

  v3 = accessibilityLocalizedString(@"did.show.app.library.announcement");
  UIAccessibilitySpeakAndDoNotBeInterrupted();

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], argument);
}

void __50__SBIconControllerAccessibility__axShowAppLibrary__block_invoke()
{
  v2 = AXMainSBHomeScreenController();
  v0 = AXSBHIconManagerFromSharedIconController();
  v1 = AXWindowScene(@"activeDisplayWindowScene");
  [v2 presentLibraryForIconManager:v0 windowScene:v1 animated:1];
}

- (void)_axHideAppLibrary
{
  if ([(SBIconControllerAccessibility *)self _axIsShowingAppLibrary])
  {
    AXPerformSafeBlock();
  }
}

void __50__SBIconControllerAccessibility__axHideAppLibrary__block_invoke(uint64_t a1)
{
  v2 = AXMainSBHomeScreenController();
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 3221225472;
  v3[2] = __50__SBIconControllerAccessibility__axHideAppLibrary__block_invoke_2;
  v3[3] = &unk_29F2FBBC8;
  v3[4] = *(a1 + 32);
  [v2 dismissHomeScreenOverlaysAnimated:1 completion:v3];
}

void __50__SBIconControllerAccessibility__axHideAppLibrary__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) _accessibilityCurrentPageIndex];
  v2 = v1 + AXDeviceIsPad();
  LODWORD(v1) = *MEMORY[0x29EDC7F10];
  v3 = AXSBScrollDescriptionForCurrentPage(v2);
  UIAccessibilityPostNotification(v1, v3);
}

- (BOOL)_axIsShowingAppLibrary
{
  v2 = AXSBHIconManagerFromSharedIconController();
  v3 = [v2 safeBoolForKey:@"isMainDisplayLibraryViewVisible"];

  return v3;
}

- (BOOL)_axIsSidebarPinned
{
  v2 = [NSClassFromString(&cfstr_Sbdefaults.isa) safeValueForKeyPath:@"localDefaults.homeScreenDefaults"];
  v3 = [v2 safeBoolForKey:@"isSidebarPinned"];

  return v3;
}

- (BOOL)_axNeedsToDismissHomeScreenTodayView
{
  if ([(SBIconControllerAccessibility *)self _axIsSidebarPinned])
  {
    return 0;
  }

  return [(SBIconControllerAccessibility *)self _axIsShowingHomeScreenTodayView];
}

- (int64_t)_accessibilityCurrentPageIndex
{
  v2 = [(SBIconControllerAccessibility *)self safeValueForKey:@"_currentFolderController"];
  v3 = [v2 safeIntegerForKey:@"currentPageIndex"];
  v4 = v3 - [v2 safeIntegerForKey:@"minimumPageIndex"];

  return v4;
}

@end