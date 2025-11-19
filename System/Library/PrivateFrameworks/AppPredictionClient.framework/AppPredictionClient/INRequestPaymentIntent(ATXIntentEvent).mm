@interface INRequestPaymentIntent(ATXIntentEvent)
- (void)atx_getArgsInto:()ATXIntentEvent;
@end

@implementation INRequestPaymentIntent(ATXIntentEvent)

- (void)atx_getArgsInto:()ATXIntentEvent
{
  v4 = a3;
  v5 = [a1 payer];
  v6 = [v5 displayName];
  [v4 setArg1:v6];

  v9 = [a1 currencyAmount];
  v7 = [v9 amount];
  v8 = roundedDecimal(v7);
  [v4 setArg2:v8];
}

@end