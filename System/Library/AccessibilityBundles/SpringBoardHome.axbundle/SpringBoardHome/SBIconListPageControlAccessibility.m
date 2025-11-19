@interface SBIconListPageControlAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityGoToNextPage;
- (BOOL)_accessibilityViewIsVisible;
- (BOOL)_axHasOpenFolder;
- (BOOL)_axIsControlCenter;
- (BOOL)_axIsLastPage;
- (BOOL)accessibilityActivate;
- (BOOL)accessibilityScroll:(int64_t)a3;
- (BOOL)canBecomeFocused;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)_accessibilityScrollAncestor;
- (id)_axDelegate;
- (id)accessibilityHint;
- (id)accessibilityValue;
- (int64_t)_accessibilityCurrentPageIndex;
- (void)_axSetNewPage:(int64_t)a3;
- (void)accessibilityDecrement;
@end

@implementation SBIconListPageControlAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBIconListPageControl"];
  [v3 validateClass:@"SBIconListPageControl" isKindOfClass:@"UIPageControl"];
  [v3 validateClass:@"SBIconListPageControl" hasInstanceVariable:@"_delegate" withType:"<SBIconListPageControlDelegate>"];
  [v3 validateClass:@"SBHIconManager" hasInstanceMethod:@"hasOpenFolder" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBIconListPageControl" isKindOfClass:@"UIView"];
  [v3 validateClass:@"UIView" hasInstanceMethod:@"canBecomeFocused" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBFolderView"];
  [v3 validateClass:@"SBFolderController"];
  [v3 validateClass:@"SBFolderController" hasInstanceVariable:@"_contentView" withType:"SBFolderView"];
  [v3 validateClass:@"SBIconListPageControl" hasInstanceMethod:@"actsAsButton" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBFolderView" hasInstanceMethod:@"currentPageIndex" withFullSignature:{"q", 0}];
  [v3 validateClass:@"SBFolderView" hasInstanceMethod:@"minimumPageIndex" withFullSignature:{"q", 0}];
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if (!UIAccessibilityIsVoiceOverRunning())
  {
    v11.receiver = self;
    v11.super_class = SBIconListPageControlAccessibility;
    v8 = [(SBIconListPageControlAccessibility *)&v11 _accessibilityHitTest:v7 withEvent:x, y];
    goto LABEL_5;
  }

  [(SBIconListPageControlAccessibility *)self bounds];
  v15 = CGRectInset(v14, 0.0, -25.0);
  v13.x = x;
  v13.y = y;
  if (CGRectContainsPoint(v15, v13))
  {
    v8 = self;
LABEL_5:
    v9 = v8;
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
    v3 = [(SBIconListPageControlAccessibility *)self _accessibilityCurrentPageIndex];
    objc_opt_class();
    v4 = __UIAccessibilityCastAsClass();
    v5 = [v4 numberOfPages];
  }

  else
  {
    v4 = AXSBIconControllerSharedInstance();
    v6 = [v4 safeValueForKey:@"_accessibilityIconListIndex"];
    v3 = [v6 integerValue];

    v7 = [v4 safeValueForKey:@"_accessibilityIconListCount"];
    v5 = [v7 integerValue];
  }

  return v3 + 1 >= v5;
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
    v4 = [(SBIconListPageControlAccessibility *)self _axDelegate];
    if (-[SBIconListPageControlAccessibility _axIsControlCenter](self, "_axIsControlCenter") || -[SBIconListPageControlAccessibility _axHasOpenFolder](self, "_axHasOpenFolder") || ([v4 _axNeedsToDismissHomeScreenTodayView] & 1) == 0)
    {
      v5 = [(SBIconListPageControlAccessibility *)self _accessibilityCurrentPageIndex];
      objc_opt_class();
      v6 = __UIAccessibilityCastAsClass();
      v7 = [v6 numberOfPages];

      if (v5 >= v7)
      {

        return 0;
      }

      [(SBIconListPageControlAccessibility *)self _axSetNewPage:v5 + 1];
    }

    else
    {
      [v4 _axHideTodayView];
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

- (BOOL)accessibilityScroll:(int64_t)a3
{
  if (a3 == 1)
  {
    [(SBIconListPageControlAccessibility *)self accessibilityDecrement];
    return 1;
  }

  if (a3 == 2)
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
  v3 = [(SBIconListPageControlAccessibility *)self _accessibilityCurrentPageIndex];
  v4 = v3 - 1;
  if (v3 < 1)
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
  v3 = [(SBIconListPageControlAccessibility *)self _accessibilityCurrentPageIndex];
  LOBYTE(v12) = 0;
  objc_opt_class();
  v4 = __UIAccessibilityCastAsClass();
  v5 = [v4 numberOfPages];

  v6 = v5 & ~(v5 >> 63);
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

    v8 = AXControlCenterPageStatus(v3, v5 & ~(v5 >> 63), v7);
  }

  else
  {
    if ([(SBIconListPageControlAccessibility *)self _axHasOpenFolder]|| AXDeviceIsPad())
    {
      ++v3;
    }

    v9 = MEMORY[0x29EDBA0F8];
    v7 = accessibilityLocalizedString(@"springboard.page.status");
    v8 = [v9 localizedStringWithFormat:v7, v3, v6];
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

- (void)_axSetNewPage:(int64_t)a3
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