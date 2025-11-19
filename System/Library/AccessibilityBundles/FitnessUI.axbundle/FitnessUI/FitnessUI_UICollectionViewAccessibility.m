@interface FitnessUI_UICollectionViewAccessibility
- (BOOL)accessibilityCollectionViewBehavesLikeUIViewAccessibility;
@end

@implementation FitnessUI_UICollectionViewAccessibility

- (BOOL)accessibilityCollectionViewBehavesLikeUIViewAccessibility
{
  v3 = [(FitnessUI_UICollectionViewAccessibility *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"AXFIUIPageViewControllerCollectionView"];

  if (v4)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = FitnessUI_UICollectionViewAccessibility;
  return [(FitnessUI_UICollectionViewAccessibility *)&v6 accessibilityCollectionViewBehavesLikeUIViewAccessibility];
}

@end