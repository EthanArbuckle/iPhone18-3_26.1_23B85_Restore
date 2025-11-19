@interface CNContactHeaderEditViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CNContactHeaderEditViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = CNContactHeaderEditViewAccessibility;
  [(CNContactHeaderEditViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(CNContactHeaderEditViewAccessibility *)self safeUIViewForKey:@"editButton"];
  [v3 setIsAccessibilityElement:0];
  [v3 setAccessibilityElementsHidden:1];
}

@end