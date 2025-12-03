@interface MediumLockupCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityScrollParentForComparingByXAxis;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityUserInputLabels;
@end

@implementation MediumLockupCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ProductPageExtension.MediumLockupCollectionViewCell" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ProductPageExtension.MediumLockupCollectionViewCell" hasInstanceMethod:@"accessibilitySubtitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ProductPageExtension.MediumLockupCollectionViewCell" hasInstanceMethod:@"accessibilityOfferButton" withFullSignature:{"@", 0}];
}

- (id)_accessibilitySupplementaryFooterViews
{
  array = [MEMORY[0x29EDB8DE8] array];
  v7.receiver = self;
  v7.super_class = MediumLockupCollectionViewCellAccessibility;
  _accessibilitySupplementaryFooterViews = [(MediumLockupCollectionViewCellAccessibility *)&v7 _accessibilitySupplementaryFooterViews];
  [array axSafelyAddObjectsFromArray:_accessibilitySupplementaryFooterViews];

  v5 = [(MediumLockupCollectionViewCellAccessibility *)self safeValueForKey:@"accessibilityOfferButton"];
  [array axSafelyAddObject:v5];

  return array;
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
  v6 = MEMORY[0x29C2E9440](v5);

  return v6;
}

@end