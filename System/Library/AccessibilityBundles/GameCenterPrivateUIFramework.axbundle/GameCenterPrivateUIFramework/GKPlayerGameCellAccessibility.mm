@interface GKPlayerGameCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation GKPlayerGameCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"GKPlayerGameCell" hasInstanceMethod:@"statsLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"GKPlayerGameCell" hasInstanceMethod:@"dateLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v10.receiver = self;
  v10.super_class = GKPlayerGameCellAccessibility;
  v3 = [(GKPlayerGameCellAccessibility *)&v10 accessibilityLabel];
  v4 = [(GKPlayerGameCellAccessibility *)self safeValueForKey:@"statsLabel"];
  v5 = [v4 accessibilityLabel];

  v6 = [(GKPlayerGameCellAccessibility *)self safeValueForKey:@"dateLabel"];
  v7 = [v6 accessibilityLabel];

  v8 = __UIAXStringForVariables();

  return v8;
}

@end