@interface CuratedCollectionViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CuratedCollectionViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = CuratedCollectionViewControllerAccessibility;
  [(CuratedCollectionViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(CuratedCollectionViewControllerAccessibility *)self safeValueForKey:@"fakeHeaderView"];
  [v3 setAccessibilityElementsHidden:1];
}

@end