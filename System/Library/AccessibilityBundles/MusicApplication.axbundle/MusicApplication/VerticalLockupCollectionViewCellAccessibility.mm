@interface VerticalLockupCollectionViewCellAccessibility
- (id)_axCollectionViewLayout;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation VerticalLockupCollectionViewCellAccessibility

- (id)_axCollectionViewLayout
{
  objc_opt_class();
  v3 = [(VerticalLockupCollectionViewCellAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  v4 = __UIAccessibilityCastAsClass();

  collectionViewLayout = [v4 collectionViewLayout];

  return collectionViewLayout;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  _axCollectionViewLayout = [(VerticalLockupCollectionViewCellAccessibility *)self _axCollectionViewLayout];
  MEMORY[0x29C2E2DD0](@"MusicApplication.ShelfCollectionViewLayout");
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    _axCollectionViewLayout2 = [(VerticalLockupCollectionViewCellAccessibility *)self _axCollectionViewLayout];
    [_axCollectionViewLayout2 setAccessibilityIdentifier:@"AX_VertificalLockupCollectionViewCell"];
  }

  v6.receiver = self;
  v6.super_class = VerticalLockupCollectionViewCellAccessibility;
  [(VerticalLockupCollectionViewCellAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = VerticalLockupCollectionViewCellAccessibility;
  [(VerticalLockupCollectionViewCellAccessibility *)&v3 layoutSubviews];
  [(VerticalLockupCollectionViewCellAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end