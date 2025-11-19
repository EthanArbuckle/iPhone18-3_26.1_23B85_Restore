@interface CHFriendListCompetitionTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation CHFriendListCompetitionTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CHFriendListCompetitionTableViewCell" hasInstanceVariable:@"_daysRemainingLabel" withType:"UILabel"];
  [v3 validateClass:@"CHFriendListCompetitionTableViewCell" hasInstanceVariable:@"_scoreView" withType:"ASCompetitionScoreView"];
}

@end