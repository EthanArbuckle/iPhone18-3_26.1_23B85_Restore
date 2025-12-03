@interface MediaShowcasingTemplateControllerTVAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
@end

@implementation MediaShowcasingTemplateControllerTVAccessibility

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v5.receiver = self;
  v5.super_class = MediaShowcasingTemplateControllerTVAccessibility;
  [(MediaShowcasingTemplateControllerTVAccessibility *)&v5 didUpdateFocusInContext:context withAnimationCoordinator:coordinator];
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x29EDC7EB8] object:0];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = MediaShowcasingTemplateControllerTVAccessibility;
  [(MediaShowcasingTemplateControllerTVAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
}

@end