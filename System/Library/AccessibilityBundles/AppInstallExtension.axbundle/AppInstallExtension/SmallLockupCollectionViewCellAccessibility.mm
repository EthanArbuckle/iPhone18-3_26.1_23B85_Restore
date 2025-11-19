@interface SmallLockupCollectionViewCellAccessibility
- (BOOL)isAccessibilityElement;
- (id)_accessibilityScrollParentForComparingByXAxis;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (unint64_t)accessibilityTraits;
@end

@implementation SmallLockupCollectionViewCellAccessibility

- (BOOL)isAccessibilityElement
{
  v2 = [(SmallLockupCollectionViewCellAccessibility *)self _axLockupView];
  v3 = [v2 isAccessibilityElement];

  return v3;
}

- (id)accessibilityLabel
{
  v2 = [(SmallLockupCollectionViewCellAccessibility *)self _axLockupView];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(SmallLockupCollectionViewCellAccessibility *)self _axLockupView];
  v3 = [v2 accessibilityTraits];
  v4 = *MEMORY[0x29EDC7FD0];

  return v4 | v3;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v2 = [(SmallLockupCollectionViewCellAccessibility *)self _axLockupView];
  v3 = [v2 _accessibilitySupplementaryFooterViews];

  return v3;
}

- (id)_accessibilityScrollParentForComparingByXAxis
{
  v3 = objc_opt_class();

  return [(SmallLockupCollectionViewCellAccessibility *)self _accessibilityAncestorIsKindOf:v3];
}

- (id)accessibilityUserInputLabels
{
  objc_opt_class();
  v3 = [(SmallLockupCollectionViewCellAccessibility *)self _axLockupView];
  v4 = [v3 safeValueForKey:@"accessibilityTitleLabel"];
  v5 = __UIAccessibilityCastAsClass();

  v6 = __UIAXStringForVariables();
  v7 = MEMORY[0x29C2C8640](v6);

  return v7;
}

@end