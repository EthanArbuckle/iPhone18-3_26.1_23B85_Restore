@interface SUUIStarRatingViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation SUUIStarRatingViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SUUIStarRatingView" hasInstanceVariable:@"_ratingStarsImageView" withType:"UIImageView"];
  [validationsCopy validateClass:@"SUUIStarRatingView" hasInstanceVariable:@"_textLabel" withType:"UILabel"];
}

- (id)accessibilityLabel
{
  v3 = [(SUUIStarRatingViewAccessibility *)self safeValueForKey:@"_ratingStarsImageView"];
  accessibilityLabel = [v3 accessibilityLabel];
  v5 = [(SUUIStarRatingViewAccessibility *)self safeValueForKey:@"_textLabel"];
  accessibilityLabel2 = [v5 accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

@end