@interface MFSwipableCollectionViewLayoutAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)path;
@end

@implementation MFSwipableCollectionViewLayoutAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MFSwipableCollectionViewLayout" isKindOfClass:@"UICollectionViewLayout"];
  [validationsCopy validateClass:@"UICollectionViewLayout" hasInstanceMethod:@"initialLayoutAttributesForAppearingItemAtIndexPath:" withFullSignature:{"@", 0}];
}

- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)path
{
  v5.receiver = self;
  v5.super_class = MFSwipableCollectionViewLayoutAccessibility;
  v3 = [(MFSwipableCollectionViewLayoutAccessibility *)&v5 initialLayoutAttributesForAppearingItemAtIndexPath:path];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    [v3 setAlpha:1.0];
  }

  return v3;
}

@end