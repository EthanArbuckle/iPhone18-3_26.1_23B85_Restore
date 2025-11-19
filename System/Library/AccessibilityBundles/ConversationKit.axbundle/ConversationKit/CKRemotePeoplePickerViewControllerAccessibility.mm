@interface CKRemotePeoplePickerViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CKRemotePeoplePickerViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = CKRemotePeoplePickerViewControllerAccessibility;
  [(CKRemotePeoplePickerViewControllerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(CKRemotePeoplePickerViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  v4 = [v3 subviews];
  v5 = [v4 lastObject];

  [v5 setAccessibilityViewIsModalBlock:&__block_literal_global_1];
}

@end