@interface CKUICollectionViewAccessibility
- (BOOL)isAccessibilityOpaqueElementProvider;
@end

@implementation CKUICollectionViewAccessibility

- (BOOL)isAccessibilityOpaqueElementProvider
{
  v3 = [(CKUICollectionViewAccessibility *)self accessibilityIdentification];
  v4 = [v3 isEqualToString:@"AXImpactEffectCollectionView"];

  if (v4)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = CKUICollectionViewAccessibility;
  return [(CKUICollectionViewAccessibility *)&v6 isAccessibilityOpaqueElementProvider];
}

@end