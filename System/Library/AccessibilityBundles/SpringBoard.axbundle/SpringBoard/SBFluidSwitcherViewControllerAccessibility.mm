@interface SBFluidSwitcherViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axHasMultirowLayout;
- (BOOL)_axIsVisible;
- (BOOL)_axPerformScrollToIndex:(unint64_t)index completion:(id)completion;
- (BOOL)_removeVisibleItemContainerForAppLayout:(id)layout;
- (BOOL)accessibilityPerformEscape;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (BOOL)appElementIsAccessibilityElement:(id)element;
- (id)_accessibilityAppLayoutAtCurrentContentOffset;
- (id)_axAppLayoutForAppIdentifier:(id)identifier;
- (id)_axAppLayouts;
- (id)_axChamoisActiveAppLayouts;
- (id)_axChamoisActiveApps;
- (id)_axCollectedAppLayouts;
- (id)_axCollectedVisibleItemContainers;
- (id)_axContentView;
- (id)_axGridLayoutModifierIfExists;
- (id)_axIdentifierOfAppInLayoutState:(id)state;
- (id)_axMainSwitcher;
- (id)_axScrollStatusForIndex:(unint64_t)index;
- (id)_axSortedElementArray:(id)array;
- (id)_axVisibleAppLayouts;
- (int64_t)_axEnvironmentMode;
- (unint64_t)_axAdjustedIndex:(unint64_t)index forScrollDirection:(int64_t)direction;
- (unint64_t)_axCurrentAppLayoutIndex;
- (unint64_t)_axNumberOfPages;
- (unint64_t)_axPageForIndex:(unint64_t)index;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityRegisterAppQuitNotifications;
- (void)_accessibilityUnregisterAppQuitNotifications;
- (void)_addVisibleItemContainerForAppLayout:(id)layout reusingItemContainerIfExists:(id)exists;
- (void)_axCreateAppElements;
- (void)_axCreateAppElementsForLayouts:(id)layouts visibleItemContainers:(id)containers;
- (void)_axDidQuitApp:(id)app;
- (void)_axScrollToAppLayout:(id)layout completion:(id)completion;
- (void)_axUpdateElementOrderingIfNecessary;
- (void)_axUpdateElements:(id)elements withVisibleItemContainers:(id)containers;
- (void)_handlePerformTransitionFinishedWithIdentifier:(id)identifier environmentMode:(int64_t)mode;
- (void)_performEventResponse:(id)response;
- (void)_setAXSwitcherType:(id)type;
- (void)_setupContentAndTransientViews;
- (void)_updatePlusButtonPresence;
- (void)dealloc;
- (void)handleReopenClosedWindowsButtonTapped:(id)tapped;
- (void)performTransitionWithContext:(id)context animated:(BOOL)animated completion:(id)completion;
@end

@implementation SBFluidSwitcherViewControllerAccessibility

- (void)_setAXSwitcherType:(id)type
{
  v3 = MEMORY[0x29ED38050](type, a2);
  __UIAccessibilitySetAssociatedCopiedObject();
}

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"scrollView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"_setupContentAndTransientViews" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherViewController" hasInstanceVariable:@"_contentView" withType:"SBFluidSwitcherContentView"];
  [validationsCopy validateClass:@"SBFluidSwitcherViewController" hasInstanceVariable:@"_stashedContentView" withType:"SBFluidSwitcherContentView"];
  [validationsCopy validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"_performEventResponse:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"visibleItemContainers" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"personality" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherPersonality" hasInstanceMethod:@"rootModifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"appLayouts" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"layoutContext" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"_updateVisibleItems" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"_removeVisibleItemContainerForAppLayout:" withFullSignature:{"B", "@", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"_addVisibleItemContainerForAppLayout:reusingItemContainerIfExists:" withFullSignature:{"v", "@", "@", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"_scrollToAppLayout:animated:alignment:completion:" withFullSignature:{"v", "@", "B", "q", "@?", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"performTransitionWithContext:animated:completion:" withFullSignature:{"v", "@", "B", "@?", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"_updatePlusButtonPresence" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherRootSwitcherModifier" hasInstanceMethod:@"multitaskingModifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBGridSwitcherModifier"];
  [validationsCopy validateClass:@"SBGridSwitcherModifier" hasInstanceMethod:@"gridLayoutModifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherLayoutContext"];
  [validationsCopy validateClass:@"SBFluidSwitcherLayoutContext" hasInstanceMethod:@"layoutState" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBLayoutState"];
  [validationsCopy validateClass:@"SBLayoutState" hasInstanceMethod:@"elements" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBLayoutState" hasInstanceMethod:@"elementWithRole:" withFullSignature:{"@", "q", 0}];
  [validationsCopy validateClass:@"SBMainDisplayLayoutState"];
  [validationsCopy validateClass:@"SBMainDisplayLayoutState" isKindOfClass:@"SBLayoutState"];
  [validationsCopy validateClass:@"SBMainDisplayLayoutState" hasInstanceMethod:@"unlockedEnvironmentMode" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"SBLayoutElement"];
  [validationsCopy validateClass:@"SBLayoutElement" conformsToProtocol:@"SBLayoutElementDescriptor"];
  [validationsCopy validateClass:@"SBLayoutElement" hasInstanceMethod:@"viewControllerClass" withFullSignature:{"#", 0}];
  [validationsCopy validateProtocol:@"SBLayoutElementDescriptor" hasRequiredInstanceMethod:@"uniqueIdentifier"];
  [validationsCopy validateClass:@"SBGridLayoutSwitcherModifier"];
  [validationsCopy validateClass:@"SBGridLayoutSwitcherModifier" hasInstanceMethod:@"_columnForIndex:" withFullSignature:{"Q", "Q", 0}];
  [validationsCopy validateClass:@"SBGridLayoutSwitcherModifier" hasInstanceMethod:@"_numberOfColumns" withFullSignature:{"Q", 0}];
  [validationsCopy validateProtocol:@"SBSwitcherMultitaskingQueryProviding" hasRequiredInstanceMethod:@"contentOffsetForIndex:alignment:"];
  [validationsCopy validateClass:@"SBWorkspaceApplicationSceneTransitionContext"];
  [validationsCopy validateClass:@"SBWorkspaceApplicationSceneTransitionContext" hasInstanceMethod:@"previousLayoutState" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBAppLayout"];
  [validationsCopy validateClass:@"SBAppLayout" hasInstanceMethod:@"allItems" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBAppLayout" hasInstanceMethod:@"environment" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"SBAppLayout" hasInstanceMethod:@"leafAppLayouts" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBDisplayItem"];
  [validationsCopy validateClass:@"SBDisplayItem" hasInstanceMethod:@"bundleIdentifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherViewController" hasInstanceVariable:@"_reopenClosedWindowsButton" withType:"SBFluidSwitcherTitledButton"];
  [validationsCopy validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"personality" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherPersonality" hasInstanceMethod:@"rootModifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"handleReopenClosedWindowsButtonTapped:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"numberOfHiddenAppLayoutsForBundleIdentifier:" withFullSignature:{"q", "@", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherPersonality" conformsToProtocol:@"SBSwitcherPersonality"];
  [validationsCopy validateProtocol:@"SBSwitcherPersonality" conformsToProtocol:@"SBSwitcherMultitaskingQueryProviding"];
  [validationsCopy validateProtocol:@"SBSwitcherMultitaskingQueryProviding" hasRequiredInstanceMethod:@"appExposeAccessoryButtonsBundleIdentifier"];
  [validationsCopy validateClass:@"SBApplication" hasInstanceMethod:@"displayName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBLayoutState" hasInstanceMethod:@"appLayout" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBSwitcherController" hasInstanceMethod:@"_currentLayoutState" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBMainSwitcherControllerCoordinator" hasInstanceMethod:@"_appLayoutContainingDisplayItem:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"SBMainDisplayLayoutState" hasInstanceMethod:@"floatingAppLayout" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBDismissForEmptySwitcherSwitcherEventResponse"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = SBFluidSwitcherViewControllerAccessibility;
  [(SBFluidSwitcherViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  _axContentView = [(SBFluidSwitcherViewControllerAccessibility *)self _axContentView];
  [_axContentView setAccessibilityIdentifier:@"AppSwitcherContentView"];
  [_axContentView _accessibilitySetAssignedValue:self forKey:@"AppSwitcherViewController"];
  [(SBFluidSwitcherViewControllerAccessibility *)self _axCreateInitialAppElements];
}

- (BOOL)accessibilityPerformEscape
{
  _axMainSwitcher = [(SBFluidSwitcherViewControllerAccessibility *)self _axMainSwitcher];
  if (([_axMainSwitcher _axIsShelfSwitcherVisible] & 1) == 0)
  {

    goto LABEL_5;
  }

  _axSwitcherType = [(SBFluidSwitcherViewControllerAccessibility *)self _axSwitcherType];
  v5 = _axSwitcherType[2]();

  if (v5 != 3)
  {
LABEL_5:
    server = [MEMORY[0x29EDBDFA8] server];
    [server dismissAppSwitcher];
    goto LABEL_6;
  }

  server = [MEMORY[0x29EDBDFA8] server];
  [server dismissShelfSwitcher];
LABEL_6:

  return 1;
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  IsPad = AXDeviceIsPad();
  if ((scroll - 3) >= 0xFFFFFFFFFFFFFFFELL && (IsPad & 1) == 0)
  {
    v6 = [(SBFluidSwitcherViewControllerAccessibility *)self _axAdjustedIndex:[(SBFluidSwitcherViewControllerAccessibility *)self _axCurrentAppLayoutIndex] forScrollDirection:scroll];
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
  return [(SBFluidSwitcherViewControllerAccessibility *)&v9 accessibilityScroll:scroll];
}

- (BOOL)_axPerformScrollToIndex:(unint64_t)index completion:(id)completion
{
  completionCopy = completion;
  _axCollectedAppLayouts = [(SBFluidSwitcherViewControllerAccessibility *)self _axCollectedAppLayouts];
  v8 = [_axCollectedAppLayouts count];
  if (v8 > index)
  {
    _axCollectedAppLayouts2 = [(SBFluidSwitcherViewControllerAccessibility *)self _axCollectedAppLayouts];
    v10 = [_axCollectedAppLayouts2 objectAtIndexedSubscript:index];

    [(SBFluidSwitcherViewControllerAccessibility *)self _axScrollToAppLayout:v10 completion:completionCopy];
  }

  return v8 > index;
}

- (void)_axScrollToAppLayout:(id)layout completion:(id)completion
{
  layoutCopy = layout;
  completionCopy = completion;
  if (UIAccessibilityIsSwitchControlRunning())
  {
    v8 = 0;
  }

  else
  {
    _axContentView = [(SBFluidSwitcherViewControllerAccessibility *)self _axContentView];
    v8 = [_axContentView _axElementForAppLayout:layoutCopy];
  }

  v13 = layoutCopy;
  v14 = completionCopy;
  v10 = v8;
  v11 = completionCopy;
  v12 = layoutCopy;
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

- (void)_performEventResponse:(id)response
{
  v6.receiver = self;
  v6.super_class = SBFluidSwitcherViewControllerAccessibility;
  responseCopy = response;
  [(SBFluidSwitcherViewControllerAccessibility *)&v6 _performEventResponse:responseCopy];
  NSClassFromString(&cfstr_Sbdismissforem.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = accessibilityLocalizedString(@"app.switcher.no.items");
    UIAccessibilitySpeakAndDoNotBeInterrupted();
  }
}

- (void)handleReopenClosedWindowsButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  v20.receiver = self;
  v20.super_class = SBFluidSwitcherViewControllerAccessibility;
  [(SBFluidSwitcherViewControllerAccessibility *)&v20 handleReopenClosedWindowsButtonTapped:tappedCopy];
  v5 = [(SBFluidSwitcherViewControllerAccessibility *)self safeValueForKey:@"personality"];
  v6 = [v5 safeStringForKey:@"appExposeAccessoryButtonsBundleIdentifier"];

  if ([v6 length])
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v13 = MEMORY[0x29EDCA5F8];
    selfCopy = self;
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
      selfCopy = [v9 stringWithFormat:v10, v11, v13, 3221225472, __84__SBFluidSwitcherViewControllerAccessibility_handleReopenClosedWindowsButtonTapped___block_invoke, &unk_29F2FB9F0, selfCopy];
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

- (BOOL)_removeVisibleItemContainerForAppLayout:(id)layout
{
  v8.receiver = self;
  v8.super_class = SBFluidSwitcherViewControllerAccessibility;
  layoutCopy = layout;
  v5 = [(SBFluidSwitcherViewControllerAccessibility *)&v8 _removeVisibleItemContainerForAppLayout:layoutCopy];
  v6 = [(SBFluidSwitcherViewControllerAccessibility *)self _axContentView:v8.receiver];
  [v6 _axRemoveVisibleItemContainerForAppLayout:layoutCopy];

  if ((AXDeviceIsPad() & 1) == 0)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], *MEMORY[0x29EDBDB28]);
  }

  return v5;
}

- (void)_addVisibleItemContainerForAppLayout:(id)layout reusingItemContainerIfExists:(id)exists
{
  layoutCopy = layout;
  existsCopy = exists;
  v12.receiver = self;
  v12.super_class = SBFluidSwitcherViewControllerAccessibility;
  [(SBFluidSwitcherViewControllerAccessibility *)&v12 _addVisibleItemContainerForAppLayout:layoutCopy reusingItemContainerIfExists:existsCopy];
  _axContentView = [(SBFluidSwitcherViewControllerAccessibility *)self _axContentView];
  objc_opt_class();
  v9 = [(SBFluidSwitcherViewControllerAccessibility *)self safeValueForKey:@"visibleItemContainers"];
  v10 = __UIAccessibilityCastAsClass();

  v11 = [v10 objectForKey:layoutCopy];
  [_axContentView _axAddVisibleItemContainer:v11 forAppLayout:layoutCopy];
}

- (void)performTransitionWithContext:(id)context animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  contextCopy = context;
  v10 = [contextCopy safeValueForKey:@"previousLayoutState"];
  v11 = [v10 safeIntegerForKey:@"unlockedEnvironmentMode"];
  v12 = [(SBFluidSwitcherViewControllerAccessibility *)self _axIdentifierOfAppInLayoutState:v10];
  [(SBFluidSwitcherViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
  [(SBFluidSwitcherViewControllerAccessibility *)self _axCreateAppElements];
  v19[0] = MEMORY[0x29EDCA5F8];
  v19[1] = 3221225472;
  v19[2] = __95__SBFluidSwitcherViewControllerAccessibility_performTransitionWithContext_animated_completion___block_invoke;
  v19[3] = &unk_29F2FC070;
  v13 = completionCopy;
  v21 = v13;
  v19[4] = self;
  v14 = v12;
  v20 = v14;
  v22 = v11;
  v15 = MEMORY[0x29ED38050](v19);
  v18.receiver = self;
  v18.super_class = SBFluidSwitcherViewControllerAccessibility;
  [(SBFluidSwitcherViewControllerAccessibility *)&v18 performTransitionWithContext:contextCopy animated:animatedCopy completion:v15];

  if ([(SBFluidSwitcherViewControllerAccessibility *)self _axIsVisible])
  {
    _axMainSwitcher = [(SBFluidSwitcherViewControllerAccessibility *)self _axMainSwitcher];
    _axIsAppSwitcherPeeking = [_axMainSwitcher _axIsAppSwitcherPeeking];

    if (_axIsAppSwitcherPeeking)
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

- (void)_handlePerformTransitionFinishedWithIdentifier:(id)identifier environmentMode:(int64_t)mode
{
  identifierCopy = identifier;
  _axContentView = [(SBFluidSwitcherViewControllerAccessibility *)self _axContentView];
  if (!-[SBFluidSwitcherViewControllerAccessibility _axIsVisible](self, "_axIsVisible") || (-[SBFluidSwitcherViewControllerAccessibility _axMainSwitcher](self, "_axMainSwitcher"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 _axIsChamoisSwitcherVisible], v7, (v8 & 1) != 0))
  {
    _axContentView2 = [(SBFluidSwitcherViewControllerAccessibility *)self _axContentView];
    _axSwitcherViewController = [_axContentView2 _axSwitcherViewController];
    _axIsVisible = [_axSwitcherViewController _axIsVisible];

    if ((_axIsVisible & 1) == 0)
    {
      _axMainSwitcher = [(SBFluidSwitcherViewControllerAccessibility *)self _axMainSwitcher];
      _axIsShelfSwitcherVisible = [_axMainSwitcher _axIsShelfSwitcherVisible];

      if ((_axIsShelfSwitcherVisible & 1) == 0)
      {
        [(SBFluidSwitcherViewControllerAccessibility *)self _axCreateAppElementsForLayouts:0 visibleItemContainers:0];
      }
    }

    goto LABEL_22;
  }

  accessibilityElements = [_axContentView accessibilityElements];
  v15 = [accessibilityElements ax_filteredArrayUsingBlock:&__block_literal_global_7];

  _axCollectedVisibleItemContainers = [(SBFluidSwitcherViewControllerAccessibility *)self _axCollectedVisibleItemContainers];
  allValues = [_axCollectedVisibleItemContainers allValues];
  [(SBFluidSwitcherViewControllerAccessibility *)self _axUpdateElements:v15 withVisibleItemContainers:allValues];

  Current = CFAbsoluteTimeGetCurrent();
  if (Current - *&_handlePerformTransitionFinishedWithIdentifier_environmentMode__LastAnnouncement > 1.0 && (AXSpringBoardIsAssistantVisible() & 1) == 0)
  {
    v19 = objc_allocWithZone(MEMORY[0x29EDB8DC0]);
    v20 = [MEMORY[0x29EDBA070] numberWithInt:1];
    v21 = [v19 initWithObjectsAndKeys:{v20, *MEMORY[0x29EDBD860], 0}];

    _axMainSwitcher2 = [(SBFluidSwitcherViewControllerAccessibility *)self _axMainSwitcher];
    _axIsMainSwitcherVisible = [_axMainSwitcher2 _axIsMainSwitcherVisible];

    if (_axIsMainSwitcherVisible)
    {
      v24 = @"app.switcher.announce";
    }

    else
    {
      _axMainSwitcher3 = [(SBFluidSwitcherViewControllerAccessibility *)self _axMainSwitcher];
      _axIsAppSwitcherPeeking = [_axMainSwitcher3 _axIsAppSwitcherPeeking];

      if (!_axIsAppSwitcherPeeking)
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
  if (mode == 1)
  {
    _axCollectedAppLayouts = [(SBFluidSwitcherViewControllerAccessibility *)self _axCollectedAppLayouts];
    firstObject = [_axCollectedAppLayouts firstObject];
  }

  else if (mode == 3)
  {
    firstObject = [(SBFluidSwitcherViewControllerAccessibility *)self _axAppLayoutForAppIdentifier:identifierCopy];
  }

  else
  {
    firstObject = 0;
  }

  v32 = [_axContentView _axElementForAppLayout:firstObject];
  _axMainSwitcher4 = [(SBFluidSwitcherViewControllerAccessibility *)self _axMainSwitcher];
  _axIsMainSwitcherVisible2 = [_axMainSwitcher4 _axIsMainSwitcherVisible];

  if (_axIsMainSwitcherVisible2)
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

- (id)_axIdentifierOfAppInLayoutState:(id)state
{
  stateCopy = state;
  objc_opt_class();
  v4 = [stateCopy safeValueForKey:@"elements"];
  v5 = __UIAccessibilityCastAsClass();

  anyObject = [v5 anyObject];
  v7 = [anyObject safeValueForKey:@"uniqueIdentifier"];

  return v7;
}

- (id)_axAppLayoutForAppIdentifier:(id)identifier
{
  v32 = *MEMORY[0x29EDCA608];
  identifierCopy = identifier;
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
              if ([identifierCopy isEqualToString:v16])
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
  _axAppLayouts = [(SBFluidSwitcherViewControllerAccessibility *)self _axAppLayouts];
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
  array = [MEMORY[0x29EDB8DE8] array];
  _axCollectedVisibleItemContainers = [(SBFluidSwitcherViewControllerAccessibility *)self _axCollectedVisibleItemContainers];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allKeys = [_axCollectedVisibleItemContainers allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [_axCollectedVisibleItemContainers objectForKey:v10];
        isSelectable = [v11 isSelectable];

        if ((isSelectable & 1) == 0)
        {
          [array axSafelyAddObject:v10];
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return array;
}

- (id)_axChamoisActiveApps
{
  v19 = *MEMORY[0x29EDCA608];
  array = [MEMORY[0x29EDB8DE8] array];
  _axChamoisActiveAppLayouts = [(SBFluidSwitcherViewControllerAccessibility *)self _axChamoisActiveAppLayouts];
  if ([_axChamoisActiveAppLayouts count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = _axChamoisActiveAppLayouts;
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
          _axCollectedVisibleItemContainers = [(SBFluidSwitcherViewControllerAccessibility *)self _axCollectedVisibleItemContainers];
          v12 = [_axCollectedVisibleItemContainers objectForKey:v10];
          [array axSafelyAddObject:v12];
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  return array;
}

- (id)_axVisibleAppLayouts
{
  v2 = [(SBFluidSwitcherViewControllerAccessibility *)self safeDictionaryForKey:@"visibleItemContainers"];
  allKeys = [v2 allKeys];

  return allKeys;
}

- (int64_t)_axEnvironmentMode
{
  v2 = [(SBFluidSwitcherViewControllerAccessibility *)self safeValueForKeyPath:@"layoutContext.layoutState.unlockedEnvironmentMode"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
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

  _axSwitcherType = [(SBFluidSwitcherViewControllerAccessibility *)self _axSwitcherType];

  if (!_axSwitcherType)
  {
    return _axSwitcherType;
  }

  _axSwitcherType2 = [(SBFluidSwitcherViewControllerAccessibility *)self _axSwitcherType];
  v6 = _axSwitcherType2[2]();

  switch(v6)
  {
    case 3:
      _axMainSwitcher = [(SBFluidSwitcherViewControllerAccessibility *)self _axMainSwitcher];
      _axIsShelfSwitcherVisible = [_axMainSwitcher _axIsShelfSwitcherVisible];
      goto LABEL_10;
    case 2:
      _axMainSwitcher = [(SBFluidSwitcherViewControllerAccessibility *)self _axMainSwitcher];
      _axIsShelfSwitcherVisible = [_axMainSwitcher _axIsFloatingSwitcherVisible];
      goto LABEL_10;
    case 1:
      _axMainSwitcher = [(SBFluidSwitcherViewControllerAccessibility *)self _axMainSwitcher];
      _axIsShelfSwitcherVisible = [_axMainSwitcher _axIsTypeOfMainSwitcherVisible];
LABEL_10:
      LOBYTE(_axSwitcherType) = _axIsShelfSwitcherVisible;

      return _axSwitcherType;
  }

LABEL_2:
  LOBYTE(_axSwitcherType) = 0;
  return _axSwitcherType;
}

- (id)_axScrollStatusForIndex:(unint64_t)index
{
  if (index && (v5 = [(SBFluidSwitcherViewControllerAccessibility *)self _axPageForIndex:[(SBFluidSwitcherViewControllerAccessibility *)self _axCurrentAppLayoutIndex]], v5 != [(SBFluidSwitcherViewControllerAccessibility *)self _axPageForIndex:index]))
  {
    v7 = accessibilityLocalizedString(@"springboard.page.status");
    v8 = [(SBFluidSwitcherViewControllerAccessibility *)self _axPageForIndex:index]+ 1;
    _axNumberOfPages = [(SBFluidSwitcherViewControllerAccessibility *)self _axNumberOfPages];
    v10 = [MEMORY[0x29EDBA0F8] localizedStringWithFormat:v7, v8, _axNumberOfPages];
    _axCollectedAppLayouts = [(SBFluidSwitcherViewControllerAccessibility *)self _axCollectedAppLayouts];
    v12 = [_axCollectedAppLayouts axSafeObjectAtIndex:index];

    _axContentView = [(SBFluidSwitcherViewControllerAccessibility *)self _axContentView];
    v14 = [_axContentView _axElementForAppLayout:v12];

    accessibilityLabel = [v14 accessibilityLabel];
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

- (unint64_t)_axPageForIndex:(unint64_t)index
{
  _axGridLayoutModifierIfExists = [(SBFluidSwitcherViewControllerAccessibility *)self _axGridLayoutModifierIfExists];
  if (objc_opt_respondsToSelector())
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v6 = _axGridLayoutModifierIfExists;
    AXPerformSafeBlock();
    index = v8[3];

    _Block_object_dispose(&v7, 8);
  }

  return index;
}

uint64_t __62__SBFluidSwitcherViewControllerAccessibility__axPageForIndex___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _columnForIndex:*(a1 + 48) - 1];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (unint64_t)_axNumberOfPages
{
  _axGridLayoutModifierIfExists = [(SBFluidSwitcherViewControllerAccessibility *)self _axGridLayoutModifierIfExists];
  if (objc_opt_respondsToSelector())
  {
    v4 = [_axGridLayoutModifierIfExists safeUnsignedIntegerForKey:@"_numberOfColumns"];
  }

  else
  {
    _axCollectedAppLayouts = [(SBFluidSwitcherViewControllerAccessibility *)self _axCollectedAppLayouts];
    v4 = [_axCollectedAppLayouts count];
  }

  return v4;
}

- (BOOL)_axHasMultirowLayout
{
  _axNumberOfPages = [(SBFluidSwitcherViewControllerAccessibility *)self _axNumberOfPages];
  _axCollectedAppLayouts = [(SBFluidSwitcherViewControllerAccessibility *)self _axCollectedAppLayouts];
  LOBYTE(_axNumberOfPages) = _axNumberOfPages < [_axCollectedAppLayouts count];

  return _axNumberOfPages;
}

- (unint64_t)_axAdjustedIndex:(unint64_t)index forScrollDirection:(int64_t)direction
{
  _axHasMultirowLayout = [(SBFluidSwitcherViewControllerAccessibility *)self _axHasMultirowLayout];
  v7 = 1;
  if (_axHasMultirowLayout)
  {
    v7 = 2;
  }

  v8 = index - v7;
  indexCopy = v7 + index;
  if (direction != 1)
  {
    indexCopy = index;
  }

  if (direction == 2)
  {
    return v8;
  }

  else
  {
    return indexCopy;
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
  _axCollectedAppLayouts = [(SBFluidSwitcherViewControllerAccessibility *)self _axCollectedAppLayouts];
  v6 = [_axCollectedAppLayouts indexOfObject:v4];

  return v6;
}

- (void)_axCreateAppElements
{
  _axIsVisible = [(SBFluidSwitcherViewControllerAccessibility *)self _axIsVisible];
  _axCollectedAppLayouts = [(SBFluidSwitcherViewControllerAccessibility *)self _axCollectedAppLayouts];
  v4 = [_axCollectedAppLayouts count];
  if (!_axIsVisible)
  {
    if (v4)
    {
      goto LABEL_13;
    }

LABEL_5:
    _axCollectedVisibleItemContainers = [(SBFluidSwitcherViewControllerAccessibility *)self _axCollectedVisibleItemContainers];
    _axMainSwitcher = [(SBFluidSwitcherViewControllerAccessibility *)self _axMainSwitcher];
    _axIsAppSwitcherPeekingSlideOver = [_axMainSwitcher _axIsAppSwitcherPeekingSlideOver];

    _axMainSwitcher2 = [(SBFluidSwitcherViewControllerAccessibility *)self _axMainSwitcher];
    _axMainSwitcher4 = _axMainSwitcher2;
    if (_axIsAppSwitcherPeekingSlideOver)
    {
      _axMainSwitcher3 = [(SBFluidSwitcherViewControllerAccessibility *)self _axMainSwitcher];
      v11 = AXSwitcherController(@"activeDisplayWindowScene", _axMainSwitcher3);
      v12 = [v11 safeValueForKeyPath:@"_currentLayoutState.floatingAppLayout"];
      v13 = [_axMainSwitcher4 _appLayoutContainingDisplayItem:v12];
    }

    else
    {
      _axIsAppSwitcherPeekingSplitView = [_axMainSwitcher2 _axIsAppSwitcherPeekingSplitView];

      if (!_axIsAppSwitcherPeekingSplitView)
      {
        goto LABEL_11;
      }

      _axMainSwitcher4 = [(SBFluidSwitcherViewControllerAccessibility *)self _axMainSwitcher];
      _axMainSwitcher3 = AXSwitcherController(@"activeDisplayWindowScene", _axMainSwitcher4);
      v13 = [_axMainSwitcher3 safeValueForKeyPath:@"_currentLayoutState.appLayout"];
    }

    if (v13)
    {
      v15 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, v13}];

      v16 = v15;
LABEL_12:
      _axCollectedAppLayouts = v16;
      [(SBFluidSwitcherViewControllerAccessibility *)self _axCreateAppElementsForLayouts:v16 visibleItemContainers:_axCollectedVisibleItemContainers];

      goto LABEL_13;
    }

LABEL_11:
    v16 = _axCollectedAppLayouts;
    goto LABEL_12;
  }

  if (v4)
  {
    goto LABEL_5;
  }

LABEL_13:
}

- (void)_axUpdateElements:(id)elements withVisibleItemContainers:(id)containers
{
  v32 = *MEMORY[0x29EDCA608];
  elementsCopy = elements;
  containersCopy = containers;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = elementsCopy;
  v20 = [elementsCopy countByEnumeratingWithState:&v26 objects:v31 count:16];
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
        v8 = containersCopy;
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
              appLayout = [v7 appLayout];
              v15 = [v13 safeValueForKey:@"appLayout"];
              v16 = [appLayout isEqual:v15];

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

- (void)_axCreateAppElementsForLayouts:(id)layouts visibleItemContainers:(id)containers
{
  v61 = *MEMORY[0x29EDCA608];
  layoutsCopy = layouts;
  containersCopy = containers;
  _axContentView = [(SBFluidSwitcherViewControllerAccessibility *)self _axContentView];
  v9 = _axContentView;
  if (layoutsCopy && _axContentView)
  {
    v41 = _axContentView;
    v42 = containersCopy;
    selfCopy = self;
    v44 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{objc_msgSend(layoutsCopy, "count")}];
    v10 = [objc_alloc(MEMORY[0x29EDB8E00]) initWithCapacity:{objc_msgSend(layoutsCopy, "count")}];
    array = [MEMORY[0x29EDB8DE8] array];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v43 = layoutsCopy;
    v12 = layoutsCopy;
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
            [array axSafelyAddObject:v17];
          }

          else
          {
            reverseObjectEnumerator = [v18 reverseObjectEnumerator];
            allObjects = [reverseObjectEnumerator allObjects];
            [array axSafelyAddObjectsFromArray:allObjects];
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
    v21 = array;
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
          [(SBAppSwitcherAppAccessibilityElement *)v28 setDelegate:selfCopy];
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
    containersCopy = v42;
    allKeys = [v42 allKeys];
    v30 = [allKeys countByEnumeratingWithState:&v46 objects:v58 count:16];
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
            objc_enumerationMutation(allKeys);
          }

          v34 = *(*(&v46 + 1) + 8 * k);
          v35 = [v42 objectForKey:v34];
          v36 = [v10 objectForKeyedSubscript:v34];
          [v36 setItemContainer:v35];
        }

        v31 = [allKeys countByEnumeratingWithState:&v46 objects:v58 count:16];
      }

      while (v31);
    }

    if (UIAccessibilityIsSwitchControlRunning())
    {
      v38 = v44;
      v37 = selfCopy;
      allObjects2 = [(SBFluidSwitcherViewControllerAccessibility *)selfCopy _axSortedElementArray:v44];
      layoutsCopy = v43;
    }

    else
    {
      v37 = selfCopy;
      layoutsCopy = v43;
      v38 = v44;
      if ([(SBFluidSwitcherViewControllerAccessibility *)selfCopy _axShouldReverseElements])
      {
        reverseObjectEnumerator2 = [v44 reverseObjectEnumerator];
        allObjects2 = [reverseObjectEnumerator2 allObjects];
      }

      else
      {
        allObjects2 = v44;
      }
    }

    [(SBFluidSwitcherViewControllerAccessibility *)v37 _accessibilityRegisterAppQuitNotifications];
  }

  else
  {
    [(SBFluidSwitcherViewControllerAccessibility *)self _accessibilityUnregisterAppQuitNotifications];
    v10 = 0;
    allObjects2 = 0;
  }

  [v9 _axSetElementsArray:allObjects2 dictionary:v10];
}

- (void)_axUpdateElementOrderingIfNecessary
{
  if (UIAccessibilityIsSwitchControlRunning())
  {
    _axContentView = [(SBFluidSwitcherViewControllerAccessibility *)self _axContentView];
    _axAppElements = [_axContentView _axAppElements];
    v4 = [_axAppElements mutableCopy];

    _axAppElementsDictionary = [_axContentView _axAppElementsDictionary];
    v6 = [_axAppElementsDictionary mutableCopy];

    v7 = [(SBFluidSwitcherViewControllerAccessibility *)self _axSortedElementArray:v4];
    [_axContentView _axSetElementsArray:v7 dictionary:v6];
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
    defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
    [defaultCenter addObserver:self selector:sel__axDidQuitApp_ name:@"SBAppSwitcherQuitAppNotification" object:0];

    defaultCenter2 = [MEMORY[0x29EDBA068] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel__axDidQuitApp_ name:@"AXInternalAppSwitcherAppRemove" object:0];

    [(SBFluidSwitcherViewControllerAccessibility *)self _accessibilitySetAppQuitNotificationsRegistered:1];
  }
}

- (void)_accessibilityUnregisterAppQuitNotifications
{
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter removeObserver:self name:@"SBAppSwitcherQuitAppNotification" object:0];

  defaultCenter2 = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter2 removeObserver:self name:@"AXInternalAppSwitcherAppRemove" object:0];

  [(SBFluidSwitcherViewControllerAccessibility *)self _accessibilitySetAppQuitNotificationsRegistered:0];
}

- (id)_axSortedElementArray:(id)array
{
  arrayCopy = array;
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __68__SBFluidSwitcherViewControllerAccessibility__axSortedElementArray___block_invoke;
  v7[3] = &unk_29F2FC0B8;
  objc_copyWeak(&v8, &location);
  v5 = [arrayCopy sortedArrayUsingComparator:v7];
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
  _axCollectedAppLayouts = [(SBFluidSwitcherViewControllerAccessibility *)self _axCollectedAppLayouts];
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
        [_axCollectedAppLayouts indexOfObject:v12];
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

- (void)_axDidQuitApp:(id)app
{
  userInfo = [app userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"SBAppSwitcherQuitAppBundleIdentifierKey"];

  [(SBFluidSwitcherViewControllerAccessibility *)self _axCreateAppElements];
  _axContentView = [(SBFluidSwitcherViewControllerAccessibility *)self _axContentView];
  _axAppElements = [_axContentView _axAppElements];
  v8 = [_axAppElements mutableCopy];

  _axAppElementsDictionary = [_axContentView _axAppElementsDictionary];
  v10 = [_axAppElementsDictionary mutableCopy];

  if ([v8 count])
  {
    v11 = 0;
    while (1)
    {
      v12 = [v8 objectAtIndexedSubscript:v11];
      appLayout = [v12 appLayout];
      _axBundleIdentifier = [appLayout _axBundleIdentifier];
      v15 = [_axBundleIdentifier isEqualToString:v5];

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
    appLayout2 = [v12 appLayout];
    [v10 removeObjectForKey:appLayout2];

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
  [_axContentView _axSetElementsArray:v8 dictionary:v10];
}

- (BOOL)appElementIsAccessibilityElement:(id)element
{
  v22 = *MEMORY[0x29EDCA608];
  elementCopy = element;
  appLayout = [elementCopy appLayout];
  v6 = [appLayout safeIntegerForKey:@"environment"];

  v7 = 0;
  if (v6 <= 1)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        _axMainSwitcher = [(SBFluidSwitcherViewControllerAccessibility *)self _axMainSwitcher];
        if (([_axMainSwitcher _axIsShelfSwitcherVisible] & 1) == 0)
        {

LABEL_16:
          _axMainSwitcher2 = [(SBFluidSwitcherViewControllerAccessibility *)self _axMainSwitcher];
          _axIsTypeOfMainSwitcherVisible = [_axMainSwitcher2 _axIsTypeOfMainSwitcherVisible];
LABEL_19:
          v7 = _axIsTypeOfMainSwitcherVisible;

          goto LABEL_20;
        }

        _axSwitcherType = [(SBFluidSwitcherViewControllerAccessibility *)self _axSwitcherType];
        v10 = _axSwitcherType[2]();

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
      v21 = elementCopy;
      _os_log_impl(&dword_29C37A000, v11, OS_LOG_TYPE_INFO, "Invalid app switcher environment {%ld} found on element %@", &v18, 0x16u);
    }

    v7 = 0;
    goto LABEL_20;
  }

  if (v6 == 2)
  {
    _axMainSwitcher3 = [(SBFluidSwitcherViewControllerAccessibility *)self _axMainSwitcher];
    if ([_axMainSwitcher3 _axIsTypeOfMainSwitcherVisible])
    {
      _axSwitcherType2 = [(SBFluidSwitcherViewControllerAccessibility *)self _axSwitcherType];
      v14 = _axSwitcherType2[2]();

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

    _axMainSwitcher2 = [(SBFluidSwitcherViewControllerAccessibility *)self _axMainSwitcher];
    _axIsTypeOfMainSwitcherVisible = [_axMainSwitcher2 _axIsFloatingSwitcherVisible];
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