@interface SBFluidSwitcherContentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axScrollToAppElement:(id)element;
- (BOOL)_axSwitcherIsVisible;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (BOOL)canBecomeFocused;
- (NSArray)_axAppElements;
- (NSMutableDictionary)_axAppElementsDictionary;
- (SBFluidSwitcherViewControllerAccessibility)_axSwitcherViewController;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)_accessibilityParentForFindingScrollParent;
- (id)_axElementForAppLayout:(id)layout;
- (id)_axElements:(BOOL)elements;
- (id)_axMainSwitcher;
- (id)accessibilityElements;
- (id)automationElements;
- (int64_t)_accessibilityPageCount;
- (void)_axAddVisibleItemContainer:(id)container forAppLayout:(id)layout;
- (void)_axRemoveVisibleItemContainerForAppLayout:(id)layout;
- (void)_axSetElementsArray:(id)array dictionary:(id)dictionary;
@end

@implementation SBFluidSwitcherContentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBFluidSwitcherContentView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"NSObject" hasInstanceMethod:@"_accessibilityHasVisibleFrame" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherViewController"];
  [validationsCopy validateClass:@"SBFluidSwitcherViewController" hasInstanceVariable:@"_plusButton" withType:"SBFluidSwitcherButton"];
  [validationsCopy validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"appLayouts" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"scrollView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherViewController" hasInstanceVariable:@"_reopenClosedWindowsButton" withType:"SBFluidSwitcherTitledButton"];
  [validationsCopy validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"visibleUnderlayAccessoryViews" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherContentView" hasInstanceVariable:@"_delegate" withType:"<SBFluidSwitcherContentViewDelegate>"];
}

- (id)accessibilityElements
{
  v3 = [(SBFluidSwitcherContentViewAccessibility *)self _axElements:0];
  v4 = v3;
  if (v3)
  {
    accessibilityElements = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBFluidSwitcherContentViewAccessibility;
    accessibilityElements = [(SBFluidSwitcherContentViewAccessibility *)&v8 accessibilityElements];
  }

  v6 = accessibilityElements;

  return v6;
}

- (id)automationElements
{
  v3 = [(SBFluidSwitcherContentViewAccessibility *)self _axElements:1];
  v4 = v3;
  if (v3)
  {
    automationElements = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBFluidSwitcherContentViewAccessibility;
    automationElements = [(SBFluidSwitcherContentViewAccessibility *)&v8 automationElements];
  }

  v6 = automationElements;

  return v6;
}

- (id)_axElements:(BOOL)elements
{
  elementsCopy = elements;
  if ([(SBFluidSwitcherContentViewAccessibility *)self _axSwitcherIsVisible])
  {
    _axSwitcherViewController = [(SBFluidSwitcherContentViewAccessibility *)self _axSwitcherViewController];
    array = [MEMORY[0x29EDB8DE8] array];
    v7 = [_axSwitcherViewController safeUIViewForKey:@"_reopenClosedWindowsButton"];
    if ([v7 _accessibilityViewIsVisible])
    {
      [array axSafelyAddObject:v7];
    }

    v8 = [_axSwitcherViewController safeUIViewForKey:@"_plusButton"];
    [array axSafelyAddObject:v8];
    if (elementsCopy)
    {
      v9 = [(SBFluidSwitcherContentViewAccessibility *)self safeValueForKey:@"_delegate"];
      v10 = [v9 safeDictionaryForKey:@"visibleUnderlayAccessoryViews"];
      allValues = [v10 allValues];

      [array axSafelyAddObjectsFromArray:allValues];
    }

    _axAppElements = [(SBFluidSwitcherContentViewAccessibility *)self _axAppElements];
    if (UIAccessibilityIsSwitchControlRunning() && AXDeviceIsPhoneIdiom())
    {
      _accessibilityApplicationIsRTL = [(SBFluidSwitcherContentViewAccessibility *)self _accessibilityApplicationIsRTL];
      v19[0] = MEMORY[0x29EDCA5F8];
      v19[1] = 3221225472;
      v19[2] = __55__SBFluidSwitcherContentViewAccessibility__axElements___block_invoke;
      v19[3] = &__block_descriptor_33_e49_B24__0__SBAppSwitcherAppAccessibilityElement_8Q16l;
      v20 = _accessibilityApplicationIsRTL;
      v14 = [_axAppElements axFilterObjectsUsingBlock:v19];

      _axAppElements = v14;
    }

    _axMainSwitcher = [(SBFluidSwitcherContentViewAccessibility *)self _axMainSwitcher];
    _axIsChamoisSwitcherVisible = [_axMainSwitcher _axIsChamoisSwitcherVisible];

    if (_axIsChamoisSwitcherVisible)
    {
      _axChamoisActiveApps = [_axSwitcherViewController _axChamoisActiveApps];
      [array axSafelyAddObjectsFromArray:_axChamoisActiveApps];
    }

    [array axSafelyAddObjectsFromArray:_axAppElements];
  }

  else
  {
    array = 0;
  }

  return array;
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

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  if ([(SBFluidSwitcherContentViewAccessibility *)self _axSwitcherIsVisible])
  {
    _axSwitcherViewController = [(SBFluidSwitcherContentViewAccessibility *)self _axSwitcherViewController];
    v6 = [_axSwitcherViewController accessibilityScroll:scroll];

    return v6;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBFluidSwitcherContentViewAccessibility;
    return [(SBFluidSwitcherContentViewAccessibility *)&v8 accessibilityScroll:scroll];
  }
}

- (int64_t)_accessibilityPageCount
{
  _axAppElements = [(SBFluidSwitcherContentViewAccessibility *)self _axAppElements];
  v3 = [_axAppElements count];

  return v3;
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v35 = *MEMORY[0x29EDCA608];
  eventCopy = event;
  if (![(SBFluidSwitcherContentViewAccessibility *)self _axSwitcherIsVisible])
  {
    goto LABEL_17;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  _axAppElements = [(SBFluidSwitcherContentViewAccessibility *)self _axAppElements];
  reverseObjectEnumerator = [_axAppElements reverseObjectEnumerator];

  v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v30 objects:v34 count:16];
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
        objc_enumerationMutation(reverseObjectEnumerator);
      }

      v14 = [*(*(&v30 + 1) + 8 * i) _accessibilityHitTest:eventCopy withEvent:{x, y}];
      _axSwitcherViewController = [(SBFluidSwitcherContentViewAccessibility *)self _axSwitcherViewController];
      _axChamoisActiveApps = [_axSwitcherViewController _axChamoisActiveApps];

      _axMainSwitcher = [(SBFluidSwitcherContentViewAccessibility *)self _axMainSwitcher];
      if ([_axMainSwitcher _axIsChamoisSwitcherVisible])
      {
        v18 = [_axChamoisActiveApps count];

        if (v18 == 1)
        {
          v19 = [_axChamoisActiveApps objectAtIndex:0];
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

      v14 = _axChamoisActiveApps;
LABEL_14:
    }

    v11 = [reverseObjectEnumerator countByEnumeratingWithState:&v30 objects:v34 count:16];
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
  v14 = [(SBFluidSwitcherContentViewAccessibility *)&v29 _accessibilityHitTest:eventCopy withEvent:x, y];
LABEL_19:

  return v14;
}

- (void)_axRemoveVisibleItemContainerForAppLayout:(id)layout
{
  layoutCopy = layout;
  _axAppElementsDictionary = [(SBFluidSwitcherContentViewAccessibility *)self _axAppElementsDictionary];
  v5 = [_axAppElementsDictionary objectForKeyedSubscript:layoutCopy];

  [v5 setItemContainer:0];
}

- (void)_axAddVisibleItemContainer:(id)container forAppLayout:(id)layout
{
  layoutCopy = layout;
  containerCopy = container;
  _axAppElementsDictionary = [(SBFluidSwitcherContentViewAccessibility *)self _axAppElementsDictionary];
  v8 = [_axAppElementsDictionary objectForKeyedSubscript:layoutCopy];

  [v8 setItemContainer:containerCopy];
}

- (id)_axElementForAppLayout:(id)layout
{
  layoutCopy = layout;
  _axAppElementsDictionary = [(SBFluidSwitcherContentViewAccessibility *)self _axAppElementsDictionary];
  v6 = [_axAppElementsDictionary objectForKeyedSubscript:layoutCopy];

  return v6;
}

- (BOOL)_axScrollToAppElement:(id)element
{
  elementCopy = element;
  _axAppElements = [(SBFluidSwitcherContentViewAccessibility *)self _axAppElements];
  v6 = [_axAppElements indexOfObject:elementCopy];

  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [_axAppElements count] + ~v6;
  }

  _axSwitcherViewController = [(SBFluidSwitcherContentViewAccessibility *)self _axSwitcherViewController];
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3221225472;
  v11[2] = __65__SBFluidSwitcherContentViewAccessibility__axScrollToAppElement___block_invoke;
  v11[3] = &unk_29F2FBA40;
  v11[4] = self;
  v9 = [_axSwitcherViewController _axPerformScrollToIndex:v7 completion:v11];

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
  _axSwitcherViewController = [(SBFluidSwitcherContentViewAccessibility *)self _axSwitcherViewController];
  if (![v3 count])
  {
    [_axSwitcherViewController _axCreateAppElements];
    v5 = [(SBFluidSwitcherContentViewAccessibility *)self _accessibilityValueForKey:@"AppSwitcherElements"];

    v3 = v5;
  }

  _axMainSwitcher = [(SBFluidSwitcherContentViewAccessibility *)self _axMainSwitcher];
  if ([_axMainSwitcher _axIsChamoisSwitcherVisible])
  {
    v19 = _axMainSwitcher;
    array = [MEMORY[0x29EDB8DE8] array];
    v20 = _axSwitcherViewController;
    _axChamoisActiveAppLayouts = [_axSwitcherViewController _axChamoisActiveAppLayouts];
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
          appLayout = [v14 appLayout];
          v16 = [_axChamoisActiveAppLayouts containsObject:appLayout];

          if ((v16 & 1) == 0)
          {
            [array axSafelyAddObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    v17 = [array sortedArrayUsingSelector:sel_accessibilityCompareGeometry_];

    _axMainSwitcher = v19;
    _axSwitcherViewController = v20;
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
    _axSwitcherViewController = [(SBFluidSwitcherContentViewAccessibility *)self _axSwitcherViewController];
    [_axSwitcherViewController _axCreateAppElements];

    v5 = [(SBFluidSwitcherContentViewAccessibility *)self _accessibilityValueForKey:@"AppSwitcherElementsDictionary"];

    v3 = v5;
  }

  return v3;
}

- (void)_axSetElementsArray:(id)array dictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  [(SBFluidSwitcherContentViewAccessibility *)self _accessibilitySetRetainedValue:array forKey:@"AppSwitcherElements"];
  [(SBFluidSwitcherContentViewAccessibility *)self _accessibilitySetRetainedValue:dictionaryCopy forKey:@"AppSwitcherElementsDictionary"];
}

- (BOOL)_axSwitcherIsVisible
{
  _axSwitcherViewController = [(SBFluidSwitcherContentViewAccessibility *)self _axSwitcherViewController];
  _axIsVisible = [_axSwitcherViewController _axIsVisible];

  return _axIsVisible;
}

- (id)_accessibilityParentForFindingScrollParent
{
  _axSwitcherViewController = [(SBFluidSwitcherContentViewAccessibility *)self _axSwitcherViewController];
  v3 = [_axSwitcherViewController safeValueForKey:@"scrollView"];

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