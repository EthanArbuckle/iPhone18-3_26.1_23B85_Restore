@interface ASCompetitionParticipantScoreViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityPointsLabel;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation ASCompetitionParticipantScoreViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ASCompetitionParticipantScoreView" hasInstanceVariable:@"_nameLabel" withType:"UILabel"];
  [v3 validateClass:@"ASCompetitionParticipantScoreView" hasInstanceVariable:@"_primaryScoreLabel" withType:"UILabel"];
  [v3 validateClass:@"ASCompetitionParticipantScoreView" hasInstanceVariable:@"_secondaryScoreLabel" withType:"UILabel"];
  [v3 validateClass:@"ASCompetitionParticipantScoreView" hasInstanceVariable:@"_configuration" withType:"ASCompetitionScoreViewConfiguration"];
  [v3 validateClass:@"ASCompetitionScoreViewConfiguration" hasInstanceMethod:@"primaryScoreSource" withFullSignature:{"q", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(ASCompetitionParticipantScoreViewAccessibility *)self _accessibilityStringForLabelKeyValues:@"_nameLabel"];
  v3 = [v2 localizedLowercaseString];

  return v3;
}

- (id)accessibilityValue
{
  v3 = [(ASCompetitionParticipantScoreViewAccessibility *)self _accessibilityPointsLabel];
  v4 = [(ASCompetitionParticipantScoreViewAccessibility *)self safeValueForKey:@"_secondaryScoreLabel"];
  v7 = [v4 accessibilityLabel];
  v5 = __UIAXStringForVariables();

  return v5;
}

- (id)_accessibilityPointsLabel
{
  objc_opt_class();
  v3 = [(ASCompetitionParticipantScoreViewAccessibility *)self safeValueForKey:@"_primaryScoreLabel"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 text];
  v6 = AXIntegerValueFromString();

  v7 = [(ASCompetitionParticipantScoreViewAccessibility *)self safeValueForKey:@"_configuration"];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 safeIntegerForKey:@"primaryScoreSource"];
    if (v9 < 2)
    {
      v10 = @"competition.points.count";
LABEL_6:
      v11 = accessibilityLocalizedString(v10);
      v12 = [NSString localizedStringWithFormat:v11, v6];

      goto LABEL_8;
    }

    if (v9 == &dword_0 + 2)
    {
      v10 = @"competition.wins.count";
      goto LABEL_6;
    }
  }

  v12 = [v4 accessibilityLabel];
LABEL_8:

  return v12;
}

@end