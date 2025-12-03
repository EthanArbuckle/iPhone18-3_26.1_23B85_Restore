@interface VideosUI_SideBarCollectionViewListCellAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation VideosUI_SideBarCollectionViewListCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(VideosUI_SideBarCollectionViewListCellAccessibility *)self _accessibilityDescendantOfType:objc_opt_class()];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = VideosUI_SideBarCollectionViewListCellAccessibility;
  v3 = *MEMORY[0x29EDC7F70] | [(VideosUI_SideBarCollectionViewListCellAccessibility *)&v7 accessibilityTraits];
  v4 = [(VideosUI_SideBarCollectionViewListCellAccessibility *)self safeBoolForKey:@"isSelected"];
  v5 = *MEMORY[0x29EDC7FC0];
  if (!v4)
  {
    v5 = 0;
  }

  return v3 | v5;
}

@end