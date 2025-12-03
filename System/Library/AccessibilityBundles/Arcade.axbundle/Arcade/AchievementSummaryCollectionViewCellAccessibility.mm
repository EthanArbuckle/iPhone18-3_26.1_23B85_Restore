@interface AchievementSummaryCollectionViewCellAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation AchievementSummaryCollectionViewCellAccessibility

- (id)accessibilityLabel
{
  v3 = [(AchievementSummaryCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"achievementGroupView"];
  v4 = [v3 safeSwiftValueForKey:@"achievement"];
  v5 = [(AchievementSummaryCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"numberCompletedLabel"];
  v6 = [(AchievementSummaryCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"outOfTotalLabel"];
  accessibilityLabel = [v5 accessibilityLabel];
  intValue = [accessibilityLabel intValue];
  accessibilityLabel2 = [v6 accessibilityLabel];
  v10 = [accessibilityLabel2 stringByReplacingOccurrencesOfString:@"\u202A/ " withString:&stru_2A2106700];

  intValue2 = [v10 intValue];
  v12 = MEMORY[0x29EDBA0F8];
  v13 = accessibilityAppStoreLocalizedString(@"game.achievements.completed");
  v14 = [v12 stringWithFormat:v13, intValue, intValue2];

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