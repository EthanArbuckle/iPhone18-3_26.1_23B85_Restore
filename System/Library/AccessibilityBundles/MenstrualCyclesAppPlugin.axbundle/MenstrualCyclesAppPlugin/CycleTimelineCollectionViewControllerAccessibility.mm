@interface CycleTimelineCollectionViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CycleTimelineCollectionViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = CycleTimelineCollectionViewControllerAccessibility;
  [(CycleTimelineCollectionViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  collectionView = [v2 collectionView];
  [collectionView accessibilitySetIdentification:@"AXCycleTimelineCollectionView"];
}

@end