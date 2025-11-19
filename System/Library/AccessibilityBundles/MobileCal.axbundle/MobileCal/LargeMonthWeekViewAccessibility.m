@interface LargeMonthWeekViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)_axMonthHeader;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axUpdateDayNumberLabels;
- (void)_axUpdateMonthAXLabel;
- (void)_rebuildDayNumberLabels;
- (void)_updateMonthLabel;
- (void)reloadData;
@end

@implementation LargeMonthWeekViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_CalendarEventsRow"];
  [v3 validateClass:@"EKEvent" isKindOfClass:@"EKCalendarItem"];
  [v3 validateClass:@"_CalendarEventsRow" hasInstanceMethod:@"occurrenceBlocks" withFullSignature:{"@", 0}];
  [v3 validateClass:@"EKCalendar" hasInstanceMethod:@"source" withFullSignature:{"@", 0}];
  [v3 validateClass:@"EKCalendar" hasInstanceMethod:@"type" withFullSignature:{"q", 0}];
  [v3 validateClass:@"EKCalendarItem" hasInstanceMethod:@"calendar" withFullSignature:{"@", 0}];
  [v3 validateClass:@"EKEvent" isKindOfClass:@"EKObject"];
  [v3 validateClass:@"EKObject" hasInstanceMethod:@"eventStore" withFullSignature:{"@", 0}];
  [v3 validateClass:@"EKEventStore" hasInstanceMethod:@"calendarsForEntityType:" withFullSignature:{"@", "Q", 0}];
  [v3 validateClass:@"EKSource" hasInstanceMethod:@"isFacebookSource" withFullSignature:{"B", 0}];
  [v3 validateClass:@"LargeMonthWeekView" hasInstanceMethod:@"_rebuildDayNumberLabels" withFullSignature:{"v", 0}];
  [v3 validateClass:@"LargeMonthWeekView" hasInstanceMethod:@"reloadData" withFullSignature:{"v", 0}];
  [v3 validateClass:@"LargeMonthWeekView" hasInstanceMethod:@"dayIndexForToday" withFullSignature:{"q", 0}];
  [v3 validateClass:@"LargeMonthWeekView" hasInstanceVariable:@"_dayNumberLabels" withType:"NSArray"];
  [v3 validateClass:@"LargeMonthWeekView" hasInstanceVariable:@"_startDate" withType:"EKCalendarDate"];
  [v3 validateClass:@"LargeMonthWeekView" hasInstanceVariable:@"_endDate" withType:"EKCalendarDate"];
  [v3 validateClass:@"LargeMonthWeekView" hasInstanceVariable:@"_firstOfMonthLabel" withType:"UILabel"];
  [v3 validateClass:@"LargeMonthWeekView" hasInstanceVariable:@"_showingFirstDayOfMonthLabel" withType:"B"];
  [v3 validateClass:@"LargeMonthWeekView" hasInstanceVariable:@"_firstDayIndex" withType:"q"];
  [v3 validateClass:@"MonthViewOccurrence" hasInstanceMethod:@"drawsTimeString" withFullSignature:{"B", 0}];
  [v3 validateClass:@"MonthViewOccurrence" hasInstanceMethod:@"occurrenceString" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MonthViewOccurrence" hasInstanceMethod:@"timeString" withFullSignature:{"@", 0}];
}

- (void)_axUpdateDayNumberLabels
{
  v68 = *MEMORY[0x29EDCA608];
  v4 = [(LargeMonthWeekViewAccessibility *)self safeValueForKey:@"_startDate"];
  v5 = [(LargeMonthWeekViewAccessibility *)self safeValueForKey:@"_dayNumberLabels"];
  v51 = [(LargeMonthWeekViewAccessibility *)self safeValueForKey:@"_endDate"];
  v6 = [v51 differenceInDays:v4] + 1;
  v62 = self;
  v7 = [(LargeMonthWeekViewAccessibility *)self safeValueForKey:@"_firstDayIndex"];
  v8 = [v7 integerValue];

  v61 = objc_opt_new();
  if ([v5 count] - v8 < v6)
  {
    v48 = v8;
    v50 = v6;
    v46 = [v5 count];
    _AXAssert();
  }

  if ([v5 count] - v8 < v6)
  {
    v6 = [v5 count] - v8;
  }

  v9 = [(LargeMonthWeekViewAccessibility *)v62 _accessibilityFindSubviewDescendant:&__block_literal_global_5];
  v10 = [v9 safeArrayForKey:@"_singleDayEventBuckets"];
  v11 = v10;
  if (v6 >= 1)
  {
    v12 = 0;
    v53 = v5;
    v54 = v4;
    v52 = v6;
    v55 = v8;
    v56 = v10;
    do
    {
      v13 = v12;
      v59 = [v4 calendarDateByAddingDays:v12];
      v14 = [v59 date];
      v15 = _AXGetStringsForDate(v14);

      v60 = v13;
      v16 = v13 + v8;
      v17 = [(LargeMonthWeekViewAccessibility *)v62 safeValueForKey:@"dayIndexForToday"];
      v18 = [v17 integerValue];

      if (v16 == v18)
      {
        v19 = accessibilityLocalizedString(@"today.indicator");
        v47 = v15;
        v49 = @"__AXStringForVariablesSentinel";
        v20 = __UIAXStringForVariables();

        v15 = v20;
      }

      v21 = [v5 objectAtIndex:{v16, v47, v49}];
      v58 = v15;
      [v21 setAccessibilityLabel:v15];
      v57 = v21;
      [v61 addObject:v21];
      v11 = v56;
      if (v60 >= [v56 count])
      {
        v8 = v55;
      }

      else
      {
        v22 = [v56 objectAtIndexedSubscript:?];
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v23 = [v22 countByEnumeratingWithState:&v63 objects:v67 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v64;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v64 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v63 + 1) + 8 * i);
              [v27 frame];
              v29 = v28;
              v31 = v30;
              v33 = v32;
              v35 = v34;
              if (([v27 isHidden] & 1) == 0)
              {
                v69.origin.x = v29;
                v69.origin.y = v31;
                v69.size.width = v33;
                v69.size.height = v35;
                if (CGRectGetHeight(v69) > 0.0)
                {
                  v70.origin.x = v29;
                  v70.origin.y = v31;
                  v70.size.width = v33;
                  v70.size.height = v35;
                  if (CGRectGetWidth(v70) > 0.0)
                  {
                    v36 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:v62];
                    v37 = [v27 safeBoolForKey:@"drawsTimeString"];
                    v38 = [v27 safeValueForKey:@"occurrenceString"];
                    if (v37)
                    {
                      v2 = [v27 safeValueForKey:@"timeString"];
                      v39 = v2;
                    }

                    else
                    {
                      v39 = 0;
                    }

                    v47 = v39;
                    v49 = @"__AXStringForVariablesSentinel";
                    v40 = __AXStringForVariables();
                    [v36 setAccessibilityLabel:v40];

                    if (v37)
                    {
                    }

                    [v9 accessibilityFrame];
                    x = v71.origin.x;
                    y = v71.origin.y;
                    width = v71.size.width;
                    height = v71.size.height;
                    v45 = v29 + CGRectGetMinX(v71);
                    v72.origin.x = x;
                    v72.origin.y = y;
                    v72.size.width = width;
                    v72.size.height = height;
                    [v36 setAccessibilityFrame:{v45, v31 + CGRectGetMinY(v72), v33, v35}];
                    [v61 addObject:v36];
                  }
                }
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v63 objects:v67 count:16];
          }

          while (v24);
        }

        v5 = v53;
        v4 = v54;
        v6 = v52;
        v8 = v55;
        v11 = v56;
      }

      v12 = v60 + 1;
    }

    while (v60 + 1 != v6);
  }

  [(LargeMonthWeekViewAccessibility *)v62 setAccessibilityElements:v61, v47, v49];
}

uint64_t __59__LargeMonthWeekViewAccessibility__axUpdateDayNumberLabels__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Monthweekoccur.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_axMonthHeader
{
  v3 = [(LargeMonthWeekViewAccessibility *)self safeValueForKey:@"_firstOfMonthLabel"];
  v4 = [(LargeMonthWeekViewAccessibility *)self safeValueForKey:@"_startDate"];
  v5 = [v4 date];
  v6 = _AXGetYearlessStringForDay();
  [v3 setAccessibilityLabel:v6];

  return v3;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = LargeMonthWeekViewAccessibility;
  [(LargeMonthWeekViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(LargeMonthWeekViewAccessibility *)self _axUpdateDayNumberLabels];
  [(LargeMonthWeekViewAccessibility *)self _axUpdateMonthAXLabel];
}

- (void)_axUpdateMonthAXLabel
{
  v7 = [(LargeMonthWeekViewAccessibility *)self _axMonthHeader];
  v3 = [(LargeMonthWeekViewAccessibility *)self safeValueForKey:@"_startDate"];
  v4 = [v3 safeValueForKey:@"date"];
  v5 = MEMORY[0x29C2DF2A0]();
  [v7 setAccessibilityLabel:v5];

  v6 = [v7 accessibilityTraits];
  [v7 setAccessibilityTraits:*MEMORY[0x29EDC7F80] | v6];
}

- (void)_rebuildDayNumberLabels
{
  v3.receiver = self;
  v3.super_class = LargeMonthWeekViewAccessibility;
  [(LargeMonthWeekViewAccessibility *)&v3 _rebuildDayNumberLabels];
  [(LargeMonthWeekViewAccessibility *)self _axUpdateDayNumberLabels];
}

- (void)_updateMonthLabel
{
  v3.receiver = self;
  v3.super_class = LargeMonthWeekViewAccessibility;
  [(LargeMonthWeekViewAccessibility *)&v3 _updateMonthLabel];
  [(LargeMonthWeekViewAccessibility *)self _axUpdateMonthAXLabel];
}

- (void)reloadData
{
  v3.receiver = self;
  v3.super_class = LargeMonthWeekViewAccessibility;
  [(LargeMonthWeekViewAccessibility *)&v3 reloadData];
  [(LargeMonthWeekViewAccessibility *)self _accessibilityRemoveValueForKey:*MEMORY[0x29EDC7620]];
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = LargeMonthWeekViewAccessibility;
  v4 = [(LargeMonthWeekViewAccessibility *)&v7 _accessibilityHitTest:a4 withEvent:a3.x, a3.y];
  [v4 _accessibilityVisibleFrame];
  if (CGRectIsEmpty(v9))
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

@end