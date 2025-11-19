@interface BookmarksViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation BookmarksViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = BookmarksViewControllerAccessibility;
  [(BookmarksViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(BookmarksViewControllerAccessibility *)self safeValueForKey:@"dismissButton"];
  v4 = accessibilityLocalizedString(@"close.button");
  [v3 setAccessibilityLabel:v4];
}

@end