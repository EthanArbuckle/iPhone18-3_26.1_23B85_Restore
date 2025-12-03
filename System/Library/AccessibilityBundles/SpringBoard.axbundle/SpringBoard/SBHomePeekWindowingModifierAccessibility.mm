@interface SBHomePeekWindowingModifierAccessibility
- (void)_configureAndAddDismissalTransitionRequest:(id)request;
@end

@implementation SBHomePeekWindowingModifierAccessibility

- (void)_configureAndAddDismissalTransitionRequest:(id)request
{
  v3.receiver = self;
  v3.super_class = SBHomePeekWindowingModifierAccessibility;
  [(SBHomePeekWindowingModifierAccessibility *)&v3 _configureAndAddDismissalTransitionRequest:request];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], *MEMORY[0x29EDBDAC0]);
}

@end