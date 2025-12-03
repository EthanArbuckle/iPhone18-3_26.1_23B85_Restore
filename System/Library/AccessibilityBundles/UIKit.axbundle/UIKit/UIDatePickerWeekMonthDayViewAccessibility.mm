@interface UIDatePickerWeekMonthDayViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (unint64_t)_accessibilityDatePickerComponentType;
@end

@implementation UIDatePickerWeekMonthDayViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, validations);
  objc_storeStrong(location, 0);
}

- (unint64_t)_accessibilityDatePickerComponentType
{
  selfCopy = self;
  v14[1] = a2;
  v14[0] = [(UIDatePickerWeekMonthDayViewAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Uidatepickervi.isa)];
  v13 = [(UIDatePickerWeekMonthDayViewAccessibility *)selfCopy _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Uipickercolumn.isa)];
  v12 = [v14[0] safeValueForKey:@"_tables"];
  v11 = [v12 indexOfObject:v13];
  v6 = 0;
  v7 = &v6;
  v8 = 0x20000000;
  v9 = 32;
  v10 = 0;
  NSClassFromString(&cfstr_Uidatepickervi.isa);
  if (objc_opt_isKindOfClass())
  {
    v5 = [v14[0] safeValueForKey:@"_mode"];
    v4[1] = &v6;
    v4[0] = MEMORY[0x29EDC9748](v5);
    v4[2] = v11;
    AXPerformSafeBlock();
    objc_storeStrong(v4, 0);
    objc_storeStrong(&v5, 0);
  }

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(v14, 0);
  return v3;
}

uint64_t __82__UIDatePickerWeekMonthDayViewAccessibility__accessibilityDatePickerComponentType__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) calendarUnitForComponent:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

@end