@interface FIUIPageViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation FIUIPageViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = FIUIPageViewControllerAccessibility;
  [(FIUIPageViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(FIUIPageViewControllerAccessibility *)self safeValueForKey:@"collectionView"];
  [v3 setAccessibilityIdentifier:@"AXFIUIPageViewControllerCollectionView"];
}

@end