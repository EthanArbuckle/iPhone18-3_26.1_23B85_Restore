@interface CKSyndicationPageViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CKSyndicationPageViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = CKSyndicationPageViewControllerAccessibility;
  [(CKSyndicationPageViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(CKSyndicationPageViewControllerAccessibility *)self safeValueForKey:@"pageControl"];
  [v3 setIsAccessibilityElement:1];
}

@end