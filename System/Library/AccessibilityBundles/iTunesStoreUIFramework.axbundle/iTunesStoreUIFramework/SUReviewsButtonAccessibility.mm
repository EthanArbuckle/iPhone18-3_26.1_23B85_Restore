@interface SUReviewsButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation SUReviewsButtonAccessibility

- (id)accessibilityLabel
{
  v12.receiver = self;
  v12.super_class = SUReviewsButtonAccessibility;
  accessibilityLabel = [(SUReviewsButtonAccessibility *)&v12 accessibilityLabel];
  v4 = [(SUReviewsButtonAccessibility *)self safeValueForKey:@"_userRatingCount"];
  integerValue = [v4 integerValue];

  if (integerValue < 1)
  {
    v9 = 0;
  }

  else
  {
    v6 = [(SUReviewsButtonAccessibility *)self safeValueForKey:@"_userRating"];
    [v6 floatValue];
    v8 = v7;

    v9 = starStringForStarCount(v8);
  }

  v10 = __UIAXStringForVariables();

  return v10;
}

@end