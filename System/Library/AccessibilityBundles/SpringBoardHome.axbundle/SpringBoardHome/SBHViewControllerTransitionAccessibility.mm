@interface SBHViewControllerTransitionAccessibility
- (void)transitionDidFinish:(id)a3;
@end

@implementation SBHViewControllerTransitionAccessibility

- (void)transitionDidFinish:(id)a3
{
  v3.receiver = self;
  v3.super_class = SBHViewControllerTransitionAccessibility;
  [(SBHViewControllerTransitionAccessibility *)&v3 transitionDidFinish:a3];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end