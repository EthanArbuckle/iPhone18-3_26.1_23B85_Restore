@interface LoggingOnlyURLProtocolHandler
- (AMSURLSession)session;
- (void)setSession:(id)a3;
@end

@implementation LoggingOnlyURLProtocolHandler

- (AMSURLSession)session
{
  v2 = sub_192C358E8();

  return v2;
}

- (void)setSession:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_192C35954(a3);
}

@end