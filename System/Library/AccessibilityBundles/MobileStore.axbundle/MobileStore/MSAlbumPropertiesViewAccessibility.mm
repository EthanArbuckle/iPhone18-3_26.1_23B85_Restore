@interface MSAlbumPropertiesViewAccessibility
- (id)accessibilityLabel;
@end

@implementation MSAlbumPropertiesViewAccessibility

- (id)accessibilityLabel
{
  v3 = [(MSAlbumPropertiesViewAccessibility *)self safeValueForKey:@"_artistLabel"];
  accessibilityLabel = [v3 accessibilityLabel];

  v5 = [(MSAlbumPropertiesViewAccessibility *)self safeValueForKey:@"_albumLabel"];
  accessibilityLabel2 = [v5 accessibilityLabel];

  v7 = [(MSAlbumPropertiesViewAccessibility *)self safeValueForKey:@"_itemCountsLabel"];
  accessibilityLabel3 = [v7 accessibilityLabel];

  v9 = [(MSAlbumPropertiesViewAccessibility *)self safeValueForKey:@"_releaseDateLabel"];
  accessibilityLabel4 = [v9 accessibilityLabel];

  v11 = __UIAXStringForVariables();

  return v11;
}

@end