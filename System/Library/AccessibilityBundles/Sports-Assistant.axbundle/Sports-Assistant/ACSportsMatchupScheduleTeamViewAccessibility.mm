@interface ACSportsMatchupScheduleTeamViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation ACSportsMatchupScheduleTeamViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ACSportsMatchupScheduleTeamView" hasInstanceVariable:@"_nameLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"ACSportsMatchupScheduleTeamView" hasInstanceVariable:@"_recordLabel" withType:"UILabel"];
}

- (id)accessibilityLabel
{
  v3 = [(ACSportsMatchupScheduleTeamViewAccessibility *)self safeValueForKey:@"_nameLabel"];
  accessibilityLabel = [v3 accessibilityLabel];

  v5 = [(ACSportsMatchupScheduleTeamViewAccessibility *)self safeValueForKey:@"_recordLabel"];
  accessibilityLabel2 = [v5 accessibilityLabel];

  v7 = __UIAXStringForVariables();

  return v7;
}

@end