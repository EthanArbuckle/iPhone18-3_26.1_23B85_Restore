@interface AchievementHighlightCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation AchievementHighlightCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"GameCenterUI.AchievementHighlightCollectionViewCell" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GameCenterUI.AchievementHighlightCollectionViewCell" hasInstanceMethod:@"accessibilitySubtitleLabel" withFullSignature:{"@", 0}];
}

@end