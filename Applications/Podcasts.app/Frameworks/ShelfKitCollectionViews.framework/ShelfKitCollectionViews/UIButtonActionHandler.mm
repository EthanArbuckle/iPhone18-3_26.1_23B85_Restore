@interface UIButtonActionHandler
- (void)handleAction:(id)action;
@end

@implementation UIButtonActionHandler

- (void)handleAction:(id)action
{
  v3 = *self->handler;
  actionCopy = action;

  v3(actionCopy);
}

@end