@interface MPURatingControlAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityChangeValue:(BOOL)value;
@end

@implementation MPURatingControlAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MPURatingControl" hasInstanceMethod:@"rating" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"MPURatingControl" hasInstanceMethod:@"setRating:" withFullSignature:{"v", "d", 0}];
  [validationsCopy validateClass:@"MPURatingControl" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
}

- (void)_accessibilityChangeValue:(BOOL)value
{
  valueCopy = value;
  v4 = [(MPURatingControlAccessibility *)self safeValueForKey:@"rating"];
  [v4 doubleValue];
  v6 = v5;

  v7 = -0.2;
  if (valueCopy)
  {
    v7 = 0.2;
  }

  v8 = v7 + v6;
  if (v8 >= 0.0 && v8 <= 1.0)
  {
    AXPerformSafeBlock();
  }
}

void __59__MPURatingControlAccessibility__accessibilityChangeValue___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setRating:*(a1 + 40)];
  v2 = [*(a1 + 32) delegate];
  [v2 ratingDidChangeForRatingControl:*(a1 + 32)];
}

- (id)accessibilityValue
{
  v2 = [(MPURatingControlAccessibility *)self safeValueForKey:@"rating"];
  [v2 doubleValue];
  v4 = v3 * 5.0;

  v5.n128_f64[0] = v4;

  return MEMORY[0x2A1C69EC0](v5);
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = MPURatingControlAccessibility;
  return *MEMORY[0x29EDC7F60] | [(MPURatingControlAccessibility *)&v3 accessibilityTraits];
}

@end