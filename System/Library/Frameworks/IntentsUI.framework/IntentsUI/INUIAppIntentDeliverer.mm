@interface INUIAppIntentDeliverer
- (void)deliverIntent:(id)intent reply:(id)reply;
- (void)deliverIntentForwardingActionWithResponseHandler:(id)handler;
@end

@implementation INUIAppIntentDeliverer

- (void)deliverIntent:(id)intent reply:(id)reply
{
  v4.receiver = self;
  v4.super_class = INUIAppIntentDeliverer;
  [(INAppIntentDeliverer *)&v4 deliverIntent:intent reply:reply];
}

- (void)deliverIntentForwardingActionWithResponseHandler:(id)handler
{
  v3.receiver = self;
  v3.super_class = INUIAppIntentDeliverer;
  [(INAppIntentDeliverer *)&v3 deliverIntentForwardingActionWithResponseHandler:handler];
}

@end