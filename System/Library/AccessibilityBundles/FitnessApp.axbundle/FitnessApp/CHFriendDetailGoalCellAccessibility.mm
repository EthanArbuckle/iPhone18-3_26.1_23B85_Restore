@interface CHFriendDetailGoalCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation CHFriendDetailGoalCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CHFriendDetailGoalCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"CHFriendDetailGoalCell" hasInstanceVariable:@"_subtitleLabel" withType:"UILabel"];
}

- (id)accessibilityLabel
{
  v2 = [(CHFriendDetailGoalCellAccessibility *)self safeValueForKey:@"_titleLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  v2 = [(CHFriendDetailGoalCellAccessibility *)self safeValueForKey:@"_subtitleLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end