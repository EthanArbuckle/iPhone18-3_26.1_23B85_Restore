@interface STStorageTableCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation STStorageTableCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"STStorageTableCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"STStorageTableCell" hasInstanceVariable:@"_infoLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"STStorageTableCell" hasInstanceVariable:@"_sizeLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"STStorageTableCell" hasInstanceMethod:@"infoHidden" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(STStorageTableCellAccessibility *)self _accessibilityStringForLabelKeyValues:@"_titleLabel, _sizeLabel"];
  if ([(STStorageTableCellAccessibility *)self safeBoolForKey:@"infoHidden"])
  {
    v4 = [(STStorageTableCellAccessibility *)self safeUIViewForKey:@"_infoLabel"];
    accessibilityLabel = [v4 accessibilityLabel];
    v5 = __UIAXStringForVariables();

    v3 = v5;
  }

  return v3;
}

@end