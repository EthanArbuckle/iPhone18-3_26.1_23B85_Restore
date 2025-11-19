@interface ScrollingCapsuleCollectionViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation ScrollingCapsuleCollectionViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = ScrollingCapsuleCollectionViewAccessibility;
  [(ScrollingCapsuleCollectionViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(ScrollingCapsuleCollectionViewAccessibility *)self safeSwiftValueForKey:@"lens"];
  [v3 setAccessibilityElementsHidden:1];
}

@end