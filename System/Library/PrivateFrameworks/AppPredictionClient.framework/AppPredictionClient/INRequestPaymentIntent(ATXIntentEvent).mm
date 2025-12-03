@interface INRequestPaymentIntent(ATXIntentEvent)
- (void)atx_getArgsInto:()ATXIntentEvent;
@end

@implementation INRequestPaymentIntent(ATXIntentEvent)

- (void)atx_getArgsInto:()ATXIntentEvent
{
  v4 = a3;
  payer = [self payer];
  displayName = [payer displayName];
  [v4 setArg1:displayName];

  currencyAmount = [self currencyAmount];
  amount = [currencyAmount amount];
  v8 = roundedDecimal(amount);
  [v4 setArg2:v8];
}

@end