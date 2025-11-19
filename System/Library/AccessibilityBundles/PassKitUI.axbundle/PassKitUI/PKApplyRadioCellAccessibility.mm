@interface PKApplyRadioCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityActivate;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation PKApplyRadioCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKApplyRadioCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"PKApplyRadioCell" hasInstanceVariable:@"_button" withType:"UIButton"];
  [v3 validateClass:@"PKApplyRadioCell" hasInstanceVariable:@"_radioButtonSelected" withType:"B"];
}

- (id)accessibilityLabel
{
  v2 = [(PKApplyRadioCellAccessibility *)self safeUIViewForKey:@"_titleLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
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

    v5 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PKApplyRadioCellAccessibility;
    v5 = [(PKApplyRadioCellAccessibility *)&v8 accessibilityActivate];
  }

  return v5;
}

@end