@interface MinimalURLProtocolHandler
- (AMSURLSession)session;
- (void)reportMetricsForContext:(id)context;
- (void)setSession:(id)session;
@end

@implementation MinimalURLProtocolHandler

- (void)setSession:(id)session
{
  sessionCopy = session;
  selfCopy = self;
  sub_1928F7CE4(session);
}

- (AMSURLSession)session
{
  v2 = sub_192C3491C();

  return v2;
}

- (void)reportMetricsForContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_192C361CC(contextCopy);
}

@end