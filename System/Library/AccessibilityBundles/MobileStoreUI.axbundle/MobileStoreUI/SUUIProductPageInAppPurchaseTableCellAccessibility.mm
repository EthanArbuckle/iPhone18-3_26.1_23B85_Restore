@interface SUUIProductPageInAppPurchaseTableCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation SUUIProductPageInAppPurchaseTableCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SUUIProductPageInAppPurchaseTableCell" hasInstanceMethod:@"indexString" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SUUIProductPageInAppPurchaseTableCell" hasInstanceMethod:@"productName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SUUIProductPageInAppPurchaseTableCell" hasInstanceMethod:@"priceString" withFullSignature:{"@", 0}];
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