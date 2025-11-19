@interface GKTurnGameCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation GKTurnGameCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"GKTurnGameCell" hasInstanceMethod:@"activeMatchesLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"GKTurnGameCell" hasInstanceMethod:@"localPlayerTurnsLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"GKBaseGameCell" hasInstanceMethod:@"nameLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(GKTurnGameCellAccessibility *)self safeValueForKey:@"activeMatchesLabel"];
  v4 = [v3 accessibilityLabel];
  v5 = [(GKTurnGameCellAccessibility *)self safeValueForKey:@"nameLabel"];
  v6 = [v5 accessibilityLabel];
  v7 = [(GKTurnGameCellAccessibility *)self safeValueForKey:@"localPlayerTurnsLabel"];
  v10 = [v7 accessibilityLabel];
  v8 = __UIAXStringForVariables();

  return v8;
}

@end