@interface CHFriendListCompetitionTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation CHFriendListCompetitionTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CHFriendListCompetitionTableViewCell" hasInstanceVariable:@"_daysRemainingLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"CHFriendListCompetitionTableViewCell" hasInstanceVariable:@"_scoreView" withType:"ASCompetitionScoreView"];
}

@end