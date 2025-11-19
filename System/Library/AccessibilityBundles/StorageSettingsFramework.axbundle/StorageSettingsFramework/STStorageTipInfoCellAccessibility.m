@interface STStorageTipInfoCellAccessibility
- (id)accessibilityLabel;
@end

@implementation STStorageTipInfoCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(STStorageTipInfoCellAccessibility *)self safeValueForKey:@"_infoLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end