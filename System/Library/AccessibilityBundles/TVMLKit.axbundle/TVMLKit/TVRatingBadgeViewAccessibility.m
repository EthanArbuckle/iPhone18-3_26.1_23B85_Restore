@interface TVRatingBadgeViewAccessibility
- (id)accessibilityLabel;
@end

@implementation TVRatingBadgeViewAccessibility

- (id)accessibilityLabel
{
  v3 = [(TVRatingBadgeViewAccessibility *)self safeValueForKey:@"ratingValue"];
  [v3 floatValue];
  v5 = v4;
  v6 = v4;

  if (v5 < 0.0 || v5 > 1.0)
  {
    v10 = [MEMORY[0x29EDBA070] numberWithDouble:v6];
    _AXAssert();

    v11.receiver = self;
    v11.super_class = TVRatingBadgeViewAccessibility;
    v8 = [(TVRatingBadgeViewAccessibility *)&v11 accessibilityLabel];
  }

  else
  {
    v8 = UIAXStarRatingStringForRatingWithMaxRating();
  }

  return v8;
}

@end