@interface SBIconListPageControlAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityGoToNextPage;
- (BOOL)_accessibilityViewIsVisible;
- (BOOL)_axHasOpenFolder;
- (BOOL)_axIsControlCenter;
- (BOOL)_axIsLastPage;
- (BOOL)accessibilityActivate;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (BOOL)canBecomeFocused;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)_accessibilityScrollAncestor;
- (id)_axDelegate;
- (id)accessibilityHint;
- (id)accessibilityValue;
- (int64_t)_accessibilityCurrentPageIndex;
- (void)_axSetNewPage:(int64_t)page;
- (void)accessibilityDecrement;
@end

@implementation SBIconListPageControlAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBIconListPageControl"];
  [validationsCopy validateClass:@"SBIconListPageControl" isKindOfClass:@"UIPageControl"];
  [validationsCopy validateClass:@"SBIconListPageControl" hasInstanceVariable:@"_delegate" withType:"<SBIconListPageControlDelegate>"];
  [validationsCopy validateClass:@"SBHIconManager" hasInstanceMethod:@"hasOpenFolder" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBIconListPageControl" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"UIView" hasInstanceMethod:@"canBecomeFocused" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBFolderView"];
  [validationsCopy validateClass:@"SBFolderController"];
  [validationsCopy validateClass:@"SBFolderController" hasInstanceVariable:@"_contentView" withType:"SBFolderView"];
  [validationsCopy validateClass:@"SBIconListPageControl" hasInstanceMethod:@"actsAsButton" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBFolderView" hasInstanceMethod:@"currentPageIndex" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"SBFolderView" hasInstanceMethod:@"minimumPageIndex" withFullSignature:{"q", 0}];
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if (!UIAccessibilityIsVoiceOverRunning())
  {
    v11.receiver = self;
    v11.super_class = SBIconListPageControlAccessibility;
    selfCopy = [(SBIconListPageControlAccessibility *)&v11 _accessibilityHitTest:eventCopy withEvent:x, y];
    goto LABEL_5;
  }

  [(SBIconListPageControlAccessibility *)self bounds];
  v15 = CGRectInset(v14, 0.0, -25.0);
  v13.x = x;
  v13.y = y;
  if (CGRectContainsPoint(v15, v13))
  {
    selfCopy = self;
LABEL_5:
    v9 = selfCopy;
    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (id)_accessibilityScrollAncestor
{
  v2 = [(SBIconListPageControlAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Sbfolderview.isa)];
  v3 = [v2 safeValueForKey:@"_scrollView"];

  return v3;
}

- (BOOL)_axIsLastPage
{
  if ([(SBIconListPageControlAccessibility *)self _axIsControlCenter])
  {
    _accessibilityCurrentPageIndex = [(SBIconListPageControlAccessibility *)self _accessibilityCurrentPageIndex];
    objc_opt_class();
    v4 = __UIAccessibilityCastAsClass();
    numberOfPages = [v4 numberOfPages];
  }

  else
  {
    v4 = AXSBIconControllerSharedInstance();
    v6 = [v4 safeValueForKey:@"_accessibilityIconListIndex"];
    _accessibilityCurrentPageIndex = [v6 integerValue];

    v7 = [v4 safeValueForKey:@"_accessibilityIconListCount"];
    numberOfPages = [v7 integerValue];
  }

  return _accessibilityCurrentPageIndex + 1 >= numberOfPages;
}

- (id)_axDelegate
{
  v2 = [(SBIconListPageControlAccessibility *)self safeValueForKey:@"delegate"];
  NSClassFromString(&cfstr_Controlcenteru.isa);
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = AXSBIconControllerSharedInstance();
  }

  v4 = v3;

  return v4;
}

- (BOOL)_axIsControlCenter
{
  v2 = [(SBIconListPageControlAccessibility *)self safeValueForKey:@"delegate"];
  NSClassFromString(&cfstr_Controlcenteru.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)accessibilityActivate
{
  if (([(SBIconListPageControlAccessibility *)self safeBoolForKey:@"actsAsButton"]& 1) != 0)
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = SBIconListPageControlAccessibility;
  return [(SBIconListPageControlAccessibility *)&v4 accessibilityActivate];
}

- (BOOL)_accessibilityGoToNextPage
{
  if (![(SBIconListPageControlAccessibility *)self _axIsLastPage])
  {
    _axDelegate = [(SBIconListPageControlAccessibility *)self _axDelegate];
    if (-[SBIconListPageControlAccessibility _axIsControlCenter](self, "_axIsControlCenter") || -[SBIconListPageControlAccessibility _axHasOpenFolder](self, "_axHasOpenFolder") || ([_axDelegate _axNeedsToDismissHomeScreenTodayView] & 1) == 0)
    {
      _accessibilityCurrentPageIndex = [(SBIconListPageControlAccessibility *)self _accessibilityCurrentPageIndex];
      objc_opt_class();
      v6 = __UIAccessibilityCastAsClass();
      numberOfPages = [v6 numberOfPages];

      if (_accessibilityCurrentPageIndex >= numberOfPages)
      {

        return 0;
      }

      [(SBIconListPageControlAccessibility *)self _axSetNewPage:_accessibilityCurrentPageIndex + 1];
    }

    else
    {
      [_axDelegate _axHideTodayView];
    }

    return 1;
  }

  if ([(SBIconListPageControlAccessibility *)self _axIsControlCenter]|| [(SBIconListPageControlAccessibility *)self _axHasOpenFolder])
  {
    return 0;
  }

  v3 = AXSBIconControllerSharedInstance();
  if (![v3 _axIsShowingHomeScreenTodayView])
  {
    [v3 _axShowAppLibrary];

    return 1;
  }

  return 0;
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  if (scroll == 1)
  {
    [(SBIconListPageControlAccessibility *)self accessibilityDecrement];
    return 1;
  }

  if (scroll == 2)
  {
    [(SBIconListPageControlAccessibility *)self accessibilityIncrement];
    return 1;
  }

  return 0;
}

- (BOOL)_accessibilityViewIsVisible
{
  if (_AXSAutomationEnabled())
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = SBIconListPageControlAccessibility;
  return [(SBIconListPageControlAccessibility *)&v4 _accessibilityViewIsVisible];
}

- (void)accessibilityDecrement
{
  _accessibilityCurrentPageIndex = [(SBIconListPageControlAccessibility *)self _accessibilityCurrentPageIndex];
  v4 = _accessibilityCurrentPageIndex - 1;
  if (_accessibilityCurrentPageIndex < 1)
  {
    if (![(SBIconListPageControlAccessibility *)self _axIsControlCenter]&& ![(SBIconListPageControlAccessibility *)self _axHasOpenFolder])
    {
      v5 = AXSBIconControllerSharedInstance();
      if (([v5 _axIsShowingHomeScreenTodayView] & 1) == 0)
      {
        [v5 _axShowTodayView];
      }
    }
  }

  else
  {

    [(SBIconListPageControlAccessibility *)self _axSetNewPage:v4];
  }
}

- (id)accessibilityHint
{
  if ([(SBIconListPageControlAccessibility *)self _axHasOpenFolder])
  {
LABEL_2:
    v3 = 0;
    goto LABEL_5;
  }

  if (![(SBIconListPageControlAccessibility *)self safeBoolForKey:@"actsAsButton"])
  {
    if (![(SBIconListPageControlAccessibility *)self _axIsControlCenter]&& ![(SBIconListPageControlAccessibility *)self _accessibilityCurrentPageIndex])
    {
      v5 = AXSBIconControllerSharedInstance();
      if ([v5 _axIsShowingHomeScreenTodayView])
      {
        v6 = @"will.hide.today.view.hint";
      }

      else
      {
        v6 = @"will.show.today.view.hint";
      }

      v3 = accessibilityLocalizedString(v6);

      goto LABEL_5;
    }

    goto LABEL_2;
  }

  v3 = accessibilityLocalizedString(@"page.management.hint");
LABEL_5:

  return v3;
}

- (int64_t)_accessibilityCurrentPageIndex
{
  if (AXProcessIsCarPlay())
  {
    objc_opt_class();
    v3 = __UIAccessibilityCastAsClass();
    v4 = [v3 currentPage] + 1;
  }

  else
  {
    if ([(SBIconListPageControlAccessibility *)self _axIsControlCenter])
    {
      [(SBIconListPageControlAccessibility *)self _axDelegate];
    }

    else
    {
      AXSBCurrentFolderController();
    }
    v3 = ;
    v5 = [v3 safeIntegerForKey:@"minimumPageIndex"];
    v6 = [(SBIconListPageControlAccessibility *)self safeValueForKey:@"delegate"];
    v7 = [v6 safeIntegerForKey:@"currentPageIndex"];

    v4 = v7 - v5;
  }

  return v4;
}

- (id)accessibilityValue
{
  _accessibilityCurrentPageIndex = [(SBIconListPageControlAccessibility *)self _accessibilityCurrentPageIndex];
  LOBYTE(v12) = 0;
  objc_opt_class();
  v4 = __UIAccessibilityCastAsClass();
  numberOfPages = [v4 numberOfPages];

  v6 = numberOfPages & ~(numberOfPages >> 63);
  if ([(SBIconListPageControlAccessibility *)self _axIsControlCenter])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__4;
    v16 = __Block_byref_object_dispose__4;
    v17 = 0;
    AXPerformSafeBlock();
    v7 = v13[5];
    _Block_object_dispose(&v12, 8);

    v8 = AXControlCenterPageStatus(_accessibilityCurrentPageIndex, numberOfPages & ~(numberOfPages >> 63), v7);
  }

  else
  {
    if ([(SBIconListPageControlAccessibility *)self _axHasOpenFolder]|| AXDeviceIsPad())
    {
      ++_accessibilityCurrentPageIndex;
    }

    v9 = MEMORY[0x29EDBA0F8];
    v7 = accessibilityLocalizedString(@"springboard.page.status");
    v8 = [v9 localizedStringWithFormat:v7, _accessibilityCurrentPageIndex, v6];
  }

  v10 = v8;

  return v10;
}

void __56__SBIconListPageControlAccessibility_accessibilityValue__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _axDelegate];
  v2 = [v5 indicatorDescriptionForPageIndex:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_axSetNewPage:(int64_t)page
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x3032000000;
  v4[3] = __Block_byref_object_copy__4;
  v4[4] = __Block_byref_object_dispose__4;
  if ([(SBIconListPageControlAccessibility *)self _axIsControlCenter])
  {
    [(SBIconListPageControlAccessibility *)self _axDelegate];
  }

  else
  {
    AXSBCurrentFolderController();
  }
  v5 = ;
  AXPerformBlockOnMainThreadAfterDelay();
  _Block_object_dispose(v4, 8);
}

void __52__SBIconListPageControlAccessibility__axSetNewPage___block_invoke(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 40) setCurrentPageIndex:objc_msgSend(*(*(*(a1 + 32) + 8) + 40) animated:{"safeIntegerForKey:", @"minimumPageIndex", 1}];
  MEMORY[0x29ED38850](*MEMORY[0x29EDC7F10]);
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  v1 = *MEMORY[0x29EDC7EF0];

  UIAccessibilityPostNotification(v1, &stru_2A230FAF0);
}

- (BOOL)_axHasOpenFolder
{
  v2 = AXSBHIconManagerFromSharedIconController();
  v3 = [v2 safeBoolForKey:@"hasOpenFolder"];

  return v3;
}

- (BOOL)canBecomeFocused
{
  if ([(SBIconListPageControlAccessibility *)self _accessibilityIsFKARunningForFocusItem])
  {
    v3 = AXSBCurrentFolderController();
    v4 = [v3 safeValueForKey:@"_contentView"];
    v5 = [(SBIconListPageControlAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Sbfolderview.isa)];
    v6 = v4 == v5;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBIconListPageControlAccessibility;
    return [(SBIconListPageControlAccessibility *)&v8 canBecomeFocused];
  }

  return v6;
}

@end