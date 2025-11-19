@interface SKUIProductPageInAppPurchaseTableCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation SKUIProductPageInAppPurchaseTableCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SKUIProductPageInAppPurchaseTableCell" hasInstanceMethod:@"indexString" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SKUIProductPageInAppPurchaseTableCell" hasInstanceMethod:@"productName" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SKUIProductPageInAppPurchaseTableCell" hasInstanceMethod:@"priceString" withFullSignature:{"@", 0}];
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