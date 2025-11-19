@interface AMSExpressCheckoutPaymentChoices
- (NSDictionary)metrics;
- (void)encodeWithCoder:(id)a3;
- (void)setMetrics:(id)a3;
@end

@implementation AMSExpressCheckoutPaymentChoices

- (NSDictionary)metrics
{
  if (sub_192C9F454())
  {
    v2 = sub_192F9667C();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setMetrics:(id)a3
{
  if (a3)
  {
    v4 = sub_192F9669C();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  sub_192C9F520(v4);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_192C9FAF8(v4);
}

@end