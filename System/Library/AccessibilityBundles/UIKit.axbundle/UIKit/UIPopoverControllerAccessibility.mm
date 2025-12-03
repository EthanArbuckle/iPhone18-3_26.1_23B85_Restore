@interface UIPopoverControllerAccessibility
- (void)_dismissPopoverAnimated:(BOOL)animated stateOnly:(BOOL)only notifyDelegate:(BOOL)delegate;
@end

@implementation UIPopoverControllerAccessibility

- (void)_dismissPopoverAnimated:(BOOL)animated stateOnly:(BOOL)only notifyDelegate:(BOOL)delegate
{
  selfCopy = self;
  v9 = a2;
  animatedCopy = animated;
  onlyCopy = only;
  delegateCopy = delegate;
  v5.receiver = self;
  v5.super_class = UIPopoverControllerAccessibility;
  [(UIPopoverControllerAccessibility *)&v5 _dismissPopoverAnimated:animated stateOnly:only notifyDelegate:delegate];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end