@interface CompactWidthMonthViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (void)showDate:(id)date animated:(BOOL)animated completionBlock:(id)block;
@end

@implementation CompactWidthMonthViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CompactMonthWeekView"];
  [validationsCopy validateClass:@"CompactWidthMonthViewController" isKindOfClass:@"InfiniteScrollViewController"];
  [validationsCopy validateClass:@"CompactWidthMonthViewController" isKindOfClass:@"MonthViewController"];
  [validationsCopy validateClass:@"CompactWidthMonthViewController" hasInstanceMethod:@"showDate: animated: completionBlock:" withFullSignature:{"v", "@", "B", "@?", 0}];
  [validationsCopy validateClass:@"InfiniteScrollViewController" hasInstanceMethod:@"scrollView" withFullSignature:{"@", 0}];
  v4 = MEMORY[0x29EDBA0F8];
  v5 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"^{CGPoint=dd}"];
  v7 = [v4 stringWithFormat:@"N%@", v5];

  v6 = v7;
  [validationsCopy validateClass:@"InfiniteScrollViewController" hasInstanceMethod:@"willEndDraggingWithVelocity: targetContentOffset:" withFullSignature:{"v", "{CGPoint=dd}", objc_msgSend(v7, "UTF8String"), 0}];
  [validationsCopy validateClass:@"InfiniteScrollViewController" isKindOfClass:@"MainViewController"];
  [validationsCopy validateClass:@"MainViewController" hasInstanceMethod:@"model" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CUIKCalendarModel" hasInstanceMethod:@"selectedDate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CompactMonthWeekView" hasInstanceVariable:@"_today" withType:"CompactMonthWeekDayNumber"];
  [validationsCopy validateClass:@"CompactWidthMonthViewController" hasInstanceVariable:@"_dividedListMode" withType:"B"];
}

- (void)showDate:(id)date animated:(BOOL)animated completionBlock:(id)block
{
  animatedCopy = animated;
  blockCopy = block;
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 3221225472;
  v13[2] = __82__CompactWidthMonthViewControllerAccessibility_showDate_animated_completionBlock___block_invoke;
  v13[3] = &unk_29F2D29D8;
  v13[4] = self;
  v14 = blockCopy;
  v9 = blockCopy;
  dateCopy = date;
  v11 = MEMORY[0x29C2DF650](v13);
  v12.receiver = self;
  v12.super_class = CompactWidthMonthViewControllerAccessibility;
  [(CompactWidthMonthViewControllerAccessibility *)&v12 showDate:dateCopy animated:animatedCopy completionBlock:v11];
}

void __82__CompactWidthMonthViewControllerAccessibility_showDate_animated_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  if ([*(a1 + 32) _accessibilityBoolValueForKey:@"_AXShouldFocusOnTodayStorageKey"])
  {
    v3 = [*(a1 + 32) safeValueForKey:@"view"];
    v5 = [v3 _accessibilityFindSubviewDescendant:&__block_literal_global_3];

    if (v5)
    {
      v4 = [v5 safeValueForKey:@"_today"];
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7488], v4);
    }

    else
    {
      _AXAssert();
    }
  }
}

BOOL __82__CompactWidthMonthViewControllerAccessibility_showDate_animated_completionBlock___block_invoke_2(uint64_t a1, void *a2)
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

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  v5 = [(CompactWidthMonthViewControllerAccessibility *)self safeBoolForKey:@"_dividedListMode"];
  if ((scroll - 3) <= 1 && v5)
  {
    v12 = MEMORY[0x29EDCA5F8];
    v13 = 3221225472;
    v14 = __68__CompactWidthMonthViewControllerAccessibility_accessibilityScroll___block_invoke;
    v15 = &unk_29F2D2A28;
    selfCopy = self;
    scrollCopy = scroll;
    AXPerformSafeBlock();
    v6 = [(CompactWidthMonthViewControllerAccessibility *)self safeValueForKey:@"model"];
    v7 = [v6 safeValueForKey:@"selectedDate"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      date = [v7 date];
      v9 = AXDateStringForFormat();
    }

    else
    {
      _AXAssert();
      v9 = 0;
    }

    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EF0], v9);

    return 1;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = CompactWidthMonthViewControllerAccessibility;
    return [(CompactWidthMonthViewControllerAccessibility *)&v11 accessibilityScroll:scroll];
  }
}

void __68__CompactWidthMonthViewControllerAccessibility_accessibilityScroll___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) safeValueForKey:@"scrollView"];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3010000000;
  v10 = &unk_29BF93CC7;
  v11 = 0;
  v12 = 0;
  v6 = MEMORY[0x29EDCA5F8];
  v4 = v3;
  AXPerformSafeBlock();
  if (v2 == 3)
  {
    v5 = -1.0;
  }

  else
  {
    v5 = 1.0;
  }

  v13 = *(v8 + 2);

  _Block_object_dispose(&v7, 8);
  [*(a1 + 32) willEndDraggingWithVelocity:&v13 targetContentOffset:{0.0, v5, v6, 3221225472, __68__CompactWidthMonthViewControllerAccessibility_accessibilityScroll___block_invoke_2, &unk_29F2D2A00}];
}

uint64_t __68__CompactWidthMonthViewControllerAccessibility_accessibilityScroll___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) contentOffset];
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return result;
}

@end