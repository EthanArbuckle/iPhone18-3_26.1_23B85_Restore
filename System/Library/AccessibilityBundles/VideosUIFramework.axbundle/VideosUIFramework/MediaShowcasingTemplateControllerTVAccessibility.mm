@interface MediaShowcasingTemplateControllerTVAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
@end

@implementation MediaShowcasingTemplateControllerTVAccessibility

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v5.receiver = self;
  v5.super_class = MediaShowcasingTemplateControllerTVAccessibility;
  [(MediaShowcasingTemplateControllerTVAccessibility *)&v5 didUpdateFocusInContext:a3 withAnimationCoordinator:a4];
  v4 = [MEMORY[0x29EDBA068] defaultCenter];
  [v4 postNotificationName:*MEMORY[0x29EDC7EB8] object:0];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = MediaShowcasingTemplateControllerTVAccessibility;
  [(MediaShowcasingTemplateControllerTVAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
}

@end