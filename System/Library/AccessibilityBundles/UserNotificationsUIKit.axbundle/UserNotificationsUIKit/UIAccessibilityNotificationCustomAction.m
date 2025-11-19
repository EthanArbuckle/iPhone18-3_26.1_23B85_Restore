@interface UIAccessibilityNotificationCustomAction
- (id)control;
@end

@implementation UIAccessibilityNotificationCustomAction

- (id)control
{
  WeakRetained = objc_loadWeakRetained(&self->_control);

  return WeakRetained;
}

@end