@interface TrendListMetricViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation TrendListMetricViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"FitnessApp.TrendListMetricView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"FitnessApp.TrendListMetricView" hasInstanceMethod:@"trendString" withFullSignature:{"@", 0}];
  [v3 validateClass:@"FitnessApp.TrendListMetricView" hasInstanceMethod:@"valueLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(TrendListMetricViewAccessibility *)self safeValueForKey:@"titleLabel"];
  v4 = [(TrendListMetricViewAccessibility *)self safeStringForKey:@"trendString"];
  v5 = [(TrendListMetricViewAccessibility *)self safeValueForKey:@"valueLabel"];
  v6 = [NSArray axArrayByIgnoringNilElementsWithCount:3, v3, v4, v5];
  v7 = AXLabelForElements();

  return v7;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = TrendListMetricViewAccessibility;
  return UIAccessibilityTraitButton | [(TrendListMetricViewAccessibility *)&v3 accessibilityTraits];
}

@end