@interface STStorageTableCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation STStorageTableCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"STStorageTableCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"STStorageTableCell" hasInstanceVariable:@"_infoLabel" withType:"UILabel"];
  [v3 validateClass:@"STStorageTableCell" hasInstanceVariable:@"_sizeLabel" withType:"UILabel"];
  [v3 validateClass:@"STStorageTableCell" hasInstanceMethod:@"infoHidden" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(STStorageTableCellAccessibility *)self _accessibilityStringForLabelKeyValues:@"_titleLabel, _sizeLabel"];
  if ([(STStorageTableCellAccessibility *)self safeBoolForKey:@"infoHidden"])
  {
    v4 = [(STStorageTableCellAccessibility *)self safeUIViewForKey:@"_infoLabel"];
    v7 = [v4 accessibilityLabel];
    v5 = __UIAXStringForVariables();

    v3 = v5;
  }

  return v3;
}

@end