@interface SKStarRatingControlAccessibility
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation SKStarRatingControlAccessibility

- (void)accessibilityIncrement
{
  v2 = [(SKStarRatingControlAccessibility *)self safeValueForKey:@"value"];
  [v2 floatValue];
  v4 = v3;

  if (v4 < 1.0)
  {
    AXPerformSafeBlock();
  }
}

uint64_t __58__SKStarRatingControlAccessibility_accessibilityIncrement__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  *&v1 = v1;
  return [*(a1 + 32) setValue:v1];
}

- (void)accessibilityDecrement
{
  v2 = [(SKStarRatingControlAccessibility *)self safeValueForKey:@"value"];
  [v2 floatValue];
  v4 = v3;

  if (v4 > 0.0)
  {
    AXPerformSafeBlock();
  }
}

uint64_t __58__SKStarRatingControlAccessibility_accessibilityDecrement__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  *&v1 = v1;
  return [*(a1 + 32) setValue:v1];
}

- (id)accessibilityValue
{
  v2 = [(SKStarRatingControlAccessibility *)self safeValueForKey:@"value"];
  [v2 floatValue];
  v4 = (v3 * 5.0);

  v5.n128_f64[0] = v4;

  return MEMORY[0x2A1C69EC0](v5);
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SKStarRatingControlAccessibility;
  return *MEMORY[0x29EDC7F60] | [(SKStarRatingControlAccessibility *)&v3 accessibilityTraits];
}

@end