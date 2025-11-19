@interface InAppPurchaseLockupCollectionViewCellAccessibility
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation InAppPurchaseLockupCollectionViewCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(InAppPurchaseLockupCollectionViewCellAccessibility *)self _axLockupView];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(InAppPurchaseLockupCollectionViewCellAccessibility *)self _axLockupView];
  v3 = [v2 accessibilityTraits];

  return v3;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v2 = [(InAppPurchaseLockupCollectionViewCellAccessibility *)self _axLockupView];
  v3 = [v2 _accessibilitySupplementaryFooterViews];

  return v3;
}

@end