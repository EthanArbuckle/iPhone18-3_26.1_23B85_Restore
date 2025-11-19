@interface CatalogViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityAnnounceNewKeyboardCompletionWithPreviousIndexPath:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axUpdateAccessibilityElements;
- (void)completionList:(id)a3 topHitDidBecomeReadyForString:(id)a4;
- (void)showUniversalSearchFirstTimeExperienceIfNotShowing;
- (void)unifiedField:(id)a3 moveCompletionSelectionByRowOffset:(int64_t)a4;
@end

@implementation CatalogViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CatalogViewController" hasInstanceMethod:@"unifiedField:moveCompletionSelectionByRowOffset:" withFullSignature:{"v", "@", "q", 0}];
  [v3 validateClass:@"CatalogViewController" hasInstanceMethod:@"completionList: topHitDidBecomeReadyForString:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"CatalogViewController" hasInstanceVariable:@"_completionsViewController" withType:"CompletionListTableViewController"];
  [v3 validateClass:@"CompletionListTableViewController" isKindOfClass:@"UITableViewController"];
  [v3 validateClass:@"CatalogViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"CompletionListTableViewController" isKindOfClass:@"UITableViewController"];
  [v3 validateClass:@"UIViewController" hasInstanceMethod:@"traitCollection" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CatalogViewController" hasInstanceMethod:@"usesPopoverStyleForFavorites" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CatalogViewController" hasInstanceMethod:@"navigationBar" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CatalogViewController" hasInstanceMethod:@"universalSearchFirstTimeExperienceViewController" withFullSignature:{"@", 0}];
  objc_opt_class();
  [v3 validateClass:@"CatalogViewController" hasInstanceVariable:@"_keyboardFrame" withType:__ax_verbose_encode_with_type_encoding_group_class()];
  [v3 validateClass:@"CatalogViewController" hasInstanceMethod:@"isShowingUniversalSearchFirstTimeExperience" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CatalogViewController" hasInstanceMethod:@"isShowingCompletions" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CatalogViewController" hasInstanceMethod:@"_setShowingCompletions:popoverDismissalReason:completionHandler:" withFullSignature:{"v", "B", "q", "@?", 0}];
  [v3 validateClass:@"CatalogViewController" hasInstanceMethod:@"showUniversalSearchFirstTimeExperienceIfNotShowing" withFullSignature:{"v", 0}];
  [v3 validateClass:@"AbstractCatalogViewController" hasInstanceMethod:@"startPageViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CatalogViewController" isKindOfClass:@"AbstractCatalogViewController"];
  [v3 validateClass:@"SFStartPageViewController" hasInstanceVariable:@"_navigationController" withType:"UINavigationController"];
  [v3 validateClass:@"BrowserController" hasInstanceVariable:@"_scrollView" withType:"UIScrollView"];
  [v3 validateClass:@"CatalogViewController" hasInstanceMethod:@"browserController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CatalogViewController" hasInstanceMethod:@"setNavigationBar:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = CatalogViewControllerAccessibility;
  [(CatalogViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(CatalogViewControllerAccessibility *)self _axUpdateAccessibilityElements];
}

- (void)_axUpdateAccessibilityElements
{
  LOBYTE(location) = 0;
  v3 = __UIAccessibilitySafeClass();
  v4 = [v3 traitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 == 1 && ([(CatalogViewControllerAccessibility *)self safeBoolForKey:@"usesPopoverStyleForFavorites"]& 1) == 0)
  {
    objc_initWeak(&location, self);
    v6 = [(CatalogViewControllerAccessibility *)self safeValueForKey:@"browserController"];
    v7 = [v6 safeUIViewForKey:@"_scrollView"];
    v18[0] = MEMORY[0x29EDCA5F8];
    v18[1] = 3221225472;
    v18[2] = __68__CatalogViewControllerAccessibility__axUpdateAccessibilityElements__block_invoke;
    v18[3] = &unk_29F2D79F8;
    objc_copyWeak(&v19, &location);
    [v7 _setAccessibilityElementsHiddenBlock:v18];

    objc_opt_class();
    v8 = __UIAccessibilityCastAsClass();
    v9 = [v8 view];

    v17 = 0;
    objc_opt_class();
    v10 = [(CatalogViewControllerAccessibility *)self safeValueForKey:@"_completionsViewController"];
    v11 = __UIAccessibilityCastAsClass();

    v12 = [v11 tableView];

    [(CatalogViewControllerAccessibility *)self safeCGRectForKey:@"_keyboardFrame"];
    [v12 _accessibilitySetVisibleContentInset:{0.0, 0.0, CGRectGetHeight(v21), 0.0}];
    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 3221225472;
    v14[2] = __68__CatalogViewControllerAccessibility__axUpdateAccessibilityElements__block_invoke_2;
    v14[3] = &unk_29F2D7A20;
    objc_copyWeak(&v16, &location);
    v13 = v12;
    v15 = v13;
    [v9 _setAccessibilityElementsBlock:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

BOOL __68__CatalogViewControllerAccessibility__axUpdateAccessibilityElements__block_invoke(uint64_t a1)
{
  if (AXDoesRequestingClientDeserveAutomation())
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = __UIAccessibilitySafeClass();

  v4 = [v3 traitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 != 1)
  {
    return 0;
  }

  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 safeBoolForKey:@"usesPopoverStyleForFavorites"];

  if (v7)
  {
    return 0;
  }

  v9 = objc_loadWeakRetained((a1 + 32));
  v10 = [v9 safeValueForKey:@"browserController"];
  v11 = [v10 safeIntegerForKey:@"favoritesState"];

  return (v11 - 1) < 2;
}

id __68__CatalogViewControllerAccessibility__axUpdateAccessibilityElements__block_invoke_2(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x29EDB8DE8]) init];
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained safeValueForKey:@"_startPageViewController"];
  v5 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v6 = [v5 safeValueForKey:@"_navigationController"];
  v7 = __UIAccessibilityCastAsClass();

  v8 = [v5 view];
  objc_opt_class();
  v9 = objc_loadWeakRetained((a1 + 40));
  v10 = [v9 safeValueForKey:@"universalSearchFirstTimeExperienceViewController"];
  v11 = __UIAccessibilityCastAsClass();

  v12 = [v11 view];

  v13 = objc_loadWeakRetained((a1 + 40));
  LOBYTE(v9) = [v13 safeBoolForKey:@"isShowingUniversalSearchFirstTimeExperience"];

  v14 = v12;
  if ((v9 & 1) == 0)
  {
    v15 = objc_loadWeakRetained((a1 + 40));
    v16 = [v15 safeBoolForKey:@"isShowingCompletions"];

    v14 = v8;
    if (v16)
    {
      v17 = [v7 navigationBar];
      [v2 axSafelyAddObject:v17];

      v14 = *(a1 + 32);
    }
  }

  [v2 axSafelyAddObject:v14];

  return v2;
}

- (void)showUniversalSearchFirstTimeExperienceIfNotShowing
{
  v3.receiver = self;
  v3.super_class = CatalogViewControllerAccessibility;
  [(CatalogViewControllerAccessibility *)&v3 showUniversalSearchFirstTimeExperienceIfNotShowing];
  [(CatalogViewControllerAccessibility *)self _axUpdateAccessibilityElements];
}

uint64_t __102__CatalogViewControllerAccessibility__setShowingCompletions_popoverDismissalReason_completionHandler___block_invoke(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return [*(result + 32) _axUpdateAccessibilityElements];
  }

  return result;
}

uint64_t __102__CatalogViewControllerAccessibility__setShowingCompletions_popoverDismissalReason_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)unifiedField:(id)a3 moveCompletionSelectionByRowOffset:(int64_t)a4
{
  v6 = a3;
  v7 = [(CatalogViewControllerAccessibility *)self safeValueForKey:@"_completionsViewController"];
  v8 = [v7 safeValueForKey:@"tableView"];

  v9 = [v8 indexPathForSelectedRow];
  v10.receiver = self;
  v10.super_class = CatalogViewControllerAccessibility;
  [(CatalogViewControllerAccessibility *)&v10 unifiedField:v6 moveCompletionSelectionByRowOffset:a4];

  [(CatalogViewControllerAccessibility *)self _accessibilityAnnounceNewKeyboardCompletionWithPreviousIndexPath:v9];
}

- (void)completionList:(id)a3 topHitDidBecomeReadyForString:(id)a4
{
  v8.receiver = self;
  v8.super_class = CatalogViewControllerAccessibility;
  [(CatalogViewControllerAccessibility *)&v8 completionList:a3 topHitDidBecomeReadyForString:a4];
  v5 = [(CatalogViewControllerAccessibility *)self _axAnnounceTimer];
  [v5 cancel];
  if (!v5)
  {
    v6 = objc_alloc(MEMORY[0x29EDBD6A0]);
    v5 = [v6 initWithTargetSerialQueue:MEMORY[0x29EDCA578]];
    [(CatalogViewControllerAccessibility *)self _axSetAnnounceTimer:v5];
  }

  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __83__CatalogViewControllerAccessibility_completionList_topHitDidBecomeReadyForString___block_invoke;
  v7[3] = &unk_29F2D7A98;
  v7[4] = self;
  [v5 afterDelay:v7 processBlock:1.0];
}

uint64_t __83__CatalogViewControllerAccessibility_completionList_topHitDidBecomeReadyForString___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _accessibilityAnnounceNewKeyboardCompletionWithPreviousIndexPath:0];
  v2 = *(a1 + 32);

  return [v2 _axSetAnnounceTimer:0];
}

- (void)_accessibilityAnnounceNewKeyboardCompletionWithPreviousIndexPath:(id)a3
{
  v23 = a3;
  v4 = [(CatalogViewControllerAccessibility *)self safeValueForKey:@"_completionsViewController"];
  v5 = [v4 safeValueForKey:@"tableView"];

  v6 = [v5 indexPathForSelectedRow];
  if ([v6 row] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(CatalogViewControllerAccessibility *)self safeValueForKey:@"_completionsViewController"];
    v8 = [v7 safeValueForKey:@"tableView"];

    v9 = [v8 indexPathForSelectedRow];
    v10 = [v8 cellForRowAtIndexPath:v9];
    v11 = [v23 section];
    v22 = v8;
    if (v11 == [v9 section])
    {
      v12 = 0;
    }

    else
    {
      v13 = [v8 headerViewForSection:{objc_msgSend(v9, "section")}];
      v14 = objc_alloc(MEMORY[0x29EDBD7E8]);
      v15 = [v13 accessibilityLabel];
      v12 = [v14 initWithString:v15];

      [v12 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD940]];
    }

    if ([v10 isAccessibilityElement])
    {
      v16 = [v10 accessibilityLabel];
    }

    else if ([v10 accessibilityElementCount] < 1)
    {
      v16 = 0;
    }

    else
    {
      v17 = 0;
      v18 = 0;
      do
      {
        v21 = [v10 accessibilityElementAtIndex:v17];
        v16 = __UIAXStringForVariables();

        ++v17;
        v18 = v16;
      }

      while (v17 < [v10 accessibilityElementCount]);
    }

    v19 = *MEMORY[0x29EDC7EA8];
    v20 = __UIAXStringForVariables();
    UIAccessibilityPostNotification(v19, v20);
  }
}

@end