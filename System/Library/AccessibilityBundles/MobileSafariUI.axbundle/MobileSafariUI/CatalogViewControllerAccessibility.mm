@interface CatalogViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityAnnounceNewKeyboardCompletionWithPreviousIndexPath:(id)path;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axUpdateAccessibilityElements;
- (void)completionList:(id)list topHitDidBecomeReadyForString:(id)string;
- (void)showUniversalSearchFirstTimeExperienceIfNotShowing;
- (void)unifiedField:(id)field moveCompletionSelectionByRowOffset:(int64_t)offset;
@end

@implementation CatalogViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CatalogViewController" hasInstanceMethod:@"unifiedField:moveCompletionSelectionByRowOffset:" withFullSignature:{"v", "@", "q", 0}];
  [validationsCopy validateClass:@"CatalogViewController" hasInstanceMethod:@"completionList: topHitDidBecomeReadyForString:" withFullSignature:{"v", "@", "@", 0}];
  [validationsCopy validateClass:@"CatalogViewController" hasInstanceVariable:@"_completionsViewController" withType:"CompletionListTableViewController"];
  [validationsCopy validateClass:@"CompletionListTableViewController" isKindOfClass:@"UITableViewController"];
  [validationsCopy validateClass:@"CatalogViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"CompletionListTableViewController" isKindOfClass:@"UITableViewController"];
  [validationsCopy validateClass:@"UIViewController" hasInstanceMethod:@"traitCollection" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CatalogViewController" hasInstanceMethod:@"usesPopoverStyleForFavorites" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CatalogViewController" hasInstanceMethod:@"navigationBar" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CatalogViewController" hasInstanceMethod:@"universalSearchFirstTimeExperienceViewController" withFullSignature:{"@", 0}];
  objc_opt_class();
  [validationsCopy validateClass:@"CatalogViewController" hasInstanceVariable:@"_keyboardFrame" withType:__ax_verbose_encode_with_type_encoding_group_class()];
  [validationsCopy validateClass:@"CatalogViewController" hasInstanceMethod:@"isShowingUniversalSearchFirstTimeExperience" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CatalogViewController" hasInstanceMethod:@"isShowingCompletions" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CatalogViewController" hasInstanceMethod:@"_setShowingCompletions:popoverDismissalReason:completionHandler:" withFullSignature:{"v", "B", "q", "@?", 0}];
  [validationsCopy validateClass:@"CatalogViewController" hasInstanceMethod:@"showUniversalSearchFirstTimeExperienceIfNotShowing" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"AbstractCatalogViewController" hasInstanceMethod:@"startPageViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CatalogViewController" isKindOfClass:@"AbstractCatalogViewController"];
  [validationsCopy validateClass:@"SFStartPageViewController" hasInstanceVariable:@"_navigationController" withType:"UINavigationController"];
  [validationsCopy validateClass:@"BrowserController" hasInstanceVariable:@"_scrollView" withType:"UIScrollView"];
  [validationsCopy validateClass:@"CatalogViewController" hasInstanceMethod:@"browserController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CatalogViewController" hasInstanceMethod:@"setNavigationBar:" withFullSignature:{"v", "@", 0}];
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
  traitCollection = [v3 traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  if (horizontalSizeClass == 1 && ([(CatalogViewControllerAccessibility *)self safeBoolForKey:@"usesPopoverStyleForFavorites"]& 1) == 0)
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
    view = [v8 view];

    v17 = 0;
    objc_opt_class();
    v10 = [(CatalogViewControllerAccessibility *)self safeValueForKey:@"_completionsViewController"];
    v11 = __UIAccessibilityCastAsClass();

    tableView = [v11 tableView];

    [(CatalogViewControllerAccessibility *)self safeCGRectForKey:@"_keyboardFrame"];
    [tableView _accessibilitySetVisibleContentInset:{0.0, 0.0, CGRectGetHeight(v21), 0.0}];
    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 3221225472;
    v14[2] = __68__CatalogViewControllerAccessibility__axUpdateAccessibilityElements__block_invoke_2;
    v14[3] = &unk_29F2D7A20;
    objc_copyWeak(&v16, &location);
    v13 = tableView;
    v15 = v13;
    [view _setAccessibilityElementsBlock:v14];

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

- (void)unifiedField:(id)field moveCompletionSelectionByRowOffset:(int64_t)offset
{
  fieldCopy = field;
  v7 = [(CatalogViewControllerAccessibility *)self safeValueForKey:@"_completionsViewController"];
  v8 = [v7 safeValueForKey:@"tableView"];

  indexPathForSelectedRow = [v8 indexPathForSelectedRow];
  v10.receiver = self;
  v10.super_class = CatalogViewControllerAccessibility;
  [(CatalogViewControllerAccessibility *)&v10 unifiedField:fieldCopy moveCompletionSelectionByRowOffset:offset];

  [(CatalogViewControllerAccessibility *)self _accessibilityAnnounceNewKeyboardCompletionWithPreviousIndexPath:indexPathForSelectedRow];
}

- (void)completionList:(id)list topHitDidBecomeReadyForString:(id)string
{
  v8.receiver = self;
  v8.super_class = CatalogViewControllerAccessibility;
  [(CatalogViewControllerAccessibility *)&v8 completionList:list topHitDidBecomeReadyForString:string];
  _axAnnounceTimer = [(CatalogViewControllerAccessibility *)self _axAnnounceTimer];
  [_axAnnounceTimer cancel];
  if (!_axAnnounceTimer)
  {
    v6 = objc_alloc(MEMORY[0x29EDBD6A0]);
    _axAnnounceTimer = [v6 initWithTargetSerialQueue:MEMORY[0x29EDCA578]];
    [(CatalogViewControllerAccessibility *)self _axSetAnnounceTimer:_axAnnounceTimer];
  }

  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __83__CatalogViewControllerAccessibility_completionList_topHitDidBecomeReadyForString___block_invoke;
  v7[3] = &unk_29F2D7A98;
  v7[4] = self;
  [_axAnnounceTimer afterDelay:v7 processBlock:1.0];
}

uint64_t __83__CatalogViewControllerAccessibility_completionList_topHitDidBecomeReadyForString___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _accessibilityAnnounceNewKeyboardCompletionWithPreviousIndexPath:0];
  v2 = *(a1 + 32);

  return [v2 _axSetAnnounceTimer:0];
}

- (void)_accessibilityAnnounceNewKeyboardCompletionWithPreviousIndexPath:(id)path
{
  pathCopy = path;
  v4 = [(CatalogViewControllerAccessibility *)self safeValueForKey:@"_completionsViewController"];
  v5 = [v4 safeValueForKey:@"tableView"];

  indexPathForSelectedRow = [v5 indexPathForSelectedRow];
  if ([indexPathForSelectedRow row] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(CatalogViewControllerAccessibility *)self safeValueForKey:@"_completionsViewController"];
    v8 = [v7 safeValueForKey:@"tableView"];

    indexPathForSelectedRow2 = [v8 indexPathForSelectedRow];
    v10 = [v8 cellForRowAtIndexPath:indexPathForSelectedRow2];
    section = [pathCopy section];
    v22 = v8;
    if (section == [indexPathForSelectedRow2 section])
    {
      v12 = 0;
    }

    else
    {
      v13 = [v8 headerViewForSection:{objc_msgSend(indexPathForSelectedRow2, "section")}];
      v14 = objc_alloc(MEMORY[0x29EDBD7E8]);
      accessibilityLabel = [v13 accessibilityLabel];
      v12 = [v14 initWithString:accessibilityLabel];

      [v12 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD940]];
    }

    if ([v10 isAccessibilityElement])
    {
      accessibilityLabel2 = [v10 accessibilityLabel];
    }

    else if ([v10 accessibilityElementCount] < 1)
    {
      accessibilityLabel2 = 0;
    }

    else
    {
      v17 = 0;
      v18 = 0;
      do
      {
        v21 = [v10 accessibilityElementAtIndex:v17];
        accessibilityLabel2 = __UIAXStringForVariables();

        ++v17;
        v18 = accessibilityLabel2;
      }

      while (v17 < [v10 accessibilityElementCount]);
    }

    v19 = *MEMORY[0x29EDC7EA8];
    v20 = __UIAXStringForVariables();
    UIAccessibilityPostNotification(v19, v20);
  }
}

@end