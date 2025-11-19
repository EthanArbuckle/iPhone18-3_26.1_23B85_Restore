@interface SBUIApplicationAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityLeftOfHomeTodayViewIsVisible;
- (BOOL)_accessibilityLeftOfLockTodayViewIsVisible;
- (BOOL)_accessibilityOverlayTodayViewIsVisible;
- (BOOL)_accessibilitySpotlightIsVisible;
- (id)_accessibilityCoverSheetViewController;
- (id)_accessibilitySpeakThisViewController;
- (id)_accessibilitySpotlightMultiplexingViewController;
- (id)_accessibilityTitleBarElement;
- (id)_accessibilityTodayOverlayController;
@end

@implementation SBUIApplicationAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"UIApplication" hasInstanceMethod:@"_accessibilitySpeakThisViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIApplication" hasInstanceMethod:@"_accessibilityTitleBarElement" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBIconController"];
  [v3 validateClass:@"SBIconController" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBHomeScreenController" hasInstanceMethod:@"homeScreenOverlayController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBRootFolderController"];
  [v3 validateClass:@"SBRootFolderController" hasInstanceMethod:@"isLeadingCustomViewVisible" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBRootFolderController" hasInstanceMethod:@"todayViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBLockScreenManager"];
  [v3 validateClass:@"SBLockScreenManager" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBLockScreenManager" hasInstanceMethod:@"coverSheetViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CSCoverSheetViewController"];
  [v3 validateClass:@"CSCoverSheetViewController" hasInstanceMethod:@"isShowingTodayView" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CSCoverSheetViewController" hasInstanceMethod:@"_indexOfTodayPage" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"CSCoverSheetViewController" hasInstanceMethod:@"pageViewControllerAtIndex:" withFullSignature:{"@", "Q", 0}];
  [v3 validateClass:@"CSCoverSheetViewController" hasInstanceMethod:@"overlayController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBSpotlightMultiplexingViewController"];
  [v3 validateClass:@"SBSpotlightMultiplexingViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"SBSpotlightMultiplexingViewController" hasClassMethod:@"sharedRemoteSearchViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CSCoverSheetViewController" hasInstanceMethod:@"mainPageContentViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CSMainPageContentViewController" hasInstanceMethod:@"combinedListViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CSCombinedListViewController" hasInstanceVariable:@"_structuredListViewController" withType:"NCNotificationStructuredListViewController"];
  [v3 validateClass:@"SBHomeScreenOverlayController" hasInstanceMethod:@"overlayViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBHomeScreenOverlayController" hasInstanceMethod:@"isPresented" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBHomeScreenOverlayViewController" hasInstanceMethod:@"leadingSidebarViewController" withFullSignature:{"@", 0}];
}

- (id)_accessibilitySpeakThisViewController
{
  if ([(SBUIApplicationAccessibility *)self _accessibilityOverlayTodayViewIsVisible])
  {
    LOBYTE(v9) = 0;
    objc_opt_class();
    v3 = [(SBUIApplicationAccessibility *)self _accessibilityTodayOverlayController];
    v4 = __UIAccessibilityCastAsClass();
    goto LABEL_3;
  }

  if ([(SBUIApplicationAccessibility *)self _accessibilityLeftOfHomeTodayViewIsVisible])
  {
    v5 = [(SBUIApplicationAccessibility *)self _accessibilityRootFolderController];
    LOBYTE(v9) = 0;
    objc_opt_class();
    v6 = [v5 safeValueForKey:@"todayViewController"];
    v4 = __UIAccessibilityCastAsClass();

LABEL_13:
    goto LABEL_14;
  }

  if ([(SBUIApplicationAccessibility *)self _accessibilityLeftOfLockTodayViewIsVisible])
  {
    [(SBUIApplicationAccessibility *)self _accessibilityCoverSheetViewController];
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__9;
    v13 = __Block_byref_object_dispose__9;
    v5 = v14 = 0;
    AXPerformSafeBlock();
    v4 = v10[5];

    _Block_object_dispose(&v9, 8);
    goto LABEL_13;
  }

  if (![(SBUIApplicationAccessibility *)self _accessibilitySpotlightIsVisible])
  {
    v5 = [(SBUIApplicationAccessibility *)self _accessibilityCoverSheetViewController];
    v4 = [v5 safeValueForKeyPath:@"mainPageContentViewController.combinedListViewController._structuredListViewController"];
    goto LABEL_13;
  }

  LOBYTE(v9) = 0;
  objc_opt_class();
  v3 = [(SBUIApplicationAccessibility *)self _accessibilitySpotlightMultiplexingViewController];
  v7 = [objc_opt_class() safeValueForKey:@"sharedRemoteSearchViewController"];
  v4 = __UIAccessibilityCastAsClass();

LABEL_3:
  if (v9 == 1)
  {
    abort();
  }

LABEL_14:

  return v4;
}

void __69__SBUIApplicationAccessibility__accessibilitySpeakThisViewController__block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) pageViewControllerAtIndex:{objc_msgSend(*(a1 + 32), "safeUnsignedIntegerForKey:", @"_indexOfTodayPage"}];
  v3 = __UIAccessibilityCastAsClass();

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    objc_opt_class();
    v6 = [*(a1 + 32) safeValueForKey:@"overlayController"];
    v7 = [v6 safeValueForKey:@"overlayViewController"];
    v8 = [v7 safeValueForKey:@"leadingSidebarViewController"];
    v9 = __UIAccessibilityCastAsClass();

    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

- (id)_accessibilityTitleBarElement
{
  if ([(SBUIApplicationAccessibility *)self _accessibilityLeftOfHomeTodayViewIsVisible]|| [(SBUIApplicationAccessibility *)self _accessibilityLeftOfLockTodayViewIsVisible])
  {
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SBUIApplicationAccessibility;
    v3 = [(SBUIApplicationAccessibility *)&v5 _accessibilityTitleBarElement];
  }

  return v3;
}

- (BOOL)_accessibilitySpotlightIsVisible
{
  objc_opt_class();
  v3 = [(SBUIApplicationAccessibility *)self _accessibilitySpotlightMultiplexingViewController];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 _appearState] == 2;
  return v5;
}

- (BOOL)_accessibilityOverlayTodayViewIsVisible
{
  v2 = AXSBHomeScreenOverlayController();
  v3 = [v2 safeBoolForKey:@"isPresented"];

  return v3;
}

- (id)_accessibilityTodayOverlayController
{
  v2 = AXSBHomeScreenOverlayController();
  v3 = [v2 safeValueForKey:@"overlayViewController"];
  v4 = [v3 safeValueForKey:@"leadingSidebarViewController"];

  return v4;
}

- (BOOL)_accessibilityLeftOfHomeTodayViewIsVisible
{
  v2 = [(SBUIApplicationAccessibility *)self _accessibilityRootFolderViewController];
  v3 = [v2 safeBoolForKey:@"isLeadingCustomViewVisible"];

  return v3;
}

- (BOOL)_accessibilityLeftOfLockTodayViewIsVisible
{
  v2 = [(SBUIApplicationAccessibility *)self _accessibilityCoverSheetViewController];
  v3 = [v2 safeBoolForKey:@"isShowingTodayView"];

  return v3;
}

- (id)_accessibilitySpotlightMultiplexingViewController
{
  v2 = NSClassFromString(&cfstr_Sbspotlightmul.isa);

  return [(objc_class *)v2 safeValueForKey:@"sharedRemoteSearchViewController"];
}

- (id)_accessibilityCoverSheetViewController
{
  v2 = [NSClassFromString(&cfstr_Sblockscreenma.isa) safeValueForKey:@"sharedInstance"];
  v3 = [v2 safeValueForKey:@"coverSheetViewController"];

  return v3;
}

@end