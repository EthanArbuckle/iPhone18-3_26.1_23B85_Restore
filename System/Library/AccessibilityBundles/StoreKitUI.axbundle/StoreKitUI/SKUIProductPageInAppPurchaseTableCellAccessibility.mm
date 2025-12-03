@interface SKUIProductPageInAppPurchaseTableCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation SKUIProductPageInAppPurchaseTableCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SKUIProductPageInAppPurchaseTableCell" hasInstanceMethod:@"indexString" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SKUIProductPageInAppPurchaseTableCell" hasInstanceMethod:@"productName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SKUIProductPageInAppPurchaseTableCell" hasInstanceMethod:@"priceString" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(SKUIProductPageInAppPurchaseTableCellAccessibility *)self safeValueForKey:@"indexString"];
  v4 = [(SKUIProductPageInAppPurchaseTableCellAccessibility *)self safeValueForKey:@"productName"];
  v7 = [(SKUIProductPageInAppPurchaseTableCellAccessibility *)self safeValueForKey:@"priceString"];
  v5 = __UIAXStringForVariables();

  return v5;
}

@end