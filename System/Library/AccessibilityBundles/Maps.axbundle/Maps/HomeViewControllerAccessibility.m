@interface HomeViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation HomeViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = HomeViewControllerAccessibility;
  [(HomeViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(HomeViewControllerAccessibility *)self safeValueForKey:@"_collectionView"];
  v4 = AXMapsLocString(@"collection.locations.label");
  [v3 setAccessibilityLabel:v4];
}

@end