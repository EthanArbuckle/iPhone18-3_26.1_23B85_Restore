@interface CompactMonthWeekViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
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
- (void)setCalendarDate:(id)date;
- (void)setCompressedVerticalMode:(BOOL)mode;
@end

@implementation CompactMonthWeekViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CompactMonthWeekView" hasInstanceVariable:@"_monthNameLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"CompactMonthWeekView" hasInstanceVariable:@"_days" withType:"NSArray"];
  [validationsCopy validateClass:@"CompactMonthWeekView" hasInstanceVariable:@"_startCalendarDate" withType:"EKCalendarDate"];
  [validationsCopy validateClass:@"InfiniteScrollViewController" hasInstanceVariable:@"_model" withType:"CUIKCalendarModel"];
  [validationsCopy validateClass:@"CompactMonthWeekView" hasInstanceVariable:@"_weekNumberLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"CompactMonthWeekView" hasInstanceVariable:@"_containsFirstDayOfMonth" withType:"B"];
  [validationsCopy validateClass:@"CompactMonthWeekView" hasInstanceVariable:@"_compressedVerticalMode" withType:"B"];
  [validationsCopy validateClass:@"CompactWidthMonthViewController" hasInstanceVariable:@"_dividedListMode" withType:"B"];
  [validationsCopy validateClass:@"CompactMonthWeekView" hasInstanceVariable:@"_showWeekNumber" withType:"B"];
  [validationsCopy validateClass:@"CompactMonthWeekView" hasInstanceVariable:@"_containsToday" withType:"B"];
  [validationsCopy validateClass:@"CompactMonthWeekView" hasInstanceMethod:@"setCalendarDate:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"CompactMonthWeekView" hasInstanceMethod:@"_initializeMonthNameLabel" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CompactMonthWeekView" hasInstanceMethod:@"_initializeDays" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CompactMonthWeekView" hasInstanceMethod:@"_reloadMonthNameLabel" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CompactMonthWeekView" hasInstanceMethod:@"setCompressedVerticalMode:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"CUIKCalendarModel" hasInstanceMethod:@"selectedDate" withFullSignature:{"@", 0}];
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
    _axMonthHeader = [(CompactMonthWeekViewAccessibility *)self _axMonthHeader];
    _axDate = [(CompactMonthWeekViewAccessibility *)self _axDate];
    v5 = MEMORY[0x29C2DF2A0]();
    [_axMonthHeader setAccessibilityLabel:v5];

    v6 = MEMORY[0x29EDB8D80];
    objc_opt_class();
    v7 = [(CompactMonthWeekViewAccessibility *)self safeValueForKey:@"_startCalendarDate"];
    v8 = __UIAccessibilityCastAsClass();

    v9 = MEMORY[0x29C2DF290]([v8 month]);
    objc_opt_class();
    _axMonthHeader2 = [(CompactMonthWeekViewAccessibility *)self _axMonthHeader];
    v11 = __UIAccessibilityCastAsClass();

    text = [v11 text];
    v13 = [v6 axArrayByIgnoringNilElementsWithCount:{2, v9, text}];
    [_axMonthHeader setAccessibilityUserInputLabels:v13];

    accessibilityTraits = [_axMonthHeader accessibilityTraits];
    [_axMonthHeader setAccessibilityTraits:*MEMORY[0x29EDC7F80] | accessibilityTraits];
    [_axMonthHeader _accessibilitySetIsSpeakThisElement:0];
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
      _axMonthHeader = [(CompactMonthWeekViewAccessibility *)self _axMonthHeader];
      [v6 addObject:_axMonthHeader];
    }

    if ([(CompactMonthWeekViewAccessibility *)self _axShowsWeekNumber])
    {
      v27 = 0;
      _axWeekNumber = [(CompactMonthWeekViewAccessibility *)self _axWeekNumber];
      v9 = __UIAccessibilitySafeClass();

      _axContainsToday = [(CompactMonthWeekViewAccessibility *)self _axContainsToday];
      v11 = MEMORY[0x29EDBA0F8];
      if (_axContainsToday)
      {
        v12 = @"currentweek.number";
      }

      else
      {
        v12 = @"week.number";
      }

      v13 = accessibilityLocalizedString(v12);
      text = [v9 text];
      v15 = [v11 stringWithFormat:v13, text];

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
  _accessibilityMonthViewController = [(CompactMonthWeekViewAccessibility *)self _accessibilityMonthViewController];
  if ([_accessibilityMonthViewController safeBoolForKey:@"_dividedListMode"])
  {
    v4 = [_accessibilityMonthViewController safeValueForKey:@"_model"];
    v5 = [v4 safeValueForKey:@"selectedDate"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(CompactMonthWeekViewAccessibility *)self safeValueForKey:@"_startCalendarDate"];
      month = [v5 month];
      accessibilityElementsHidden = month != [v6 month];
    }

    else
    {
      _AXAssert();
      accessibilityElementsHidden = 0;
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CompactMonthWeekViewAccessibility;
    accessibilityElementsHidden = [(CompactMonthWeekViewAccessibility *)&v10 accessibilityElementsHidden];
  }

  return accessibilityElementsHidden;
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

- (void)setCalendarDate:(id)date
{
  v4.receiver = self;
  v4.super_class = CompactMonthWeekViewAccessibility;
  [(CompactMonthWeekViewAccessibility *)&v4 setCalendarDate:date];
  [(CompactMonthWeekViewAccessibility *)self _axAnnotateMonthHeader];
  [(CompactMonthWeekViewAccessibility *)self _axInvalidateChildren];
}

- (void)setCompressedVerticalMode:(BOOL)mode
{
  v4.receiver = self;
  v4.super_class = CompactMonthWeekViewAccessibility;
  [(CompactMonthWeekViewAccessibility *)&v4 setCompressedVerticalMode:mode];
  [(CompactMonthWeekViewAccessibility *)self _axInvalidateChildren];
}

- (id)_accessibilityMonthViewController
{
  selfCopy = self;
  if (selfCopy)
  {
    while (1)
    {
      _accessibilityViewController = [(CompactMonthWeekViewAccessibility *)selfCopy _accessibilityViewController];
      if (_accessibilityViewController)
      {
        NSClassFromString(&cfstr_Compactwidthmo_0.isa);
        if (objc_opt_isKindOfClass())
        {
          break;
        }
      }

      accessibilityContainer = [(CompactMonthWeekViewAccessibility *)selfCopy accessibilityContainer];

      selfCopy = accessibilityContainer;
      if (!accessibilityContainer)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    _accessibilityViewController = 0;
  }

  return _accessibilityViewController;
}

@end