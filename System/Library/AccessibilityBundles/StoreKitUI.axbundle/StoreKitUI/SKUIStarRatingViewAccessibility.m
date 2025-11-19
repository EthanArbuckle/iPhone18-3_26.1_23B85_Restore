@interface SKUIStarRatingViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation SKUIStarRatingViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SKUIStarRatingView" hasInstanceVariable:@"_ratingStarsImageView" withType:"UIImageView"];
  [v3 validateClass:@"SKUIStarRatingView" hasInstanceVariable:@"_textLabel" withType:"UILabel"];
}

- (id)accessibilityLabel
{
  v3 = [(SKUIStarRatingViewAccessibility *)self safeValueForKey:@"_ratingStarsImageView"];
  v4 = [v3 accessibilityLabel];
  v5 = [(SKUIStarRatingViewAccessibility *)self safeValueForKey:@"_textLabel"];
  v8 = [v5 accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

@end