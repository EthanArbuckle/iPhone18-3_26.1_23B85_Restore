@interface SUUIStarRatingViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation SUUIStarRatingViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SUUIStarRatingView" hasInstanceVariable:@"_ratingStarsImageView" withType:"UIImageView"];
  [v3 validateClass:@"SUUIStarRatingView" hasInstanceVariable:@"_textLabel" withType:"UILabel"];
}

- (id)accessibilityLabel
{
  v3 = [(SUUIStarRatingViewAccessibility *)self safeValueForKey:@"_ratingStarsImageView"];
  v4 = [v3 accessibilityLabel];
  v5 = [(SUUIStarRatingViewAccessibility *)self safeValueForKey:@"_textLabel"];
  v8 = [v5 accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

@end