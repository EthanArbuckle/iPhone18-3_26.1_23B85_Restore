@interface UICollectionViewListCellAccessibility__AppStore__UIKit
- (BOOL)_axIsInPageFacetsVC;
- (CGPoint)accessibilityActivationPoint;
- (id)_accessibilitySupplementaryFooterViews;
- (id)_axSwitch;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation UICollectionViewListCellAccessibility__AppStore__UIKit

- (BOOL)_axIsInPageFacetsVC
{
  v2 = [(UICollectionViewListCellAccessibility__AppStore__UIKit *)self _accessibilityFindAncestor:&__block_literal_global_0 startWithSelf:1];
  v3 = v2 != 0;

  return v3;
}

- (id)_axSwitch
{
  if ([(UICollectionViewListCellAccessibility__AppStore__UIKit *)self _axIsInPageFacetsVC])
  {
    v3 = [(UICollectionViewListCellAccessibility__AppStore__UIKit *)self _accessibilityDescendantOfType:objc_opt_class()];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)accessibilityValue
{
  v3 = [(UICollectionViewListCellAccessibility__AppStore__UIKit *)self _axSwitch];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 accessibilityValue];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UICollectionViewListCellAccessibility__AppStore__UIKit;
    v5 = [(UICollectionViewListCellAccessibility__AppStore__UIKit *)&v8 accessibilityValue];
  }

  v6 = v5;

  return v6;
}

- (CGPoint)accessibilityActivationPoint
{
  v3 = [(UICollectionViewListCellAccessibility__AppStore__UIKit *)self _axSwitch];
  v4 = v3;
  if (v3)
  {
    [v3 accessibilityActivationPoint];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = UICollectionViewListCellAccessibility__AppStore__UIKit;
    [(UICollectionViewListCellAccessibility__AppStore__UIKit *)&v11 accessibilityActivationPoint];
  }

  v7 = v5;
  v8 = v6;

  v9 = v7;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (unint64_t)accessibilityTraits
{
  v3 = [(UICollectionViewListCellAccessibility__AppStore__UIKit *)self _axSwitch];
  v4 = v3;
  if (v3)
  {
    [v3 accessibilityTraits];
    v5 = *MEMORY[0x29EDBDBD0];
    v6 = _AXTraitsRemoveTrait();
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UICollectionViewListCellAccessibility__AppStore__UIKit;
    v6 = [(UICollectionViewListCellAccessibility__AppStore__UIKit *)&v9 accessibilityTraits];
  }

  v7 = v6;

  return v7;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v3 = [(UICollectionViewListCellAccessibility__AppStore__UIKit *)self _axSwitch];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UICollectionViewListCellAccessibility__AppStore__UIKit;
    v4 = [(UICollectionViewListCellAccessibility__AppStore__UIKit *)&v6 _accessibilitySupplementaryFooterViews];
  }

  return v4;
}

@end