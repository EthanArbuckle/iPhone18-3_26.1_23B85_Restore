@interface ReviewRatingViewAccessibility
- (id)accessibilityLabel;
@end

@implementation ReviewRatingViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(ReviewRatingViewAccessibility *)self safeDoubleForKey:@"accessibilityRating"];

  return MEMORY[0x2A1C69EC0](v2);
}

@end