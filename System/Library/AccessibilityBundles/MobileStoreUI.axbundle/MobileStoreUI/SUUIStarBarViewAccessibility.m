@interface SUUIStarBarViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation SUUIStarBarViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SUUIStarBarView" hasInstanceVariable:@"_numberOfStars" withType:"q"];
  [v3 validateClass:@"SUUIStarBarView" hasInstanceVariable:@"_value" withType:"d"];
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