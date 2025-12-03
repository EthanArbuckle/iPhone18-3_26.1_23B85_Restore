@interface SKUIStarBarViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation SKUIStarBarViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SKUIStarBarView" hasInstanceVariable:@"_numberOfStars" withType:"q"];
  [validationsCopy validateClass:@"SKUIStarBarView" hasInstanceVariable:@"_value" withType:"d"];
}

- (id)accessibilityLabel
{
  v2 = [(SKUIStarBarViewAccessibility *)self safeValueForKey:@"_numberOfStars"];
  [v2 floatValue];
  v3 = UIAXStarRatingStringForRating();

  return v3;
}

- (id)accessibilityValue
{
  v2 = [(SKUIStarBarViewAccessibility *)self safeValueForKey:@"_value"];
  [v2 floatValue];
  v3 = AXFormatFloatWithPercentage();

  return v3;
}

@end