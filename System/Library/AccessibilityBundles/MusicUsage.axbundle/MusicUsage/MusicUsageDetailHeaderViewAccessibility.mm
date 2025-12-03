@interface MusicUsageDetailHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation MusicUsageDetailHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicUsageDetailHeaderView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"MusicUsageDetailHeaderView" hasInstanceVariable:@"_subtitleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"MusicUsageDetailHeaderView" hasInstanceVariable:@"_sizeLabel" withType:"UILabel"];
}

- (id)accessibilityLabel
{
  v3 = [(MusicUsageDetailHeaderViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  accessibilityLabel = [v3 accessibilityLabel];
  v5 = [(MusicUsageDetailHeaderViewAccessibility *)self safeValueForKey:@"_subtitleLabel"];
  accessibilityLabel2 = [v5 accessibilityLabel];
  v7 = [(MusicUsageDetailHeaderViewAccessibility *)self safeValueForKey:@"_sizeLabel"];
  accessibilityLabel3 = [v7 accessibilityLabel];
  v8 = __UIAXStringForVariables();

  return v8;
}

@end