@interface STStorageItemCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation STStorageItemCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"STStorageItemCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"STStorageItemCell" hasInstanceVariable:@"_infoLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"STStorageItemCell" hasInstanceVariable:@"_size" withType:"q"];
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