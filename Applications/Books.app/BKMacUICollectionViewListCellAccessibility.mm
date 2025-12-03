@interface BKMacUICollectionViewListCellAccessibility
- (BOOL)_isNewCollectionItem;
- (id)_bkaxIndexPath;
- (id)_bkaxParent;
- (id)_bkaxTarget;
- (unint64_t)accessibilityTraits;
@end

@implementation BKMacUICollectionViewListCellAccessibility

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = BKMacUICollectionViewListCellAccessibility;
  accessibilityTraits = [(BKMacUICollectionViewListCellAccessibility *)&v7 accessibilityTraits];
  _isNewCollectionItem = [(BKMacUICollectionViewListCellAccessibility *)self _isNewCollectionItem];
  v5 = UIAccessibilityTraitButton;
  if (!_isNewCollectionItem)
  {
    v5 = 0;
  }

  return v5 | accessibilityTraits;
}

- (id)_bkaxTarget
{
  objc_opt_class();
  v2 = __IMAccessibilityCastAsClass();

  return v2;
}

- (id)_bkaxParent
{
  objc_opt_class();
  _bkaxTarget = [(BKMacUICollectionViewListCellAccessibility *)self _bkaxTarget];
  superview = [_bkaxTarget superview];
  v5 = __IMAccessibilityCastAsClass();

  return v5;
}

- (id)_bkaxIndexPath
{
  _bkaxParent = [(BKMacUICollectionViewListCellAccessibility *)self _bkaxParent];
  _bkaxTarget = [(BKMacUICollectionViewListCellAccessibility *)self _bkaxTarget];
  v5 = [_bkaxParent indexPathForCell:_bkaxTarget];

  return v5;
}

- (BOOL)_isNewCollectionItem
{
  _bkaxTarget = [(BKMacUICollectionViewListCellAccessibility *)self _bkaxTarget];
  accessibilityIdentifier = [_bkaxTarget accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"newCollection"];

  return v4;
}

@end