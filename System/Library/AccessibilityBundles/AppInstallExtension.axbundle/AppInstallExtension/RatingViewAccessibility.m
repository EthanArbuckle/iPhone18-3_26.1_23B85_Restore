@interface RatingViewAccessibility
- (id)accessibilityLabel;
@end

@implementation RatingViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(RatingViewAccessibility *)self safeFloatForKey:@"accessibilityRating"];
  v3.n128_f64[0] = v3.n128_f32[0];

  return MEMORY[0x2A1C69EC0](v2, v3);
}

@end