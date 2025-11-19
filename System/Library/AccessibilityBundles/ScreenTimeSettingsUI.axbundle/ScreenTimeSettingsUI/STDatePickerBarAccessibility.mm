@interface STDatePickerBarAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation STDatePickerBarAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"STDatePickerBar" hasInstanceVariable:@"_dateLabel" withType:"UILabel"];
  [v3 validateClass:@"STDatePickerBar" hasInstanceMethod:@"rightArrowButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STDatePickerBar" hasInstanceMethod:@"leftArrowButton" withFullSignature:{"@", 0}];
}

- (id)accessibilityValue
{
  v2 = [(STDatePickerBarAccessibility *)self safeUIViewForKey:@"_dateLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (void)accessibilityIncrement
{
  objc_opt_class();
  v3 = [(STDatePickerBarAccessibility *)self safeUIViewForKey:@"rightArrowButton"];
  v4 = __UIAccessibilityCastAsClass();

  if ([v4 isEnabled])
  {
    [v4 sendActionsForControlEvents:0x2000];
  }
}

- (void)accessibilityDecrement
{
  objc_opt_class();
  v3 = [(STDatePickerBarAccessibility *)self safeUIViewForKey:@"leftArrowButton"];
  v4 = __UIAccessibilityCastAsClass();

  if ([v4 isEnabled])
  {
    [v4 sendActionsForControlEvents:0x2000];
  }
}

@end