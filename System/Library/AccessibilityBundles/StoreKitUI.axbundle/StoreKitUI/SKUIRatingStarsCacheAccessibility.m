@interface SKUIRatingStarsCacheAccessibility
- (id)ratingStarsImageForRating:(double)a3;
@end

@implementation SKUIRatingStarsCacheAccessibility

- (id)ratingStarsImageForRating:(double)a3
{
  v6.receiver = self;
  v6.super_class = SKUIRatingStarsCacheAccessibility;
  v3 = [(SKUIRatingStarsCacheAccessibility *)&v6 ratingStarsImageForRating:?];
  v4 = UIAXStarRatingStringForRating();
  [v3 setAccessibilityLabel:v4];

  return v3;
}

@end