@interface CHWorkoutDetailFourColumnSwimmingSetTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation CHWorkoutDetailFourColumnSwimmingSetTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CHWorkoutDetailFourColumnSwimmingSetTableViewCell" hasInstanceMethod:@"configureWithSwimmingSet:index:isLastCell:formattingManager:" withFullSignature:{"v", "@", "q", "B", "@", 0}];
  [v3 validateClass:@"CHWorkoutDetailFourColumnSwimmingSetTableViewCell" isKindOfClass:@"CHWorkoutDetailFourColumnTableViewCell"];
  [v3 validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnOneLabel" withSwiftType:"UILabel"];
  [v3 validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnTwoLabel" withSwiftType:"UILabel"];
  [v3 validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnThreeLabel" withSwiftType:"UILabel"];
  [v3 validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnFourLabel" withSwiftType:"UILabel"];
  [v3 validateClass:@"UILabel" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
}

@end