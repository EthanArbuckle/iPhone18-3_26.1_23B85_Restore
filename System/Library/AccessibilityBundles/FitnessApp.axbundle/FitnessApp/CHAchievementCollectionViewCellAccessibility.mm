@interface CHAchievementCollectionViewCellAccessibility
- (id)accessibilityLabel;
@end

@implementation CHAchievementCollectionViewCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(CHAchievementCollectionViewCellAccessibility *)self safeValueForKey:@"achievement"];
  v3 = accessibilityLocalizedStringForAchievement(v2);

  return v3;
}

@end