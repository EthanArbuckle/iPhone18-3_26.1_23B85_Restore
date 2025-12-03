@interface PUAlbumListTableViewCellAccessibility
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation PUAlbumListTableViewCellAccessibility

- (id)accessibilityLabel
{
  contentView = [(PUAlbumListTableViewCellAccessibility *)self contentView];
  v3 = [contentView _accessibilityDescendantOfType:NSClassFromString(&cfstr_Pualbumlistcel_0.isa)];
  accessibilityLabel = [v3 accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  contentView = [(PUAlbumListTableViewCellAccessibility *)self contentView];
  v3 = [contentView _accessibilityDescendantOfType:NSClassFromString(&cfstr_Pualbumlistcel_0.isa)];
  accessibilityValue = [v3 accessibilityValue];

  return accessibilityValue;
}

@end