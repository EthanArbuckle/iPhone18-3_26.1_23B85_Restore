@interface HUDayOfWeekPickerCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (HUDayOfWeekPickerCellAccessibility)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation HUDayOfWeekPickerCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HUDayOfWeekPickerCell" hasInstanceMethod:@"buttons" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUDayOfWeekPickerCell" hasInstanceMethod:@"initWithStyle: reuseIdentifier:" withFullSignature:{"@", "q", "@", 0}];
}

- (HUDayOfWeekPickerCellAccessibility)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v6.receiver = self;
  v6.super_class = HUDayOfWeekPickerCellAccessibility;
  v4 = [(HUDayOfWeekPickerCellAccessibility *)&v6 initWithStyle:a3 reuseIdentifier:a4];
  [(HUDayOfWeekPickerCellAccessibility *)v4 _accessibilityLoadAccessibilityInformation];

  return v4;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v11.receiver = self;
  v11.super_class = HUDayOfWeekPickerCellAccessibility;
  [(HUDayOfWeekPickerCellAccessibility *)&v11 _accessibilityLoadAccessibilityInformation];
  v3 = [MEMORY[0x29EDB8D98] currentCalendar];
  v4 = [v3 weekdaySymbols];

  v10 = 0;
  objc_opt_class();
  v5 = [(HUDayOfWeekPickerCellAccessibility *)self safeValueForKey:@"buttons"];
  v6 = __UIAccessibilityCastAsClass();

  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __80__HUDayOfWeekPickerCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v8[3] = &unk_29F2C6D28;
  v9 = v4;
  v7 = v4;
  [v6 enumerateObjectsUsingBlock:v8];
}

void __80__HUDayOfWeekPickerCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = __UIAccessibilityCastAsClass();
  v5 = [v4 tag] - 1;
  if (v5 < [*(a1 + 32) count])
  {
    v6 = [*(a1 + 32) objectAtIndex:v5];
    [v4 setAccessibilityLabel:v6];
  }
}

@end