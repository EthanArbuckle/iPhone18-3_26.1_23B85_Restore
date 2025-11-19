@interface CompactMonthViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)showDate:(id)a3 animated:(BOOL)a4 completionBlock:(id)a5;
@end

@implementation CompactMonthViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CompactMonthWeekView"];
  [v3 validateClass:@"CompactMonthViewController" isKindOfClass:@"InfiniteScrollViewController"];
  [v3 validateClass:@"InfiniteScrollViewController" hasInstanceMethod:@"showDate: animated: completionBlock:" withFullSignature:{"v", "@", "B", "@?", 0}];
  [v3 validateClass:@"CompactMonthWeekView" hasInstanceVariable:@"_today" withType:"CompactMonthWeekDayNumber"];
  [v3 validateClass:@"InfiniteScrollViewController" hasInstanceVariable:@"_views" withType:"NSMutableArray"];
}

- (void)showDate:(id)a3 animated:(BOOL)a4 completionBlock:(id)a5
{
  v6.receiver = self;
  v6.super_class = CompactMonthViewControllerAccessibility;
  [(CompactMonthViewControllerAccessibility *)&v6 showDate:a3 animated:a4 completionBlock:a5];
  if ([(CompactMonthViewControllerAccessibility *)self _accessibilityBoolValueForKey:@"_AXShouldFocusOnTodayStorageKey"])
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

void __77__CompactMonthViewControllerAccessibility_showDate_animated_completionBlock___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) safeValueForKey:@"view"];
  v3 = [v1 _accessibilityFindSubviewDescendant:&__block_literal_global_1];

  LODWORD(v1) = *MEMORY[0x29EDC7488];
  v2 = [v3 safeValueForKey:@"_today"];
  UIAccessibilityPostNotification(v1, v2);
}

BOOL __77__CompactMonthViewControllerAccessibility_showDate_animated_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Compactmonthwe_2.isa);
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 safeValueForKey:@"_today"];
    v4 = v3 != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end