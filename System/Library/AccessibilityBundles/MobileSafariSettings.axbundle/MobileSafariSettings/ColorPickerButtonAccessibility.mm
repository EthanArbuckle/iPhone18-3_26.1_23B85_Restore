@interface ColorPickerButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation ColorPickerButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ColorPickerButton" hasInstanceVariable:@"_color" withType:"UIColor"];
  [validationsCopy validateClass:@"ColorPickerButton" hasInstanceVariable:@"_isOverflowColorsButton" withType:"BOOL"];
}

- (id)accessibilityLabel
{
  if ([(ColorPickerButtonAccessibility *)self safeBoolForKey:@"_isOverflowColorsButton"])
  {
    v3 = accessibilityLocalizedString(@"more.colors.button");
  }

  else
  {
    v4 = [(ColorPickerButtonAccessibility *)self safeValueForKey:@"_color"];
    v3 = AXColorStringForColor();
  }

  return v3;
}

@end