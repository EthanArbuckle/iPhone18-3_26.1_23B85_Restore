@interface LargeMonthViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axTopWeekViewWithTopPoint:(CGPoint)point;
- (void)showDate:(id)date animated:(BOOL)animated completionBlock:(id)block;
@end

@implementation LargeMonthViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"LargeMonthWeekView"];
  [validationsCopy validateClass:@"LargeMonthViewController" isKindOfClass:@"InfiniteScrollViewController"];
  [validationsCopy validateClass:@"InfiniteScrollViewController" hasInstanceMethod:@"showDate: animated: completionBlock:" withFullSignature:{"v", "@", "B", "@?", 0}];
  [validationsCopy validateClass:@"LargeMonthWeekView" hasInstanceMethod:@"todayDay" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"LargeMonthWeekView" hasInstanceMethod:@"dayIndexForToday" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"LargeMonthWeekView" hasInstanceVariable:@"_dayNumberLabels" withType:"NSArray"];
  [validationsCopy validateClass:@"LargeMonthViewController" hasInstanceVariable:@"_draggedStartDate" withType:"EKCalendarDate"];
}

- (id)_axTopWeekViewWithTopPoint:(CGPoint)point
{
  v16 = *MEMORY[0x29EDCA608];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(LargeMonthViewControllerAccessibility *)self safeValueForKey:@"_views", 0];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        options = [MEMORY[0x29EDC7328] options];
        [options setShouldOnlyIncludeElementsWithVisibleFrame:1];
        v9 = [v7 _accessibilityLeafDescendantsWithCount:1 options:options];
        if ([v9 count])
        {
          v4 = v7;

          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (void)showDate:(id)date animated:(BOOL)animated completionBlock:(id)block
{
  v6.receiver = self;
  v6.super_class = LargeMonthViewControllerAccessibility;
  [(LargeMonthViewControllerAccessibility *)&v6 showDate:date animated:animated completionBlock:block];
  if ([(LargeMonthViewControllerAccessibility *)self _accessibilityBoolValueForKey:@"_AXShouldFocusOnTodayStorageKey"])
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

void __75__LargeMonthViewControllerAccessibility_showDate_animated_completionBlock___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) safeValueForKey:@"view"];
  v5 = [v1 _accessibilityFindSubviewDescendant:&__block_literal_global_4];

  v2 = [v5 safeValueForKey:@"_dayNumberLabels"];
  v3 = [v5 safeValueForKey:@"dayIndexForToday"];
  v4 = [v2 objectAtIndex:{objc_msgSend(v3, "integerValue")}];

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7488], v4);
}

BOOL __75__LargeMonthViewControllerAccessibility_showDate_animated_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Largemonthweek_0.isa);
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 safeValueForKey:@"todayDay"];
    v4 = [v3 integerValue] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end