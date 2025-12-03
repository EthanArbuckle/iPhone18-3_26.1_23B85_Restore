@interface STDatePickerBarAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation STDatePickerBarAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"STDatePickerBar" hasInstanceVariable:@"_dateLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"STDatePickerBar" hasInstanceMethod:@"rightArrowButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STDatePickerBar" hasInstanceMethod:@"leftArrowButton" withFullSignature:{"@", 0}];
}

- (id)accessibilityValue
{
  v2 = [(STDatePickerBarAccessibility *)self safeUIViewForKey:@"_dateLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
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