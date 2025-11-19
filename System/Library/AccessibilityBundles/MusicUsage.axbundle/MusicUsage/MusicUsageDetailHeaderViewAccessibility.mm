@interface MusicUsageDetailHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation MusicUsageDetailHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MusicUsageDetailHeaderView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"MusicUsageDetailHeaderView" hasInstanceVariable:@"_subtitleLabel" withType:"UILabel"];
  [v3 validateClass:@"MusicUsageDetailHeaderView" hasInstanceVariable:@"_sizeLabel" withType:"UILabel"];
}

- (id)accessibilityLabel
{
  v3 = [(MusicUsageDetailHeaderViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  v4 = [v3 accessibilityLabel];
  v5 = [(MusicUsageDetailHeaderViewAccessibility *)self safeValueForKey:@"_subtitleLabel"];
  v6 = [v5 accessibilityLabel];
  v7 = [(MusicUsageDetailHeaderViewAccessibility *)self safeValueForKey:@"_sizeLabel"];
  v10 = [v7 accessibilityLabel];
  v8 = __UIAXStringForVariables();

  return v8;
}

@end