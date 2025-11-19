@interface UICalendarHeaderViewAccessibility
@end

@implementation UICalendarHeaderViewAccessibility

double __60___UICalendarHeaderViewAccessibility_accessibilityIncrement__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) safeValueForKey:@"delegate"];
  [v3 headerViewDidStepForward:*(a1 + 32)];
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

double __60___UICalendarHeaderViewAccessibility_accessibilityDecrement__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) safeValueForKey:@"delegate"];
  [v3 headerViewDidStepBackward:*(a1 + 32)];
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

void __59___UICalendarHeaderViewAccessibility_setExpanded_animated___block_invoke(uint64_t a1)
{
  v9[2] = a1;
  v9[1] = a1;
  v8 = 0;
  objc_opt_class();
  v3 = [*(a1 + 32) _accessibilityViewAncestorIsKindOf:objc_opt_class()];
  v7 = __UIAccessibilityCastAsSafeCategory();
  MEMORY[0x29EDC9740](v3);
  v6 = MEMORY[0x29EDC9748](v7);
  objc_storeStrong(&v7, 0);
  v9[0] = v6;
  if (v6)
  {
    [v9[0] _accessibilityClearChildren];
  }

  notification = *MEMORY[0x29EDC7ED8];
  v4 = 0;
  if (*(a1 + 40))
  {
    v5 = [*(a1 + 32) safeValueForKey:@"_monthYearButton"];
    v4 = 1;
    UIAccessibilityPostNotification(notification, v5);
  }

  else
  {
    UIAccessibilityPostNotification(notification, *(a1 + 32));
  }

  if (v4)
  {
    MEMORY[0x29EDC9740](v5);
  }

  objc_storeStrong(v9, 0);
}

id __60___UICalendarHeaderViewAccessibility__axMarkupMonthSelector__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = 0;
  v4 = 0;
  if ([WeakRetained safeBoolForKey:@"isExpanded"])
  {
    v7 = accessibilityLocalizedString(@"calendar.hide.year.picker");
    v6 = 1;
    v1 = MEMORY[0x29EDC9748](v7);
  }

  else
  {
    v5 = accessibilityLocalizedString(@"calendar.show.year.picker");
    v4 = 1;
    v1 = MEMORY[0x29EDC9748](v5);
  }

  v8 = v1;
  if (v4)
  {
    MEMORY[0x29EDC9740](v5);
  }

  if (v6)
  {
    MEMORY[0x29EDC9740](v7);
  }

  MEMORY[0x29EDC9740](WeakRetained);

  return v8;
}

id __60___UICalendarHeaderViewAccessibility__axMarkupMonthSelector__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained safeBoolForKey:@"isExpanded"])
  {
    v1 = @"DatePicker.Hide";
  }

  else
  {
    v1 = @"DatePicker.Show";
  }

  v4 = MEMORY[0x29EDC9748](v1);
  MEMORY[0x29EDC9740](WeakRetained);

  return v4;
}

id __60___UICalendarHeaderViewAccessibility__axMarkupMonthSelector__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained accessibilityValue];
  MEMORY[0x29EDC9740](WeakRetained);

  return v3;
}

double __60___UICalendarHeaderViewAccessibility__axMarkupMonthSelector__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeUIViewForKey:@"_monthYearLabel"];
  [v3 accessibilityActivationPoint];
  v5 = v1;
  MEMORY[0x29EDC9740](v3);
  MEMORY[0x29EDC9740](WeakRetained);
  return v5;
}

@end