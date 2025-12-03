@interface GKPurchasableGameCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation GKPurchasableGameCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"GKPurchasableGameCell" hasInstanceMethod:@"developerLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GKPurchasableGameCell" hasInstanceMethod:@"priceLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GKBaseGameCell" hasInstanceMethod:@"nameLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GKPurchasableGameCell" isKindOfClass:@"GKBaseGameCell"];
  [validationsCopy validateClass:@"GKPurchasableGameCell" hasInstanceMethod:@"ratingStarsView" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(GKPurchasableGameCellAccessibility *)self safeValueForKey:@"nameLabel"];
  accessibilityLabel = [v3 accessibilityLabel];

  v5 = [(GKPurchasableGameCellAccessibility *)self safeValueForKey:@"developerLabel"];
  if ([v5 _accessibilityViewIsVisible])
  {
    accessibilityLabel2 = [v5 accessibilityLabel];
    v14 = @"__AXStringForVariablesSentinel";
    v6 = __UIAXStringForVariables();

    accessibilityLabel = v6;
  }

  v7 = [(GKPurchasableGameCellAccessibility *)self safeValueForKey:@"ratingStarsView", accessibilityLabel2, v14];
  if ([v7 _accessibilityViewIsVisible])
  {
    accessibilityLabel3 = [v7 accessibilityLabel];
    v15 = @"__AXStringForVariablesSentinel";
    v8 = __UIAXStringForVariables();

    accessibilityLabel = v8;
  }

  v9 = [(GKPurchasableGameCellAccessibility *)self safeValueForKey:@"priceLabel", accessibilityLabel3, v15];
  if ([v9 _accessibilityViewIsVisible])
  {
    v10 = __UIAXStringForVariables();

    accessibilityLabel = v10;
  }

  return accessibilityLabel;
}

@end