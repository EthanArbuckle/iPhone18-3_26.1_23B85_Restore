@interface AchievementSummaryCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation AchievementSummaryCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"BridgeStoreExtension.AchievementSummaryCollectionViewCell" hasSwiftField:@"achievementGroupView" withSwiftType:"Optional<AchievementGroupView>"];
  [v3 validateClass:@"BridgeStoreExtension.AchievementSummaryCollectionViewCell" hasSwiftField:@"numberCompletedLabel" withSwiftType:"DynamicTypeLabel"];
  [v3 validateClass:@"BridgeStoreExtension.AchievementSummaryCollectionViewCell" hasSwiftField:@"outOfTotalLabel" withSwiftType:"DynamicTypeLabel"];
  [v3 validateClass:@"AppStoreKit.AchievementGroupView" hasSwiftField:@"achievement" withSwiftType:"Optional<AchievementCard>"];
}

- (id)accessibilityLabel
{
  v3 = [(AchievementSummaryCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"achievementGroupView"];
  v4 = [v3 safeSwiftValueForKey:@"achievement"];
  v5 = [(AchievementSummaryCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"numberCompletedLabel"];
  v6 = [(AchievementSummaryCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"outOfTotalLabel"];
  v7 = [v5 accessibilityLabel];
  v8 = [v7 intValue];
  v9 = [v6 accessibilityLabel];
  v10 = [v9 stringByReplacingOccurrencesOfString:@"\u202A/ " withString:&stru_2A212BD08];

  v11 = [v10 intValue];
  v12 = MEMORY[0x29EDBA0F8];
  v13 = accessibilityAppStoreLocalizedString(@"game.achievements.completed");
  v14 = [v12 stringWithFormat:v13, v8, v11];

  v15 = __UIAXStringForVariables();

  return v15;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = AchievementSummaryCollectionViewCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(AchievementSummaryCollectionViewCellAccessibility *)&v3 accessibilityTraits];
}

@end