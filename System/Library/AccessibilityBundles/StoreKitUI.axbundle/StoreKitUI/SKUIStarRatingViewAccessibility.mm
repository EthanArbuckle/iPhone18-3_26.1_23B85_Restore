@interface SKUIStarRatingViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation SKUIStarRatingViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SKUIStarRatingView" hasInstanceVariable:@"_ratingStarsImageView" withType:"UIImageView"];
  [validationsCopy validateClass:@"SKUIStarRatingView" hasInstanceVariable:@"_textLabel" withType:"UILabel"];
}

- (id)accessibilityLabel
{
  v3 = [(SKUIStarRatingViewAccessibility *)self safeValueForKey:@"_ratingStarsImageView"];
  accessibilityLabel = [v3 accessibilityLabel];
  v5 = [(SKUIStarRatingViewAccessibility *)self safeValueForKey:@"_textLabel"];
  accessibilityLabel2 = [v5 accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

@end