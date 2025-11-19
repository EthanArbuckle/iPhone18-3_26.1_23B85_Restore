@interface MTAAppControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation MTAAppControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = MTAAppControllerAccessibility;
  [(MTAAppControllerAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
}

@end