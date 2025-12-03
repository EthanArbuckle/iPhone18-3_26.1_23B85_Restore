@interface STStorageTipInfoCellAccessibility
- (id)accessibilityLabel;
@end

@implementation STStorageTipInfoCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(STStorageTipInfoCellAccessibility *)self safeValueForKey:@"_infoLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end