@interface UICollectionViewListCellAccessibility__ContactsUI__UIKit
- (unint64_t)accessibilityTraits;
@end

@implementation UICollectionViewListCellAccessibility__ContactsUI__UIKit

- (unint64_t)accessibilityTraits
{
  v3 = [(UICollectionViewListCellAccessibility__ContactsUI__UIKit *)self _accessibilityFindSubviewDescendant:&__block_literal_global_2];
  if (v3)
  {
    accessibilityTraits = *MEMORY[0x29EDC7F70];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UICollectionViewListCellAccessibility__ContactsUI__UIKit;
    accessibilityTraits = [(UICollectionViewListCellAccessibility__ContactsUI__UIKit *)&v6 accessibilityTraits];
  }

  return accessibilityTraits;
}

@end