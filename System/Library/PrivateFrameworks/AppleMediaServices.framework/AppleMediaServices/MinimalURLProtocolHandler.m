@interface MinimalURLProtocolHandler
- (AMSURLSession)session;
- (void)reportMetricsForContext:(id)a3;
- (void)setSession:(id)a3;
@end

@implementation MinimalURLProtocolHandler

- (void)setSession:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1928F7CE4(a3);
}

- (AMSURLSession)session
{
  v2 = sub_192C3491C();

  return v2;
}

- (void)reportMetricsForContext:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_192C361CC(v4);
}

@end