@interface VideosUI_SideBarCollectionViewListHeaderAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation VideosUI_SideBarCollectionViewListHeaderAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = VideosUI_SideBarCollectionViewListHeaderAccessibility;
  return *MEMORY[0x29EDC7F80] | [(VideosUI_SideBarCollectionViewListHeaderAccessibility *)&v3 accessibilityTraits];
}

@end