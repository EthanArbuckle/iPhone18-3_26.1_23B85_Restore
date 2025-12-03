@interface SUUILockupSwooshCellLayoutAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation SUUILockupSwooshCellLayoutAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SUUILockupSwooshCellLayout" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SUUILockupSwooshCellLayout" hasInstanceMethod:@"artistName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SUUILockupSwooshCellLayout" hasInstanceMethod:@"category" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SUUILockupSwooshCellLayout" hasInstanceMethod:@"price" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(SUUILockupSwooshCellLayoutAccessibility *)self safeValueForKey:@"title"];
  v4 = [(SUUILockupSwooshCellLayoutAccessibility *)self safeValueForKey:@"artistName"];
  v5 = [(SUUILockupSwooshCellLayoutAccessibility *)self safeValueForKey:@"category"];
  v8 = [(SUUILockupSwooshCellLayoutAccessibility *)self safeValueForKey:@"price"];
  v6 = __UIAXStringForVariables();

  return v6;
}

@end