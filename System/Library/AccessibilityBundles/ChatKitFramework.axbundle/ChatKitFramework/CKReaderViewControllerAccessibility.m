@interface CKReaderViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CKReaderViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = CKReaderViewControllerAccessibility;
  [(CKReaderViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(CKReaderViewControllerAccessibility *)self safeValueForKey:@"textView"];
  [v3 setIsAccessibilityElement:1];
}

@end