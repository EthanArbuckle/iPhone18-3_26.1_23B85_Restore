@interface SUUIStarBarViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation SUUIStarBarViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SUUIStarBarView" hasInstanceVariable:@"_numberOfStars" withType:"q"];
  [validationsCopy validateClass:@"SUUIStarBarView" hasInstanceVariable:@"_value" withType:"d"];
}

- (id)accessibilityLabel
{
  v2 = [(SUUIStarBarViewAccessibility *)self safeValueForKey:@"_numberOfStars"];
  [v2 floatValue];
  v3 = UIAXStarRatingStringForRating();

  return v3;
}

- (id)accessibilityValue
{
  v2 = [(SUUIStarBarViewAccessibility *)self safeValueForKey:@"_value"];
  [v2 floatValue];
  v3 = AXFormatFloatWithPercentage();

  return v3;
}

@end