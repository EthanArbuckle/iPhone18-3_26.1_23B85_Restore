@interface PSReversedSubtitleDisclosureTableCellAccessibility
- (id)_axCellSelf;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation PSReversedSubtitleDisclosureTableCellAccessibility

- (id)_axCellSelf
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();

  return v2;
}

- (id)accessibilityLabel
{
  _axCellSelf = [(PSReversedSubtitleDisclosureTableCellAccessibility *)self _axCellSelf];
  titleLabel = [_axCellSelf titleLabel];
  accessibilityLabel = [titleLabel accessibilityLabel];

  detailTextLabel = [_axCellSelf detailTextLabel];
  accessibilityLabel2 = [detailTextLabel accessibilityLabel];

  v7 = __AXStringForVariables();

  return v7;
}

- (id)accessibilityValue
{
  _axCellSelf = [(PSReversedSubtitleDisclosureTableCellAccessibility *)self _axCellSelf];
  valueLabel = [_axCellSelf valueLabel];
  accessibilityLabel = [valueLabel accessibilityLabel];

  return accessibilityLabel;
}

@end