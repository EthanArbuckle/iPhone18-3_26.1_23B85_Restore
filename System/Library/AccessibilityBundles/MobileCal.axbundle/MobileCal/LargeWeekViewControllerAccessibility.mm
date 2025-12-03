@interface LargeWeekViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)selectDate:(id)date animated:(BOOL)animated;
@end

@implementation LargeWeekViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"WeekAllDayView"];
  [validationsCopy validateClass:@"WeekAllDayView" hasInstanceMethod:@"_dayIndexForToday" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"LargeWeekViewController" hasInstanceMethod:@"selectDate: animated:" withFullSignature:{"v", "@", "B", 0}];
}

- (void)selectDate:(id)date animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = LargeWeekViewControllerAccessibility;
  [(LargeWeekViewControllerAccessibility *)&v5 selectDate:date animated:animated];
  if ([(LargeWeekViewControllerAccessibility *)self _accessibilityBoolValueForKey:@"_AXShouldFocusOnTodayStorageKey"])
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

void __60__LargeWeekViewControllerAccessibility_selectDate_animated___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) safeValueForKey:@"view"];
  v2 = [v1 _accessibilityFindSubviewDescendant:&__block_literal_global_6];

  v3 = [v2 safeValueForKey:@"_dayIndexForToday"];
  v4 = [v3 integerValue];

  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __60__LargeWeekViewControllerAccessibility_selectDate_animated___block_invoke_3;
  v6[3] = &__block_descriptor_40_e8_B16__0_8l;
  v6[4] = v4;
  v5 = [v2 _accessibilityFindDescendant:v6];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7488], v5);
}

BOOL __60__LargeWeekViewControllerAccessibility_selectDate_animated___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Weekalldayview.isa);
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 safeValueForKey:@"_dayIndexForToday"];
    v4 = [v3 integerValue] != -1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL __60__LargeWeekViewControllerAccessibility_selectDate_animated___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) != 0 && [v3 dayIndex] == *(a1 + 32);

  return v4;
}

@end