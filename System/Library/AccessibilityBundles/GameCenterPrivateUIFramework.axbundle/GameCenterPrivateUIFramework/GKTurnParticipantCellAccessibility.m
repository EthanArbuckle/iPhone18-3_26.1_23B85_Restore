@interface GKTurnParticipantCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation GKTurnParticipantCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"GKTurnParticipantCell" hasInstanceMethod:@"topLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"GKTurnParticipantCell" hasInstanceMethod:@"bottomLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"GKBaseGameCell" hasInstanceMethod:@"nameLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(GKTurnParticipantCellAccessibility *)self safeValueForKey:@"topLabel"];
  v4 = [v3 accessibilityLabel];
  v5 = [(GKTurnParticipantCellAccessibility *)self safeValueForKey:@"nameLabel"];
  v6 = [v5 accessibilityLabel];
  v7 = [(GKTurnParticipantCellAccessibility *)self safeValueForKey:@"bottomLabel"];
  v10 = [v7 accessibilityLabel];
  v8 = __UIAXStringForVariables();

  return v8;
}

@end