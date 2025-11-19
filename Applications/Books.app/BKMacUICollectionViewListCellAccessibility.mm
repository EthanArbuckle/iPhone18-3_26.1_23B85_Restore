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
  v3 = [(BKMacUICollectionViewListCellAccessibility *)&v7 accessibilityTraits];
  v4 = [(BKMacUICollectionViewListCellAccessibility *)self _isNewCollectionItem];
  v5 = UIAccessibilityTraitButton;
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | v3;
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
  v3 = [(BKMacUICollectionViewListCellAccessibility *)self _bkaxTarget];
  v4 = [v3 superview];
  v5 = __IMAccessibilityCastAsClass();

  return v5;
}

- (id)_bkaxIndexPath
{
  v3 = [(BKMacUICollectionViewListCellAccessibility *)self _bkaxParent];
  v4 = [(BKMacUICollectionViewListCellAccessibility *)self _bkaxTarget];
  v5 = [v3 indexPathForCell:v4];

  return v5;
}

- (BOOL)_isNewCollectionItem
{
  v2 = [(BKMacUICollectionViewListCellAccessibility *)self _bkaxTarget];
  v3 = [v2 accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"newCollection"];

  return v4;
}

@end