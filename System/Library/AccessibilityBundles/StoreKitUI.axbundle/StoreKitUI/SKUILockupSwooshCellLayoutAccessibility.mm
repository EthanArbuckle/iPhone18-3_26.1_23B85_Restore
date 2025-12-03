@interface SKUILockupSwooshCellLayoutAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation SKUILockupSwooshCellLayoutAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SKUILockupSwooshCellLayout" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SKUILockupSwooshCellLayout" hasInstanceMethod:@"artistName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SKUILockupSwooshCellLayout" hasInstanceMethod:@"category" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SKUILockupSwooshCellLayout" hasInstanceMethod:@"price" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(SKUILockupSwooshCellLayoutAccessibility *)self safeValueForKey:@"title"];
  v4 = [(SKUILockupSwooshCellLayoutAccessibility *)self safeValueForKey:@"artistName"];
  v5 = [(SKUILockupSwooshCellLayoutAccessibility *)self safeValueForKey:@"category"];
  v8 = [(SKUILockupSwooshCellLayoutAccessibility *)self safeValueForKey:@"price"];
  v6 = __UIAXStringForVariables();

  return v6;
}

@end