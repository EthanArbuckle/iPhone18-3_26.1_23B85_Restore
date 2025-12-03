@interface STStorageHeaderLabelCellAccessibility
- (id)accessibilityLabel;
@end

@implementation STStorageHeaderLabelCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(STStorageHeaderLabelCellAccessibility *)self safeUIViewForKey:@"_titleLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end