@interface SmallLockupCollectionViewTableCellAccessibility
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SmallLockupCollectionViewTableCellAccessibility

- (id)accessibilityLabel
{
  _axLockupView = [(SmallLockupCollectionViewTableCellAccessibility *)self _axLockupView];
  accessibilityLabel = [_axLockupView accessibilityLabel];

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  _axLockupView = [(SmallLockupCollectionViewTableCellAccessibility *)self _axLockupView];
  accessibilityTraits = [_axLockupView accessibilityTraits];

  return accessibilityTraits;
}

- (id)_accessibilitySupplementaryFooterViews
{
  _axLockupView = [(SmallLockupCollectionViewTableCellAccessibility *)self _axLockupView];
  _accessibilitySupplementaryFooterViews = [_axLockupView _accessibilitySupplementaryFooterViews];

  return _accessibilitySupplementaryFooterViews;
}

@end