@interface GKTurnGameCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation GKTurnGameCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"GKTurnGameCell" hasInstanceMethod:@"activeMatchesLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GKTurnGameCell" hasInstanceMethod:@"localPlayerTurnsLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GKBaseGameCell" hasInstanceMethod:@"nameLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(GKTurnGameCellAccessibility *)self safeValueForKey:@"activeMatchesLabel"];
  accessibilityLabel = [v3 accessibilityLabel];
  v5 = [(GKTurnGameCellAccessibility *)self safeValueForKey:@"nameLabel"];
  accessibilityLabel2 = [v5 accessibilityLabel];
  v7 = [(GKTurnGameCellAccessibility *)self safeValueForKey:@"localPlayerTurnsLabel"];
  accessibilityLabel3 = [v7 accessibilityLabel];
  v8 = __UIAXStringForVariables();

  return v8;
}

@end