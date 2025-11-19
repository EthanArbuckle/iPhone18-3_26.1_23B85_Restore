@interface BrowserRootViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axIsTabOverviewVisible;
- (BOOL)accessibilityPerformEscape;
- (BOOL)accessibilityScroll:(int64_t)a3;
- (id)_accessibilitySpeakThisViews;
- (id)_axGetResetRefreshTimer;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_setUpFloatingSidebarButton;
- (void)sidebarDimmingViewDismiss:(id)a3;
@end

@implementation BrowserRootViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"BrowserRootViewController" hasInstanceVariable:@"_sidebarButtonEmbeddedInSidebar" withType:"UIButton"];
  [v3 validateClass:@"BrowserRootViewController" hasInstanceVariable:@"_sidebarTrailingButton" withType:"UIButton"];
  [v3 validateClass:@"BrowserRootViewController" hasInstanceVariable:@"_sidebarContentDimmingView" withType:"SidebarContentDimmingView"];
  [v3 validateClass:@"BrowserRootViewController" hasInstanceMethod:@"sidebarDimmingViewDismiss:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"BrowserRootViewController" hasInstanceMethod:@"setShowingSidebar:completion:" withFullSignature:{"v", "B", "@?", 0}];
  [v3 validateClass:@"BrowserRootViewController" hasInstanceMethod:@"bottomToolbar" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_SFToolbar" hasInstanceVariable:@"_barRegistration" withType:"<_SFBarRegistrationToken>"];
  [v3 validateClass:@"BrowserToolbar" isKindOfClass:@"_SFToolbar"];
  [v3 validateClass:@"BrowserRootViewController" hasInstanceMethod:@"browserController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"BrowserRootViewController" hasInstanceMethod:@"capsuleViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"BrowserRootViewController" hasInstanceMethod:@"tabSwitcherViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TabSwitcherViewController" hasInstanceMethod:@"tabOverviewIsVisible" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CapsuleNavigationBarViewController" hasInstanceMethod:@"capsuleCollectionView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SFCapsuleCollectionView" hasInstanceMethod:@"setSelectedItemState:animated:" withFullSignature:{"v", "q", "B", 0}];
}

- (void)_setUpFloatingSidebarButton
{
  v3.receiver = self;
  v3.super_class = BrowserRootViewControllerAccessibility;
  [(BrowserRootViewControllerAccessibility *)&v3 _setUpFloatingSidebarButton];
  [(BrowserRootViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = BrowserRootViewControllerAccessibility;
  [(BrowserRootViewControllerAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(BrowserRootViewControllerAccessibility *)self safeValueForKey:@"_sidebarButtonEmbeddedInSidebar"];
  v4 = accessibilityLocalizedString(@"hide.sidebar.button");
  [v3 setAccessibilityLabel:v4];

  v5 = [(BrowserRootViewControllerAccessibility *)self safeValueForKey:@"_sidebarTrailingButton"];
  v6 = accessibilityLocalizedString(@"tab.group.button");
  [v5 setAccessibilityLabel:v6];
}

- (BOOL)accessibilityPerformEscape
{
  v2 = [(BrowserRootViewControllerAccessibility *)self safeValueForKey:@"_sidebarContentDimmingView"];
  v3 = [v2 _accessibilityViewIsVisible];

  if (v3)
  {
    AXPerformSafeBlock();
  }

  return v3;
}

- (void)sidebarDimmingViewDismiss:(id)a3
{
  v3.receiver = self;
  v3.super_class = BrowserRootViewControllerAccessibility;
  [(BrowserRootViewControllerAccessibility *)&v3 sidebarDimmingViewDismiss:a3];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

- (id)_accessibilitySpeakThisViews
{
  v3 = [(BrowserRootViewControllerAccessibility *)self safeValueForKey:@"browserController"];
  v4 = [v3 _accessibilitySpeakThisViews];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = BrowserRootViewControllerAccessibility;
    v5 = [(BrowserRootViewControllerAccessibility *)&v8 _accessibilitySpeakThisViews];
  }

  v6 = v5;

  return v6;
}

- (BOOL)accessibilityScroll:(int64_t)a3
{
  if ([(BrowserRootViewControllerAccessibility *)self _axIsTabOverviewVisible])
  {
    v17.receiver = self;
    v17.super_class = BrowserRootViewControllerAccessibility;
    return [(BrowserRootViewControllerAccessibility *)&v17 accessibilityScroll:a3, v10.receiver, v10.super_class, v11, v12, v13, v14, v15];
  }

  else
  {
    if (a3 == 3)
    {
      if (![(BrowserRootViewControllerAccessibility *)self _axShouldRefresh])
      {
        v8 = accessibilityLocalizedString(@"CONFIRM_REFRESH");
        UIAccessibilitySpeakAndDoNotBeInterrupted();

        v6 = 1;
        [(BrowserRootViewControllerAccessibility *)self _axSetShouldRefresh:1];
        v9 = [(BrowserRootViewControllerAccessibility *)self _axGetResetRefreshTimer];
        v16[0] = MEMORY[0x29EDCA5F8];
        v16[1] = 3221225472;
        v16[2] = __62__BrowserRootViewControllerAccessibility_accessibilityScroll___block_invoke;
        v16[3] = &unk_29F2D7A98;
        v16[4] = self;
        [v9 afterDelay:v16 processBlock:3.0];

        return v6;
      }

      v11 = MEMORY[0x29EDCA5F8];
      v12 = 3221225472;
      v13 = __62__BrowserRootViewControllerAccessibility_accessibilityScroll___block_invoke_2;
      v14 = &unk_29F2D7A98;
      v15 = self;
      AXPerformSafeBlock();
    }

    else
    {
      [(BrowserRootViewControllerAccessibility *)self _axSetShouldRefresh:0];
    }

    return [(BrowserRootViewControllerAccessibility *)&v10 accessibilityScroll:a3, self, BrowserRootViewControllerAccessibility, v11, v12, v13, v14, v15];
  }
}

uint64_t __62__BrowserRootViewControllerAccessibility_accessibilityScroll___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKeyPath:@"capsuleViewController.capsuleCollectionView"];
  [v2 setSelectedItemState:0 animated:0];

  v3 = *(a1 + 32);

  return [v3 _axSetShouldRefresh:0];
}

- (id)_axGetResetRefreshTimer
{
  v3 = [(BrowserRootViewControllerAccessibility *)self _axResetRefreshTimer];
  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x29EDBD6A0]);
    v3 = [v4 initWithTargetSerialQueue:MEMORY[0x29EDCA578]];
    [(BrowserRootViewControllerAccessibility *)self _axSetResetRefreshTimer:v3];
  }

  return v3;
}

- (BOOL)_axIsTabOverviewVisible
{
  v2 = [(BrowserRootViewControllerAccessibility *)self safeValueForKey:@"tabSwitcherViewController"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 safeBoolForKey:@"tabOverviewIsVisible"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end