@interface SBIconScrollViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityCCScrollToNextPage;
- (BOOL)_accessibilityCCScrollToPreviousPage;
- (BOOL)_accessibilitySBScrollToNextPage;
- (BOOL)_accessibilitySBScrollToPreviousPage;
- (BOOL)accessibilityScroll:(int64_t)a3;
- (BOOL)accessibilityScrollUpPage;
- (BOOL)accessibilityScrollUpPageSupported;
- (BOOL)accessibilityViewIsModal;
- (id)_accessibilityCurrentFolderIconForPage:(int64_t)a3;
- (id)_accessibilityFolderContentView;
- (id)_accessibilityScrollStatus;
- (id)_accessibilityScrollStatus:(BOOL)a3;
- (id)automationElements;
- (int64_t)_accessibilityAdjustedPageIndexForPageIndex:(int64_t)a3;
- (unint64_t)_accessibilityPageActionForNextGesture:(int64_t *)a3;
- (unint64_t)_accessibilityPageActionForPreviousGesture:(int64_t *)a3;
- (void)_accessibilityActivateSpotlight;
@end

@implementation SBIconScrollViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBHIconManager" hasInstanceMethod:@"presentSpotlightFromSource:animated:completionHandler:" withFullSignature:{"B", "Q", "B", "@?", 0}];
  [v3 validateClass:@"SBHIconManager" hasInstanceMethod:@"isShowingLeadingCustomView" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBHIconManager" hasInstanceMethod:@"isShowingSpotlightOrLeadingCustomView" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBIconListView" hasInstanceMethod:@"icons" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBIconListView" hasInstanceMethod:@"iconViewForIcon:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"SBHIconManager" hasInstanceMethod:@"hasOpenFolder" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBFolderController"];
  [v3 validateClass:@"SBFolderController" hasInstanceMethod:@"setCurrentPageIndex: animated: completion:" withFullSignature:{"B", "q", "B", "@?", 0}];
  [v3 validateClass:@"SBFolderController" hasInstanceMethod:@"iconListViewAtIndex:" withFullSignature:{"@", "Q", 0}];
  [v3 validateClass:@"SBFolderController" hasInstanceMethod:@"_depth" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"SBFolderView" hasInstanceMethod:@"minimumPageIndex" withFullSignature:{"q", 0}];
  [v3 validateClass:@"SBFolderView" hasInstanceMethod:@"firstIconPageIndex" withFullSignature:{"q", 0}];
  [v3 validateClass:@"SBFolderView" hasInstanceMethod:@"pageCount" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"SBFolderView" hasInstanceMethod:@"currentPageIndex" withFullSignature:{"q", 0}];
  [v3 validateClass:@"SBRootFolderView" hasInstanceMethod:@"leadingCustomViewPageIndex" withFullSignature:{"q", 0}];
  [v3 validateClass:@"SBIconScrollView" isKindOfClass:@"BSUIScrollView"];
  [v3 validateClass:@"BSUIScrollView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBRootFolderController" isKindOfClass:@"SBFolderController"];
  [v3 validateClass:@"SBFolderController" hasInstanceMethod:@"firstIconPageIndex" withFullSignature:{"q", 0}];
  [v3 validateClass:@"SBRootFolderController" hasInstanceMethod:@"isDisplayingWidgetIntroductionOnPage:" withFullSignature:{"B", "q", 0}];
  [v3 validateClass:@"SBFolderController"];
  [v3 validateClass:@"SBFolderController" hasInstanceVariable:@"_contentView" withType:"SBFolderView"];
}

- (BOOL)accessibilityViewIsModal
{
  v2 = [(SBIconScrollViewAccessibility *)self safeValueForKeyPath:@"delegate.delegate"];
  [v2 safeIntegerForKey:@"firstIconPageIndex"];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5 = v2;
  AXPerformSafeBlock();
  v3 = *(v7 + 24);

  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __57__SBIconScrollViewAccessibility_accessibilityViewIsModal__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDisplayingWidgetIntroductionOnPage:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)_accessibilityCurrentFolderIconForPage:(int64_t)a3
{
  v3 = AXSBCurrentFolderController();
  if (v3 && (NSClassFromString(&cfstr_Sbrootfolderco_0.isa), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__7;
    v17 = __Block_byref_object_dispose__7;
    v18 = 0;
    v12 = v3;
    AXPerformSafeBlock();
    v5 = v14[5];

    _Block_object_dispose(&v13, 8);
    LOBYTE(v13) = 0;
    objc_opt_class();
    v6 = [v5 icons];
    v7 = __UIAccessibilityCastAsClass();

    if (v13 == 1)
    {
      abort();
    }

    v8 = [v7 firstObject];

    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__7;
    v17 = __Block_byref_object_dispose__7;
    v18 = 0;
    v10 = v5;
    v11 = v8;
    AXPerformSafeBlock();
    v4 = v14[5];

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __72__SBIconScrollViewAccessibility__accessibilityCurrentFolderIconForPage___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) iconListViewAtIndex:*(a1 + 48)];

  return MEMORY[0x2A1C71028]();
}

uint64_t __72__SBIconScrollViewAccessibility__accessibilityCurrentFolderIconForPage___block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) iconViewForIcon:*(a1 + 40)];

  return MEMORY[0x2A1C71028]();
}

- (id)_accessibilityScrollStatus:(BOOL)a3
{
  v3 = a3;
  v4 = AXSBIconControllerSharedInstance();
  v5 = [v4 safeValueForKey:@"_accessibilityIconListIndex"];
  v6 = [v5 intValue];

  if (v3)
  {
    v7 = [v4 safeValueForKey:@"_accessibilityIconListCount"];
    v8 = [v7 intValue] - 1;

    if (v6 < v8)
    {
      v9 = 1;
LABEL_7:
      v11 = v9 + v6;
      v12 = AXSBHIconManagerFromSharedIconController();
      v13 = [v12 safeBoolForKey:@"isShowingLeadingCustomView"];

      if (v13)
      {
        v14 = -1;
      }

      else
      {
        v14 = v11;
      }

      v10 = AXSBScrollDescriptionForCurrentPage(v14);
      goto LABEL_11;
    }
  }

  else if (v6 >= 2)
  {
    v9 = -1;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)automationElements
{
  if (AXProcessIsCarPlay())
  {
    objc_opt_class();
    v2 = __UIAccessibilityCastAsClass();
    v3 = [v2 _allSubviews];
  }

  else
  {
    v2 = AXSBCurrentFolderController();
    v4 = [v2 safeValueForKey:@"_contentView"];
    objc_opt_class();
    v5 = [v4 safeValueForKey:@"_iconListViews"];
    v3 = __UIAccessibilityCastAsClass();
  }

  return v3;
}

- (id)_accessibilityScrollStatus
{
  v2 = AXSBIconControllerSharedInstance();
  v3 = [v2 safeValueForKey:@"_accessibilityIconListIndex"];
  v4 = [v3 intValue] + 1;

  v5 = AXSBScrollDescriptionForCurrentPage(v4);

  return v5;
}

- (BOOL)accessibilityScrollUpPageSupported
{
  v2 = AXSBHIconManagerFromSharedIconController();
  v3 = [v2 safeBoolForKey:@"isShowingSpotlightOrLeadingCustomView"];

  return v3 ^ 1;
}

- (BOOL)accessibilityScrollUpPage
{
  if ([(SBIconScrollViewAccessibility *)self _axIsControlCenter])
  {
    return 0;
  }

  v3 = AXSBHIconManagerFromSharedIconController();
  v4 = [v3 safeBoolForKey:@"isShowingSpotlightOrLeadingCustomView"];

  if (v4)
  {
    return 0;
  }

  [(SBIconScrollViewAccessibility *)self _accessibilityActivateSpotlight];
  return 1;
}

- (BOOL)accessibilityScroll:(int64_t)a3
{
  if ([(SBIconScrollViewAccessibility *)self _axIsControlCenter])
  {
    if (a3 != 4)
    {
      if (a3 == 3)
      {

        return [(SBIconScrollViewAccessibility *)self _accessibilityCCScrollToPreviousPage];
      }

      return 0;
    }

    return [(SBIconScrollViewAccessibility *)self _accessibilityCCScrollToNextPage];
  }

  if (![(SBIconScrollViewAccessibility *)self _accessibilityApplicationIsRTL])
  {
    if (a3 == 2)
    {
      goto LABEL_16;
    }

    if (a3 != 1)
    {
      goto LABEL_22;
    }

LABEL_13:

    return [(SBIconScrollViewAccessibility *)self _accessibilitySBScrollToPreviousPage];
  }

  if (a3 == 2)
  {
    goto LABEL_13;
  }

  if (a3 == 1)
  {
LABEL_16:

    return [(SBIconScrollViewAccessibility *)self _accessibilitySBScrollToNextPage];
  }

LABEL_22:
  v6 = AXSBIconControllerSharedInstance();
  v7 = [v6 safeValueForKey:@"_accessibilityIconListCount"];
  v8 = [v7 integerValue];
  if (a3 != 3 || v8 != 1)
  {

    return 0;
  }

  v9 = [(SBIconScrollViewAccessibility *)self accessibilityScrollUpPageSupported];

  if (!v9)
  {
    return 0;
  }

  return [(SBIconScrollViewAccessibility *)self accessibilityScrollUpPage];
}

- (void)_accessibilityActivateSpotlight
{
  v2 = accessibilityLocalizedString(@"spotlight.visible");
  UIAccessibilitySpeakAndDoNotBeInterrupted();

  v3 = [MEMORY[0x29EDBDFA8] server];
  [v3 toggleSpotlight];
}

- (BOOL)_accessibilitySBScrollToNextPage
{
  v3 = [(SBIconScrollViewAccessibility *)self _accessibilityFolderContentView];
  v4 = [v3 safeIntegerForKey:@"currentPageIndex"];

  v8 = v4;
  v5 = [(SBIconScrollViewAccessibility *)self _accessibilityPageActionForNextGesture:&v8];
  switch(v5)
  {
    case 3uLL:
      v6 = AXSBIconControllerSharedInstance();
      [v6 _axShowAppLibrary];
      goto LABEL_7;
    case 2uLL:
      v6 = AXSBIconControllerSharedInstance();
      [v6 _axHideTodayView];
LABEL_7:

      return 1;
    case 0uLL:
      [(SBIconScrollViewAccessibility *)self _accessibilityScrollToPage:v8];
      return 1;
  }

  return 0;
}

- (BOOL)_accessibilitySBScrollToPreviousPage
{
  v3 = [(SBIconScrollViewAccessibility *)self _accessibilityFolderContentView];
  v4 = [v3 safeIntegerForKey:@"currentPageIndex"];

  v8 = v4;
  v5 = [(SBIconScrollViewAccessibility *)self _accessibilityPageActionForPreviousGesture:&v8];
  switch(v5)
  {
    case 4uLL:
      v6 = AXSBIconControllerSharedInstance();
      [v6 _axHideAppLibrary];
      goto LABEL_7;
    case 1uLL:
      v6 = AXSBIconControllerSharedInstance();
      [v6 _axShowTodayView];
LABEL_7:

      return 1;
    case 0uLL:
      [(SBIconScrollViewAccessibility *)self _accessibilityScrollToPage:v8];
      return 1;
  }

  return 0;
}

- (BOOL)_accessibilityCCScrollToNextPage
{
  v2 = [(SBIconScrollViewAccessibility *)self safeValueForKey:@"delegate"];
  v3 = [v2 safeIntegerForKey:@"minimumPageIndex"];
  v4 = [v2 safeIntegerForKey:@"currentPageIndex"] + 1 - v3;
  v5 = [v2 safeIntegerForKey:@"pageCount"];
  if (v4 < v5)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__7;
    v15 = __Block_byref_object_dispose__7;
    v16 = 0;
    v10 = v2;
    AXPerformSafeBlock();
    v6 = v12[5];

    _Block_object_dispose(&v11, 8);
    v9 = v10;
    v7 = v6;
    AXPerformSafeBlock();
  }

  return v4 < v5;
}

uint64_t __65__SBIconScrollViewAccessibility__accessibilityCCScrollToNextPage__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) indicatorDescriptionForPageIndex:*(a1 + 48)];

  return MEMORY[0x2A1C71028]();
}

void __65__SBIconScrollViewAccessibility__accessibilityCCScrollToNextPage__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 56);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __65__SBIconScrollViewAccessibility__accessibilityCCScrollToNextPage__block_invoke_3;
  v6[3] = &unk_29F3006D8;
  v9 = *(a1 + 64);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = v4;
  v8 = v5;
  [v3 setCurrentPageIndex:v2 animated:1 completion:v6];
}

void __65__SBIconScrollViewAccessibility__accessibilityCCScrollToNextPage__block_invoke_3(uint64_t a1)
{
  v2 = AXControlCenterPageStatus(*(a1 + 48), *(a1 + 56), *(a1 + 32));
  UIAccessibilitySpeakAndDoNotBeInterrupted();

  v3 = *MEMORY[0x29EDC7ED8];
  v4 = *(a1 + 40);

  UIAccessibilityPostNotification(v3, v4);
}

- (BOOL)_accessibilityCCScrollToPreviousPage
{
  v2 = [(SBIconScrollViewAccessibility *)self safeValueForKey:@"delegate"];
  [v2 safeIntegerForKey:@"minimumPageIndex"];
  v3 = [v2 safeIntegerForKey:@"currentPageIndex"] - 1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  LOBYTE(v14) = 0;
  v17 = MEMORY[0x29EDCA5F8];
  v18 = 3221225472;
  v19 = __69__SBIconScrollViewAccessibility__accessibilityCCScrollToPreviousPage__block_invoke;
  v20 = &unk_29F3004D8;
  v22 = &v11;
  v4 = v2;
  v21 = v4;
  v23 = v3;
  AXPerformSafeBlock();
  v5 = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  if (v5 == 1)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__7;
    v15 = __Block_byref_object_dispose__7;
    v16 = 0;
    v10 = v4;
    AXPerformSafeBlock();
    v6 = v12[5];

    _Block_object_dispose(&v11, 8);
    [v10 safeIntegerForKey:@"pageCount"];
    v9 = v10;
    v7 = v6;
    AXPerformSafeBlock();
  }

  return v5;
}

uint64_t __69__SBIconScrollViewAccessibility__accessibilityCCScrollToPreviousPage__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isValidPageIndex:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __69__SBIconScrollViewAccessibility__accessibilityCCScrollToPreviousPage__block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) indicatorDescriptionForPageIndex:*(a1 + 48)];

  return MEMORY[0x2A1C71028]();
}

void __69__SBIconScrollViewAccessibility__accessibilityCCScrollToPreviousPage__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 56);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __69__SBIconScrollViewAccessibility__accessibilityCCScrollToPreviousPage__block_invoke_4;
  v6[3] = &unk_29F3006D8;
  v9 = *(a1 + 64);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = v4;
  v8 = v5;
  [v3 setCurrentPageIndex:v2 animated:1 completion:v6];
}

void __69__SBIconScrollViewAccessibility__accessibilityCCScrollToPreviousPage__block_invoke_4(uint64_t a1)
{
  v2 = AXControlCenterPageStatus(*(a1 + 48), *(a1 + 56), *(a1 + 32));
  UIAccessibilitySpeakAndDoNotBeInterrupted();

  v3 = *MEMORY[0x29EDC7ED8];
  v4 = *(a1 + 40);

  UIAccessibilityPostNotification(v3, v4);
}

- (unint64_t)_accessibilityPageActionForPreviousGesture:(int64_t *)a3
{
  v5 = AXSBIconControllerSharedInstance();
  v6 = [v5 _axIsShowingAppLibrary];

  if (v6)
  {
    return 4;
  }

  v8 = [(SBIconScrollViewAccessibility *)self _accessibilityFolderContentView];
  v9 = [v8 safeIntegerForKey:@"minimumPageIndex"];

  v10 = *a3;
  v11 = *a3 - 1;
  *a3 = v11;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  AXPerformSafeBlock();
  v12 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  IsRootFolder = AXSBFolderControllerIsRootFolder();
  if (v12)
  {
    return IsRootFolder && AXDeviceIsPhone() && v11 == v9;
  }

  if (IsRootFolder && AXDeviceIsPad() && v10 <= v9)
  {
    return 1;
  }

  return 5;
}

void __76__SBIconScrollViewAccessibility__accessibilityPageActionForPreviousGesture___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _accessibilityFolderContentView];
  *(*(*(a1 + 40) + 8) + 24) = [v2 _isValidPageIndex:*(a1 + 48)];
}

- (unint64_t)_accessibilityPageActionForNextGesture:(int64_t *)a3
{
  v5 = AXSBIconControllerSharedInstance();
  v6 = [v5 _axNeedsToDismissHomeScreenTodayView];

  if (v6)
  {
    return 2;
  }

  v8 = *a3 + 1;
  *a3 = v8;
  v9 = AXSBIconControllerSharedInstance();
  v10 = [v9 safeIntegerForKey:@"_accessibilityIconListCount"];

  v11 = [(SBIconScrollViewAccessibility *)self _accessibilityFolderContentView];
  v12 = [v11 safeIntegerForKey:@"minimumPageIndex"];

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  AXPerformSafeBlock();
  v13 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  if ((v13 & 1) == 0)
  {
    return 5;
  }

  if (AXSBFolderControllerIsRootFolder())
  {
    v14 = v8 - v12;
    if (AXDeviceIsPhone())
    {
      if (v14 > v10)
      {
        return 3;
      }
    }

    if (AXDeviceIsPad() && v14 == v10)
    {
      return 3;
    }
  }

  return 0;
}

void __72__SBIconScrollViewAccessibility__accessibilityPageActionForNextGesture___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _accessibilityFolderContentView];
  *(*(*(a1 + 40) + 8) + 24) = [v2 _isValidPageIndex:*(a1 + 48)];
}

- (int64_t)_accessibilityAdjustedPageIndexForPageIndex:(int64_t)a3
{
  if ((AXDeviceIsPad() & 1) != 0 || !AXSBFolderControllerIsRootFolder())
  {
    ++a3;
  }

  return a3;
}

- (id)_accessibilityFolderContentView
{
  v2 = AXSBCurrentFolderController();
  v3 = [v2 safeValueForKey:@"_contentView"];

  return v3;
}

void __60__SBIconScrollViewAccessibility__accessibilityScrollToPage___block_invoke(uint64_t a1)
{
  v2 = AXSBCurrentFolderController();
  v3 = MEMORY[0x29EDCA5F8];
  v4 = 3221225472;
  v5 = __60__SBIconScrollViewAccessibility__accessibilityScrollToPage___block_invoke_2;
  v6 = &unk_29F300728;
  [v2 setCurrentPageIndex:MEMORY[0x29EDCA5F8] animated:3221225472 completion:{__60__SBIconScrollViewAccessibility__accessibilityScrollToPage___block_invoke_2, &unk_29F300728, *(a1 + 32), *(a1 + 40)}];
}

void __60__SBIconScrollViewAccessibility__accessibilityScrollToPage___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _accessibilityFolderContentView];
  v3 = [v2 safeIntegerForKey:@"minimumPageIndex"];

  v4 = AXSBScrollDescriptionForCurrentPage([*(a1 + 32) _accessibilityAdjustedPageIndexForPageIndex:*(a1 + 40)] - v3);
  UIAccessibilitySpeakAndDoNotBeInterrupted();

  LODWORD(v4) = *MEMORY[0x29EDC7F10];
  v5 = [*(a1 + 32) _accessibilityCurrentFolderIconForPage:*(a1 + 40)];
  UIAccessibilityPostNotification(v4, v5);

  v6 = *MEMORY[0x29EDC7ED8];
  v7 = *MEMORY[0x29EDBDAE8];

  UIAccessibilityPostNotification(v6, v7);
}

@end