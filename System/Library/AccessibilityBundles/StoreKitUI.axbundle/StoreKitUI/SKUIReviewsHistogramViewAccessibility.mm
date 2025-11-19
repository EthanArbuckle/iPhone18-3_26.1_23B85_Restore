@interface SKUIReviewsHistogramViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (SKUIReviewsHistogramViewAccessibility)initWithClientContext:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setHistogramValues:(id)a3;
- (void)setTitle:(id)a3;
- (void)setUserRating:(double)a3;
@end

@implementation SKUIReviewsHistogramViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SKUIReviewsHistogramView" hasInstanceMethod:@"initWithClientContext:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"SKUIReviewsHistogramView" hasInstanceMethod:@"setHistogramValues:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SKUIReviewsHistogramView" hasInstanceMethod:@"setUserRating:" withFullSignature:{"v", "d", 0}];
  [v3 validateClass:@"SKUIReviewsHistogramView" hasInstanceVariable:@"_histogramImageView" withType:"UIImageView"];
  [v3 validateClass:@"SKUIReviewsHistogramView" hasInstanceVariable:@"_userRatingStarsView" withType:"UIImageView"];
  [v3 validateClass:@"SKUIReviewsHistogramView" hasInstanceVariable:@"_histogramValues" withType:"NSArray"];
}

- (void)setTitle:(id)a3
{
  v5.receiver = self;
  v5.super_class = SKUIReviewsHistogramViewAccessibility;
  [(SKUIReviewsHistogramViewAccessibility *)&v5 setTitle:a3];
  v4 = [(SKUIReviewsHistogramViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
}

- (void)setUserRating:(double)a3
{
  v8.receiver = self;
  v8.super_class = SKUIReviewsHistogramViewAccessibility;
  [(SKUIReviewsHistogramViewAccessibility *)&v8 setUserRating:a3];
  v4 = [(SKUIReviewsHistogramViewAccessibility *)self safeValueForKey:@"_userRatingStarsView"];
  v5 = [v4 safeValueForKey:@"image"];
  v6 = [v5 accessibilityLabel];
  [v4 setAccessibilityValue:v6];

  v7 = accessibilitySKLocalizedString(@"starRating.label");
  [v4 setAccessibilityLabel:v7];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = SKUIReviewsHistogramViewAccessibility;
  [(SKUIReviewsHistogramViewAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(SKUIReviewsHistogramViewAccessibility *)self safeValueForKey:@"_histogramImageView"];
  [v3 setIsAccessibilityElement:1];
  v4 = accessibilitySKUILocalizedString(@"histogram.star.rating");
  [v3 setAccessibilityLabel:v4];

  v5 = [(SKUIReviewsHistogramViewAccessibility *)self safeValueForKey:@"_userRatingStarsView"];
  [v5 setIsAccessibilityElement:1];
}

- (void)setHistogramValues:(id)a3
{
  v23 = *MEMORY[0x29EDCA608];
  v21.receiver = self;
  v21.super_class = SKUIReviewsHistogramViewAccessibility;
  [(SKUIReviewsHistogramViewAccessibility *)&v21 setHistogramValues:a3];
  v16 = [(SKUIReviewsHistogramViewAccessibility *)self safeValueForKey:@"_histogramImageView"];
  v4 = [(SKUIReviewsHistogramViewAccessibility *)self safeValueForKey:@"_histogramValues"];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v18;
    v9 = &stru_2A2323958;
    do
    {
      v10 = 0;
      v11 = v9;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v17 + 1) + 8 * v10);
        ++v7;
        v13 = UIAXStarRatingStringForRating();
        [v12 floatValue];
        v15 = AXFormatFloatWithPercentage();
        v9 = __UIAXStringForVariables();

        ++v10;
        v11 = v9;
      }

      while (v6 != v10);
      v6 = [v4 countByEnumeratingWithState:&v17 objects:v22 count:{16, v13, v15, @"__AXStringForVariablesSentinel"}];
    }

    while (v6);
  }

  else
  {
    v9 = &stru_2A2323958;
  }

  [v16 setAccessibilityValue:v9];

  v14 = *MEMORY[0x29EDCA608];
}

- (SKUIReviewsHistogramViewAccessibility)initWithClientContext:(id)a3
{
  v5.receiver = self;
  v5.super_class = SKUIReviewsHistogramViewAccessibility;
  v3 = [(SKUIReviewsHistogramViewAccessibility *)&v5 initWithClientContext:a3];
  [(SKUIReviewsHistogramViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

@end