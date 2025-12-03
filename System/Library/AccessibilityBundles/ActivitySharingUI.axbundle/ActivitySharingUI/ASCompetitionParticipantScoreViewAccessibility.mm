@interface ASCompetitionParticipantScoreViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityPointsLabel;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation ASCompetitionParticipantScoreViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ASCompetitionParticipantScoreView" hasInstanceVariable:@"_nameLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"ASCompetitionParticipantScoreView" hasInstanceVariable:@"_primaryScoreLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"ASCompetitionParticipantScoreView" hasInstanceVariable:@"_secondaryScoreLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"ASCompetitionParticipantScoreView" hasInstanceVariable:@"_configuration" withType:"ASCompetitionScoreViewConfiguration"];
  [validationsCopy validateClass:@"ASCompetitionScoreViewConfiguration" hasInstanceMethod:@"primaryScoreSource" withFullSignature:{"q", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(ASCompetitionParticipantScoreViewAccessibility *)self _accessibilityStringForLabelKeyValues:@"_nameLabel"];
  localizedLowercaseString = [v2 localizedLowercaseString];

  return localizedLowercaseString;
}

- (id)accessibilityValue
{
  _accessibilityPointsLabel = [(ASCompetitionParticipantScoreViewAccessibility *)self _accessibilityPointsLabel];
  v4 = [(ASCompetitionParticipantScoreViewAccessibility *)self safeValueForKey:@"_secondaryScoreLabel"];
  accessibilityLabel = [v4 accessibilityLabel];
  v5 = __UIAXStringForVariables();

  return v5;
}

- (id)_accessibilityPointsLabel
{
  objc_opt_class();
  v3 = [(ASCompetitionParticipantScoreViewAccessibility *)self safeValueForKey:@"_primaryScoreLabel"];
  v4 = __UIAccessibilityCastAsClass();

  text = [v4 text];
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
      accessibilityLabel = [NSString localizedStringWithFormat:v11, v6];

      goto LABEL_8;
    }

    if (v9 == &dword_0 + 2)
    {
      v10 = @"competition.wins.count";
      goto LABEL_6;
    }
  }

  accessibilityLabel = [v4 accessibilityLabel];
LABEL_8:

  return accessibilityLabel;
}

@end