@interface SafariSavedPasswordsControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SafariSavedPasswordsControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = SafariSavedPasswordsControllerAccessibility;
  [(SafariSavedPasswordsControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(SafariSavedPasswordsControllerAccessibility *)self safeValueForKey:@"_table"];
  [v3 setAccessibilityElementsHidden:1];
}

@end