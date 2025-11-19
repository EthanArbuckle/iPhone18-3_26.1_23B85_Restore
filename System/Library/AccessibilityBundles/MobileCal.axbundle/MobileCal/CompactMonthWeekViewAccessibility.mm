@interface CompactMonthWeekViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axShowsMonthHeader;
- (BOOL)accessibilityElementsHidden;
- (id)_accessibilityMonthViewController;
- (id)_axDate;
- (id)accessibilityElements;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnotateDayNumbers;
- (void)_axAnnotateMonthHeader;
- (void)_initializeDays;
- (void)_initializeMonthNameLabel;
- (void)_reloadMonthNameLabel;
- (void)dealloc;
- (void)setCalendarDate:(id)a3;
- (void)setCompressedVerticalMode:(BOOL)a3;
@end

@implementation CompactMonthWeekViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CompactMonthWeekView" hasInstanceVariable:@"_monthNameLabel" withType:"UILabel"];
  [v3 validateClass:@"CompactMonthWeekView" hasInstanceVariable:@"_days" withType:"NSArray"];
  [v3 validateClass:@"CompactMonthWeekView" hasInstanceVariable:@"_startCalendarDate" withType:"EKCalendarDate"];
  [v3 validateClass:@"InfiniteScrollViewController" hasInstanceVariable:@"_model" withType:"CUIKCalendarModel"];
  [v3 validateClass:@"CompactMonthWeekView" hasInstanceVariable:@"_weekNumberLabel" withType:"UILabel"];
  [v3 validateClass:@"CompactMonthWeekView" hasInstanceVariable:@"_containsFirstDayOfMonth" withType:"B"];
  [v3 validateClass:@"CompactMonthWeekView" hasInstanceVariable:@"_compressedVerticalMode" withType:"B"];
  [v3 validateClass:@"CompactWidthMonthViewController" hasInstanceVariable:@"_dividedListMode" withType:"B"];
  [v3 validateClass:@"CompactMonthWeekView" hasInstanceVariable:@"_showWeekNumber" withType:"B"];
  [v3 validateClass:@"CompactMonthWeekView" hasInstanceVariable:@"_containsToday" withType:"B"];
  [v3 validateClass:@"CompactMonthWeekView" hasInstanceMethod:@"setCalendarDate:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"CompactMonthWeekView" hasInstanceMethod:@"_initializeMonthNameLabel" withFullSignature:{"v", 0}];
  [v3 validateClass:@"CompactMonthWeekView" hasInstanceMethod:@"_initializeDays" withFullSignature:{"v", 0}];
  [v3 validateClass:@"CompactMonthWeekView" hasInstanceMethod:@"_reloadMonthNameLabel" withFullSignature:{"v", 0}];
  [v3 validateClass:@"CompactMonthWeekView" hasInstanceMethod:@"setCompressedVerticalMode:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"CUIKCalendarModel" hasInstanceMethod:@"selectedDate" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = CompactMonthWeekViewAccessibility;
  [(CompactMonthWeekViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(CompactMonthWeekViewAccessibility *)self _axAnnotateMonthHeader];
  [(CompactMonthWeekViewAccessibility *)self _axAnnotateDayNumbers];
}

- (id)_axDate
{
  v2 = [(CompactMonthWeekViewAccessibility *)self safeValueForKey:@"_startCalendarDate"];
  v3 = [v2 safeValueForKey:@"date"];

  return v3;
}

- (BOOL)_axShowsMonthHeader
{
  v3 = [(CompactMonthWeekViewAccessibility *)self safeBoolForKey:@"_containsFirstDayOfMonth"];
  if (v3)
  {
    LOBYTE(v3) = [(CompactMonthWeekViewAccessibility *)self safeBoolForKey:@"_compressedVerticalMode"]^ 1;
  }

  return v3;
}

- (void)_axAnnotateMonthHeader
{
  if ([(CompactMonthWeekViewAccessibility *)self _axShowsMonthHeader])
  {
    v3 = [(CompactMonthWeekViewAccessibility *)self _axMonthHeader];
    v4 = [(CompactMonthWeekViewAccessibility *)self _axDate];
    v5 = MEMORY[0x29C2DF2A0]();
    [v3 setAccessibilityLabel:v5];

    v6 = MEMORY[0x29EDB8D80];
    objc_opt_class();
    v7 = [(CompactMonthWeekViewAccessibility *)self safeValueForKey:@"_startCalendarDate"];
    v8 = __UIAccessibilityCastAsClass();

    v9 = MEMORY[0x29C2DF290]([v8 month]);
    objc_opt_class();
    v10 = [(CompactMonthWeekViewAccessibility *)self _axMonthHeader];
    v11 = __UIAccessibilityCastAsClass();

    v12 = [v11 text];
    v13 = [v6 axArrayByIgnoringNilElementsWithCount:{2, v9, v12}];
    [v3 setAccessibilityUserInputLabels:v13];

    v14 = [v3 accessibilityTraits];
    [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F80] | v14];
    [v3 _accessibilitySetIsSpeakThisElement:0];
  }
}

- (void)_axAnnotateDayNumbers
{
  v13 = *MEMORY[0x29EDCA608];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(CompactMonthWeekViewAccessibility *)self safeValueForKey:@"_days", 0];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) setAccessibilityContainer:self];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)accessibilityElements
{
  v29 = *MEMORY[0x29EDCA608];
  v3 = MEMORY[0x29EDC7620];
  v4 = [(CompactMonthWeekViewAccessibility *)self _accessibilityValueForKey:*MEMORY[0x29EDC7620]];
  if (!v4)
  {
    v5 = [(CompactMonthWeekViewAccessibility *)self safeValueForKey:@"_days"];
    v6 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:{objc_msgSend(v5, "count") + 1}];
    [(CompactMonthWeekViewAccessibility *)self _accessibilitySetRetainedValue:v6 forKey:*v3];
    if ([(CompactMonthWeekViewAccessibility *)self _axShowsMonthHeader])
    {
      v7 = [(CompactMonthWeekViewAccessibility *)self _axMonthHeader];
      [v6 addObject:v7];
    }

    if ([(CompactMonthWeekViewAccessibility *)self _axShowsWeekNumber])
    {
      v27 = 0;
      v8 = [(CompactMonthWeekViewAccessibility *)self _axWeekNumber];
      v9 = __UIAccessibilitySafeClass();

      v10 = [(CompactMonthWeekViewAccessibility *)self _axContainsToday];
      v11 = MEMORY[0x29EDBA0F8];
      if (v10)
      {
        v12 = @"currentweek.number";
      }

      else
      {
        v12 = @"week.number";
      }

      v13 = accessibilityLocalizedString(v12);
      v14 = [v9 text];
      v15 = [v11 stringWithFormat:v13, v14];

      [v9 setAccessibilityLabel:v15];
      [v6 axSafelyAddObject:v9];
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v16 = v5;
    v17 = [v16 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v24;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v24 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v23 + 1) + 8 * i);
          if ([v21 isAccessibilityElement])
          {
            [v6 addObject:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v18);
    }
  }

  return v4;
}

- (BOOL)accessibilityElementsHidden
{
  v3 = [(CompactMonthWeekViewAccessibility *)self _accessibilityMonthViewController];
  if ([v3 safeBoolForKey:@"_dividedListMode"])
  {
    v4 = [v3 safeValueForKey:@"_model"];
    v5 = [v4 safeValueForKey:@"selectedDate"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(CompactMonthWeekViewAccessibility *)self safeValueForKey:@"_startCalendarDate"];
      v7 = [v5 month];
      v8 = v7 != [v6 month];
    }

    else
    {
      _AXAssert();
      v8 = 0;
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CompactMonthWeekViewAccessibility;
    v8 = [(CompactMonthWeekViewAccessibility *)&v10 accessibilityElementsHidden];
  }

  return v8;
}

- (void)dealloc
{
  v14 = *MEMORY[0x29EDCA608];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(CompactMonthWeekViewAccessibility *)self safeValueForKey:@"_days"];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) setAccessibilityContainer:0];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = CompactMonthWeekViewAccessibility;
  [(CompactMonthWeekViewAccessibility *)&v8 dealloc];
}

- (void)_initializeMonthNameLabel
{
  v3.receiver = self;
  v3.super_class = CompactMonthWeekViewAccessibility;
  [(CompactMonthWeekViewAccessibility *)&v3 _initializeMonthNameLabel];
  [(CompactMonthWeekViewAccessibility *)self _axAnnotateMonthHeader];
  [(CompactMonthWeekViewAccessibility *)self _axInvalidateChildren];
}

- (void)_initializeDays
{
  v3.receiver = self;
  v3.super_class = CompactMonthWeekViewAccessibility;
  [(CompactMonthWeekViewAccessibility *)&v3 _initializeDays];
  [(CompactMonthWeekViewAccessibility *)self _axInvalidateChildren];
  [(CompactMonthWeekViewAccessibility *)self _axAnnotateDayNumbers];
}

- (void)_reloadMonthNameLabel
{
  v3.receiver = self;
  v3.super_class = CompactMonthWeekViewAccessibility;
  [(CompactMonthWeekViewAccessibility *)&v3 _reloadMonthNameLabel];
  [(CompactMonthWeekViewAccessibility *)self _axAnnotateMonthHeader];
}

- (void)setCalendarDate:(id)a3
{
  v4.receiver = self;
  v4.super_class = CompactMonthWeekViewAccessibility;
  [(CompactMonthWeekViewAccessibility *)&v4 setCalendarDate:a3];
  [(CompactMonthWeekViewAccessibility *)self _axAnnotateMonthHeader];
  [(CompactMonthWeekViewAccessibility *)self _axInvalidateChildren];
}

- (void)setCompressedVerticalMode:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CompactMonthWeekViewAccessibility;
  [(CompactMonthWeekViewAccessibility *)&v4 setCompressedVerticalMode:a3];
  [(CompactMonthWeekViewAccessibility *)self _axInvalidateChildren];
}

- (id)_accessibilityMonthViewController
{
  v2 = self;
  if (v2)
  {
    while (1)
    {
      v3 = [(CompactMonthWeekViewAccessibility *)v2 _accessibilityViewController];
      if (v3)
      {
        NSClassFromString(&cfstr_Compactwidthmo_0.isa);
        if (objc_opt_isKindOfClass())
        {
          break;
        }
      }

      v4 = [(CompactMonthWeekViewAccessibility *)v2 accessibilityContainer];

      v2 = v4;
      if (!v4)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v3 = 0;
  }

  return v3;
}

@end