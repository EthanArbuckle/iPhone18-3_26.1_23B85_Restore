@interface AVPictureInPictureViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation AVPictureInPictureViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = AVPictureInPictureViewControllerAccessibility;
  [(AVPictureInPictureViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(AVPictureInPictureViewControllerAccessibility *)self safeValueForKey:@"delegate"];
  v4 = __UIAccessibilitySafeClass();

  [v4 _accessibilityLoadAccessibilityInformation];
}

@end