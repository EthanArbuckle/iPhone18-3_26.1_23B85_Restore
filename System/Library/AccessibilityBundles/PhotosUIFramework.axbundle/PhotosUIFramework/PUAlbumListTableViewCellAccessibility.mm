@interface PUAlbumListTableViewCellAccessibility
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation PUAlbumListTableViewCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(PUAlbumListTableViewCellAccessibility *)self contentView];
  v3 = [v2 _accessibilityDescendantOfType:NSClassFromString(&cfstr_Pualbumlistcel_0.isa)];
  v4 = [v3 accessibilityLabel];

  return v4;
}

- (id)accessibilityValue
{
  v2 = [(PUAlbumListTableViewCellAccessibility *)self contentView];
  v3 = [v2 _accessibilityDescendantOfType:NSClassFromString(&cfstr_Pualbumlistcel_0.isa)];
  v4 = [v3 accessibilityValue];

  return v4;
}

@end