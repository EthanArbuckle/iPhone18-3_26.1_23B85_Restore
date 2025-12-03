@interface ASCompetitionScoreViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation ASCompetitionScoreViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ASCompetitionScoreView" hasInstanceVariable:@"_opponentScoreView" withType:"ASCompetitionParticipantScoreView"];
  [validationsCopy validateClass:@"ASCompetitionScoreView" hasInstanceVariable:@"_myScoreView" withType:"ASCompetitionParticipantScoreView"];
}

- (id)accessibilityLabel
{
  v3 = [(ASCompetitionScoreViewAccessibility *)self safeValueForKey:@"_opponentScoreView"];
  v4 = [(ASCompetitionScoreViewAccessibility *)self safeValueForKey:@"_myScoreView"];
  accessibilityLabel = [v3 accessibilityLabel];
  accessibilityValue = [v3 accessibilityValue];
  accessibilityLabel2 = [v4 accessibilityLabel];
  accessibilityValue2 = [v4 accessibilityValue];
  v8 = __UIAXStringForVariables();

  return v8;
}

@end