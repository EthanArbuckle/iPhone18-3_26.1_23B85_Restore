@interface SBAppSwitcherAppAccessibilityElement
- (BOOL)_accessibilityCanPerformAction:(int)a3;
- (BOOL)_accessibilityIsDescendantOfElement:(id)a3;
- (BOOL)_accessibilityIsInAppSwitcher;
- (BOOL)_accessibilityIsVisibleByCompleteHitTest;
- (BOOL)_accessibilityRetainsCustomRotorActionSetting;
- (BOOL)_accessibilityScrollToVisible;
- (BOOL)_accessibilitySetNativeFocus;
- (BOOL)_axIsAppActive;
- (BOOL)accessibilityActivate;
- (BOOL)accessibilityScroll:(int64_t)a3;
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
  v3 = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];
  v4 = __UIAccessibilityCastAsSafeCategory();

  if (v4)
  {
    [v4 _axHandlePageViewTap:0];
  }

  return v4 != 0;
}

- (BOOL)isAccessibilityElement
{
  v3 = [(SBAppSwitcherAppAccessibilityElement *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(SBAppSwitcherAppAccessibilityElement *)self delegate];
  v6 = [v5 appElementIsAccessibilityElement:self];

  return v6;
}

- (BOOL)_accessibilityRetainsCustomRotorActionSetting
{
  v2 = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];
  v3 = [v2 _accessibilityRetainsCustomRotorActionSetting];

  return v3;
}

- (id)_accessibilityBundleIdentifier
{
  v2 = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];
  v3 = [v2 _accessibilityBundleIdentifier];

  return v3;
}

- (BOOL)_accessibilityIsInAppSwitcher
{
  objc_opt_class();
  v3 = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];
  v4 = __UIAccessibilityCastAsSafeCategory();

  v5 = [v4 _accessibilityIsInAppSwitcher];
  return v5;
}

- (id)_accessibilityCustomActionGroupIdentifier
{
  v2 = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);

  return v4;
}

- (CGRect)accessibilityFrame
{
  v3 = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];

  if (v3)
  {
    v4 = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];
    [v4 accessibilityFrame];
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
  v3 = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];

  if (v3)
  {
    v4 = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];
    v5 = [v4 accessibilityLabel];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)accessibilityIdentifier
{
  v3 = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];
  v4 = [v3 accessibilityIdentifier];

  v5 = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];
  LODWORD(v3) = [v5 _accessibilityHasMultipleWindows];

  if (v3)
  {
    v6 = [v4 stringByAppendingString:@":has-multiple-windows"];

    v4 = v6;
  }

  return v4;
}

- (id)accessibilityHint
{
  v2 = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];
  v3 = [v2 accessibilityHint];

  return v3;
}

- (BOOL)_accessibilityIsVisibleByCompleteHitTest
{
  v3 = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];

  if (!v3)
  {
    return 0;
  }

  v5.receiver = self;
  v5.super_class = SBAppSwitcherAppAccessibilityElement;
  return [(SBAppSwitcherAppAccessibilityElement *)&v5 _accessibilityIsVisibleByCompleteHitTest];
}

- (id)accessibilityPath
{
  v2 = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];
  v3 = [v2 accessibilityPath];

  return v3;
}

- (id)accessibilityValue
{
  v3 = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];
  v4 = [v3 accessibilityValue];

  v5 = [(SBAppSwitcherAppAccessibilityElement *)self _axMainSwitcher];
  v6 = [v5 _axIsAppSwitcherPeeking];

  if (v6)
  {
    v7 = @"app.window.stashed";
LABEL_3:
    v12 = accessibilityLocalizedString(v7);
    v8 = __UIAXStringForVariables();

    v4 = v8;
    goto LABEL_6;
  }

  if ([(SBAppSwitcherAppAccessibilityElement *)self _axIsAppActive])
  {
    v9 = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];
    v10 = [v9 _accessibilityIsShelfItemContainer];

    if ((v10 & 1) == 0)
    {
      v7 = @"app.running.status";
      goto LABEL_3;
    }
  }

LABEL_6:

  return v4;
}

- (id)accessibilityCustomActions
{
  v3 = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];
  v4 = [v3 accessibilityCustomActions];
  v5 = [v4 mutableCopy];

  v6 = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];
  v7 = [v6 _accessibilityAddToCenterStateAction];

  if (v7)
  {
    [v5 axSafelyAddObject:v7];
  }

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];
  v3 = [v2 accessibilityTraits];

  return v3;
}

- (BOOL)accessibilityScroll:(int64_t)a3
{
  v5 = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];

  if (v5)
  {
    v6 = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];
    v7 = [v6 accessibilityScroll:a3];

    if (v7)
    {
      return 1;
    }

    else
    {
      v9 = [(SBAppSwitcherAppAccessibilityElement *)self accessibilityContainer];
      v10 = [v9 accessibilityScroll:a3];

      return v10;
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SBAppSwitcherAppAccessibilityElement;
    return [(SBAppSwitcherAppAccessibilityElement *)&v11 accessibilityScroll:a3];
  }
}

- (id)_accessibilityScrollStatus
{
  v3 = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];

  if (v3)
  {
    v4 = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];
    v5 = [v4 _accessibilityScrollStatus];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBAppSwitcherAppAccessibilityElement;
    v5 = [(SBAppSwitcherAppAccessibilityElement *)&v7 _accessibilityScrollStatus];
  }

  return v5;
}

- (BOOL)_accessibilityScrollToVisible
{
  v3 = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];

  if (v3)
  {
    v4 = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];
    v5 = [v4 _accessibilityScrollToVisible];
  }

  else
  {
    v4 = [(SBAppSwitcherAppAccessibilityElement *)self contentView];
    v5 = [v4 _axScrollToAppElement:self];
  }

  v6 = v5;

  return v6;
}

- (BOOL)_accessibilityCanPerformAction:(int)a3
{
  v3 = *&a3;
  v4 = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];
  LOBYTE(v3) = [v4 _accessibilityCanPerformAction:v3];

  return v3;
}

- (id)_accessibilityPreferredScrollActions
{
  v2 = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];
  v3 = [v2 _accessibilityPreferredScrollActions];

  return v3;
}

- (id)_accessibilityScrollAncestor
{
  v2 = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];
  v3 = [v2 _accessibilityScrollAncestor];

  return v3;
}

- (BOOL)_axIsAppActive
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = [(SBAppSwitcherAppAccessibilityElement *)self appLayout];
  v3 = [v2 _axBundleIdentifier];

  v4 = [MEMORY[0x29EDC1168] sharedInstanceIfExists];
  v5 = [v4 allProcesses];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5;
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
        v11 = [v10 bundleIdentifier];
        v12 = [v11 isEqualToString:v3];

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

  v13 = [v7 isRunning];
  return v13;
}

- (id)_axMainSwitcher
{
  objc_opt_class();
  v2 = AXSBMainSwitcherControllerCoordinatorSharedInstance();
  v3 = __UIAccessibilityCastAsSafeCategory();

  return v3;
}

- (BOOL)_accessibilityIsDescendantOfElement:(id)a3
{
  v4 = a3;
  NSClassFromString(&cfstr_Sbappswitcherp_0.isa);
  if (objc_opt_isKindOfClass() & 1) != 0 && (-[SBAppSwitcherAppAccessibilityElement itemContainer](self, "itemContainer"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v4 _accessibilityIsDescendantOfElement:v5], v5, (v6))
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBAppSwitcherAppAccessibilityElement;
    v7 = [(SBAppSwitcherAppAccessibilityElement *)&v9 _accessibilityIsDescendantOfElement:v4];
  }

  return v7;
}

- (BOOL)_accessibilitySetNativeFocus
{
  v2 = [(SBAppSwitcherAppAccessibilityElement *)self itemContainer];
  v3 = [v2 safeValueForKey:@"_pageView"];
  v4 = [v3 _accessibilitySetNativeFocus];

  return v4;
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