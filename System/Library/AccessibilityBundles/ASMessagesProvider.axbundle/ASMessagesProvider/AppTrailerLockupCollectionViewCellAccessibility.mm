@interface AppTrailerLockupCollectionViewCellAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation AppTrailerLockupCollectionViewCellAccessibility

- (id)accessibilityLabel
{
  v3 = [(AppTrailerLockupCollectionViewCellAccessibility *)self safeValueForKeyPath:@"accessibilityLockupView.accessibilityAdLabel"];
  v6 = [(AppTrailerLockupCollectionViewCellAccessibility *)self _axTaglineLabel];
  v4 = __UIAXStringForVariables();

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(AppTrailerLockupCollectionViewCellAccessibility *)self safeValueForKey:@"accessibilityLockupView"];
  v3 = [v2 accessibilityTraits];

  return v3;
}

@end