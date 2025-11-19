@interface INUIAppIntentDeliverer
- (void)deliverIntent:(id)a3 reply:(id)a4;
- (void)deliverIntentForwardingActionWithResponseHandler:(id)a3;
@end

@implementation INUIAppIntentDeliverer

- (void)deliverIntent:(id)a3 reply:(id)a4
{
  v4.receiver = self;
  v4.super_class = INUIAppIntentDeliverer;
  [(INAppIntentDeliverer *)&v4 deliverIntent:a3 reply:a4];
}

- (void)deliverIntentForwardingActionWithResponseHandler:(id)a3
{
  v3.receiver = self;
  v3.super_class = INUIAppIntentDeliverer;
  [(INAppIntentDeliverer *)&v3 deliverIntentForwardingActionWithResponseHandler:a3];
}

@end