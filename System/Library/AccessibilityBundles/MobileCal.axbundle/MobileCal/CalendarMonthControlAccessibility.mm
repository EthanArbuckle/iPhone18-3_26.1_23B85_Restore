@interface CalendarMonthControlAccessibility
- (void)_accessibilityUpdateOcurrenceTileCount:(id)a3;
@end

@implementation CalendarMonthControlAccessibility

- (void)_accessibilityUpdateOcurrenceTileCount:(id)a3
{
  v29 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v13 = self;
  [(CalendarMonthControlAccessibility *)self safeValueForKey:@"_accessibleSubviews"];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  obj = v25 = 0u;
  v5 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v5)
  {
    v6 = *v25;
    do
    {
      v7 = 0;
      do
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v24 + 1) + 8 * v7);
        NSClassFromString(&cfstr_Calendarmonthd.isa);
        if (objc_opt_isKindOfClass())
        {
          if (([v4 _accessibilityBoolValueForKey:@"_axDidWaitForLoad"] & 1) == 0)
          {
            [v4 _accessibilitySetBoolValue:1 forKey:@"_axDidWaitForLoad"];
            if (_accessibilityUpdateOcurrenceTileCount__onceToken != -1)
            {
              [CalendarMonthControlAccessibility _accessibilityUpdateOcurrenceTileCount:];
            }

            v9 = _accessibilityUpdateOcurrenceTileCount__WaitQueue;
            if (_accessibilityUpdateOcurrenceTileCount__WaitQueue)
            {
              block[0] = MEMORY[0x29EDCA5F8];
              block[1] = 3221225472;
              block[2] = __76__CalendarMonthControlAccessibility__accessibilityUpdateOcurrenceTileCount___block_invoke_2;
              block[3] = &unk_29F2D2918;
              v22 = v4;
              v23 = v13;
              dispatch_async(v9, block);
            }
          }

          v10 = [MEMORY[0x29EDB8DB0] date];
          v11 = _AXDateComponentsFromDate(v10);

          v17 = 0;
          v18 = &v17;
          v19 = 0x2020000000;
          v20 = 0;
          v15 = v4;
          v16 = v11;
          AXPerformSafeBlock();
          v12 = [MEMORY[0x29EDBA070] numberWithInteger:v18[3]];
          [v8 _accessibilitySetRetainedValue:v12 forKey:@"numberEvents"];

          _Block_object_dispose(&v17, 8);
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v5);
  }
}

uint64_t __76__CalendarMonthControlAccessibility__accessibilityUpdateOcurrenceTileCount___block_invoke()
{
  _accessibilityUpdateOcurrenceTileCount__WaitQueue = dispatch_queue_create("ax-wait-cal", 0);

  return MEMORY[0x2A1C71028]();
}

void __76__CalendarMonthControlAccessibility__accessibilityUpdateOcurrenceTileCount___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"_eventLoader"];
  v3 = [v2 safeValueForKey:@"waitForBackgroundLoad"];

  v5 = *(a1 + 32);
  v4 = v5.i64[0];
  AXPerformBlockOnMainThreadAfterDelay();
}

void __76__CalendarMonthControlAccessibility__accessibilityUpdateOcurrenceTileCount___block_invoke_4(uint64_t a1)
{
  v3 = [*(a1 + 32) occurrencesForDay:*(a1 + 40) waitForLoad:*(a1 + 56)];
  v2 = [v3 safeValueForKey:@"occurrences"];
  *(*(*(a1 + 48) + 8) + 24) = [v2 count];
}

@end