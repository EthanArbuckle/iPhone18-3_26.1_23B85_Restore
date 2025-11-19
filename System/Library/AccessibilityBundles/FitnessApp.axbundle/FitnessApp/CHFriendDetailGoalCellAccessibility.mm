@interface CHFriendDetailGoalCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation CHFriendDetailGoalCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CHFriendDetailGoalCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"CHFriendDetailGoalCell" hasInstanceVariable:@"_subtitleLabel" withType:"UILabel"];
}

- (id)accessibilityLabel
{
  v2 = [(CHFriendDetailGoalCellAccessibility *)self safeValueForKey:@"_titleLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityValue
{
  v2 = [(CHFriendDetailGoalCellAccessibility *)self safeValueForKey:@"_subtitleLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end