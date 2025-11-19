@interface GKRatingViewAccessibility
- (id)accessibilityLabel;
@end

@implementation GKRatingViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(GKRatingViewAccessibility *)self safeValueForKey:@"_value"];
  [v2 floatValue];
  v3 = UIAXStarRatingStringForRating();

  return v3;
}

@end