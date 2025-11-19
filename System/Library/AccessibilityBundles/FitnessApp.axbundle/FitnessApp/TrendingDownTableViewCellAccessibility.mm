@interface TrendingDownTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation TrendingDownTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"FitnessApp.TrendingDownTableViewCell" hasInstanceMethod:@"view" withFullSignature:{"@", 0}];
  [v3 validateClass:@"FitnessApp.TrendingDownTableViewCell" hasInstanceMethod:@"detailLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(TrendingDownTableViewCellAccessibility *)self safeValueForKey:@"view"];
  v4 = [(TrendingDownTableViewCellAccessibility *)self safeValueForKey:@"detailLabel"];
  v5 = [NSArray axArrayByIgnoringNilElementsWithCount:2, v3, v4];
  v6 = AXLabelForElements();

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = TrendingDownTableViewCellAccessibility;
  return UIAccessibilityTraitButton | [(TrendingDownTableViewCellAccessibility *)&v3 accessibilityTraits];
}

@end