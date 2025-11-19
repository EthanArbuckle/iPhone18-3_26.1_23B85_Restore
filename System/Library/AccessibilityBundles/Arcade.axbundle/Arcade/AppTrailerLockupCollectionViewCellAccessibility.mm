@interface AppTrailerLockupCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation AppTrailerLockupCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"Arcade.SmallLockupView" hasInstanceMethod:@"accessibilityAdLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"Arcade.MixedMediaLockupCollectionViewCell" hasInstanceMethod:@"accessibilityTaglineLabel" withFullSignature:{"@", 0}];
}

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