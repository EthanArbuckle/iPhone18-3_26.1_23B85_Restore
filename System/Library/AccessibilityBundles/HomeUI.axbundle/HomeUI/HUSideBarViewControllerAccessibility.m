@interface HUSideBarViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation HUSideBarViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = HUSideBarViewControllerAccessibility;
  [(HUSideBarViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v2 = accessibilityHomeUILocalizedString(@"sidebar.label");
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 collectionView];
  [v4 setAccessibilityLabel:v2];
}

@end