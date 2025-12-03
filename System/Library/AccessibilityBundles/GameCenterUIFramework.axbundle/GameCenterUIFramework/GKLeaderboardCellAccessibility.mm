@interface GKLeaderboardCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (unint64_t)accessibilityTraits;
@end

@implementation GKLeaderboardCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"GKLeaderboardCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GKLeaderboardCell" hasInstanceMethod:@"countLabel" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = GKLeaderboardCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(GKLeaderboardCellAccessibility *)&v3 accessibilityTraits];
}

@end