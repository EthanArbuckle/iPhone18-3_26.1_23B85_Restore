@interface CHWorkoutDetailFourColumnSwimmingSetTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation CHWorkoutDetailFourColumnSwimmingSetTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnSwimmingSetTableViewCell" hasInstanceMethod:@"configureWithSwimmingSet:index:isLastCell:formattingManager:" withFullSignature:{"v", "@", "q", "B", "@", 0}];
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnSwimmingSetTableViewCell" isKindOfClass:@"CHWorkoutDetailFourColumnTableViewCell"];
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnOneLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnTwoLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnThreeLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnFourLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"UILabel" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
}

@end