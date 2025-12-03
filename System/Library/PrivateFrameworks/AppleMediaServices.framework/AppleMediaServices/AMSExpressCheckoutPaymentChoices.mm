@interface AMSExpressCheckoutPaymentChoices
- (NSDictionary)metrics;
- (void)encodeWithCoder:(id)coder;
- (void)setMetrics:(id)metrics;
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

- (void)setMetrics:(id)metrics
{
  if (metrics)
  {
    v4 = sub_192F9669C();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  sub_192C9F520(v4);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_192C9FAF8(coderCopy);
}

@end