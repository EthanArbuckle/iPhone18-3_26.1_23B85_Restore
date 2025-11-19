@interface MapsUICollectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityCollectionViewBehavesLikeUIViewAccessibility;
@end

@implementation MapsUICollectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SteppingPageViewController"];
  [v3 validateClass:@"UICollectionView" hasInstanceMethod:@"accessibilityCollectionViewBehavesLikeUIViewAccessibility" withFullSignature:{"B", 0}];
}

- (BOOL)accessibilityCollectionViewBehavesLikeUIViewAccessibility
{
  v3 = [(MapsUICollectionViewAccessibility *)self delegate];
  NSClassFromString(&cfstr_Steppingpagevi.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = MapsUICollectionViewAccessibility;
  return [(MapsUICollectionViewAccessibility *)&v6 accessibilityCollectionViewBehavesLikeUIViewAccessibility];
}

@end