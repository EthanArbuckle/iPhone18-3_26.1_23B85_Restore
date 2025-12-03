@interface SUUIReviewsHistogramViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (SUUIReviewsHistogramViewAccessibility)initWithClientContext:(id)context;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setHistogramValues:(id)values;
- (void)setTitle:(id)title;
- (void)setUserRating:(double)rating;
@end

@implementation SUUIReviewsHistogramViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SUUIReviewsHistogramView" hasInstanceMethod:@"initWithClientContext:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"SUUIReviewsHistogramView" hasInstanceMethod:@"setHistogramValues:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SUUIReviewsHistogramView" hasInstanceMethod:@"setUserRating:" withFullSignature:{"v", "d", 0}];
  [validationsCopy validateClass:@"SUUIReviewsHistogramView" hasInstanceVariable:@"_histogramImageView" withType:"UIImageView"];
  [validationsCopy validateClass:@"SUUIReviewsHistogramView" hasInstanceVariable:@"_userRatingStarsView" withType:"UIImageView"];
  [validationsCopy validateClass:@"SUUIReviewsHistogramView" hasInstanceVariable:@"_histogramValues" withType:"NSArray"];
}

- (void)setTitle:(id)title
{
  v5.receiver = self;
  v5.super_class = SUUIReviewsHistogramViewAccessibility;
  [(SUUIReviewsHistogramViewAccessibility *)&v5 setTitle:title];
  v4 = [(SUUIReviewsHistogramViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
}

- (void)setUserRating:(double)rating
{
  v8.receiver = self;
  v8.super_class = SUUIReviewsHistogramViewAccessibility;
  [(SUUIReviewsHistogramViewAccessibility *)&v8 setUserRating:rating];
  v4 = [(SUUIReviewsHistogramViewAccessibility *)self safeValueForKey:@"_userRatingStarsView"];
  v5 = [v4 safeValueForKey:@"image"];
  accessibilityLabel = [v5 accessibilityLabel];
  [v4 setAccessibilityValue:accessibilityLabel];

  v7 = accessibilityLocalizedString(@"starRating.label");
  [v4 setAccessibilityLabel:v7];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = SUUIReviewsHistogramViewAccessibility;
  [(SUUIReviewsHistogramViewAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(SUUIReviewsHistogramViewAccessibility *)self safeValueForKey:@"_histogramImageView"];
  [v3 setIsAccessibilityElement:1];
  v4 = accessibilityLocalizedString(@"histogram.star.rating");
  [v3 setAccessibilityLabel:v4];

  v5 = [(SUUIReviewsHistogramViewAccessibility *)self safeValueForKey:@"_userRatingStarsView"];
  [v5 setIsAccessibilityElement:1];
}

- (void)setHistogramValues:(id)values
{
  v23 = *MEMORY[0x29EDCA608];
  v21.receiver = self;
  v21.super_class = SUUIReviewsHistogramViewAccessibility;
  [(SUUIReviewsHistogramViewAccessibility *)&v21 setHistogramValues:values];
  v16 = [(SUUIReviewsHistogramViewAccessibility *)self safeValueForKey:@"_histogramImageView"];
  v4 = [(SUUIReviewsHistogramViewAccessibility *)self safeValueForKey:@"_histogramValues"];
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
    v9 = &stru_2A2230BA8;
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
    v9 = &stru_2A2230BA8;
  }

  [v16 setAccessibilityValue:v9];

  v14 = *MEMORY[0x29EDCA608];
}

- (SUUIReviewsHistogramViewAccessibility)initWithClientContext:(id)context
{
  v5.receiver = self;
  v5.super_class = SUUIReviewsHistogramViewAccessibility;
  v3 = [(SUUIReviewsHistogramViewAccessibility *)&v5 initWithClientContext:context];
  [(SUUIReviewsHistogramViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

@end