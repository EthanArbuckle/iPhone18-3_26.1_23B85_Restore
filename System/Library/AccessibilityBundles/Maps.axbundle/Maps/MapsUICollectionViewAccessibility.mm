@interface MapsUICollectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityCollectionViewBehavesLikeUIViewAccessibility;
@end

@implementation MapsUICollectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SteppingPageViewController"];
  [validationsCopy validateClass:@"UICollectionView" hasInstanceMethod:@"accessibilityCollectionViewBehavesLikeUIViewAccessibility" withFullSignature:{"B", 0}];
}

- (BOOL)accessibilityCollectionViewBehavesLikeUIViewAccessibility
{
  delegate = [(MapsUICollectionViewAccessibility *)self delegate];
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