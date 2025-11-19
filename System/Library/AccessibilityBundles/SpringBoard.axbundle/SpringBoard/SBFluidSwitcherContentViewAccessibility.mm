@interface SBFluidSwitcherContentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axScrollToAppElement:(id)a3;
- (BOOL)_axSwitcherIsVisible;
- (BOOL)accessibilityScroll:(int64_t)a3;
- (BOOL)canBecomeFocused;
- (NSArray)_axAppElements;
- (NSMutableDictionary)_axAppElementsDictionary;
- (SBFluidSwitcherViewControllerAccessibility)_axSwitcherViewController;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)_accessibilityParentForFindingScrollParent;
- (id)_axElementForAppLayout:(id)a3;
- (id)_axElements:(BOOL)a3;
- (id)_axMainSwitcher;
- (id)accessibilityElements;
- (id)automationElements;
- (int64_t)_accessibilityPageCount;
- (void)_axAddVisibleItemContainer:(id)a3 forAppLayout:(id)a4;
- (void)_axRemoveVisibleItemContainerForAppLayout:(id)a3;
- (void)_axSetElementsArray:(id)a3 dictionary:(id)a4;
@end

@implementation SBFluidSwitcherContentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBFluidSwitcherContentView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"NSObject" hasInstanceMethod:@"_accessibilityHasVisibleFrame" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBFluidSwitcherViewController"];
  [v3 validateClass:@"SBFluidSwitcherViewController" hasInstanceVariable:@"_plusButton" withType:"SBFluidSwitcherButton"];
  [v3 validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"appLayouts" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"scrollView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFluidSwitcherViewController" hasInstanceVariable:@"_reopenClosedWindowsButton" withType:"SBFluidSwitcherTitledButton"];
  [v3 validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"visibleUnderlayAccessoryViews" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFluidSwitcherContentView" hasInstanceVariable:@"_delegate" withType:"<SBFluidSwitcherContentViewDelegate>"];
}

- (id)accessibilityElements
{
  v3 = [(SBFluidSwitcherContentViewAccessibility *)self _axElements:0];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBFluidSwitcherContentViewAccessibility;
    v5 = [(SBFluidSwitcherContentViewAccessibility *)&v8 accessibilityElements];
  }

  v6 = v5;

  return v6;
}

- (id)automationElements
{
  v3 = [(SBFluidSwitcherContentViewAccessibility *)self _axElements:1];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBFluidSwitcherContentViewAccessibility;
    v5 = [(SBFluidSwitcherContentViewAccessibility *)&v8 automationElements];
  }

  v6 = v5;

  return v6;
}

- (id)_axElements:(BOOL)a3
{
  v3 = a3;
  if ([(SBFluidSwitcherContentViewAccessibility *)self _axSwitcherIsVisible])
  {
    v5 = [(SBFluidSwitcherContentViewAccessibility *)self _axSwitcherViewController];
    v6 = [MEMORY[0x29EDB8DE8] array];
    v7 = [v5 safeUIViewForKey:@"_reopenClosedWindowsButton"];
    if ([v7 _accessibilityViewIsVisible])
    {
      [v6 axSafelyAddObject:v7];
    }

    v8 = [v5 safeUIViewForKey:@"_plusButton"];
    [v6 axSafelyAddObject:v8];
    if (v3)
    {
      v9 = [(SBFluidSwitcherContentViewAccessibility *)self safeValueForKey:@"_delegate"];
      v10 = [v9 safeDictionaryForKey:@"visibleUnderlayAccessoryViews"];
      v11 = [v10 allValues];

      [v6 axSafelyAddObjectsFromArray:v11];
    }

    v12 = [(SBFluidSwitcherContentViewAccessibility *)self _axAppElements];
    if (UIAccessibilityIsSwitchControlRunning() && AXDeviceIsPhoneIdiom())
    {
      v13 = [(SBFluidSwitcherContentViewAccessibility *)self _accessibilityApplicationIsRTL];
      v19[0] = MEMORY[0x29EDCA5F8];
      v19[1] = 3221225472;
      v19[2] = __55__SBFluidSwitcherContentViewAccessibility__axElements___block_invoke;
      v19[3] = &__block_descriptor_33_e49_B24__0__SBAppSwitcherAppAccessibilityElement_8Q16l;
      v20 = v13;
      v14 = [v12 axFilterObjectsUsingBlock:v19];

      v12 = v14;
    }

    v15 = [(SBFluidSwitcherContentViewAccessibility *)self _axMainSwitcher];
    v16 = [v15 _axIsChamoisSwitcherVisible];

    if (v16)
    {
      v17 = [v5 _axChamoisActiveApps];
      [v6 axSafelyAddObjectsFromArray:v17];
    }

    [v6 axSafelyAddObjectsFromArray:v12];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL __55__SBFluidSwitcherContentViewAccessibility__axElements___block_invoke(uint64_t a1, void *a2)
{
  [a2 accessibilityFrame];
  v7 = v5;
  v8 = v6;
  v10 = *MEMORY[0x29EDB90E8];
  v9 = *(MEMORY[0x29EDB90E8] + 8);
  if (*(a1 + 32))
  {
    MaxX = CGRectGetMaxX(*&v3);
    v12 = [MEMORY[0x29EDC7C40] mainScreen];
    [v12 bounds];
    v13 = MaxX > CGRectGetMaxX(v16);
  }

  else
  {
    v13 = CGRectGetMinX(*&v3) < 0.0;
  }

  v14 = v7 == v10;
  if (v8 != v9)
  {
    v14 = 0;
  }

  return !v14 && !v13;
}

- (BOOL)accessibilityScroll:(int64_t)a3
{
  if ([(SBFluidSwitcherContentViewAccessibility *)self _axSwitcherIsVisible])
  {
    v5 = [(SBFluidSwitcherContentViewAccessibility *)self _axSwitcherViewController];
    v6 = [v5 accessibilityScroll:a3];

    return v6;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBFluidSwitcherContentViewAccessibility;
    return [(SBFluidSwitcherContentViewAccessibility *)&v8 accessibilityScroll:a3];
  }
}

- (int64_t)_accessibilityPageCount
{
  v2 = [(SBFluidSwitcherContentViewAccessibility *)self _axAppElements];
  v3 = [v2 count];

  return v3;
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v35 = *MEMORY[0x29EDCA608];
  v7 = a4;
  if (![(SBFluidSwitcherContentViewAccessibility *)self _axSwitcherIsVisible])
  {
    goto LABEL_17;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = [(SBFluidSwitcherContentViewAccessibility *)self _axAppElements];
  v9 = [v8 reverseObjectEnumerator];

  v10 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = v10;
  v12 = *v31;
  while (2)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v31 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = [*(*(&v30 + 1) + 8 * i) _accessibilityHitTest:v7 withEvent:{x, y}];
      v15 = [(SBFluidSwitcherContentViewAccessibility *)self _axSwitcherViewController];
      v16 = [v15 _axChamoisActiveApps];

      v17 = [(SBFluidSwitcherContentViewAccessibility *)self _axMainSwitcher];
      if ([v17 _axIsChamoisSwitcherVisible])
      {
        v18 = [v16 count];

        if (v18 == 1)
        {
          v19 = [v16 objectAtIndex:0];
          [v19 _accessibilityBounds];
          UIAccessibilityFrameForBounds();
          v21 = v20;
          v23 = v22;
          v25 = v24;
          v27 = v26;

          v38.origin.x = v21;
          v38.origin.y = v23;
          v38.size.width = v25;
          v38.size.height = v27;
          v37.x = x;
          v37.y = y;
          if (CGRectContainsPoint(v38, v37))
          {

            goto LABEL_14;
          }
        }
      }

      else
      {
      }

      if (v14)
      {

        goto LABEL_19;
      }

      v14 = v16;
LABEL_14:
    }

    v11 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_16:

LABEL_17:
  v29.receiver = self;
  v29.super_class = SBFluidSwitcherContentViewAccessibility;
  v14 = [(SBFluidSwitcherContentViewAccessibility *)&v29 _accessibilityHitTest:v7 withEvent:x, y];
LABEL_19:

  return v14;
}

- (void)_axRemoveVisibleItemContainerForAppLayout:(id)a3
{
  v4 = a3;
  v6 = [(SBFluidSwitcherContentViewAccessibility *)self _axAppElementsDictionary];
  v5 = [v6 objectForKeyedSubscript:v4];

  [v5 setItemContainer:0];
}

- (void)_axAddVisibleItemContainer:(id)a3 forAppLayout:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(SBFluidSwitcherContentViewAccessibility *)self _axAppElementsDictionary];
  v8 = [v9 objectForKeyedSubscript:v6];

  [v8 setItemContainer:v7];
}

- (id)_axElementForAppLayout:(id)a3
{
  v4 = a3;
  v5 = [(SBFluidSwitcherContentViewAccessibility *)self _axAppElementsDictionary];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (BOOL)_axScrollToAppElement:(id)a3
{
  v4 = a3;
  v5 = [(SBFluidSwitcherContentViewAccessibility *)self _axAppElements];
  v6 = [v5 indexOfObject:v4];

  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v5 count] + ~v6;
  }

  v8 = [(SBFluidSwitcherContentViewAccessibility *)self _axSwitcherViewController];
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3221225472;
  v11[2] = __65__SBFluidSwitcherContentViewAccessibility__axScrollToAppElement___block_invoke;
  v11[3] = &unk_29F2FBA40;
  v11[4] = self;
  v9 = [v8 _axPerformScrollToIndex:v7 completion:v11];

  return v9;
}

void __65__SBFluidSwitcherContentViewAccessibility__axScrollToAppElement___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _axSwitcherViewController];
  [v1 _axUpdateElementOrderingIfNecessary];
}

- (SBFluidSwitcherViewControllerAccessibility)_axSwitcherViewController
{
  v2 = [(SBFluidSwitcherContentViewAccessibility *)self _accessibilityValueForKey:@"AppSwitcherViewController"];
  objc_opt_class();
  v3 = __UIAccessibilityCastAsSafeCategory();

  return v3;
}

- (id)_axMainSwitcher
{
  objc_opt_class();
  v2 = AXSBMainSwitcherControllerCoordinatorSharedInstance();
  v3 = __UIAccessibilityCastAsSafeCategory();

  return v3;
}

- (NSArray)_axAppElements
{
  v26 = *MEMORY[0x29EDCA608];
  v3 = [(SBFluidSwitcherContentViewAccessibility *)self _accessibilityValueForKey:@"AppSwitcherElements"];
  v4 = [(SBFluidSwitcherContentViewAccessibility *)self _axSwitcherViewController];
  if (![v3 count])
  {
    [v4 _axCreateAppElements];
    v5 = [(SBFluidSwitcherContentViewAccessibility *)self _accessibilityValueForKey:@"AppSwitcherElements"];

    v3 = v5;
  }

  v6 = [(SBFluidSwitcherContentViewAccessibility *)self _axMainSwitcher];
  if ([v6 _axIsChamoisSwitcherVisible])
  {
    v19 = v6;
    v7 = [MEMORY[0x29EDB8DE8] array];
    v20 = v4;
    v8 = [v4 _axChamoisActiveAppLayouts];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v3;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = [v14 appLayout];
          v16 = [v8 containsObject:v15];

          if ((v16 & 1) == 0)
          {
            [v7 axSafelyAddObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    v17 = [v7 sortedArrayUsingSelector:sel_accessibilityCompareGeometry_];

    v6 = v19;
    v4 = v20;
  }

  else
  {
    v17 = v3;
  }

  return v17;
}

- (NSMutableDictionary)_axAppElementsDictionary
{
  v3 = [(SBFluidSwitcherContentViewAccessibility *)self _accessibilityValueForKey:@"AppSwitcherElementsDictionary"];
  if (![v3 count])
  {
    v4 = [(SBFluidSwitcherContentViewAccessibility *)self _axSwitcherViewController];
    [v4 _axCreateAppElements];

    v5 = [(SBFluidSwitcherContentViewAccessibility *)self _accessibilityValueForKey:@"AppSwitcherElementsDictionary"];

    v3 = v5;
  }

  return v3;
}

- (void)_axSetElementsArray:(id)a3 dictionary:(id)a4
{
  v6 = a4;
  [(SBFluidSwitcherContentViewAccessibility *)self _accessibilitySetRetainedValue:a3 forKey:@"AppSwitcherElements"];
  [(SBFluidSwitcherContentViewAccessibility *)self _accessibilitySetRetainedValue:v6 forKey:@"AppSwitcherElementsDictionary"];
}

- (BOOL)_axSwitcherIsVisible
{
  v2 = [(SBFluidSwitcherContentViewAccessibility *)self _axSwitcherViewController];
  v3 = [v2 _axIsVisible];

  return v3;
}

- (id)_accessibilityParentForFindingScrollParent
{
  v2 = [(SBFluidSwitcherContentViewAccessibility *)self _axSwitcherViewController];
  v3 = [v2 safeValueForKey:@"scrollView"];

  return v3;
}

- (BOOL)canBecomeFocused
{
  if (([(SBFluidSwitcherContentViewAccessibility *)self _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = SBFluidSwitcherContentViewAccessibility;
  return [(SBFluidSwitcherContentViewAccessibility *)&v4 canBecomeFocused];
}

@end