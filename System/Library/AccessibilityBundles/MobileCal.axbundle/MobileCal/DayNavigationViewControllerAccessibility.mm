@interface DayNavigationViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityScroll:(int64_t)a3;
@end

@implementation DayNavigationViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"DayViewController"];
  [v3 validateClass:@"DayNavigationViewController" hasInstanceMethod:@"setSelectedDate: animated:" withFullSignature:{"v", "@", "B", 0}];
  [v3 validateClass:@"DayNavigationViewController" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"DayViewController" hasInstanceMethod:@"dayNavigationViewController: didSelectDate:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"DayNavigationViewController" hasInstanceVariable:@"_navigationView" withType:"DayNavigationView"];
  [v3 validateClass:@"DayNavigationView" hasInstanceVariable:@"_calendar" withType:"NSCalendar"];
  [v3 validateClass:@"DayNavigationView" hasInstanceVariable:@"_selectedDate" withType:"NSDate"];
}

- (BOOL)accessibilityScroll:(int64_t)a3
{
  v5 = [(DayNavigationViewControllerAccessibility *)self safeValueForKey:@"_navigationView"];
  v6 = [v5 safeValueForKey:@"_selectedDate"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 safeValueForKey:@"_calendar"];
    if (a3 == 2)
    {
      v8 = @"day.scrubber.next.week";
      v9 = 1;
    }

    else
    {
      if (a3 != 1)
      {
        v16 = 0;
        LOBYTE(v10) = 0;
LABEL_14:

        goto LABEL_15;
      }

      v8 = @"day.scrubber.previous.week";
      v9 = -1;
    }

    v10 = objc_alloc_init(MEMORY[0x29EDB8DB8]);
    [v10 setWeekOfYear:v9];
    v11 = *MEMORY[0x29EDC7EA8];
    v12 = accessibilityLocalizedString(v8);
    UIAccessibilityPostNotification(v11, v12);

    if (v10)
    {
      v22 = 0;
      v23 = &v22;
      v24 = 0x3032000000;
      v25 = __Block_byref_object_copy__0;
      v26 = __Block_byref_object_dispose__0;
      v27 = 0;
      v20 = v7;
      v10 = v10;
      v21 = v6;
      AXPerformSafeBlock();
      v13 = v23[5];

      _Block_object_dispose(&v22, 8);
      v14 = v13;
      v19 = v14;
      AXPerformSafeBlock();
      v15 = [(DayNavigationViewControllerAccessibility *)self safeValueForKey:@"delegate"];
      if (v15)
      {
        NSClassFromString(&cfstr_Dayviewcontrol_0.isa);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          _AXAssert();
        }
      }

      v16 = v14;
      v17 = v15;
      AXPerformSafeBlock();

      LOBYTE(v10) = 1;
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_14;
  }

  _AXAssert();
  LOBYTE(v10) = 0;
LABEL_15:

  return v10;
}

uint64_t __64__DayNavigationViewControllerAccessibility_accessibilityScroll___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 56) + 8) + 40) = [*(a1 + 32) dateByAddingComponents:*(a1 + 40) toDate:*(a1 + 48) options:0];

  return MEMORY[0x2A1C71028]();
}

@end