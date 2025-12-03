@interface HUDayOfWeekPickerCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (HUDayOfWeekPickerCellAccessibility)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation HUDayOfWeekPickerCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HUDayOfWeekPickerCell" hasInstanceMethod:@"buttons" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUDayOfWeekPickerCell" hasInstanceMethod:@"initWithStyle: reuseIdentifier:" withFullSignature:{"@", "q", "@", 0}];
}

- (HUDayOfWeekPickerCellAccessibility)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = HUDayOfWeekPickerCellAccessibility;
  v4 = [(HUDayOfWeekPickerCellAccessibility *)&v6 initWithStyle:style reuseIdentifier:identifier];
  [(HUDayOfWeekPickerCellAccessibility *)v4 _accessibilityLoadAccessibilityInformation];

  return v4;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v11.receiver = self;
  v11.super_class = HUDayOfWeekPickerCellAccessibility;
  [(HUDayOfWeekPickerCellAccessibility *)&v11 _accessibilityLoadAccessibilityInformation];
  currentCalendar = [MEMORY[0x29EDB8D98] currentCalendar];
  weekdaySymbols = [currentCalendar weekdaySymbols];

  v10 = 0;
  objc_opt_class();
  v5 = [(HUDayOfWeekPickerCellAccessibility *)self safeValueForKey:@"buttons"];
  v6 = __UIAccessibilityCastAsClass();

  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __80__HUDayOfWeekPickerCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v8[3] = &unk_29F2C6D28;
  v9 = weekdaySymbols;
  v7 = weekdaySymbols;
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