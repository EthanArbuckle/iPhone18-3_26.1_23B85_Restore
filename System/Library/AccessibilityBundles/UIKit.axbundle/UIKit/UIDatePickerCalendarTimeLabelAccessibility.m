@interface UIDatePickerCalendarTimeLabelAccessibility
@end

@implementation UIDatePickerCalendarTimeLabelAccessibility

uint64_t __77___UIDatePickerCalendarTimeLabelAccessibility__accessibilityResponderElement__block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = [location[0] accessibilityIdentifier];
  if ([a1[4] _axIsHoursEditing])
  {
    v2 = @"Hours";
  }

  else
  {
    v2 = @"Minutes";
  }

  v6 = [v5 isEqualToString:v2];
  MEMORY[0x29EDC9740](v5);
  objc_storeStrong(location, 0);
  return v6;
}

uint64_t __72___UIDatePickerCalendarTimeLabelAccessibility__accessibilityHourElement__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x29EDC7F60];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = 0;
  v6 = 0;
  if ([WeakRetained _axSelfIsFirstResponder])
  {
    v8 = objc_loadWeakRetained((a1 + 32));
    v7 = 1;
    v6 = [v8 _axIsHoursEditing];
  }

  if (v7)
  {
    MEMORY[0x29EDC9740](v8);
  }

  MEMORY[0x29EDC9740](WeakRetained);
  if (v6)
  {
    v9 |= *MEMORY[0x29EDC7598] | *MEMORY[0x29EDC7528];
  }

  v2 = objc_loadWeakRetained((a1 + 32));
  v3 = [v2 safeIntegerForKey:@"inputScope"];
  MEMORY[0x29EDC9740](v2);
  if (!v3)
  {
    return v9 | *MEMORY[0x29EDC7FA8];
  }

  return v9;
}

void __72___UIDatePickerCalendarTimeLabelAccessibility__accessibilityHourElement__block_invoke_2(id *a1)
{
  v5[6] = a1;
  v5[5] = a1;
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  v1 = [WeakRetained safeStringForKey:@"hourText"];
  v3 = [v1 integerValue];
  MEMORY[0x29EDC9740](v1);
  MEMORY[0x29EDC9740](WeakRetained);
  v5[4] = v3;
  v5[1] = a1[5];
  v5[2] = a1[6];
  v5[3] = v3;
  objc_copyWeak(v5, a1 + 4);
  AXPerformSafeBlock();
  objc_destroyWeak(v5);
}

double __72___UIDatePickerCalendarTimeLabelAccessibility__accessibilityHourElement__block_invoke_3(uint64_t a1)
{
  if (*(a1 + 48) >= *(a1 + 56) + 1)
  {
    v5 = *(a1 + 56) + 1;
  }

  else
  {
    v5 = *(a1 + 48);
  }

  if (*(a1 + 40) < v5)
  {
    v4 = v5;
  }

  else
  {
    v4 = *(a1 + 40);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%d", v4];
  [WeakRetained setHourText:?];
  MEMORY[0x29EDC9740](v2);
  *&result = MEMORY[0x29EDC9740](WeakRetained).n128_u64[0];
  return result;
}

void __72___UIDatePickerCalendarTimeLabelAccessibility__accessibilityHourElement__block_invoke_4(uint64_t a1)
{
  v15 = a1;
  v14 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeStringForKey:@"hourText"];
  v5 = [v3 integerValue];
  MEMORY[0x29EDC9740](v3);
  MEMORY[0x29EDC9740](WeakRetained);
  v13 = v5;
  v11 = *(a1 + 40);
  v9 = *(a1 + 48);
  v8 = (v5 - 1);
  if (v9 < v5 - 1)
  {
    v2 = v9;
  }

  else
  {
    v2 = v8;
  }

  v7[3] = v2;
  v10 = v2;
  if (v11 < v2)
  {
    v1 = v10;
  }

  else
  {
    v1 = v11;
  }

  v7[2] = v1;
  v12 = v1;
  objc_copyWeak(v7, (a1 + 32));
  v7[1] = v12;
  AXPerformSafeBlock();
  objc_destroyWeak(v7);
}

double __72___UIDatePickerCalendarTimeLabelAccessibility__accessibilityHourElement__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%d", *(a1 + 40)];
  [WeakRetained setHourText:?];
  MEMORY[0x29EDC9740](v3);
  *&result = MEMORY[0x29EDC9740](WeakRetained).n128_u64[0];
  return result;
}

id __72___UIDatePickerCalendarTimeLabelAccessibility__accessibilityHourElement__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeStringForKey:@"hourText"];
  v4 = [v2 integerValue];
  MEMORY[0x29EDC9740](v2);
  MEMORY[0x29EDC9740](WeakRetained);
  v5 = MEMORY[0x29EDBA0F8];
  v7 = UIKitAccessibilityLocalizedString();
  v6 = [MEMORY[0x29EDBA070] numberWithInteger:v4];
  v8 = [v5 stringWithFormat:v7, v6];
  MEMORY[0x29EDC9740](v6);
  MEMORY[0x29EDC9740](v7);

  return v8;
}

uint64_t __72___UIDatePickerCalendarTimeLabelAccessibility__accessibilityHourElement__block_invoke_7(id *a1)
{
  v2[2] = a1;
  v2[1] = a1;
  objc_copyWeak(v2, a1 + 4);
  AXPerformSafeBlock();
  objc_destroyWeak(v2);
  return 1;
}

double __72___UIDatePickerCalendarTimeLabelAccessibility__accessibilityHourElement__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained safeValueForKey:@"stateContext"];
  v9 = [v7 safeIntegerForKey:@"currentState"];
  MEMORY[0x29EDC9740](v7);
  *&result = MEMORY[0x29EDC9740](WeakRetained).n128_u64[0];
  if (v9 != 3)
  {
    if (v9 == 1 || v9 == 6)
    {
      v5 = objc_loadWeakRetained((a1 + 32));
      [v5 _stateMachineSendEvent:2];
      MEMORY[0x29EDC9740](v5);
    }

    v2 = objc_loadWeakRetained((a1 + 32));
    [v2 _stateMachineSendEvent:2];
    MEMORY[0x29EDC9740](v2);
    notification = *MEMORY[0x29EDC7EA8];
    v4 = UIKitAccessibilityLocalizedString();
    UIAccessibilityPostNotification(notification, v4);
    *&result = MEMORY[0x29EDC9740](v4).n128_u64[0];
  }

  return result;
}

uint64_t __74___UIDatePickerCalendarTimeLabelAccessibility__accessibilityMinuteElement__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x29EDC7F60];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = 0;
  v6 = 0;
  if ([WeakRetained _axSelfIsFirstResponder])
  {
    v8 = objc_loadWeakRetained((a1 + 32));
    v7 = 1;
    v6 = [v8 _axIsMinutesEditing];
  }

  if (v7)
  {
    MEMORY[0x29EDC9740](v8);
  }

  MEMORY[0x29EDC9740](WeakRetained);
  if (v6)
  {
    v9 |= *MEMORY[0x29EDC7598] | *MEMORY[0x29EDC7528];
  }

  v2 = objc_loadWeakRetained((a1 + 32));
  v3 = [v2 safeIntegerForKey:@"inputScope"];
  MEMORY[0x29EDC9740](v2);
  if (!v3)
  {
    return v9 | *MEMORY[0x29EDC7FA8];
  }

  return v9;
}

void __74___UIDatePickerCalendarTimeLabelAccessibility__accessibilityMinuteElement__block_invoke_2(uint64_t a1)
{
  v15 = a1;
  v14 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeStringForKey:@"minuteText"];
  v5 = [v3 integerValue];
  MEMORY[0x29EDC9740](v3);
  MEMORY[0x29EDC9740](WeakRetained);
  v13 = v5;
  v11 = *(a1 + 40);
  v9 = *(a1 + 48);
  v8 = (v5 + 1);
  if (v9 < v5 + 1)
  {
    v2 = v9;
  }

  else
  {
    v2 = v8;
  }

  v7[3] = v2;
  v10 = v2;
  if (v11 < v2)
  {
    v1 = v10;
  }

  else
  {
    v1 = v11;
  }

  v7[2] = v1;
  v12 = v1;
  objc_copyWeak(v7, (a1 + 32));
  v7[1] = v12;
  AXPerformSafeBlock();
  objc_destroyWeak(v7);
}

double __74___UIDatePickerCalendarTimeLabelAccessibility__accessibilityMinuteElement__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%d", *(a1 + 40)];
  [WeakRetained setMinuteText:?];
  MEMORY[0x29EDC9740](v3);
  *&result = MEMORY[0x29EDC9740](WeakRetained).n128_u64[0];
  return result;
}

void __74___UIDatePickerCalendarTimeLabelAccessibility__accessibilityMinuteElement__block_invoke_4(uint64_t a1)
{
  v15 = a1;
  v14 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeStringForKey:@"minuteText"];
  v5 = [v3 integerValue];
  MEMORY[0x29EDC9740](v3);
  MEMORY[0x29EDC9740](WeakRetained);
  v13 = v5;
  v11 = *(a1 + 40);
  v9 = *(a1 + 40);
  v8 = (v5 - 1);
  if (v9 < v5 - 1)
  {
    v2 = v9;
  }

  else
  {
    v2 = v8;
  }

  v7[3] = v2;
  v10 = v2;
  if (v11 < v2)
  {
    v1 = v10;
  }

  else
  {
    v1 = v11;
  }

  v7[2] = v1;
  v12 = v1;
  objc_copyWeak(v7, (a1 + 32));
  v7[1] = v12;
  AXPerformSafeBlock();
  objc_destroyWeak(v7);
}

double __74___UIDatePickerCalendarTimeLabelAccessibility__accessibilityMinuteElement__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%d", *(a1 + 40)];
  [WeakRetained setMinuteText:?];
  MEMORY[0x29EDC9740](v3);
  *&result = MEMORY[0x29EDC9740](WeakRetained).n128_u64[0];
  return result;
}

id __74___UIDatePickerCalendarTimeLabelAccessibility__accessibilityMinuteElement__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeStringForKey:@"minuteText"];
  v4 = [v2 integerValue];
  MEMORY[0x29EDC9740](v2);
  MEMORY[0x29EDC9740](WeakRetained);
  v5 = MEMORY[0x29EDBA0F8];
  v6 = UIKitAccessibilityLocalizedString();
  v7 = [v5 stringWithFormat:v4];
  MEMORY[0x29EDC9740](v6);

  return v7;
}

uint64_t __74___UIDatePickerCalendarTimeLabelAccessibility__accessibilityMinuteElement__block_invoke_7(id *a1)
{
  v2[2] = a1;
  v2[1] = a1;
  objc_copyWeak(v2, a1 + 4);
  AXPerformSafeBlock();
  objc_destroyWeak(v2);
  return 1;
}

double __74___UIDatePickerCalendarTimeLabelAccessibility__accessibilityMinuteElement__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained safeValueForKey:@"stateContext"];
  v9 = [v7 safeIntegerForKey:@"currentState"];
  MEMORY[0x29EDC9740](v7);
  *&result = MEMORY[0x29EDC9740](WeakRetained).n128_u64[0];
  if (v9 != 4)
  {
    if (v9 == 1 || v9 == 6)
    {
      v5 = objc_loadWeakRetained((a1 + 32));
      [v5 _stateMachineSendEvent:3];
      MEMORY[0x29EDC9740](v5);
    }

    v2 = objc_loadWeakRetained((a1 + 32));
    [v2 _stateMachineSendEvent:3];
    MEMORY[0x29EDC9740](v2);
    notification = *MEMORY[0x29EDC7EA8];
    v4 = UIKitAccessibilityLocalizedString();
    UIAccessibilityPostNotification(notification, v4);
    *&result = MEMORY[0x29EDC9740](v4).n128_u64[0];
  }

  return result;
}

@end