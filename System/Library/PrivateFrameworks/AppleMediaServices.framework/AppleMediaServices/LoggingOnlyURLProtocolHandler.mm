@interface LoggingOnlyURLProtocolHandler
- (AMSURLSession)session;
- (void)setSession:(id)session;
@end

@implementation LoggingOnlyURLProtocolHandler

- (AMSURLSession)session
{
  v2 = sub_192C358E8();

  return v2;
}

- (void)setSession:(id)session
{
  sessionCopy = session;
  selfCopy = self;
  sub_192C35954(session);
}

@end