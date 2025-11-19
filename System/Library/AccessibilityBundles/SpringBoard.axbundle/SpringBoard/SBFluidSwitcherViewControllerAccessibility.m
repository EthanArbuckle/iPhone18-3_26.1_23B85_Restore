@interface SBFluidSwitcherViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axHasMultirowLayout;
- (BOOL)_axIsVisible;
- (BOOL)_axPerformScrollToIndex:(unint64_t)a3 completion:(id)a4;
- (BOOL)_removeVisibleItemContainerForAppLayout:(id)a3;
- (BOOL)accessibilityPerformEscape;
- (BOOL)accessibilityScroll:(int64_t)a3;
- (BOOL)appElementIsAccessibilityElement:(id)a3;
- (id)_accessibilityAppLayoutAtCurrentContentOffset;
- (id)_axAppLayoutForAppIdentifier:(id)a3;
- (id)_axAppLayouts;
- (id)_axChamoisActiveAppLayouts;
- (id)_axChamoisActiveApps;
- (id)_axCollectedAppLayouts;
- (id)_axCollectedVisibleItemContainers;
- (id)_axContentView;
- (id)_axGridLayoutModifierIfExists;
- (id)_axIdentifierOfAppInLayoutState:(id)a3;
- (id)_axMainSwitcher;
- (id)_axScrollStatusForIndex:(unint64_t)a3;
- (id)_axSortedElementArray:(id)a3;
- (id)_axVisibleAppLayouts;
- (int64_t)_axEnvironmentMode;
- (unint64_t)_axAdjustedIndex:(unint64_t)a3 forScrollDirection:(int64_t)a4;
- (unint64_t)_axCurrentAppLayoutIndex;
- (unint64_t)_axNumberOfPages;
- (unint64_t)_axPageForIndex:(unint64_t)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityRegisterAppQuitNotifications;
- (void)_accessibilityUnregisterAppQuitNotifications;
- (void)_addVisibleItemContainerForAppLayout:(id)a3 reusingItemContainerIfExists:(id)a4;
- (void)_axCreateAppElements;
- (void)_axCreateAppElementsForLayouts:(id)a3 visibleItemContainers:(id)a4;
- (void)_axDidQuitApp:(id)a3;
- (void)_axScrollToAppLayout:(id)a3 completion:(id)a4;
- (void)_axUpdateElementOrderingIfNecessary;
- (void)_axUpdateElements:(id)a3 withVisibleItemContainers:(id)a4;
- (void)_handlePerformTransitionFinishedWithIdentifier:(id)a3 environmentMode:(int64_t)a4;
- (void)_performEventResponse:(id)a3;
- (void)_setAXSwitcherType:(id)a3;
- (void)_setupContentAndTransientViews;
- (void)_updatePlusButtonPresence;
- (void)dealloc;
- (void)handleReopenClosedWindowsButtonTapped:(id)a3;
- (void)performTransitionWithContext:(id)a3 animated:(BOOL)a4 completion:(id)a5;
@end

@implementation SBFluidSwitcherViewControllerAccessibility

- (void)_setAXSwitcherType:(id)a3
{
  v3 = MEMORY[0x29ED38050](a3, a2);
  __UIAccessibilitySetAssociatedCopiedObject();
}

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"scrollView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFluidSwitcherViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"_setupContentAndTransientViews" withFullSignature:{"v", 0}];
  [v3 validateClass:@"SBFluidSwitcherViewController" hasInstanceVariable:@"_contentView" withType:"SBFluidSwitcherContentView"];
  [v3 validateClass:@"SBFluidSwitcherViewController" hasInstanceVariable:@"_stashedContentView" withType:"SBFluidSwitcherContentView"];
  [v3 validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"_performEventResponse:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"visibleItemContainers" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"personality" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFluidSwitcherPersonality" hasInstanceMethod:@"rootModifier" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"appLayouts" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"layoutContext" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"_updateVisibleItems" withFullSignature:{"v", 0}];
  [v3 validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"_removeVisibleItemContainerForAppLayout:" withFullSignature:{"B", "@", 0}];
  [v3 validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"_addVisibleItemContainerForAppLayout:reusingItemContainerIfExists:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"_scrollToAppLayout:animated:alignment:completion:" withFullSignature:{"v", "@", "B", "q", "@?", 0}];
  [v3 validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"performTransitionWithContext:animated:completion:" withFullSignature:{"v", "@", "B", "@?", 0}];
  [v3 validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"_updatePlusButtonPresence" withFullSignature:{"v", 0}];
  [v3 validateClass:@"SBFluidSwitcherRootSwitcherModifier" hasInstanceMethod:@"multitaskingModifier" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBGridSwitcherModifier"];
  [v3 validateClass:@"SBGridSwitcherModifier" hasInstanceMethod:@"gridLayoutModifier" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFluidSwitcherLayoutContext"];
  [v3 validateClass:@"SBFluidSwitcherLayoutContext" hasInstanceMethod:@"layoutState" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBLayoutState"];
  [v3 validateClass:@"SBLayoutState" hasInstanceMethod:@"elements" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBLayoutState" hasInstanceMethod:@"elementWithRole:" withFullSignature:{"@", "q", 0}];
  [v3 validateClass:@"SBMainDisplayLayoutState"];
  [v3 validateClass:@"SBMainDisplayLayoutState" isKindOfClass:@"SBLayoutState"];
  [v3 validateClass:@"SBMainDisplayLayoutState" hasInstanceMethod:@"unlockedEnvironmentMode" withFullSignature:{"q", 0}];
  [v3 validateClass:@"SBLayoutElement"];
  [v3 validateClass:@"SBLayoutElement" conformsToProtocol:@"SBLayoutElementDescriptor"];
  [v3 validateClass:@"SBLayoutElement" hasInstanceMethod:@"viewControllerClass" withFullSignature:{"#", 0}];
  [v3 validateProtocol:@"SBLayoutElementDescriptor" hasRequiredInstanceMethod:@"uniqueIdentifier"];
  [v3 validateClass:@"SBGridLayoutSwitcherModifier"];
  [v3 validateClass:@"SBGridLayoutSwitcherModifier" hasInstanceMethod:@"_columnForIndex:" withFullSignature:{"Q", "Q", 0}];
  [v3 validateClass:@"SBGridLayoutSwitcherModifier" hasInstanceMethod:@"_numberOfColumns" withFullSignature:{"Q", 0}];
  [v3 validateProtocol:@"SBSwitcherMultitaskingQueryProviding" hasRequiredInstanceMethod:@"contentOffsetForIndex:alignment:"];
  [v3 validateClass:@"SBWorkspaceApplicationSceneTransitionContext"];
  [v3 validateClass:@"SBWorkspaceApplicationSceneTransitionContext" hasInstanceMethod:@"previousLayoutState" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBAppLayout"];
  [v3 validateClass:@"SBAppLayout" hasInstanceMethod:@"allItems" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBAppLayout" hasInstanceMethod:@"environment" withFullSignature:{"q", 0}];
  [v3 validateClass:@"SBAppLayout" hasInstanceMethod:@"leafAppLayouts" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBDisplayItem"];
  [v3 validateClass:@"SBDisplayItem" hasInstanceMethod:@"bundleIdentifier" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFluidSwitcherViewController" hasInstanceVariable:@"_reopenClosedWindowsButton" withType:"SBFluidSwitcherTitledButton"];
  [v3 validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"personality" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFluidSwitcherPersonality" hasInstanceMethod:@"rootModifier" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"handleReopenClosedWindowsButtonTapped:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"numberOfHiddenAppLayoutsForBundleIdentifier:" withFullSignature:{"q", "@", 0}];
  [v3 validateClass:@"SBFluidSwitcherPersonality" conformsToProtocol:@"SBSwitcherPersonality"];
  [v3 validateProtocol:@"SBSwitcherPersonality" conformsToProtocol:@"SBSwitcherMultitaskingQueryProviding"];
  [v3 validateProtocol:@"SBSwitcherMultitaskingQueryProviding" hasRequiredInstanceMethod:@"appExposeAccessoryButtonsBundleIdentifier"];
  [v3 validateClass:@"SBApplication" hasInstanceMethod:@"displayName" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBLayoutState" hasInstanceMethod:@"appLayout" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBSwitcherController" hasInstanceMethod:@"_currentLayoutState" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBMainSwitcherControllerCoordinator" hasInstanceMethod:@"_appLayoutContainingDisplayItem:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"SBMainDisplayLayoutState" hasInstanceMethod:@"floatingAppLayout" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBDismissForEmptySwitcherSwitcherEventResponse"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = SBFluidSwitcherViewControllerAccessibility;
  [(SBFluidSwitcherViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(SBFluidSwitcherViewControllerAccessibility *)self _axContentView];
  [v3 setAccessibilityIdentifier:@"AppSwitcherContentView"];
  [v3 _accessibilitySetAssignedValue:self forKey:@"AppSwitcherViewController"];
  [(SBFluidSwitcherViewControllerAccessibility *)self _axCreateInitialAppElements];
}

- (BOOL)accessibilityPerformEscape
{
  v3 = [(SBFluidSwitcherViewControllerAccessibility *)self _axMainSwitcher];
  if (([v3 _axIsShelfSwitcherVisible] & 1) == 0)
  {

    goto LABEL_5;
  }

  v4 = [(SBFluidSwitcherViewControllerAccessibility *)self _axSwitcherType];
  v5 = v4[2]();

  if (v5 != 3)
  {
LABEL_5:
    v6 = [MEMORY[0x29EDBDFA8] server];
    [v6 dismissAppSwitcher];
    goto LABEL_6;
  }

  v6 = [MEMORY[0x29EDBDFA8] server];
  [v6 dismissShelfSwitcher];
LABEL_6:

  return 1;
}

- (BOOL)accessibilityScroll:(int64_t)a3
{
  IsPad = AXDeviceIsPad();
  if ((a3 - 3) >= 0xFFFFFFFFFFFFFFFELL && (IsPad & 1) == 0)
  {
    v6 = [(SBFluidSwitcherViewControllerAccessibility *)self _axAdjustedIndex:[(SBFluidSwitcherViewControllerAccessibility *)self _axCurrentAppLayoutIndex] forScrollDirection:a3];
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 3221225472;
    v10[2] = __66__SBFluidSwitcherViewControllerAccessibility_accessibilityScroll___block_invoke;
    v10[3] = &unk_29F2FBA40;
    v10[4] = self;
    v7 = MEMORY[0x29ED38050](v10);
    LOBYTE(v6) = [(SBFluidSwitcherViewControllerAccessibility *)self _axPerformScrollToIndex:v6 completion:v7];

    if (v6)
    {
      return 1;
    }
  }

  v9.receiver = self;
  v9.super_class = SBFluidSwitcherViewControllerAccessibility;
  return [(SBFluidSwitcherViewControllerAccessibility *)&v9 accessibilityScroll:a3];
}

- (BOOL)_axPerformScrollToIndex:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(SBFluidSwitcherViewControllerAccessibility *)self _axCollectedAppLayouts];
  v8 = [v7 count];
  if (v8 > a3)
  {
    v9 = [(SBFluidSwitcherViewControllerAccessibility *)self _axCollectedAppLayouts];
    v10 = [v9 objectAtIndexedSubscript:a3];

    [(SBFluidSwitcherViewControllerAccessibility *)self _axScrollToAppLayout:v10 completion:v6];
  }

  return v8 > a3;
}

- (void)_axScrollToAppLayout:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (UIAccessibilityIsSwitchControlRunning())
  {
    v8 = 0;
  }

  else
  {
    v9 = [(SBFluidSwitcherViewControllerAccessibility *)self _axContentView];
    v8 = [v9 _axElementForAppLayout:v6];
  }

  v13 = v6;
  v14 = v7;
  v10 = v8;
  v11 = v7;
  v12 = v6;
  AXPerformSafeBlock();
}

void __78__SBFluidSwitcherViewControllerAccessibility__axScrollToAppLayout_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __78__SBFluidSwitcherViewControllerAccessibility__axScrollToAppLayout_completion___block_invoke_2;
  v4[3] = &unk_29F2FBFF8;
  v6 = *(a1 + 56);
  v5 = *(a1 + 48);
  [v2 _scrollToAppLayout:v3 animated:1 alignment:2 completion:v4];
}

void __78__SBFluidSwitcherViewControllerAccessibility__axScrollToAppLayout_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *MEMORY[0x29EDC7ED8];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], *MEMORY[0x29EDBDAE8]);
  v4 = *(a1 + 32);

  UIAccessibilityPostNotification(v3, v4);
}

- (void)_performEventResponse:(id)a3
{
  v6.receiver = self;
  v6.super_class = SBFluidSwitcherViewControllerAccessibility;
  v3 = a3;
  [(SBFluidSwitcherViewControllerAccessibility *)&v6 _performEventResponse:v3];
  NSClassFromString(&cfstr_Sbdismissforem.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = accessibilityLocalizedString(@"app.switcher.no.items");
    UIAccessibilitySpeakAndDoNotBeInterrupted();
  }
}

- (void)handleReopenClosedWindowsButtonTapped:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = SBFluidSwitcherViewControllerAccessibility;
  [(SBFluidSwitcherViewControllerAccessibility *)&v20 handleReopenClosedWindowsButtonTapped:v4];
  v5 = [(SBFluidSwitcherViewControllerAccessibility *)self safeValueForKey:@"personality"];
  v6 = [v5 safeStringForKey:@"appExposeAccessoryButtonsBundleIdentifier"];

  if ([v6 length])
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v13 = MEMORY[0x29EDCA5F8];
    v14 = self;
    v15 = v6;
    AXPerformSafeBlock();
    v7 = v17[3];

    _Block_object_dispose(&v16, 8);
    if (v7 < 2)
    {
      v8 = AXSBApplicationWithIdentifier();
      v9 = MEMORY[0x29EDBA0F8];
      v10 = accessibilityLocalizedString(@"fluid.switcher.reopen.closed.window");
      v11 = [v8 safeStringForKey:@"displayName"];
      v12 = [v9 stringWithFormat:v10, v11, v13, 3221225472, __84__SBFluidSwitcherViewControllerAccessibility_handleReopenClosedWindowsButtonTapped___block_invoke, &unk_29F2FB9F0, v14];
      UIAccessibilitySpeakAndDoNotBeInterrupted();
    }

    else
    {
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
    }
  }
}

uint64_t __84__SBFluidSwitcherViewControllerAccessibility_handleReopenClosedWindowsButtonTapped___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) numberOfHiddenAppLayoutsForBundleIdentifier:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)_setupContentAndTransientViews
{
  v3.receiver = self;
  v3.super_class = SBFluidSwitcherViewControllerAccessibility;
  [(SBFluidSwitcherViewControllerAccessibility *)&v3 _setupContentAndTransientViews];
  [(SBFluidSwitcherViewControllerAccessibility *)self _axCreateAppElements];
}

- (BOOL)_removeVisibleItemContainerForAppLayout:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBFluidSwitcherViewControllerAccessibility;
  v4 = a3;
  v5 = [(SBFluidSwitcherViewControllerAccessibility *)&v8 _removeVisibleItemContainerForAppLayout:v4];
  v6 = [(SBFluidSwitcherViewControllerAccessibility *)self _axContentView:v8.receiver];
  [v6 _axRemoveVisibleItemContainerForAppLayout:v4];

  if ((AXDeviceIsPad() & 1) == 0)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], *MEMORY[0x29EDBDB28]);
  }

  return v5;
}

- (void)_addVisibleItemContainerForAppLayout:(id)a3 reusingItemContainerIfExists:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SBFluidSwitcherViewControllerAccessibility;
  [(SBFluidSwitcherViewControllerAccessibility *)&v12 _addVisibleItemContainerForAppLayout:v6 reusingItemContainerIfExists:v7];
  v8 = [(SBFluidSwitcherViewControllerAccessibility *)self _axContentView];
  objc_opt_class();
  v9 = [(SBFluidSwitcherViewControllerAccessibility *)self safeValueForKey:@"visibleItemContainers"];
  v10 = __UIAccessibilityCastAsClass();

  v11 = [v10 objectForKey:v6];
  [v8 _axAddVisibleItemContainer:v11 forAppLayout:v6];
}

- (void)performTransitionWithContext:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [v9 safeValueForKey:@"previousLayoutState"];
  v11 = [v10 safeIntegerForKey:@"unlockedEnvironmentMode"];
  v12 = [(SBFluidSwitcherViewControllerAccessibility *)self _axIdentifierOfAppInLayoutState:v10];
  [(SBFluidSwitcherViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
  [(SBFluidSwitcherViewControllerAccessibility *)self _axCreateAppElements];
  v19[0] = MEMORY[0x29EDCA5F8];
  v19[1] = 3221225472;
  v19[2] = __95__SBFluidSwitcherViewControllerAccessibility_performTransitionWithContext_animated_completion___block_invoke;
  v19[3] = &unk_29F2FC070;
  v13 = v8;
  v21 = v13;
  v19[4] = self;
  v14 = v12;
  v20 = v14;
  v22 = v11;
  v15 = MEMORY[0x29ED38050](v19);
  v18.receiver = self;
  v18.super_class = SBFluidSwitcherViewControllerAccessibility;
  [(SBFluidSwitcherViewControllerAccessibility *)&v18 performTransitionWithContext:v9 animated:v5 completion:v15];

  if ([(SBFluidSwitcherViewControllerAccessibility *)self _axIsVisible])
  {
    v16 = [(SBFluidSwitcherViewControllerAccessibility *)self _axMainSwitcher];
    v17 = [v16 _axIsAppSwitcherPeeking];

    if (v17)
    {
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], *MEMORY[0x29EDBDAB8]);
    }
  }
}

void __95__SBFluidSwitcherViewControllerAccessibility_performTransitionWithContext_animated_completion___block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    (*(v2 + 16))();
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __95__SBFluidSwitcherViewControllerAccessibility_performTransitionWithContext_animated_completion___block_invoke_2;
  block[3] = &unk_29F2FC048;
  v3 = a1[5];
  block[4] = a1[4];
  v4 = v3;
  v5 = a1[7];
  v7 = v4;
  v8 = v5;
  dispatch_async(MEMORY[0x29EDCA578], block);
}

- (void)_handlePerformTransitionFinishedWithIdentifier:(id)a3 environmentMode:(int64_t)a4
{
  v35 = a3;
  v6 = [(SBFluidSwitcherViewControllerAccessibility *)self _axContentView];
  if (!-[SBFluidSwitcherViewControllerAccessibility _axIsVisible](self, "_axIsVisible") || (-[SBFluidSwitcherViewControllerAccessibility _axMainSwitcher](self, "_axMainSwitcher"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 _axIsChamoisSwitcherVisible], v7, (v8 & 1) != 0))
  {
    v9 = [(SBFluidSwitcherViewControllerAccessibility *)self _axContentView];
    v10 = [v9 _axSwitcherViewController];
    v11 = [v10 _axIsVisible];

    if ((v11 & 1) == 0)
    {
      v12 = [(SBFluidSwitcherViewControllerAccessibility *)self _axMainSwitcher];
      v13 = [v12 _axIsShelfSwitcherVisible];

      if ((v13 & 1) == 0)
      {
        [(SBFluidSwitcherViewControllerAccessibility *)self _axCreateAppElementsForLayouts:0 visibleItemContainers:0];
      }
    }

    goto LABEL_22;
  }

  v14 = [v6 accessibilityElements];
  v15 = [v14 ax_filteredArrayUsingBlock:&__block_literal_global_7];

  v16 = [(SBFluidSwitcherViewControllerAccessibility *)self _axCollectedVisibleItemContainers];
  v17 = [v16 allValues];
  [(SBFluidSwitcherViewControllerAccessibility *)self _axUpdateElements:v15 withVisibleItemContainers:v17];

  Current = CFAbsoluteTimeGetCurrent();
  if (Current - *&_handlePerformTransitionFinishedWithIdentifier_environmentMode__LastAnnouncement > 1.0 && (AXSpringBoardIsAssistantVisible() & 1) == 0)
  {
    v19 = objc_allocWithZone(MEMORY[0x29EDB8DC0]);
    v20 = [MEMORY[0x29EDBA070] numberWithInt:1];
    v21 = [v19 initWithObjectsAndKeys:{v20, *MEMORY[0x29EDBD860], 0}];

    v22 = [(SBFluidSwitcherViewControllerAccessibility *)self _axMainSwitcher];
    v23 = [v22 _axIsMainSwitcherVisible];

    if (v23)
    {
      v24 = @"app.switcher.announce";
    }

    else
    {
      v25 = [(SBFluidSwitcherViewControllerAccessibility *)self _axMainSwitcher];
      v26 = [v25 _axIsAppSwitcherPeeking];

      if (!v26)
      {
LABEL_13:

        goto LABEL_14;
      }

      v24 = @"home.peek.mode.announce";
    }

    v27 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
    v28 = accessibilityLocalizedString(v24);
    v29 = [v27 initWithString:v28 attributes:v21];

    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v29);
    _handlePerformTransitionFinishedWithIdentifier_environmentMode__LastAnnouncement = *&Current;

    goto LABEL_13;
  }

LABEL_14:
  if (a4 == 1)
  {
    v31 = [(SBFluidSwitcherViewControllerAccessibility *)self _axCollectedAppLayouts];
    v30 = [v31 firstObject];
  }

  else if (a4 == 3)
  {
    v30 = [(SBFluidSwitcherViewControllerAccessibility *)self _axAppLayoutForAppIdentifier:v35];
  }

  else
  {
    v30 = 0;
  }

  v32 = [v6 _axElementForAppLayout:v30];
  v33 = [(SBFluidSwitcherViewControllerAccessibility *)self _axMainSwitcher];
  v34 = [v33 _axIsMainSwitcherVisible];

  if (v34)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], v32);
  }

LABEL_22:
}

uint64_t __109__SBFluidSwitcherViewControllerAccessibility__handlePerformTransitionFinishedWithIdentifier_environmentMode___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_updatePlusButtonPresence
{
  v5.receiver = self;
  v5.super_class = SBFluidSwitcherViewControllerAccessibility;
  [(SBFluidSwitcherViewControllerAccessibility *)&v5 _updatePlusButtonPresence];
  v3 = [(SBFluidSwitcherViewControllerAccessibility *)self safeUIViewForKey:@"_plusButton"];
  v4 = accessibilityLocalizedString(@"fluid.switcher.plus.button.label");
  [v3 setAccessibilityLabel:v4];
}

- (id)_axIdentifierOfAppInLayoutState:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 safeValueForKey:@"elements"];
  v5 = __UIAccessibilityCastAsClass();

  v6 = [v5 anyObject];
  v7 = [v6 safeValueForKey:@"uniqueIdentifier"];

  return v7;
}

- (id)_axAppLayoutForAppIdentifier:(id)a3
{
  v32 = *MEMORY[0x29EDCA608];
  v4 = a3;
  [(SBFluidSwitcherViewControllerAccessibility *)self _axCollectedAppLayouts];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = v29 = 0u;
  v19 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v19)
  {
    v6 = *v27;
    v20 = v5;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(v5);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        v25 = 0;
        objc_opt_class();
        v9 = [v8 safeValueForKey:@"allItems"];
        v10 = __UIAccessibilityCastAsClass();

        if (v25 == 1)
        {
          abort();
        }

        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v21 objects:v30 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v22;
          while (2)
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v22 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = [*(*(&v21 + 1) + 8 * j) safeStringForKey:{@"bundleIdentifier", v19}];
              if ([v4 isEqualToString:v16])
              {
                v17 = v8;

                v5 = v20;
                goto LABEL_20;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v21 objects:v30 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        v5 = v20;
      }

      v17 = 0;
      v19 = [v20 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v19);
  }

  else
  {
    v17 = 0;
  }

LABEL_20:

  return v17;
}

- (id)_axContentView
{
  v3 = [(SBFluidSwitcherViewControllerAccessibility *)self safeValueForKey:@"_stashedContentView"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(SBFluidSwitcherViewControllerAccessibility *)self safeValueForKey:@"_contentView"];
  }

  v6 = v5;

  objc_opt_class();
  v7 = __UIAccessibilityCastAsSafeCategory();

  return v7;
}

- (id)_axAppLayouts
{
  objc_opt_class();
  v3 = [(SBFluidSwitcherViewControllerAccessibility *)self safeValueForKey:@"appLayouts"];
  v4 = __UIAccessibilityCastAsClass();

  return v4;
}

- (id)_axCollectedAppLayouts
{
  v2 = [(SBFluidSwitcherViewControllerAccessibility *)self _axAppLayouts];
  v3 = AXGuaranteedMutableArray();

  return v3;
}

- (id)_axCollectedVisibleItemContainers
{
  v2 = [(SBFluidSwitcherViewControllerAccessibility *)self safeDictionaryForKey:@"_visibleItemContainers"];
  v3 = [v2 mutableCopy];

  return v3;
}

- (id)_axChamoisActiveAppLayouts
{
  v19 = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(SBFluidSwitcherViewControllerAccessibility *)self _axCollectedVisibleItemContainers];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v4 objectForKey:v10];
        v12 = [v11 isSelectable];

        if ((v12 & 1) == 0)
        {
          [v3 axSafelyAddObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v3;
}

- (id)_axChamoisActiveApps
{
  v19 = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(SBFluidSwitcherViewControllerAccessibility *)self _axChamoisActiveAppLayouts];
  if ([v4 count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [(SBFluidSwitcherViewControllerAccessibility *)self _axCollectedVisibleItemContainers];
          v12 = [v11 objectForKey:v10];
          [v3 axSafelyAddObject:v12];
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  return v3;
}

- (id)_axVisibleAppLayouts
{
  v2 = [(SBFluidSwitcherViewControllerAccessibility *)self safeDictionaryForKey:@"visibleItemContainers"];
  v3 = [v2 allKeys];

  return v3;
}

- (int64_t)_axEnvironmentMode
{
  v2 = [(SBFluidSwitcherViewControllerAccessibility *)self safeValueForKeyPath:@"layoutContext.layoutState.unlockedEnvironmentMode"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (id)_axMainSwitcher
{
  objc_opt_class();
  v2 = AXSBMainSwitcherControllerCoordinatorSharedInstance();
  v3 = __UIAccessibilityCastAsSafeCategory();

  return v3;
}

- (BOOL)_axIsVisible
{
  v3 = [(SBFluidSwitcherViewControllerAccessibility *)self safeUIViewForKey:@"_stashedContentView"];

  if (v3)
  {
    goto LABEL_2;
  }

  v4 = [(SBFluidSwitcherViewControllerAccessibility *)self _axSwitcherType];

  if (!v4)
  {
    return v4;
  }

  v5 = [(SBFluidSwitcherViewControllerAccessibility *)self _axSwitcherType];
  v6 = v5[2]();

  switch(v6)
  {
    case 3:
      v7 = [(SBFluidSwitcherViewControllerAccessibility *)self _axMainSwitcher];
      v8 = [v7 _axIsShelfSwitcherVisible];
      goto LABEL_10;
    case 2:
      v7 = [(SBFluidSwitcherViewControllerAccessibility *)self _axMainSwitcher];
      v8 = [v7 _axIsFloatingSwitcherVisible];
      goto LABEL_10;
    case 1:
      v7 = [(SBFluidSwitcherViewControllerAccessibility *)self _axMainSwitcher];
      v8 = [v7 _axIsTypeOfMainSwitcherVisible];
LABEL_10:
      LOBYTE(v4) = v8;

      return v4;
  }

LABEL_2:
  LOBYTE(v4) = 0;
  return v4;
}

- (id)_axScrollStatusForIndex:(unint64_t)a3
{
  if (a3 && (v5 = [(SBFluidSwitcherViewControllerAccessibility *)self _axPageForIndex:[(SBFluidSwitcherViewControllerAccessibility *)self _axCurrentAppLayoutIndex]], v5 != [(SBFluidSwitcherViewControllerAccessibility *)self _axPageForIndex:a3]))
  {
    v7 = accessibilityLocalizedString(@"springboard.page.status");
    v8 = [(SBFluidSwitcherViewControllerAccessibility *)self _axPageForIndex:a3]+ 1;
    v9 = [(SBFluidSwitcherViewControllerAccessibility *)self _axNumberOfPages];
    v10 = [MEMORY[0x29EDBA0F8] localizedStringWithFormat:v7, v8, v9];
    v11 = [(SBFluidSwitcherViewControllerAccessibility *)self _axCollectedAppLayouts];
    v12 = [v11 axSafeObjectAtIndex:a3];

    v13 = [(SBFluidSwitcherViewControllerAccessibility *)self _axContentView];
    v14 = [v13 _axElementForAppLayout:v12];

    v15 = [v14 accessibilityLabel];
    v6 = __UIAXStringForVariables();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_axGridLayoutModifierIfExists
{
  v2 = [(SBFluidSwitcherViewControllerAccessibility *)self safeValueForKeyPath:@"personality.rootModifier.multitaskingModifier"];
  v3 = __UIAccessibilitySafeClass();

  NSClassFromString(&cfstr_Sbgridswitcher.isa);
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 safeValueForKey:@"gridLayoutModifier"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)_axPageForIndex:(unint64_t)a3
{
  v4 = [(SBFluidSwitcherViewControllerAccessibility *)self _axGridLayoutModifierIfExists];
  if (objc_opt_respondsToSelector())
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v6 = v4;
    AXPerformSafeBlock();
    a3 = v8[3];

    _Block_object_dispose(&v7, 8);
  }

  return a3;
}

uint64_t __62__SBFluidSwitcherViewControllerAccessibility__axPageForIndex___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _columnForIndex:*(a1 + 48) - 1];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (unint64_t)_axNumberOfPages
{
  v3 = [(SBFluidSwitcherViewControllerAccessibility *)self _axGridLayoutModifierIfExists];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 safeUnsignedIntegerForKey:@"_numberOfColumns"];
  }

  else
  {
    v5 = [(SBFluidSwitcherViewControllerAccessibility *)self _axCollectedAppLayouts];
    v4 = [v5 count];
  }

  return v4;
}

- (BOOL)_axHasMultirowLayout
{
  v3 = [(SBFluidSwitcherViewControllerAccessibility *)self _axNumberOfPages];
  v4 = [(SBFluidSwitcherViewControllerAccessibility *)self _axCollectedAppLayouts];
  LOBYTE(v3) = v3 < [v4 count];

  return v3;
}

- (unint64_t)_axAdjustedIndex:(unint64_t)a3 forScrollDirection:(int64_t)a4
{
  v6 = [(SBFluidSwitcherViewControllerAccessibility *)self _axHasMultirowLayout];
  v7 = 1;
  if (v6)
  {
    v7 = 2;
  }

  v8 = a3 - v7;
  v9 = v7 + a3;
  if (a4 != 1)
  {
    v9 = a3;
  }

  if (a4 == 2)
  {
    return v8;
  }

  else
  {
    return v9;
  }
}

- (unint64_t)_axCurrentAppLayoutIndex
{
  v3 = UIAccessibilityFocusedElement(0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 appLayout];
  }

  else
  {
    [(SBFluidSwitcherViewControllerAccessibility *)self _accessibilityAppLayoutAtCurrentContentOffset];
  }
  v4 = ;
  v5 = [(SBFluidSwitcherViewControllerAccessibility *)self _axCollectedAppLayouts];
  v6 = [v5 indexOfObject:v4];

  return v6;
}

- (void)_axCreateAppElements
{
  v3 = [(SBFluidSwitcherViewControllerAccessibility *)self _axIsVisible];
  v17 = [(SBFluidSwitcherViewControllerAccessibility *)self _axCollectedAppLayouts];
  v4 = [v17 count];
  if (!v3)
  {
    if (v4)
    {
      goto LABEL_13;
    }

LABEL_5:
    v5 = [(SBFluidSwitcherViewControllerAccessibility *)self _axCollectedVisibleItemContainers];
    v6 = [(SBFluidSwitcherViewControllerAccessibility *)self _axMainSwitcher];
    v7 = [v6 _axIsAppSwitcherPeekingSlideOver];

    v8 = [(SBFluidSwitcherViewControllerAccessibility *)self _axMainSwitcher];
    v9 = v8;
    if (v7)
    {
      v10 = [(SBFluidSwitcherViewControllerAccessibility *)self _axMainSwitcher];
      v11 = AXSwitcherController(@"activeDisplayWindowScene", v10);
      v12 = [v11 safeValueForKeyPath:@"_currentLayoutState.floatingAppLayout"];
      v13 = [v9 _appLayoutContainingDisplayItem:v12];
    }

    else
    {
      v14 = [v8 _axIsAppSwitcherPeekingSplitView];

      if (!v14)
      {
        goto LABEL_11;
      }

      v9 = [(SBFluidSwitcherViewControllerAccessibility *)self _axMainSwitcher];
      v10 = AXSwitcherController(@"activeDisplayWindowScene", v9);
      v13 = [v10 safeValueForKeyPath:@"_currentLayoutState.appLayout"];
    }

    if (v13)
    {
      v15 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, v13}];

      v16 = v15;
LABEL_12:
      v17 = v16;
      [(SBFluidSwitcherViewControllerAccessibility *)self _axCreateAppElementsForLayouts:v16 visibleItemContainers:v5];

      goto LABEL_13;
    }

LABEL_11:
    v16 = v17;
    goto LABEL_12;
  }

  if (v4)
  {
    goto LABEL_5;
  }

LABEL_13:
}

- (void)_axUpdateElements:(id)a3 withVisibleItemContainers:(id)a4
{
  v32 = *MEMORY[0x29EDCA608];
  v5 = a3;
  v19 = a4;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v5;
  v20 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v20)
  {
    v18 = *v27;
    do
    {
      v6 = 0;
      do
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v21 = v6;
        v7 = *(*(&v26 + 1) + 8 * v6);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v8 = v19;
        v9 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v23;
          do
          {
            v12 = 0;
            do
            {
              if (*v23 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v22 + 1) + 8 * v12);
              v14 = [v7 appLayout];
              v15 = [v13 safeValueForKey:@"appLayout"];
              v16 = [v14 isEqual:v15];

              if (v16)
              {
                [v7 setItemContainer:v13];
              }

              ++v12;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v10);
        }

        v6 = v21 + 1;
      }

      while (v21 + 1 != v20);
      v20 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v20);
  }
}

- (void)_axCreateAppElementsForLayouts:(id)a3 visibleItemContainers:(id)a4
{
  v61 = *MEMORY[0x29EDCA608];
  v6 = a3;
  v7 = a4;
  v8 = [(SBFluidSwitcherViewControllerAccessibility *)self _axContentView];
  v9 = v8;
  if (v6 && v8)
  {
    v41 = v8;
    v42 = v7;
    v45 = self;
    v44 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v10 = [objc_alloc(MEMORY[0x29EDB8E00]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v11 = [MEMORY[0x29EDB8DE8] array];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v43 = v6;
    v12 = v6;
    v13 = [v12 countByEnumeratingWithState:&v54 objects:v60 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v55;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v55 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v54 + 1) + 8 * i);
          v18 = [v17 safeArrayForKey:@"leafAppLayouts"];
          if ([v18 count] < 2)
          {
            [v11 axSafelyAddObject:v17];
          }

          else
          {
            v19 = [v18 reverseObjectEnumerator];
            v20 = [v19 allObjects];
            [v11 axSafelyAddObjectsFromArray:v20];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v54 objects:v60 count:16];
      }

      while (v14);
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v21 = v11;
    v22 = [v21 countByEnumeratingWithState:&v50 objects:v59 count:16];
    v9 = v41;
    if (v22)
    {
      v23 = v22;
      v24 = 0;
      v25 = *v51;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v51 != v25)
          {
            objc_enumerationMutation(v21);
          }

          v27 = *(*(&v50 + 1) + 8 * j);
          v28 = [[SBAppSwitcherAppAccessibilityElement alloc] initWithAccessibilityContainer:v41];
          [(SBAppSwitcherAppAccessibilityElement *)v28 setContentView:v41];
          [(SBAppSwitcherAppAccessibilityElement *)v28 setAppLayout:v27];
          [(SBAppSwitcherAppAccessibilityElement *)v28 setDelegate:v45];
          [(SBAppSwitcherAppAccessibilityElement *)v28 _setAccessibilityIsNotFirstElement:v24 & 1];
          [v44 addObject:v28];
          [v10 setObject:v28 forKeyedSubscript:v27];

          v24 = 1;
        }

        v23 = [v21 countByEnumeratingWithState:&v50 objects:v59 count:16];
      }

      while (v23);
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v7 = v42;
    v29 = [v42 allKeys];
    v30 = [v29 countByEnumeratingWithState:&v46 objects:v58 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v47;
      do
      {
        for (k = 0; k != v31; ++k)
        {
          if (*v47 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v46 + 1) + 8 * k);
          v35 = [v42 objectForKey:v34];
          v36 = [v10 objectForKeyedSubscript:v34];
          [v36 setItemContainer:v35];
        }

        v31 = [v29 countByEnumeratingWithState:&v46 objects:v58 count:16];
      }

      while (v31);
    }

    if (UIAccessibilityIsSwitchControlRunning())
    {
      v38 = v44;
      v37 = v45;
      v39 = [(SBFluidSwitcherViewControllerAccessibility *)v45 _axSortedElementArray:v44];
      v6 = v43;
    }

    else
    {
      v37 = v45;
      v6 = v43;
      v38 = v44;
      if ([(SBFluidSwitcherViewControllerAccessibility *)v45 _axShouldReverseElements])
      {
        v40 = [v44 reverseObjectEnumerator];
        v39 = [v40 allObjects];
      }

      else
      {
        v39 = v44;
      }
    }

    [(SBFluidSwitcherViewControllerAccessibility *)v37 _accessibilityRegisterAppQuitNotifications];
  }

  else
  {
    [(SBFluidSwitcherViewControllerAccessibility *)self _accessibilityUnregisterAppQuitNotifications];
    v10 = 0;
    v39 = 0;
  }

  [v9 _axSetElementsArray:v39 dictionary:v10];
}

- (void)_axUpdateElementOrderingIfNecessary
{
  if (UIAccessibilityIsSwitchControlRunning())
  {
    v8 = [(SBFluidSwitcherViewControllerAccessibility *)self _axContentView];
    v3 = [v8 _axAppElements];
    v4 = [v3 mutableCopy];

    v5 = [v8 _axAppElementsDictionary];
    v6 = [v5 mutableCopy];

    v7 = [(SBFluidSwitcherViewControllerAccessibility *)self _axSortedElementArray:v4];
    [v8 _axSetElementsArray:v7 dictionary:v6];
  }
}

- (void)dealloc
{
  [(SBFluidSwitcherViewControllerAccessibility *)self _accessibilityUnregisterAppQuitNotifications];
  v3.receiver = self;
  v3.super_class = SBFluidSwitcherViewControllerAccessibility;
  [(SBFluidSwitcherViewControllerAccessibility *)&v3 dealloc];
}

- (void)_accessibilityRegisterAppQuitNotifications
{
  if (![(SBFluidSwitcherViewControllerAccessibility *)self _accessibilityAppQuitNotificationsRegistered])
  {
    v3 = [MEMORY[0x29EDBA068] defaultCenter];
    [v3 addObserver:self selector:sel__axDidQuitApp_ name:@"SBAppSwitcherQuitAppNotification" object:0];

    v4 = [MEMORY[0x29EDBA068] defaultCenter];
    [v4 addObserver:self selector:sel__axDidQuitApp_ name:@"AXInternalAppSwitcherAppRemove" object:0];

    [(SBFluidSwitcherViewControllerAccessibility *)self _accessibilitySetAppQuitNotificationsRegistered:1];
  }
}

- (void)_accessibilityUnregisterAppQuitNotifications
{
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 removeObserver:self name:@"SBAppSwitcherQuitAppNotification" object:0];

  v4 = [MEMORY[0x29EDBA068] defaultCenter];
  [v4 removeObserver:self name:@"AXInternalAppSwitcherAppRemove" object:0];

  [(SBFluidSwitcherViewControllerAccessibility *)self _accessibilitySetAppQuitNotificationsRegistered:0];
}

- (id)_axSortedElementArray:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __68__SBFluidSwitcherViewControllerAccessibility__axSortedElementArray___block_invoke;
  v7[3] = &unk_29F2FC0B8;
  objc_copyWeak(&v8, &location);
  v5 = [v4 sortedArrayUsingComparator:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v5;
}

uint64_t __68__SBFluidSwitcherViewControllerAccessibility__axSortedElementArray___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  [a2 accessibilityFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [v5 accessibilityFrame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = *(MEMORY[0x29EDB90E8] + 8);
  v23 = v11 == *MEMORY[0x29EDB90E8];
  if (v13 != v22)
  {
    v23 = 0;
  }

  if (v19 == *MEMORY[0x29EDB90E8] && v21 == v22)
  {
    result = 1;
  }

  else
  {
    result = -1;
  }

  if ((v19 != *MEMORY[0x29EDB90E8] || v21 != v22) && !v23)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v26 = [WeakRetained _axShouldReverseElements];

    if (v26)
    {
      if ((AXDeviceIsPad() & 1) == 0)
      {
        goto LABEL_14;
      }

      v40.origin.x = v7;
      v40.origin.y = v9;
      v40.size.width = v11;
      v40.size.height = v13;
      rectb = CGRectGetMinY(v40);
      v41.origin.x = v15;
      v41.origin.y = v17;
      v41.size.width = v19;
      v41.size.height = v21;
      if (rectb > CGRectGetMinY(v41))
      {
        return -1;
      }

      v42.origin.x = v7;
      v42.origin.y = v9;
      v42.size.width = v11;
      v42.size.height = v13;
      rectc = CGRectGetMinY(v42);
      v43.origin.x = v15;
      v43.origin.y = v17;
      v43.size.width = v19;
      v43.size.height = v21;
      if (rectc >= CGRectGetMinY(v43))
      {
        v44.origin.x = v7;
        v44.origin.y = v9;
        v44.size.width = v11;
        v44.size.height = v13;
        rectd = CGRectGetMinX(v44);
        v45.origin.x = v15;
        v45.origin.y = v17;
        v45.size.width = v19;
        v45.size.height = v21;
        if (rectd > CGRectGetMinX(v45))
        {
          return -1;
        }

        v46.origin.x = v7;
        v46.origin.y = v9;
        v46.size.width = v11;
        v46.size.height = v13;
        recte = CGRectGetMinX(v46);
        v47.origin.x = v15;
        v47.origin.y = v17;
        v47.size.width = v19;
        v47.size.height = v21;
        if (recte >= CGRectGetMinX(v47))
        {
LABEL_14:
          v48.origin.x = v7;
          v48.origin.y = v9;
          v48.size.width = v11;
          v48.size.height = v13;
          rect = v9;
          v27 = v15;
          v28 = v17;
          MinX = CGRectGetMinX(v48);
          v49.origin.x = v27;
          v49.origin.y = v28;
          v49.size.width = v19;
          v49.size.height = v21;
          if (MinX >= CGRectGetMinX(v49))
          {
            v50.origin.x = v7;
            v50.origin.y = rect;
            v50.size.width = v11;
            v50.size.height = v13;
            v30 = CGRectGetMinX(v50);
            v51.origin.x = v27;
            v51.origin.y = v28;
            v51.size.width = v19;
            v51.size.height = v21;
            return v30 > CGRectGetMinX(v51);
          }

          return -1;
        }
      }
    }

    else
    {
      v52.origin.x = v7;
      v52.origin.y = v9;
      v52.size.width = v11;
      v52.size.height = v13;
      recta = v9;
      v31 = v17;
      v32 = CGRectGetMinX(v52);
      v53.origin.x = v15;
      v53.origin.y = v31;
      v53.size.width = v19;
      v53.size.height = v21;
      if (v32 > CGRectGetMinX(v53))
      {
        return -1;
      }

      v54.origin.x = v7;
      v54.origin.y = recta;
      v54.size.width = v11;
      v54.size.height = v13;
      v33 = CGRectGetMinX(v54);
      v55.origin.x = v15;
      v55.origin.y = v31;
      v55.size.width = v19;
      v55.size.height = v21;
      if (v33 >= CGRectGetMinX(v55))
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

- (id)_accessibilityAppLayoutAtCurrentContentOffset
{
  v28 = *MEMORY[0x29EDCA608];
  v3 = [(SBFluidSwitcherViewControllerAccessibility *)self _axCollectedAppLayouts];
  LOBYTE(v17) = 0;
  objc_opt_class();
  v4 = [(SBFluidSwitcherViewControllerAccessibility *)self safeValueForKey:@"scrollView"];
  v5 = __UIAccessibilityCastAsClass();

  [v5 contentOffset];
  v7 = v6;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(SBFluidSwitcherViewControllerAccessibility *)self _axVisibleAppLayouts];
  v8 = 0;
  v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        [v3 indexOfObject:v12];
        v17 = 0;
        v18 = &v17;
        v19 = 0x3010000000;
        v20 = &unk_29C3C62F5;
        v21 = 0;
        v22 = 0;
        AXPerformSafeBlock();
        v13 = v18[4];
        _Block_object_dispose(&v17, 8);
        if (vabdd_f64(v7, v13) < 0.001)
        {
          v14 = v12;

          v8 = v14;
        }
      }

      v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  return v8;
}

void __91__SBFluidSwitcherViewControllerAccessibility__accessibilityAppLayoutAtCurrentContentOffset__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) safeValueForKeyPath:@"personality.rootModifier"];
  [v5 contentOffsetForIndex:*(a1 + 48) alignment:2];
  v2 = *(*(a1 + 40) + 8);
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
}

- (void)_axDidQuitApp:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"SBAppSwitcherQuitAppBundleIdentifierKey"];

  [(SBFluidSwitcherViewControllerAccessibility *)self _axCreateAppElements];
  v6 = [(SBFluidSwitcherViewControllerAccessibility *)self _axContentView];
  v7 = [v6 _axAppElements];
  v8 = [v7 mutableCopy];

  v9 = [v6 _axAppElementsDictionary];
  v10 = [v9 mutableCopy];

  if ([v8 count])
  {
    v11 = 0;
    while (1)
    {
      v12 = [v8 objectAtIndexedSubscript:v11];
      v13 = [v12 appLayout];
      v14 = [v13 _axBundleIdentifier];
      v15 = [v14 isEqualToString:v5];

      if (v15)
      {
        break;
      }

      if (++v11 >= [v8 count])
      {
        goto LABEL_15;
      }
    }

    [v8 removeObjectAtIndex:v11];
    v16 = [v12 appLayout];
    [v10 removeObjectForKey:v16];

    if ([v8 count])
    {
      if (v11)
      {
        v17 = v11 - 1;
      }

      else
      {
        v17 = 0;
      }

      v18 = [v8 objectAtIndexedSubscript:v17];
    }

    else
    {
      v18 = 0;
    }

    if (CFAbsoluteTimeGetCurrent() - *&LastCustomActionAppQuitFromSwitch > 2.0)
    {
      v19 = v18;
      AXPerformBlockOnMainThreadAfterDelay();
    }
  }

LABEL_15:
  [v6 _axSetElementsArray:v8 dictionary:v10];
}

- (BOOL)appElementIsAccessibilityElement:(id)a3
{
  v22 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = [v4 appLayout];
  v6 = [v5 safeIntegerForKey:@"environment"];

  v7 = 0;
  if (v6 <= 1)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        v8 = [(SBFluidSwitcherViewControllerAccessibility *)self _axMainSwitcher];
        if (([v8 _axIsShelfSwitcherVisible] & 1) == 0)
        {

LABEL_16:
          v15 = [(SBFluidSwitcherViewControllerAccessibility *)self _axMainSwitcher];
          v16 = [v15 _axIsTypeOfMainSwitcherVisible];
LABEL_19:
          v7 = v16;

          goto LABEL_20;
        }

        v9 = [(SBFluidSwitcherViewControllerAccessibility *)self _axSwitcherType];
        v10 = v9[2]();

        if (v10 != 3)
        {
          goto LABEL_16;
        }

        goto LABEL_14;
      }

      goto LABEL_20;
    }

LABEL_9:
    v11 = AXLogSpringboardServer();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v18 = 134218242;
      v19 = v6;
      v20 = 2112;
      v21 = v4;
      _os_log_impl(&dword_29C37A000, v11, OS_LOG_TYPE_INFO, "Invalid app switcher environment {%ld} found on element %@", &v18, 0x16u);
    }

    v7 = 0;
    goto LABEL_20;
  }

  if (v6 == 2)
  {
    v12 = [(SBFluidSwitcherViewControllerAccessibility *)self _axMainSwitcher];
    if ([v12 _axIsTypeOfMainSwitcherVisible])
    {
      v13 = [(SBFluidSwitcherViewControllerAccessibility *)self _axSwitcherType];
      v14 = v13[2]();

      if (v14 == 1)
      {
LABEL_14:
        v7 = 1;
        goto LABEL_20;
      }
    }

    else
    {
    }

    v15 = [(SBFluidSwitcherViewControllerAccessibility *)self _axMainSwitcher];
    v16 = [v15 _axIsFloatingSwitcherVisible];
    goto LABEL_19;
  }

  if (v6 == 3)
  {
    goto LABEL_9;
  }

LABEL_20:

  return v7;
}

@end