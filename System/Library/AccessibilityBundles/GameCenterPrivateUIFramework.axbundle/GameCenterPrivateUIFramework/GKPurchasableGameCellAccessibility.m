@interface GKPurchasableGameCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation GKPurchasableGameCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"GKPurchasableGameCell" hasInstanceMethod:@"developerLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"GKPurchasableGameCell" hasInstanceMethod:@"priceLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"GKBaseGameCell" hasInstanceMethod:@"nameLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"GKPurchasableGameCell" isKindOfClass:@"GKBaseGameCell"];
  [v3 validateClass:@"GKPurchasableGameCell" hasInstanceMethod:@"ratingStarsView" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(GKPurchasableGameCellAccessibility *)self safeValueForKey:@"nameLabel"];
  v4 = [v3 accessibilityLabel];

  v5 = [(GKPurchasableGameCellAccessibility *)self safeValueForKey:@"developerLabel"];
  if ([v5 _accessibilityViewIsVisible])
  {
    v12 = [v5 accessibilityLabel];
    v14 = @"__AXStringForVariablesSentinel";
    v6 = __UIAXStringForVariables();

    v4 = v6;
  }

  v7 = [(GKPurchasableGameCellAccessibility *)self safeValueForKey:@"ratingStarsView", v12, v14];
  if ([v7 _accessibilityViewIsVisible])
  {
    v13 = [v7 accessibilityLabel];
    v15 = @"__AXStringForVariablesSentinel";
    v8 = __UIAXStringForVariables();

    v4 = v8;
  }

  v9 = [(GKPurchasableGameCellAccessibility *)self safeValueForKey:@"priceLabel", v13, v15];
  if ([v9 _accessibilityViewIsVisible])
  {
    v10 = __UIAXStringForVariables();

    v4 = v10;
  }

  return v4;
}

@end