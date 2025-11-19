@interface ASCompetitionScoreViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation ASCompetitionScoreViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ASCompetitionScoreView" hasInstanceVariable:@"_opponentScoreView" withType:"ASCompetitionParticipantScoreView"];
  [v3 validateClass:@"ASCompetitionScoreView" hasInstanceVariable:@"_myScoreView" withType:"ASCompetitionParticipantScoreView"];
}

- (id)accessibilityLabel
{
  v3 = [(ASCompetitionScoreViewAccessibility *)self safeValueForKey:@"_opponentScoreView"];
  v4 = [(ASCompetitionScoreViewAccessibility *)self safeValueForKey:@"_myScoreView"];
  v5 = [v3 accessibilityLabel];
  v6 = [v3 accessibilityValue];
  v7 = [v4 accessibilityLabel];
  v10 = [v4 accessibilityValue];
  v8 = __UIAXStringForVariables();

  return v8;
}

@end