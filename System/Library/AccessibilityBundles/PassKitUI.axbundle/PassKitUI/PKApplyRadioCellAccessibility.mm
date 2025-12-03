@interface PKApplyRadioCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityActivate;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation PKApplyRadioCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKApplyRadioCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"PKApplyRadioCell" hasInstanceVariable:@"_button" withType:"UIButton"];
  [validationsCopy validateClass:@"PKApplyRadioCell" hasInstanceVariable:@"_radioButtonSelected" withType:"B"];
}

- (id)accessibilityLabel
{
  v2 = [(PKApplyRadioCellAccessibility *)self safeUIViewForKey:@"_titleLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDC7F70];
  v3 = [(PKApplyRadioCellAccessibility *)self safeBoolForKey:@"_radioButtonSelected"];
  v4 = *MEMORY[0x29EDC7FC0];
  if (!v3)
  {
    v4 = 0;
  }

  return v4 | v2;
}

- (BOOL)accessibilityActivate
{
  v9 = 0;
  objc_opt_class();
  v3 = [(PKApplyRadioCellAccessibility *)self safeUIViewForKey:@"_button"];
  v4 = __UIAccessibilityCastAsClass();

  if (v4)
  {
    v7 = v4;
    AXPerformSafeBlock();

    accessibilityActivate = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PKApplyRadioCellAccessibility;
    accessibilityActivate = [(PKApplyRadioCellAccessibility *)&v8 accessibilityActivate];
  }

  return accessibilityActivate;
}

@end