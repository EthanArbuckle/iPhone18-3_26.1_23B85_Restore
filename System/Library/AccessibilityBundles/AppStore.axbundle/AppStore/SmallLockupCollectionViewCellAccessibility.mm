@interface SmallLockupCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (id)_accessibilityScrollParentForComparingByXAxis;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (unint64_t)accessibilityTraits;
@end

@implementation SmallLockupCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AppStore.SmallLockupCollectionViewCell" hasInstanceMethod:@"accessibilityLockupView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AppStore.SmallLockupView" isKindOfClass:@"BaseLockupView"];
  [validationsCopy validateClass:@"AppStore.BaseLockupView" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
}

- (BOOL)isAccessibilityElement
{
  _axLockupView = [(SmallLockupCollectionViewCellAccessibility *)self _axLockupView];
  isAccessibilityElement = [_axLockupView isAccessibilityElement];

  return isAccessibilityElement;
}

- (id)accessibilityLabel
{
  _axLockupView = [(SmallLockupCollectionViewCellAccessibility *)self _axLockupView];
  accessibilityLabel = [_axLockupView accessibilityLabel];

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  _axLockupView = [(SmallLockupCollectionViewCellAccessibility *)self _axLockupView];
  accessibilityTraits = [_axLockupView accessibilityTraits];
  v4 = *MEMORY[0x29EDC7FD0];

  return v4 | accessibilityTraits;
}

- (id)_accessibilitySupplementaryFooterViews
{
  _axLockupView = [(SmallLockupCollectionViewCellAccessibility *)self _axLockupView];
  _accessibilitySupplementaryFooterViews = [_axLockupView _accessibilitySupplementaryFooterViews];

  return _accessibilitySupplementaryFooterViews;
}

- (id)_accessibilityScrollParentForComparingByXAxis
{
  v3 = objc_opt_class();

  return [(SmallLockupCollectionViewCellAccessibility *)self _accessibilityAncestorIsKindOf:v3];
}

- (id)accessibilityUserInputLabels
{
  objc_opt_class();
  _axLockupView = [(SmallLockupCollectionViewCellAccessibility *)self _axLockupView];
  v4 = [_axLockupView safeValueForKey:@"accessibilityTitleLabel"];
  v5 = __UIAccessibilityCastAsClass();

  v6 = __UIAXStringForVariables();
  v7 = MEMORY[0x29C2C8BE0](v6);

  return v7;
}

@end