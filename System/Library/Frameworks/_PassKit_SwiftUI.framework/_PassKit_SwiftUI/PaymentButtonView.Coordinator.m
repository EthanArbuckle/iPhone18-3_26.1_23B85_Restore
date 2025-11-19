@interface PaymentButtonView.Coordinator
- (void)callback;
@end

@implementation PaymentButtonView.Coordinator

- (void)callback
{
  v3 = *self->action;
  v2 = *&self->action[8];

  v3(v4);
}

@end