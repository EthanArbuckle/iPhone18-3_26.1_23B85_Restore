@interface SBHomePeekWindowingModifierAccessibility
- (void)_configureAndAddDismissalTransitionRequest:(id)a3;
@end

@implementation SBHomePeekWindowingModifierAccessibility

- (void)_configureAndAddDismissalTransitionRequest:(id)a3
{
  v3.receiver = self;
  v3.super_class = SBHomePeekWindowingModifierAccessibility;
  [(SBHomePeekWindowingModifierAccessibility *)&v3 _configureAndAddDismissalTransitionRequest:a3];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], *MEMORY[0x29EDBDAC0]);
}

@end