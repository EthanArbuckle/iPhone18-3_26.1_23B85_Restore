@interface CheckmarkChoiceViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (unint64_t)accessibilityTraits;
@end

@implementation CheckmarkChoiceViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CheckmarkChoiceView" hasInstanceVariable:@"_label" withType:"UILabel"];
  [validationsCopy validateClass:@"CheckmarkChoiceView" hasInstanceVariable:@"_checkmark" withType:"UIImageView"];
}

- (unint64_t)accessibilityTraits
{
  v10.receiver = self;
  v10.super_class = CheckmarkChoiceViewAccessibility;
  accessibilityTraits = [(CheckmarkChoiceViewAccessibility *)&v10 accessibilityTraits];
  objc_opt_class();
  v4 = [(CheckmarkChoiceViewAccessibility *)self safeValueForKey:@"_checkmark"];
  v5 = __UIAccessibilityCastAsClass();

  v6 = *MEMORY[0x29EDC7F70] | accessibilityTraits;
  image = [v5 image];

  if (image)
  {
    v8 = *MEMORY[0x29EDC7FC0];
  }

  else
  {
    v8 = 0;
  }

  return v6 | v8;
}

@end