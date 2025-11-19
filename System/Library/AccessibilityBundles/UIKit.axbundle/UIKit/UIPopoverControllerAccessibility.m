@interface UIPopoverControllerAccessibility
- (void)_dismissPopoverAnimated:(BOOL)a3 stateOnly:(BOOL)a4 notifyDelegate:(BOOL)a5;
@end

@implementation UIPopoverControllerAccessibility

- (void)_dismissPopoverAnimated:(BOOL)a3 stateOnly:(BOOL)a4 notifyDelegate:(BOOL)a5
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  v7 = a4;
  v6 = a5;
  v5.receiver = self;
  v5.super_class = UIPopoverControllerAccessibility;
  [(UIPopoverControllerAccessibility *)&v5 _dismissPopoverAnimated:a3 stateOnly:a4 notifyDelegate:a5];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end