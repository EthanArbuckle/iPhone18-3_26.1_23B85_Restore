@interface ControlEventHandler
- (void)handleActionFromControl:(id)a3;
@end

@implementation ControlEventHandler

- (void)handleActionFromControl:(id)a3
{
  v3 = *self->handler;
  v4 = a3;

  v3(v4);
}

@end