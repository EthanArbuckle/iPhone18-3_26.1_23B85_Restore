@interface BrowserRootViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axIsTabOverviewVisible;
- (BOOL)accessibilityPerformEscape;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (id)_accessibilitySpeakThisViews;
- (id)_axGetResetRefreshTimer;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_setUpFloatingSidebarButton;
- (void)sidebarDimmingViewDismiss:(id)dismiss;
@end

@implementation BrowserRootViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"BrowserRootViewController" hasInstanceVariable:@"_sidebarButtonEmbeddedInSidebar" withType:"UIButton"];
  [validationsCopy validateClass:@"BrowserRootViewController" hasInstanceVariable:@"_sidebarTrailingButton" withType:"UIButton"];
  [validationsCopy validateClass:@"BrowserRootViewController" hasInstanceVariable:@"_sidebarContentDimmingView" withType:"SidebarContentDimmingView"];
  [validationsCopy validateClass:@"BrowserRootViewController" hasInstanceMethod:@"sidebarDimmingViewDismiss:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"BrowserRootViewController" hasInstanceMethod:@"setShowingSidebar:completion:" withFullSignature:{"v", "B", "@?", 0}];
  [validationsCopy validateClass:@"BrowserRootViewController" hasInstanceMethod:@"bottomToolbar" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_SFToolbar" hasInstanceVariable:@"_barRegistration" withType:"<_SFBarRegistrationToken>"];
  [validationsCopy validateClass:@"BrowserToolbar" isKindOfClass:@"_SFToolbar"];
  [validationsCopy validateClass:@"BrowserRootViewController" hasInstanceMethod:@"browserController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BrowserRootViewController" hasInstanceMethod:@"capsuleViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BrowserRootViewController" hasInstanceMethod:@"tabSwitcherViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TabSwitcherViewController" hasInstanceMethod:@"tabOverviewIsVisible" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CapsuleNavigationBarViewController" hasInstanceMethod:@"capsuleCollectionView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SFCapsuleCollectionView" hasInstanceMethod:@"setSelectedItemState:animated:" withFullSignature:{"v", "q", "B", 0}];
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
  _accessibilityViewIsVisible = [v2 _accessibilityViewIsVisible];

  if (_accessibilityViewIsVisible)
  {
    AXPerformSafeBlock();
  }

  return _accessibilityViewIsVisible;
}

- (void)sidebarDimmingViewDismiss:(id)dismiss
{
  v3.receiver = self;
  v3.super_class = BrowserRootViewControllerAccessibility;
  [(BrowserRootViewControllerAccessibility *)&v3 sidebarDimmingViewDismiss:dismiss];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

- (id)_accessibilitySpeakThisViews
{
  v3 = [(BrowserRootViewControllerAccessibility *)self safeValueForKey:@"browserController"];
  _accessibilitySpeakThisViews = [v3 _accessibilitySpeakThisViews];

  if (_accessibilitySpeakThisViews)
  {
    _accessibilitySpeakThisViews2 = _accessibilitySpeakThisViews;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = BrowserRootViewControllerAccessibility;
    _accessibilitySpeakThisViews2 = [(BrowserRootViewControllerAccessibility *)&v8 _accessibilitySpeakThisViews];
  }

  v6 = _accessibilitySpeakThisViews2;

  return v6;
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  if ([(BrowserRootViewControllerAccessibility *)self _axIsTabOverviewVisible])
  {
    v17.receiver = self;
    v17.super_class = BrowserRootViewControllerAccessibility;
    return [(BrowserRootViewControllerAccessibility *)&v17 accessibilityScroll:scroll, v10.receiver, v10.super_class, v11, v12, v13, v14, selfCopy];
  }

  else
  {
    if (scroll == 3)
    {
      if (![(BrowserRootViewControllerAccessibility *)self _axShouldRefresh])
      {
        v8 = accessibilityLocalizedString(@"CONFIRM_REFRESH");
        UIAccessibilitySpeakAndDoNotBeInterrupted();

        v6 = 1;
        [(BrowserRootViewControllerAccessibility *)self _axSetShouldRefresh:1];
        _axGetResetRefreshTimer = [(BrowserRootViewControllerAccessibility *)self _axGetResetRefreshTimer];
        v16[0] = MEMORY[0x29EDCA5F8];
        v16[1] = 3221225472;
        v16[2] = __62__BrowserRootViewControllerAccessibility_accessibilityScroll___block_invoke;
        v16[3] = &unk_29F2D7A98;
        v16[4] = self;
        [_axGetResetRefreshTimer afterDelay:v16 processBlock:3.0];

        return v6;
      }

      v11 = MEMORY[0x29EDCA5F8];
      v12 = 3221225472;
      v13 = __62__BrowserRootViewControllerAccessibility_accessibilityScroll___block_invoke_2;
      v14 = &unk_29F2D7A98;
      selfCopy = self;
      AXPerformSafeBlock();
    }

    else
    {
      [(BrowserRootViewControllerAccessibility *)self _axSetShouldRefresh:0];
    }

    return [(BrowserRootViewControllerAccessibility *)&v10 accessibilityScroll:scroll, self, BrowserRootViewControllerAccessibility, v11, v12, v13, v14, selfCopy];
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
  _axResetRefreshTimer = [(BrowserRootViewControllerAccessibility *)self _axResetRefreshTimer];
  if (!_axResetRefreshTimer)
  {
    v4 = objc_alloc(MEMORY[0x29EDBD6A0]);
    _axResetRefreshTimer = [v4 initWithTargetSerialQueue:MEMORY[0x29EDCA578]];
    [(BrowserRootViewControllerAccessibility *)self _axSetResetRefreshTimer:_axResetRefreshTimer];
  }

  return _axResetRefreshTimer;
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