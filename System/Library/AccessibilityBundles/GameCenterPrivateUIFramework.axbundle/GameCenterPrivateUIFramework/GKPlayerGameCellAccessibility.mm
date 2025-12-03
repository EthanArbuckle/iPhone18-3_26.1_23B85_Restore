@interface GKPlayerGameCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation GKPlayerGameCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"GKPlayerGameCell" hasInstanceMethod:@"statsLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GKPlayerGameCell" hasInstanceMethod:@"dateLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v10.receiver = self;
  v10.super_class = GKPlayerGameCellAccessibility;
  accessibilityLabel = [(GKPlayerGameCellAccessibility *)&v10 accessibilityLabel];
  v4 = [(GKPlayerGameCellAccessibility *)self safeValueForKey:@"statsLabel"];
  accessibilityLabel2 = [v4 accessibilityLabel];

  v6 = [(GKPlayerGameCellAccessibility *)self safeValueForKey:@"dateLabel"];
  accessibilityLabel3 = [v6 accessibilityLabel];

  v8 = __UIAXStringForVariables();

  return v8;
}

@end