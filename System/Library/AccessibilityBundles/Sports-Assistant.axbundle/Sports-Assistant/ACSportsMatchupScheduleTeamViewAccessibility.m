@interface ACSportsMatchupScheduleTeamViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation ACSportsMatchupScheduleTeamViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ACSportsMatchupScheduleTeamView" hasInstanceVariable:@"_nameLabel" withType:"UILabel"];
  [v3 validateClass:@"ACSportsMatchupScheduleTeamView" hasInstanceVariable:@"_recordLabel" withType:"UILabel"];
}

- (id)accessibilityLabel
{
  v3 = [(ACSportsMatchupScheduleTeamViewAccessibility *)self safeValueForKey:@"_nameLabel"];
  v4 = [v3 accessibilityLabel];

  v5 = [(ACSportsMatchupScheduleTeamViewAccessibility *)self safeValueForKey:@"_recordLabel"];
  v6 = [v5 accessibilityLabel];

  v7 = __UIAXStringForVariables();

  return v7;
}

@end