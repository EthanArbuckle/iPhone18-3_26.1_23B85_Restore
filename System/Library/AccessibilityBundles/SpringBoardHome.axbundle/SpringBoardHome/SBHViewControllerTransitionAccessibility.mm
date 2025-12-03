@interface SBHViewControllerTransitionAccessibility
- (void)transitionDidFinish:(id)finish;
@end

@implementation SBHViewControllerTransitionAccessibility

- (void)transitionDidFinish:(id)finish
{
  v3.receiver = self;
  v3.super_class = SBHViewControllerTransitionAccessibility;
  [(SBHViewControllerTransitionAccessibility *)&v3 transitionDidFinish:finish];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end