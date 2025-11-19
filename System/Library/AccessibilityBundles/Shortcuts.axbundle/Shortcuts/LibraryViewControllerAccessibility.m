@interface LibraryViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation LibraryViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = LibraryViewControllerAccessibility;
  [(LibraryViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(LibraryViewControllerAccessibility *)self safeValueForKey:@"axCreateButton"];
  v4 = accessibilityLocalizedString(@"create.shortcut");
  [v3 setAccessibilityLabel:v4];
}

@end