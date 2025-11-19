@interface MSAlbumPropertiesViewAccessibility
- (id)accessibilityLabel;
@end

@implementation MSAlbumPropertiesViewAccessibility

- (id)accessibilityLabel
{
  v3 = [(MSAlbumPropertiesViewAccessibility *)self safeValueForKey:@"_artistLabel"];
  v4 = [v3 accessibilityLabel];

  v5 = [(MSAlbumPropertiesViewAccessibility *)self safeValueForKey:@"_albumLabel"];
  v6 = [v5 accessibilityLabel];

  v7 = [(MSAlbumPropertiesViewAccessibility *)self safeValueForKey:@"_itemCountsLabel"];
  v8 = [v7 accessibilityLabel];

  v9 = [(MSAlbumPropertiesViewAccessibility *)self safeValueForKey:@"_releaseDateLabel"];
  v10 = [v9 accessibilityLabel];

  v11 = __UIAXStringForVariables();

  return v11;
}

@end