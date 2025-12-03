@interface RootNavigationControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axCurrentDayViewMode;
- (id)_axCurrentMonthViewMode;
- (id)_compactMonthDividedListSwitchBarButtonItem;
- (id)_listViewSwitchBarButtonItem;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_initializeCalendarsButton;
- (void)todayPressed;
@end

@implementation RootNavigationControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"RootNavigationController" isKindOfClass:@"UINavigationController"];
  [validationsCopy validateClass:@"RootNavigationController" hasInstanceMethod:@"todayPressed" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"RootNavigationController" hasInstanceMethod:@"_compactMonthDividedListSwitchBarButtonItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"RootNavigationController" hasInstanceMethod:@"_listViewSwitchBarButtonItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"RootNavigationController" hasInstanceMethod:@"_initializeCalendarsButton" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"RootNavigationController" hasInstanceMethod:@"calendarsBarButtonItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"RootNavigationController" hasInstanceMethod:@"model" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"RootNavigationController" hasInstanceVariable:@"_listToggleBarButtonItem" withType:"UIBarButtonItem"];
  [validationsCopy validateClass:@"RootNavigationController" hasInstanceVariable:@"_dividedMonthToggleBarButtonItem" withType:"UIBarButtonItem"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v11.receiver = self;
  v11.super_class = RootNavigationControllerAccessibility;
  [(RootNavigationControllerAccessibility *)&v11 _accessibilityLoadAccessibilityInformation];
  objc_initWeak(&location, self);
  v3 = [(RootNavigationControllerAccessibility *)self safeValueForKey:@"_listToggleBarButtonItem"];
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __83__RootNavigationControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v8[3] = &unk_29F2D2B30;
  objc_copyWeak(&v9, &location);
  [v3 setAccessibilityLabelBlock:v8];

  v4 = [(RootNavigationControllerAccessibility *)self safeValueForKey:@"_dividedMonthToggleBarButtonItem"];
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __83__RootNavigationControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v6[3] = &unk_29F2D2B30;
  objc_copyWeak(&v7, &location);
  [v4 setAccessibilityLabelBlock:v6];

  v5 = [(RootNavigationControllerAccessibility *)self safeValueForKey:@"calendarsBarButtonItem"];
  [v5 _setAccessibilityLabelBlock:&__block_literal_global_7];

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

id __83__RootNavigationControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _axCurrentDayViewMode];

  return v2;
}

id __83__RootNavigationControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _axCurrentMonthViewMode];

  return v2;
}

- (void)todayPressed
{
  v17 = *MEMORY[0x29EDCA608];
  topViewController = [(RootNavigationControllerAccessibility *)self topViewController];
  [topViewController _accessibilitySetBoolValue:1 forKey:@"_AXShouldFocusOnTodayStorageKey"];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  childViewControllers = [topViewController childViewControllers];
  v5 = [childViewControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(childViewControllers);
        }

        [*(*(&v12 + 1) + 8 * i) _accessibilitySetBoolValue:1 forKey:@"_AXShouldFocusOnTodayStorageKey"];
      }

      v6 = [childViewControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11.receiver = self;
  v11.super_class = RootNavigationControllerAccessibility;
  [(RootNavigationControllerAccessibility *)&v11 todayPressed];
  v10 = topViewController;
  v9 = topViewController;
  AXPerformBlockOnMainThreadAfterDelay();
}

void __53__RootNavigationControllerAccessibility_todayPressed__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  [*(a1 + 32) _accessibilityRemoveValueForKey:@"_AXShouldFocusOnTodayStorageKey"];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = [*(a1 + 32) childViewControllers];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) _accessibilityRemoveValueForKey:@"_AXShouldFocusOnTodayStorageKey"];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)_compactMonthDividedListSwitchBarButtonItem
{
  v5.receiver = self;
  v5.super_class = RootNavigationControllerAccessibility;
  _compactMonthDividedListSwitchBarButtonItem = [(RootNavigationControllerAccessibility *)&v5 _compactMonthDividedListSwitchBarButtonItem];
  v3 = accessibilityLocalizedString(@"list.button");
  [_compactMonthDividedListSwitchBarButtonItem setAccessibilityLabel:v3];

  return _compactMonthDividedListSwitchBarButtonItem;
}

- (id)_axCurrentDayViewMode
{
  v2 = [(RootNavigationControllerAccessibility *)self safeIntegerForKey:@"currentDayViewMode"];
  if (v2 <= 2)
  {
    v3 = accessibilityLocalizedString(off_29F2D2B70[v2]);
  }

  return v3;
}

- (id)_axCurrentMonthViewMode
{
  v2 = [(RootNavigationControllerAccessibility *)self safeValueForKey:@"model"];
  if ([v2 showMonthAsDivided])
  {
    v3 = @"dayviewmode.list";
  }

  else
  {
    mEMORY[0x29EDC0AD8] = [MEMORY[0x29EDC0AD8] sharedPreferences];
    monthViewScaleSize = [mEMORY[0x29EDC0AD8] monthViewScaleSize];

    v6 = @"monthviewmode.details";
    if (monthViewScaleSize == 2)
    {
      v6 = @"monthviewmode.stacked";
    }

    if (monthViewScaleSize == 1)
    {
      v3 = @"monthviewmode.compact";
    }

    else
    {
      v3 = v6;
    }
  }

  v7 = accessibilityLocalizedString(v3);

  return v7;
}

- (id)_listViewSwitchBarButtonItem
{
  v8.receiver = self;
  v8.super_class = RootNavigationControllerAccessibility;
  _listViewSwitchBarButtonItem = [(RootNavigationControllerAccessibility *)&v8 _listViewSwitchBarButtonItem];
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __69__RootNavigationControllerAccessibility__listViewSwitchBarButtonItem__block_invoke;
  v5[3] = &unk_29F2D2B30;
  objc_copyWeak(&v6, &location);
  [_listViewSwitchBarButtonItem _setAccessibilityLabelBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return _listViewSwitchBarButtonItem;
}

id __69__RootNavigationControllerAccessibility__listViewSwitchBarButtonItem__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _axCurrentDayViewMode];

  return v2;
}

- (void)_initializeCalendarsButton
{
  v3.receiver = self;
  v3.super_class = RootNavigationControllerAccessibility;
  [(RootNavigationControllerAccessibility *)&v3 _initializeCalendarsButton];
  [(RootNavigationControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end