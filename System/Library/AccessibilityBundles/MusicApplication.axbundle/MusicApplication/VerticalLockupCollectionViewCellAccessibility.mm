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

  v5 = [v4 collectionViewLayout];

  return v5;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3 = [(VerticalLockupCollectionViewCellAccessibility *)self _axCollectionViewLayout];
  MEMORY[0x29C2E2DD0](@"MusicApplication.ShelfCollectionViewLayout");
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(VerticalLockupCollectionViewCellAccessibility *)self _axCollectionViewLayout];
    [v5 setAccessibilityIdentifier:@"AX_VertificalLockupCollectionViewCell"];
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