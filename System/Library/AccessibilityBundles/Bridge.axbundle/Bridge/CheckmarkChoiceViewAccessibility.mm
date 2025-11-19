@interface CheckmarkChoiceViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (unint64_t)accessibilityTraits;
@end

@implementation CheckmarkChoiceViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CheckmarkChoiceView" hasInstanceVariable:@"_label" withType:"UILabel"];
  [v3 validateClass:@"CheckmarkChoiceView" hasInstanceVariable:@"_checkmark" withType:"UIImageView"];
}

- (unint64_t)accessibilityTraits
{
  v10.receiver = self;
  v10.super_class = CheckmarkChoiceViewAccessibility;
  v3 = [(CheckmarkChoiceViewAccessibility *)&v10 accessibilityTraits];
  objc_opt_class();
  v4 = [(CheckmarkChoiceViewAccessibility *)self safeValueForKey:@"_checkmark"];
  v5 = __UIAccessibilityCastAsClass();

  v6 = *MEMORY[0x29EDC7F70] | v3;
  v7 = [v5 image];

  if (v7)
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