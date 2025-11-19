@interface STStorageItemCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation STStorageItemCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"STStorageItemCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"STStorageItemCell" hasInstanceVariable:@"_infoLabel" withType:"UILabel"];
  [v3 validateClass:@"STStorageItemCell" hasInstanceVariable:@"_size" withType:"q"];
}

- (id)accessibilityLabel
{
  v3 = [(STStorageItemCellAccessibility *)self safeValueForKey:@"_titleLabel"];
  v4 = [(STStorageItemCellAccessibility *)self safeValueForKey:@"_infoLabel"];
  [(STStorageItemCellAccessibility *)self safeUnsignedIntegerForKey:@"_size"];
  v7 = AXFormatByteSize();
  v5 = __UIAXStringForVariables();

  return v5;
}

@end