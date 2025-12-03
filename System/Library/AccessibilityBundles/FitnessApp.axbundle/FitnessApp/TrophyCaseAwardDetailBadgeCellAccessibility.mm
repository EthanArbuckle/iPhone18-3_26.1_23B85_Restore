@interface TrophyCaseAwardDetailBadgeCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation TrophyCaseAwardDetailBadgeCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"FitnessApp.TrophyCaseAwardDetailBadgeCell" hasSwiftField:@"badgeViewContainer" withSwiftType:"UIView"];
  [validationsCopy validateClass:@"FitnessApp.TrophyCaseAwardDetailBadgeCell" hasSwiftField:@"achievementTitleLabel" withSwiftType:"UILabel"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v10.receiver = self;
  v10.super_class = TrophyCaseAwardDetailBadgeCellAccessibility;
  [(TrophyCaseAwardDetailBadgeCellAccessibility *)&v10 _accessibilityLoadAccessibilityInformation];
  v3 = [(TrophyCaseAwardDetailBadgeCellAccessibility *)self safeSwiftValueForKey:@"badgeViewContainer"];
  v4 = [(TrophyCaseAwardDetailBadgeCellAccessibility *)self safeSwiftValueForKey:@"achievementTitleLabel"];
  [v3 setIsAccessibilityElement:1];
  v5 = accessibilityLocalizedString(@"achievement.badge.format");
  accessibilityLabel = [v4 accessibilityLabel];
  v7 = [NSString stringWithFormat:v5, accessibilityLabel];
  [v3 setAccessibilityLabel:v7];

  accessibilityTraits = [v3 accessibilityTraits];
  [v3 setAccessibilityTraits:UIAccessibilityTraitImage | accessibilityTraits];
  accessibilityTraits2 = [v4 accessibilityTraits];
  [v4 setAccessibilityTraits:UIAccessibilityTraitHeader | accessibilityTraits2];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = TrophyCaseAwardDetailBadgeCellAccessibility;
  [(TrophyCaseAwardDetailBadgeCellAccessibility *)&v3 layoutSubviews];
  [(TrophyCaseAwardDetailBadgeCellAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end