@interface SKUILockupSwooshCellLayoutAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation SKUILockupSwooshCellLayoutAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SKUILockupSwooshCellLayout" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SKUILockupSwooshCellLayout" hasInstanceMethod:@"artistName" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SKUILockupSwooshCellLayout" hasInstanceMethod:@"category" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SKUILockupSwooshCellLayout" hasInstanceMethod:@"price" withFullSignature:{"@", 0}];
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