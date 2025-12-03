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
  _axSwitch = [(UICollectionViewListCellAccessibility__AppStore__UIKit *)self _axSwitch];
  v4 = _axSwitch;
  if (_axSwitch)
  {
    accessibilityValue = [_axSwitch accessibilityValue];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UICollectionViewListCellAccessibility__AppStore__UIKit;
    accessibilityValue = [(UICollectionViewListCellAccessibility__AppStore__UIKit *)&v8 accessibilityValue];
  }

  v6 = accessibilityValue;

  return v6;
}

- (CGPoint)accessibilityActivationPoint
{
  _axSwitch = [(UICollectionViewListCellAccessibility__AppStore__UIKit *)self _axSwitch];
  v4 = _axSwitch;
  if (_axSwitch)
  {
    [_axSwitch accessibilityActivationPoint];
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
  _axSwitch = [(UICollectionViewListCellAccessibility__AppStore__UIKit *)self _axSwitch];
  v4 = _axSwitch;
  if (_axSwitch)
  {
    [_axSwitch accessibilityTraits];
    v5 = *MEMORY[0x29EDBDBD0];
    accessibilityTraits = _AXTraitsRemoveTrait();
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UICollectionViewListCellAccessibility__AppStore__UIKit;
    accessibilityTraits = [(UICollectionViewListCellAccessibility__AppStore__UIKit *)&v9 accessibilityTraits];
  }

  v7 = accessibilityTraits;

  return v7;
}

- (id)_accessibilitySupplementaryFooterViews
{
  _axSwitch = [(UICollectionViewListCellAccessibility__AppStore__UIKit *)self _axSwitch];
  if (_axSwitch)
  {
    _accessibilitySupplementaryFooterViews = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UICollectionViewListCellAccessibility__AppStore__UIKit;
    _accessibilitySupplementaryFooterViews = [(UICollectionViewListCellAccessibility__AppStore__UIKit *)&v6 _accessibilitySupplementaryFooterViews];
  }

  return _accessibilitySupplementaryFooterViews;
}

@end