@interface CKUICollectionViewAccessibility
- (BOOL)isAccessibilityOpaqueElementProvider;
@end

@implementation CKUICollectionViewAccessibility

- (BOOL)isAccessibilityOpaqueElementProvider
{
  accessibilityIdentification = [(CKUICollectionViewAccessibility *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:@"AXImpactEffectCollectionView"];

  if (v4)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = CKUICollectionViewAccessibility;
  return [(CKUICollectionViewAccessibility *)&v6 isAccessibilityOpaqueElementProvider];
}

@end