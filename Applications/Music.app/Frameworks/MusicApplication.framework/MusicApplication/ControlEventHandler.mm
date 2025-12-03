@interface ControlEventHandler
- (void)handleActionFromControl:(id)control;
@end

@implementation ControlEventHandler

- (void)handleActionFromControl:(id)control
{
  v3 = *self->handler;
  controlCopy = control;

  v3(controlCopy);
}

@end