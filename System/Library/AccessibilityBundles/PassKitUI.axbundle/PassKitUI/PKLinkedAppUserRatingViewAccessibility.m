@interface PKLinkedAppUserRatingViewAccessibility
- (id)accessibilityLabel;
@end

@implementation PKLinkedAppUserRatingViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(PKLinkedAppUserRatingViewAccessibility *)self safeValueForKey:@"userRating"];
  [v2 floatValue];
  v3 = UIAXStarRatingStringForRating();

  return v3;
}

@end