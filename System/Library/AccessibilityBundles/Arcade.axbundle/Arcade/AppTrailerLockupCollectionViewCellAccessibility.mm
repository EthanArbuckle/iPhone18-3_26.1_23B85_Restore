@interface AppTrailerLockupCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation AppTrailerLockupCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"Arcade.SmallLockupView" hasInstanceMethod:@"accessibilityAdLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Arcade.MixedMediaLockupCollectionViewCell" hasInstanceMethod:@"accessibilityTaglineLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(AppTrailerLockupCollectionViewCellAccessibility *)self safeValueForKeyPath:@"accessibilityLockupView.accessibilityAdLabel"];
  _axTaglineLabel = [(AppTrailerLockupCollectionViewCellAccessibility *)self _axTaglineLabel];
  v4 = __UIAXStringForVariables();

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(AppTrailerLockupCollectionViewCellAccessibility *)self safeValueForKey:@"accessibilityLockupView"];
  accessibilityTraits = [v2 accessibilityTraits];

  return accessibilityTraits;
}

@end