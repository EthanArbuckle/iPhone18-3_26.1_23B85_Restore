@interface GKTurnParticipantCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation GKTurnParticipantCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"GKTurnParticipantCell" hasInstanceMethod:@"topLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GKTurnParticipantCell" hasInstanceMethod:@"bottomLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GKBaseGameCell" hasInstanceMethod:@"nameLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(GKTurnParticipantCellAccessibility *)self safeValueForKey:@"topLabel"];
  accessibilityLabel = [v3 accessibilityLabel];
  v5 = [(GKTurnParticipantCellAccessibility *)self safeValueForKey:@"nameLabel"];
  accessibilityLabel2 = [v5 accessibilityLabel];
  v7 = [(GKTurnParticipantCellAccessibility *)self safeValueForKey:@"bottomLabel"];
  accessibilityLabel3 = [v7 accessibilityLabel];
  v8 = __UIAXStringForVariables();

  return v8;
}

@end