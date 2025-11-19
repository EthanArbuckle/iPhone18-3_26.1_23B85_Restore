@interface MFSwipableCollectionViewLayoutAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)a3;
@end

@implementation MFSwipableCollectionViewLayoutAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MFSwipableCollectionViewLayout" isKindOfClass:@"UICollectionViewLayout"];
  [v3 validateClass:@"UICollectionViewLayout" hasInstanceMethod:@"initialLayoutAttributesForAppearingItemAtIndexPath:" withFullSignature:{"@", 0}];
}

- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)a3
{
  v5.receiver = self;
  v5.super_class = MFSwipableCollectionViewLayoutAccessibility;
  v3 = [(MFSwipableCollectionViewLayoutAccessibility *)&v5 initialLayoutAttributesForAppearingItemAtIndexPath:a3];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    [v3 setAlpha:1.0];
  }

  return v3;
}

@end