@interface EKEventEditorAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation EKEventEditorAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = EKEventEditorAccessibility;
  [(EKEventEditorAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(EKEventEditorAccessibility *)self safeValueForKey:@"_dateItem"];
  v4 = __UIAccessibilityCastAsSafeCategory();

  [v4 _accessibilityLoadAccessibilityInformation];
}

@end