@interface SBFluidSwitcherItemContainerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityHasMultipleWindows;
- (BOOL)_accessibilityIsNewWindowContainer;
- (BOOL)_accessibilityIsNotFirstElement;
- (BOOL)_accessibilityIsShelfItemContainer;
- (BOOL)_accessibilityScrollToVisible;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (BOOL)canBecomeFocused;
- (CGRect)_accessibilityVisibleFrame;
- (double)_axScaleTransformForFocusLayerLineWidth;
- (id)_accessibilityAddToCenterStateAction;
- (id)_accessibilityCustomActionGroupIdentifier;
- (id)_accessibilityItemContainerFooterView;
- (id)_accessibilityItemContainerHeaderView;
- (id)_accessibilityNativeFocusPreferredElement;
- (id)_accessibilityPreferredScrollActions;
- (id)_accessibilityScrollStatus;
- (id)_accessibilityTitleItem;
- (id)_axAppLayout;
- (id)_axBundleIdentifier;
- (id)_axFluidSwitcher;
- (id)_axMainSwitcher;
- (id)_axParentAppLayout;
- (id)accessibilityCustomActions;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityPath;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityCloseApp:(id)app;
@end

@implementation SBFluidSwitcherItemContainerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBFluidSwitcherItemContainer" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"SBMainSwitcherWindow"];
  [validationsCopy validateClass:@"SBFluidSwitcherContentView"];
  [validationsCopy validateClass:@"SBFluidSwitcherItemContainer" hasInstanceMethod:@"isKillable" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherItemContainer" hasInstanceVariable:@"_delegate" withType:"<SBFluidSwitcherItemContainerDelegate>"];
  [validationsCopy validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"_scrollToAppLayout:animated:alignment:completion:" withFullSignature:{"v", "@", "B", "q", "@?", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"appLayouts" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherItemContainer" hasInstanceVariable:@"_appLayout" withType:"SBAppLayout"];
  [validationsCopy validateClass:@"SBContinuityDisplayItem" hasInstanceMethod:@"appSuggestion" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBBestAppSuggestion" hasInstanceMethod:@"originatingDeviceType" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBBestAppSuggestion" hasInstanceMethod:@"isLocallyGeneratedSuggestion" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBAppLayout" hasInstanceMethod:@"isOrContainsAppLayout:" withFullSignature:{"B", "@", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherSpaceTitleItem" hasInstanceMethod:@"titleText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherSpaceTitleItem" hasInstanceMethod:@"subtitleText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherSpaceTitleItem" hasInstanceMethod:@"showsMultiWindowIndicator" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherItemContainer" hasInstanceVariable:@"_pageView" withType:"SBAppSwitcherPageView"];
  [validationsCopy validateClass:@"SBAppSwitcherPageView" hasInstanceMethod:@"cornerRadii" withFullSignature:{"{UIRectCornerRadii=dddd}", 0}];
  [validationsCopy validateClass:@"SBAppLayoutAccessibility" hasInstanceMethod:@"_axLabelForInCallService" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBApplication" hasInstanceMethod:@"bundleIdentifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBApplication" hasInstanceMethod:@"displayName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"killContainer:forReason:" withFullSignature:{"v", "@", "q", 0}];
  [validationsCopy validateClass:@"SBApplicationController" hasInstanceMethod:@"applicationWithBundleIdentifier:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"SBAppLayout" hasInstanceMethod:@"enumerate:" withFullSignature:{"v", "@?", 0}];
  [validationsCopy validateClass:@"SBAppLayout" hasInstanceMethod:@"environment" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"SBDisplayItem" hasInstanceMethod:@"type" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"SBAppLayout" hasInstanceMethod:@"itemForLayoutRole:" withFullSignature:{"@", "q", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"visibleUnderlayAccessoryViews" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBAppLayout" hasInstanceMethod:@"layoutRoleForItem:" withFullSignature:{"q", "@", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"visibleOverlayAccessoryViews" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherItemContainerHeaderView" hasInstanceMethod:@"titleItems" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherItemContainerFooterView" hasInstanceVariable:@"_titleItems" withType:"NSArray"];
  [validationsCopy validateClass:@"SBFluidSwitcherItemContainerHeaderView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherSpaceUnderlayAccessoryView" hasInstanceMethod:@"itemContainerHeaderView:didSelectTitleItem:" withFullSignature:{"v", "@", "@", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherSpaceUnderlayAccessoryView" hasInstanceVariable:@"_headerView" withType:"SBFluidSwitcherItemContainerHeaderView"];
  [validationsCopy validateClass:@"SBFluidSwitcherSpaceOverlayAccessoryView" hasInstanceVariable:@"_footerView" withType:"SBFluidSwitcherItemContainerFooterView"];
  [validationsCopy validateClass:@"SBAppLayout" hasInstanceMethod:@"leafAppLayouts" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherItemContainer"];
  [validationsCopy validateClass:@"SBSwitcherController" hasInstanceMethod:@"isChamoisWindowingUIEnabled" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"didSelectContainer:modifierFlags:" withFullSignature:{"v", "@", "q", 0}];
  [validationsCopy validateClass:@"SBSwitcherController" hasInstanceMethod:@"windowManagementContext" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBSwitcherWindowManagementContext" hasInstanceMethod:@"isChamoisOrFlexibleWindowing" withFullSignature:{"B", 0}];
}

- (id)_axBundleIdentifier
{
  _axAppLayout = [(SBFluidSwitcherItemContainerAccessibility *)self _axAppLayout];
  _axBundleIdentifier = [_axAppLayout _axBundleIdentifier];

  return _axBundleIdentifier;
}

- (id)accessibilityPath
{
  v2 = [(SBFluidSwitcherItemContainerAccessibility *)self safeUIViewForKey:@"_pageView"];
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x4010000000;
  v8[3] = &unk_29C3C62F5;
  v9 = 0u;
  v10 = 0u;
  v6 = MEMORY[0x29EDCA5F8];
  v7 = v2;
  AXPerformSafeBlock();

  _Block_object_dispose(v8, 8);
  [(UIView *)v7 bounds:v6];
  UIRectInsetEdges();
  v3 = [MEMORY[0x29EDC7948] bezierPathWithRoundedRect:-1 byRoundingCorners:? cornerRadii:?];
  v4 = UIAccessibilityConvertPathToScreenCoordinates(v3, v7);

  return v4;
}

uint64_t __62__SBFluidSwitcherItemContainerAccessibility_accessibilityPath__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) cornerRadii];
  v3 = *(*(a1 + 40) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

- (id)accessibilityLabel
{
  _axAppLayout = [(SBFluidSwitcherItemContainerAccessibility *)self _axAppLayout];
  _axBundleIdentifier = [_axAppLayout _axBundleIdentifier];
  v5 = [_axBundleIdentifier isEqualToString:*MEMORY[0x29EDBD600]];

  if (v5)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__6;
    v19 = __Block_byref_object_dispose__6;
    v20 = 0;
    v14 = _axAppLayout;
    AXPerformSafeBlock();
    v6 = v16[5];

    _Block_object_dispose(&v15, 8);
    if ([(__CFString *)v6 length])
    {
      v7 = v6;
      goto LABEL_8;
    }
  }

  else
  {
    v6 = &stru_2A22F9D20;
  }

  _accessibilityTitleItem = [(SBFluidSwitcherItemContainerAccessibility *)self _accessibilityTitleItem];
  v9 = [_accessibilityTitleItem safeValueForKey:@"titleText"];
  v13 = [_accessibilityTitleItem safeValueForKey:@"subtitleText"];
  v10 = __UIAXStringForVariables();

  if (![v10 length])
  {
    _axDisplayName = [_axAppLayout _axDisplayName];

    v10 = _axDisplayName;
  }

  v7 = v10;

LABEL_8:

  return v7;
}

uint64_t __63__SBFluidSwitcherItemContainerAccessibility_accessibilityLabel__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _axLabelForInCallService];

  return MEMORY[0x2A1C71028]();
}

- (BOOL)_accessibilityIsNotFirstElement
{
  v2 = [(SBFluidSwitcherItemContainerAccessibility *)self _accessibilityValueForKey:@"AXBundleIdentifier"];
  v3 = [v2 isEqualToString:*MEMORY[0x29EDBD670]];

  return v3;
}

- (id)accessibilityCustomActions
{
  array = [MEMORY[0x29EDB8DE8] array];
  if ([(SBFluidSwitcherItemContainerAccessibility *)self _accessibilityCanCloseApp])
  {
    v4 = MEMORY[0x29EDBA0F8];
    v5 = accessibilityLocalizedString(@"close.app.from.switcher.title");
    accessibilityLabel = [(SBFluidSwitcherItemContainerAccessibility *)self accessibilityLabel];
    v7 = [v4 stringWithFormat:v5, accessibilityLabel];

    v8 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v7];
    [v8 setAttribute:@"AXCloseApp" forKey:*MEMORY[0x29EDBD828]];
    v9 = [objc_alloc(MEMORY[0x29EDC78E0]) initWithName:v8 target:self selector:sel__accessibilityCloseApp_];
    [v9 _accessibilitySetInternalCustomActionIdentifier:@"AX_CLOSE"];
    [array addObject:v9];
  }

  if ([(SBFluidSwitcherItemContainerAccessibility *)self _accessibilityHasMultipleWindows])
  {
    objc_initWeak(&location, self);
    v10 = objc_alloc(MEMORY[0x29EDC78E0]);
    v11 = accessibilityLocalizedString(@"show.all.shelf.windows");
    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 3221225472;
    v14[2] = __71__SBFluidSwitcherItemContainerAccessibility_accessibilityCustomActions__block_invoke;
    v14[3] = &unk_29F2FBF70;
    objc_copyWeak(&v15, &location);
    v12 = [v10 initWithName:v11 actionHandler:v14];

    [array axSafelyAddObject:v12];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return array;
}

uint64_t __71__SBFluidSwitcherItemContainerAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  AXPerformSafeBlock();
  objc_destroyWeak(&v5);

  return 1;
}

void __71__SBFluidSwitcherItemContainerAccessibility_accessibilityCustomActions__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _accessibilityItemContainerHeaderView];
  v3 = [v2 safeValueForKey:@"_delegate"];
  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 _accessibilityItemContainerHeaderView];
  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 _accessibilityTitleItem];
  [v3 itemContainerHeaderView:v5 didSelectTitleItem:v7];
}

- (id)_accessibilityCustomActionGroupIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)_accessibilityScrollStatus
{
  v3 = [(SBFluidSwitcherItemContainerAccessibility *)self safeValueForKey:@"_delegate"];
  v4 = [v3 safeArrayForKey:@"appLayouts"];
  _axAppLayout = [(SBFluidSwitcherItemContainerAccessibility *)self _axAppLayout];
  [v4 indexOfObject:_axAppLayout];

  [v4 count];
  v6 = MEMORY[0x29EDBA0F8];
  v7 = accessibilityLocalizedString(@"app.switcher.location");
  v8 = AXFormatInteger();
  v9 = AXFormatInteger();
  v10 = [v6 stringWithFormat:v7, v8, v9];

  return v10;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = SBFluidSwitcherItemContainerAccessibility;
  accessibilityTraits = [(SBFluidSwitcherItemContainerAccessibility *)&v7 accessibilityTraits];
  _accessibilityIsNewWindowContainer = [(SBFluidSwitcherItemContainerAccessibility *)self _accessibilityIsNewWindowContainer];
  v5 = *MEMORY[0x29EDC7F70];
  if (!_accessibilityIsNewWindowContainer)
  {
    v5 = 0;
  }

  return v5 | accessibilityTraits;
}

- (void)_accessibilityCloseApp:(id)app
{
  _axAppLayout = [(SBFluidSwitcherItemContainerAccessibility *)self _axAppLayout];
  LastCustomActionAppQuitFromSwitch = CFAbsoluteTimeGetCurrent();
  v5 = _axAppLayout;
  v4 = _axAppLayout;
  AXPerformSafeBlock();
  AXPerformSafeBlock();
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

void __68__SBFluidSwitcherItemContainerAccessibility__accessibilityCloseApp___block_invoke(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = &stru_2A22F9D20;
  v1 = *(a1 + 32);
  if (v1)
  {
    v5[0] = MEMORY[0x29EDCA5F8];
    v5[1] = 3221225472;
    v5[2] = __68__SBFluidSwitcherItemContainerAccessibility__accessibilityCloseApp___block_invoke_2;
    v5[3] = &unk_29F2FBF98;
    v5[4] = &v6;
    [v1 enumerate:v5];
  }

  if ([v7[5] length])
  {
    v2 = MEMORY[0x29EDBA0F8];
    v3 = accessibilityLocalizedString(@"closing.app");
    v4 = [v2 stringWithFormat:v3, v7[5]];
    UIAccessibilitySpeakAndDoNotBeInterrupted();
  }

  _Block_object_dispose(&v6, 8);
}

void __68__SBFluidSwitcherItemContainerAccessibility__accessibilityCloseApp___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v18[1] = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = AXSBApplicationControllerSharedInstance();
  v6 = [v4 safeValueForKey:@"bundleIdentifier"];

  v7 = [v5 applicationWithBundleIdentifier:v6];

  v8 = [v7 safeStringForKey:@"bundleIdentifier"];
  if (v8)
  {
    v9 = [v7 safeStringForKey:@"displayName"];
    if (v9)
    {
      v15 = v9;
      v16 = @"__AXStringForVariablesSentinel";
      v10 = __AXStringForVariables();
      v11 = *(*(a1 + 32) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }

    v13 = [MEMORY[0x29EDBA068] defaultCenter];
    v17 = @"SBAppSwitcherQuitAppBundleIdentifierKey";
    v18[0] = v8;
    v14 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    [v13 postNotificationName:@"AXInternalAppSwitcherAppRemove" object:0 userInfo:v14];
  }
}

void __68__SBFluidSwitcherItemContainerAccessibility__accessibilityCloseApp___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"_delegate"];
  [v2 killContainer:*(a1 + 32) forReason:0];
}

- (BOOL)_accessibilityScrollToVisible
{
  v3 = [(SBFluidSwitcherItemContainerAccessibility *)self safeValueForKey:@"_delegate"];
  v4 = [v3 safeArrayForKey:@"appLayouts"];
  if ([v4 count])
  {
    _axAppLayout = [(SBFluidSwitcherItemContainerAccessibility *)self _axAppLayout];
    if (!_axAppLayout || [v4 indexOfObject:_axAppLayout] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = v3;
      v8 = _axAppLayout;
      AXPerformSafeBlock();
    }
  }

  return 1;
}

- (CGRect)_accessibilityVisibleFrame
{
  [(SBFluidSwitcherItemContainerAccessibility *)self accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  window = [(SBFluidSwitcherItemContainerAccessibility *)self window];
  [window bounds];
  v27.origin.x = v12;
  v27.origin.y = v13;
  v27.size.width = v14;
  v27.size.height = v15;
  v24.origin.x = v4;
  v24.origin.y = v6;
  v24.size.width = v8;
  v24.size.height = v10;
  v25 = CGRectIntersection(v24, v27);
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;

  v20 = x;
  v21 = y;
  v22 = width;
  v23 = height;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  if (scroll == 4)
  {
    if ([(SBFluidSwitcherItemContainerAccessibility *)self _accessibilityCanCloseApp])
    {
      v4 = 1;
      [(SBFluidSwitcherItemContainerAccessibility *)self _accessibilitySetBoolValue:1 forKey:@"AppDeleted"];
      [(SBFluidSwitcherItemContainerAccessibility *)self _accessibilityCloseApp:0];
      [(SBFluidSwitcherItemContainerAccessibility *)self _accessibilitySetBoolValue:0 forKey:@"AppDeleted"];
      if (AXDeviceIsPad())
      {
        UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], *MEMORY[0x29EDBDB28]);
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SBFluidSwitcherItemContainerAccessibility;
    return [(SBFluidSwitcherItemContainerAccessibility *)&v6 accessibilityScroll:?];
  }

  return v4;
}

- (id)accessibilityHint
{
  if ([(SBFluidSwitcherItemContainerAccessibility *)self _accessibilityCanCloseApp])
  {
    v3 = accessibilityLocalizedString(@"swipe.up.to.hide.hint");
  }

  else
  {
    v3 = 0;
  }

  if (AXDeviceIsPad())
  {
    _axFluidSwitcher = [(SBFluidSwitcherItemContainerAccessibility *)self _axFluidSwitcher];
    if (_axFluidSwitcher)
    {
      v5 = _axFluidSwitcher;
      _axFluidSwitcher2 = [(SBFluidSwitcherItemContainerAccessibility *)self _axFluidSwitcher];
      _axSwitcherType = [_axFluidSwitcher2 _axSwitcherType];

      if (_axSwitcherType)
      {
        _axFluidSwitcher3 = [(SBFluidSwitcherItemContainerAccessibility *)self _axFluidSwitcher];
        _axSwitcherType2 = [_axFluidSwitcher3 _axSwitcherType];
        v10 = _axSwitcherType2[2]();

        if (v10 == 1)
        {
          _axMainSwitcher = [(SBFluidSwitcherItemContainerAccessibility *)self _axMainSwitcher];
          v12 = AXSwitcherController(@"activeDisplayWindowScene", _axMainSwitcher);

          v13 = [v12 safeValueForKey:@"windowManagementContext"];
          v14 = [v13 safeBoolForKey:@"isChamoisOrFlexibleWindowing"];

          if ((v14 & 1) == 0)
          {
            v17 = accessibilityLocalizedString(@"app.icon.reorder.hint");
            v15 = __UIAXStringForVariables();

            v3 = v15;
          }
        }
      }
    }
  }

  return v3;
}

- (id)_accessibilityPreferredScrollActions
{
  v9[2] = *MEMORY[0x29EDCA608];
  _accessibilityApplicationIsRTL = [(SBFluidSwitcherItemContainerAccessibility *)self _accessibilityApplicationIsRTL];
  if (_accessibilityApplicationIsRTL)
  {
    v3 = 2009;
  }

  else
  {
    v3 = 2008;
  }

  if (_accessibilityApplicationIsRTL)
  {
    v4 = 2008;
  }

  else
  {
    v4 = 2009;
  }

  v5 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v3];
  v9[0] = v5;
  v6 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v4];
  v9[1] = v6;
  v7 = [MEMORY[0x29EDB8D80] arrayWithObjects:v9 count:2];

  return v7;
}

- (id)_accessibilityItemContainerHeaderView
{
  v3 = [(SBFluidSwitcherItemContainerAccessibility *)self safeValueForKey:@"_delegate"];
  v4 = [v3 safeDictionaryForKey:@"visibleUnderlayAccessoryViews"];
  _axParentAppLayout = [(SBFluidSwitcherItemContainerAccessibility *)self _axParentAppLayout];
  v6 = [v4 objectForKey:_axParentAppLayout];
  v7 = [v6 safeValueForKey:@"_headerView"];

  return v7;
}

- (id)_accessibilityItemContainerFooterView
{
  v3 = [(SBFluidSwitcherItemContainerAccessibility *)self safeValueForKey:@"_delegate"];
  v4 = [v3 safeDictionaryForKey:@"visibleOverlayAccessoryViews"];
  _axParentAppLayout = [(SBFluidSwitcherItemContainerAccessibility *)self _axParentAppLayout];
  v6 = [v4 objectForKey:_axParentAppLayout];
  v7 = [v6 safeValueForKey:@"_footerView"];

  return v7;
}

- (id)_accessibilityTitleItem
{
  _axFluidSwitcher = [(SBFluidSwitcherItemContainerAccessibility *)self _axFluidSwitcher];
  if (_axFluidSwitcher)
  {
    _axFluidSwitcher2 = [(SBFluidSwitcherItemContainerAccessibility *)self _axFluidSwitcher];
    _axSwitcherType = [_axFluidSwitcher2 _axSwitcherType];

    if (_axSwitcherType)
    {
      _axFluidSwitcher3 = [(SBFluidSwitcherItemContainerAccessibility *)self _axFluidSwitcher];
      _axSwitcherType2 = [_axFluidSwitcher3 _axSwitcherType];
      if (_axSwitcherType2[2]() == 3)
      {
        [(SBFluidSwitcherItemContainerAccessibility *)self _accessibilityItemContainerFooterView];
      }

      else
      {
        [(SBFluidSwitcherItemContainerAccessibility *)self _accessibilityItemContainerHeaderView];
      }
      _axFluidSwitcher = ;
    }

    else
    {
      _axFluidSwitcher = 0;
    }
  }

  v8 = [_axFluidSwitcher safeArrayForKey:@"_titleItems"];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__6;
  v26 = __Block_byref_object_dispose__6;
  v27 = 0;
  v16 = MEMORY[0x29EDCA5F8];
  v17 = 3221225472;
  v18 = __68__SBFluidSwitcherItemContainerAccessibility__accessibilityTitleItem__block_invoke;
  v19 = &unk_29F2FBCB8;
  selfCopy = self;
  v21 = &v22;
  AXPerformSafeBlock();
  v9 = v23[5];
  _Block_object_dispose(&v22, 8);

  if (v9)
  {
    v10 = [(SBFluidSwitcherItemContainerAccessibility *)self _axAppLayout:v16];
    _axDisplayItems = [v10 _axDisplayItems];
    v12 = [_axDisplayItems containsObject:v9];

    if (v12)
    {
      lastObject = [v8 lastObject];
LABEL_13:
      v14 = lastObject;
      goto LABEL_15;
    }
  }

  if ([v8 count])
  {
    lastObject = [v8 firstObject];
    goto LABEL_13;
  }

  v14 = 0;
LABEL_15:

  return v14;
}

void __68__SBFluidSwitcherItemContainerAccessibility__accessibilityTitleItem__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _axParentAppLayout];
  v2 = [v5 itemForLayoutRole:2];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_axParentAppLayout
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = [(SBFluidSwitcherItemContainerAccessibility *)self safeValueForKey:@"_delegate"];
  v3 = [v2 safeArrayForKey:@"appLayouts"];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = *v17;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v12 = 0;
        v13 = &v12;
        v14 = 0x2020000000;
        v15 = 0;
        AXPerformSafeBlock();
        v8 = *(v13 + 24);
        _Block_object_dispose(&v12, 8);
        if (v8)
        {
          v9 = v7;
          goto LABEL_11;
        }
      }

      v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

void __63__SBFluidSwitcherItemContainerAccessibility__axParentAppLayout__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _axAppLayout];
  *(*(*(a1 + 48) + 8) + 24) = [v2 isOrContainsAppLayout:v3];
}

- (id)_accessibilityAddToCenterStateAction
{
  _axMainSwitcher = [(SBFluidSwitcherItemContainerAccessibility *)self _axMainSwitcher];
  _axIsChamoisSwitcherVisible = [_axMainSwitcher _axIsChamoisSwitcherVisible];

  if (_axIsChamoisSwitcherVisible)
  {
    objc_initWeak(&location, self);
    v5 = objc_alloc(MEMORY[0x29EDC78E0]);
    v6 = accessibilityLocalizedString(@"fluid.switcher.item.container.add.to.center.stage");
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 3221225472;
    v9[2] = __81__SBFluidSwitcherItemContainerAccessibility__accessibilityAddToCenterStateAction__block_invoke;
    v9[3] = &unk_29F2FBF70;
    objc_copyWeak(&v10, &location);
    v7 = [v5 initWithName:v6 actionHandler:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __81__SBFluidSwitcherItemContainerAccessibility__accessibilityAddToCenterStateAction__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  AXPerformSafeBlock();
  objc_destroyWeak(&v5);

  return 1;
}

void __81__SBFluidSwitcherItemContainerAccessibility__accessibilityAddToCenterStateAction__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKey:@"_delegate"];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 didSelectContainer:v3 modifierFlags:0x20000];
}

- (BOOL)_accessibilityIsShelfItemContainer
{
  _axFluidSwitcher = [(SBFluidSwitcherItemContainerAccessibility *)self _axFluidSwitcher];
  _axSwitcherType = [_axFluidSwitcher _axSwitcherType];
  v4 = _axSwitcherType[2]() == 3;

  return v4;
}

- (BOOL)_accessibilityHasMultipleWindows
{
  _accessibilityTitleItem = [(SBFluidSwitcherItemContainerAccessibility *)self _accessibilityTitleItem];
  v3 = [_accessibilityTitleItem safeBoolForKey:@"showsMultiWindowIndicator"];

  return v3;
}

- (BOOL)_accessibilityIsNewWindowContainer
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  v5 = MEMORY[0x29EDCA5F8];
  AXPerformSafeBlock();
  v2 = v8[5];
  _Block_object_dispose(&v7, 8);

  v3 = [v2 safeIntegerForKey:{@"type", v5, 3221225472, __79__SBFluidSwitcherItemContainerAccessibility__accessibilityIsNewWindowContainer__block_invoke, &unk_29F2FBCB8, self, &v7}];
  return v3 == 6;
}

void __79__SBFluidSwitcherItemContainerAccessibility__accessibilityIsNewWindowContainer__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _axAppLayout];
  v2 = [v5 itemForLayoutRole:1];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_axAppLayout
{
  objc_opt_class();
  v3 = [(SBFluidSwitcherItemContainerAccessibility *)self safeValueForKey:@"_appLayout"];
  v4 = __UIAccessibilityCastAsSafeCategory();

  return v4;
}

- (id)_axMainSwitcher
{
  objc_opt_class();
  v2 = AXSBMainSwitcherControllerCoordinatorSharedInstance();
  v3 = __UIAccessibilityCastAsSafeCategory();

  return v3;
}

- (id)_axFluidSwitcher
{
  objc_opt_class();
  v3 = [(SBFluidSwitcherItemContainerAccessibility *)self safeValueForKey:@"_delegate"];
  v4 = __UIAccessibilityCastAsSafeCategory();

  return v4;
}

- (double)_axScaleTransformForFocusLayerLineWidth
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = v2;
  if (v2)
  {
    [v2 transform3D];
    v4 = 0.0 + 0.0 + 0.0;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = 1.0 / (v4 / 3.0);

  return v5;
}

- (BOOL)canBecomeFocused
{
  v9.receiver = self;
  v9.super_class = SBFluidSwitcherItemContainerAccessibility;
  canBecomeFocused = [(SBFluidSwitcherItemContainerAccessibility *)&v9 canBecomeFocused];
  if ([(SBFluidSwitcherItemContainerAccessibility *)self _accessibilityIsFKARunningForFocusItem])
  {
    objc_opt_class();
    v4 = __UIAccessibilityCastAsClass();
    window = [v4 window];
    NSClassFromString(&cfstr_Sbmainswitcher_3.isa);
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      server = [MEMORY[0x29EDBDFA8] server];
      canBecomeFocused = [server isAppSwitcherVisible];
    }

    else
    {
      return 0;
    }
  }

  return canBecomeFocused;
}

- (id)_accessibilityNativeFocusPreferredElement
{
  objc_opt_class();
  v3 = [(SBFluidSwitcherItemContainerAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Sbfluidswitche_12.isa)];
  v4 = __UIAccessibilityCastAsSafeCategory();

  _axAppLayout = [(SBFluidSwitcherItemContainerAccessibility *)self _axAppLayout];
  v6 = [v4 _axElementForAppLayout:_axAppLayout];

  return v6;
}

@end