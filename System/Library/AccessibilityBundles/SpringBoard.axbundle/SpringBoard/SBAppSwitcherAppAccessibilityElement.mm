@interface SBAppSwitcherAppAccessibilityElement
- (BOOL)_accessibilityCanPerformAction:(int)action;
- (BOOL)_accessibilityIsDescendantOfElement:(id)element;
- (BOOL)_accessibilityIsInAppSwitcher;
- (BOOL)_accessibilityIsVisibleByCompleteHitTest;
- (BOOL)_accessibilityRetainsCustomRotorActionSetting;
- (BOOL)_accessibilityScrollToVisible;
- (BOOL)_accessibilitySetNativeFocus;
- (BOOL)_axIsAppActive;
- (BOOL)accessibilityActivate;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (BOOL)isAccessibilityElement;
- (CGRect)accessibilityFrame;
- (SBAppSwticherAppAccessibilityElementDelegate)delegate;
- (SBFluidSwitcherContentViewAccessibility)contentView;
- (SBFluidSwitcherItemContainerAccessibility)itemContainer;
- (id)_accessibilityBundleIdentifier;
- (id)_accessibilityCustomActionGroupIdentifier;
- (id)_accessibilityPreferredScrollActions;
- (id)_accessibilityScrollAncestor;
- (id)_accessibilityScrollStatus;
- (id)_axMainSwitcher;
- (id)accessibilityCustomActions;
- (id)accessibilityHint;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (id)accessibilityPath;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation SBAppSwitcherAppAccessibilityElement

- (BOOL)accessibilityActivate
{
  objc_opt_class();
  itemContainer = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];
  v4 = __UIAccessibilityCastAsSafeCategory();

  if (v4)
  {
    [v4 _axHandlePageViewTap:0];
  }

  return v4 != 0;
}

- (BOOL)isAccessibilityElement
{
  delegate = [(SBAppSwitcherAppAccessibilityElement *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  delegate2 = [(SBAppSwitcherAppAccessibilityElement *)self delegate];
  v6 = [delegate2 appElementIsAccessibilityElement:self];

  return v6;
}

- (BOOL)_accessibilityRetainsCustomRotorActionSetting
{
  itemContainer = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];
  _accessibilityRetainsCustomRotorActionSetting = [itemContainer _accessibilityRetainsCustomRotorActionSetting];

  return _accessibilityRetainsCustomRotorActionSetting;
}

- (id)_accessibilityBundleIdentifier
{
  itemContainer = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];
  _accessibilityBundleIdentifier = [itemContainer _accessibilityBundleIdentifier];

  return _accessibilityBundleIdentifier;
}

- (BOOL)_accessibilityIsInAppSwitcher
{
  objc_opt_class();
  itemContainer = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];
  v4 = __UIAccessibilityCastAsSafeCategory();

  _accessibilityIsInAppSwitcher = [v4 _accessibilityIsInAppSwitcher];
  return _accessibilityIsInAppSwitcher;
}

- (id)_accessibilityCustomActionGroupIdentifier
{
  itemContainer = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);

  return v4;
}

- (CGRect)accessibilityFrame
{
  itemContainer = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];

  if (itemContainer)
  {
    itemContainer2 = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];
    [itemContainer2 accessibilityFrame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v10 = 10.0;
    *&v6 = -100.0;
    *&v8 = -100.0;
    v12 = 10.0;
  }

  v13 = *&v6;
  v14 = *&v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (id)accessibilityLabel
{
  itemContainer = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];

  if (itemContainer)
  {
    itemContainer2 = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];
    accessibilityLabel = [itemContainer2 accessibilityLabel];
  }

  else
  {
    accessibilityLabel = 0;
  }

  return accessibilityLabel;
}

- (id)accessibilityIdentifier
{
  itemContainer = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];
  accessibilityIdentifier = [itemContainer accessibilityIdentifier];

  itemContainer2 = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];
  LODWORD(itemContainer) = [itemContainer2 _accessibilityHasMultipleWindows];

  if (itemContainer)
  {
    v6 = [accessibilityIdentifier stringByAppendingString:@":has-multiple-windows"];

    accessibilityIdentifier = v6;
  }

  return accessibilityIdentifier;
}

- (id)accessibilityHint
{
  itemContainer = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];
  accessibilityHint = [itemContainer accessibilityHint];

  return accessibilityHint;
}

- (BOOL)_accessibilityIsVisibleByCompleteHitTest
{
  itemContainer = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];

  if (!itemContainer)
  {
    return 0;
  }

  v5.receiver = self;
  v5.super_class = SBAppSwitcherAppAccessibilityElement;
  return [(SBAppSwitcherAppAccessibilityElement *)&v5 _accessibilityIsVisibleByCompleteHitTest];
}

- (id)accessibilityPath
{
  itemContainer = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];
  accessibilityPath = [itemContainer accessibilityPath];

  return accessibilityPath;
}

- (id)accessibilityValue
{
  itemContainer = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];
  accessibilityValue = [itemContainer accessibilityValue];

  _axMainSwitcher = [(SBAppSwitcherAppAccessibilityElement *)self _axMainSwitcher];
  _axIsAppSwitcherPeeking = [_axMainSwitcher _axIsAppSwitcherPeeking];

  if (_axIsAppSwitcherPeeking)
  {
    v7 = @"app.window.stashed";
LABEL_3:
    v12 = accessibilityLocalizedString(v7);
    v8 = __UIAXStringForVariables();

    accessibilityValue = v8;
    goto LABEL_6;
  }

  if ([(SBAppSwitcherAppAccessibilityElement *)self _axIsAppActive])
  {
    itemContainer2 = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];
    _accessibilityIsShelfItemContainer = [itemContainer2 _accessibilityIsShelfItemContainer];

    if ((_accessibilityIsShelfItemContainer & 1) == 0)
    {
      v7 = @"app.running.status";
      goto LABEL_3;
    }
  }

LABEL_6:

  return accessibilityValue;
}

- (id)accessibilityCustomActions
{
  itemContainer = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];
  accessibilityCustomActions = [itemContainer accessibilityCustomActions];
  v5 = [accessibilityCustomActions mutableCopy];

  itemContainer2 = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];
  _accessibilityAddToCenterStateAction = [itemContainer2 _accessibilityAddToCenterStateAction];

  if (_accessibilityAddToCenterStateAction)
  {
    [v5 axSafelyAddObject:_accessibilityAddToCenterStateAction];
  }

  return v5;
}

- (unint64_t)accessibilityTraits
{
  itemContainer = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];
  accessibilityTraits = [itemContainer accessibilityTraits];

  return accessibilityTraits;
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  itemContainer = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];

  if (itemContainer)
  {
    itemContainer2 = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];
    v7 = [itemContainer2 accessibilityScroll:scroll];

    if (v7)
    {
      return 1;
    }

    else
    {
      accessibilityContainer = [(SBAppSwitcherAppAccessibilityElement *)self accessibilityContainer];
      v10 = [accessibilityContainer accessibilityScroll:scroll];

      return v10;
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SBAppSwitcherAppAccessibilityElement;
    return [(SBAppSwitcherAppAccessibilityElement *)&v11 accessibilityScroll:scroll];
  }
}

- (id)_accessibilityScrollStatus
{
  itemContainer = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];

  if (itemContainer)
  {
    itemContainer2 = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];
    _accessibilityScrollStatus = [itemContainer2 _accessibilityScrollStatus];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBAppSwitcherAppAccessibilityElement;
    _accessibilityScrollStatus = [(SBAppSwitcherAppAccessibilityElement *)&v7 _accessibilityScrollStatus];
  }

  return _accessibilityScrollStatus;
}

- (BOOL)_accessibilityScrollToVisible
{
  itemContainer = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];

  if (itemContainer)
  {
    itemContainer2 = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];
    _accessibilityScrollToVisible = [itemContainer2 _accessibilityScrollToVisible];
  }

  else
  {
    itemContainer2 = [(SBAppSwitcherAppAccessibilityElement *)self contentView];
    _accessibilityScrollToVisible = [itemContainer2 _axScrollToAppElement:self];
  }

  v6 = _accessibilityScrollToVisible;

  return v6;
}

- (BOOL)_accessibilityCanPerformAction:(int)action
{
  v3 = *&action;
  itemContainer = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];
  LOBYTE(v3) = [itemContainer _accessibilityCanPerformAction:v3];

  return v3;
}

- (id)_accessibilityPreferredScrollActions
{
  itemContainer = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];
  _accessibilityPreferredScrollActions = [itemContainer _accessibilityPreferredScrollActions];

  return _accessibilityPreferredScrollActions;
}

- (id)_accessibilityScrollAncestor
{
  itemContainer = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];
  _accessibilityScrollAncestor = [itemContainer _accessibilityScrollAncestor];

  return _accessibilityScrollAncestor;
}

- (BOOL)_axIsAppActive
{
  v20 = *MEMORY[0x29EDCA608];
  appLayout = [(SBAppSwitcherAppAccessibilityElement *)self appLayout];
  _axBundleIdentifier = [appLayout _axBundleIdentifier];

  mEMORY[0x29EDC1168] = [MEMORY[0x29EDC1168] sharedInstanceIfExists];
  allProcesses = [mEMORY[0x29EDC1168] allProcesses];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = allProcesses;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        bundleIdentifier = [v10 bundleIdentifier];
        v12 = [bundleIdentifier isEqualToString:_axBundleIdentifier];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  isRunning = [v7 isRunning];
  return isRunning;
}

- (id)_axMainSwitcher
{
  objc_opt_class();
  v2 = AXSBMainSwitcherControllerCoordinatorSharedInstance();
  v3 = __UIAccessibilityCastAsSafeCategory();

  return v3;
}

- (BOOL)_accessibilityIsDescendantOfElement:(id)element
{
  elementCopy = element;
  NSClassFromString(&cfstr_Sbappswitcherp_0.isa);
  if (objc_opt_isKindOfClass() & 1) != 0 && (-[SBAppSwitcherAppAccessibilityElement itemContainer](self, "itemContainer"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [elementCopy _accessibilityIsDescendantOfElement:v5], v5, (v6))
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBAppSwitcherAppAccessibilityElement;
    v7 = [(SBAppSwitcherAppAccessibilityElement *)&v9 _accessibilityIsDescendantOfElement:elementCopy];
  }

  return v7;
}

- (BOOL)_accessibilitySetNativeFocus
{
  itemContainer = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];
  v3 = [itemContainer safeValueForKey:@"_pageView"];
  _accessibilitySetNativeFocus = [v3 _accessibilitySetNativeFocus];

  return _accessibilitySetNativeFocus;
}

- (SBFluidSwitcherItemContainerAccessibility)itemContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_itemContainer);

  return WeakRetained;
}

- (SBFluidSwitcherContentViewAccessibility)contentView
{
  WeakRetained = objc_loadWeakRetained(&self->_contentView);

  return WeakRetained;
}

- (SBAppSwticherAppAccessibilityElementDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end