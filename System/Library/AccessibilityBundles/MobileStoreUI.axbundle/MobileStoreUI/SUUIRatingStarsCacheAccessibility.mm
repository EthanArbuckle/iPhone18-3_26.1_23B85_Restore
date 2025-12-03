@interface SUUIRatingStarsCacheAccessibility
- (id)ratingStarsImageForRating:(double)rating;
@end

@implementation SUUIRatingStarsCacheAccessibility

- (id)ratingStarsImageForRating:(double)rating
{
  v6.receiver = self;
  v6.super_class = SUUIRatingStarsCacheAccessibility;
  v3 = [(SUUIRatingStarsCacheAccessibility *)&v6 ratingStarsImageForRating:?];
  v4 = UIAXStarRatingStringForRating();
  [v3 setAccessibilityLabel:v4];

  return v3;
}

@end