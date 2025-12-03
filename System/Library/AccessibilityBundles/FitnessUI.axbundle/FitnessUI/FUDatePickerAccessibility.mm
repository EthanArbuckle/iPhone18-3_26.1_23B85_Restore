@interface FUDatePickerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (FUDatePickerAccessibility)initWithFrame:(CGRect)frame;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation FUDatePickerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"FUDatePicker" hasInstanceVariable:@"_dayWheel" withType:"FUScrollWheel"];
  [validationsCopy validateClass:@"FUDatePicker" hasInstanceVariable:@"_monthWheel" withType:"FUScrollWheel"];
  [validationsCopy validateClass:@"FUDatePicker" hasInstanceVariable:@"_yearWheel" withType:"FUScrollWheel"];
  [validationsCopy validateClass:@"FUDatePicker" hasInstanceVariable:@"_dayLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"FUDatePicker" hasInstanceVariable:@"_monthLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"FUDatePicker" hasInstanceVariable:@"_yearLabel" withType:"UILabel"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3 = [(FUDatePickerAccessibility *)self safeValueForKey:@"_dayWheel"];
  v4 = [(FUDatePickerAccessibility *)self safeValueForKey:@"_dayLabel"];
  v5 = [v4 safeValueForKey:@"text"];
  [v3 setAccessibilityLabel:v5];

  v6 = [(FUDatePickerAccessibility *)self safeValueForKey:@"_monthWheel"];
  v7 = [(FUDatePickerAccessibility *)self safeValueForKey:@"_monthLabel"];
  v8 = [v7 safeValueForKey:@"text"];
  [v6 setAccessibilityLabel:v8];

  v9 = [(FUDatePickerAccessibility *)self safeValueForKey:@"_yearWheel"];
  v10 = [(FUDatePickerAccessibility *)self safeValueForKey:@"_yearLabel"];
  v11 = [v10 safeValueForKey:@"text"];
  [v9 setAccessibilityLabel:v11];

  v12 = [(FUDatePickerAccessibility *)self safeValueForKey:@"_dayLabel"];
  [v12 setIsAccessibilityElement:0];

  v13 = [(FUDatePickerAccessibility *)self safeValueForKey:@"_monthLabel"];
  [v13 setIsAccessibilityElement:0];

  v14 = [(FUDatePickerAccessibility *)self safeValueForKey:@"_yearLabel"];
  [v14 setIsAccessibilityElement:0];

  v15.receiver = self;
  v15.super_class = FUDatePickerAccessibility;
  [(FUDatePickerAccessibility *)&v15 _accessibilityLoadAccessibilityInformation];
}

- (FUDatePickerAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = FUDatePickerAccessibility;
  v3 = [(FUDatePickerAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(FUDatePickerAccessibility *)v3 _accessibilityLoadAccessibilityInformation];
  return v3;
}

@end