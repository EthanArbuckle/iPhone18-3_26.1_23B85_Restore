@interface ActivationControllerAccessibility
- (void)viewDidLayoutSubviews;
@end

@implementation ActivationControllerAccessibility

- (void)viewDidLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = ActivationControllerAccessibility;
  [(ActivationControllerAccessibility *)&v2 viewDidLayoutSubviews];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end