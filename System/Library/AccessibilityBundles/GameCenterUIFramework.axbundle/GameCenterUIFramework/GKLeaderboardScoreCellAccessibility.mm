@interface GKLeaderboardScoreCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (unint64_t)accessibilityTraits;
@end

@implementation GKLeaderboardScoreCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"GKLeaderboardScoreCell" hasInstanceMethod:@"rankLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GKLeaderboardScoreCell" hasInstanceMethod:@"nameLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GKLeaderboardScoreCell" hasInstanceMethod:@"scoreLabel" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = GKLeaderboardScoreCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(GKLeaderboardScoreCellAccessibility *)&v3 accessibilityTraits];
}

@end