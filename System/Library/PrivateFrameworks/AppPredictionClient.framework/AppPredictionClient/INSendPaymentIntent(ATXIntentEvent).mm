@interface INSendPaymentIntent(ATXIntentEvent)
- (void)atx_getArgsInto:()ATXIntentEvent;
@end

@implementation INSendPaymentIntent(ATXIntentEvent)

- (void)atx_getArgsInto:()ATXIntentEvent
{
  v4 = a3;
  payee = [self payee];
  displayName = [payee displayName];
  [v4 setArg1:displayName];

  currencyAmount = [self currencyAmount];
  amount = [currencyAmount amount];
  v8 = roundedDecimal(amount);
  [v4 setArg2:v8];
}

@end