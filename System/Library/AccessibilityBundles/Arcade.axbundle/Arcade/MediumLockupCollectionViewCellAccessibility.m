@interface MediumLockupCollectionViewCellAccessibility
- (id)_accessibilityScrollParentForComparingByXAxis;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityUserInputLabels;
@end

@implementation MediumLockupCollectionViewCellAccessibility

- (id)_accessibilitySupplementaryFooterViews
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v7.receiver = self;
  v7.super_class = MediumLockupCollectionViewCellAccessibility;
  v4 = [(MediumLockupCollectionViewCellAccessibility *)&v7 _accessibilitySupplementaryFooterViews];
  [v3 axSafelyAddObjectsFromArray:v4];

  v5 = [(MediumLockupCollectionViewCellAccessibility *)self safeValueForKey:@"accessibilityOfferButton"];
  [v3 axSafelyAddObject:v5];

  return v3;
}

- (id)_accessibilityScrollParentForComparingByXAxis
{
  v3 = objc_opt_class();

  return [(MediumLockupCollectionViewCellAccessibility *)self _accessibilityAncestorIsKindOf:v3];
}

- (id)accessibilityUserInputLabels
{
  objc_opt_class();
  v3 = [(MediumLockupCollectionViewCellAccessibility *)self safeValueForKey:@"accessibilityTitleLabel"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = __UIAXStringForVariables();
  v6 = MEMORY[0x29C2C9580](v5);

  return v6;
}

@end