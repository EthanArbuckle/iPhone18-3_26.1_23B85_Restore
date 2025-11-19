@interface SystemCloseButton.Coordinator
- (void)primaryAction;
@end

@implementation SystemCloseButton.Coordinator

- (void)primaryAction
{
  v3 = *self->action;
  v2 = *&self->action[8];

  v3(v4);
}

@end