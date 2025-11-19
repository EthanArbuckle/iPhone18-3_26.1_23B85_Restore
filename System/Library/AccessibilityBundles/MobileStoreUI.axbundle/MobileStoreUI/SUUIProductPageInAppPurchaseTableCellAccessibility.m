@interface SUUIProductPageInAppPurchaseTableCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation SUUIProductPageInAppPurchaseTableCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SUUIProductPageInAppPurchaseTableCell" hasInstanceMethod:@"indexString" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SUUIProductPageInAppPurchaseTableCell" hasInstanceMethod:@"productName" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SUUIProductPageInAppPurchaseTableCell" hasInstanceMethod:@"priceString" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(SUUIProductPageInAppPurchaseTableCellAccessibility *)self safeValueForKey:@"indexString"];
  v4 = [(SUUIProductPageInAppPurchaseTableCellAccessibility *)self safeValueForKey:@"productName"];
  v7 = [(SUUIProductPageInAppPurchaseTableCellAccessibility *)self safeValueForKey:@"priceString"];
  v5 = __UIAXStringForVariables();

  return v5;
}

@end