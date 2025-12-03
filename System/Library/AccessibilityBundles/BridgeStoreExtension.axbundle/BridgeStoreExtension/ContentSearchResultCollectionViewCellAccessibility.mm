@interface ContentSearchResultCollectionViewCellAccessibility
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation ContentSearchResultCollectionViewCellAccessibility

- (id)accessibilityLabel
{
  _axLockupView = [(ContentSearchResultCollectionViewCellAccessibility *)self _axLockupView];
  accessibilityLabel = [_axLockupView accessibilityLabel];

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  _axLockupView = [(ContentSearchResultCollectionViewCellAccessibility *)self _axLockupView];
  accessibilityTraits = [_axLockupView accessibilityTraits];

  return accessibilityTraits;
}

- (id)_accessibilitySupplementaryFooterViews
{
  _axLockupView = [(ContentSearchResultCollectionViewCellAccessibility *)self _axLockupView];
  _accessibilitySupplementaryFooterViews = [_axLockupView _accessibilitySupplementaryFooterViews];

  return _accessibilitySupplementaryFooterViews;
}

@end