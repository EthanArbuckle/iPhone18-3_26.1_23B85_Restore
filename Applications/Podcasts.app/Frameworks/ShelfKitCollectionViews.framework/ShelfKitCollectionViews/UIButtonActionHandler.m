@interface UIButtonActionHandler
- (void)handleAction:(id)a3;
@end

@implementation UIButtonActionHandler

- (void)handleAction:(id)a3
{
  v3 = *self->handler;
  v4 = a3;

  v3(v4);
}

@end