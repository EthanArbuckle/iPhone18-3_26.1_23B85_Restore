@interface STStorageHeaderLabelCellAccessibility
- (id)accessibilityLabel;
@end

@implementation STStorageHeaderLabelCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(STStorageHeaderLabelCellAccessibility *)self safeUIViewForKey:@"_titleLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end