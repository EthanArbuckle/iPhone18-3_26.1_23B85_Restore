@interface ACDTestManager
- (NSXPCListenerEndpoint)remoteAccountStoreEndpoint;
- (NSXPCListenerEndpoint)remoteOAuthSignerEndpoint;
- (void)startTestServer;
- (void)stopTestServer;
@end

@implementation ACDTestManager

- (void)startTestServer
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"ACDTestManager.m" lineNumber:28 description:@"There can only be one test server running at a time"];
}

- (void)stopTestServer
{
  if (sTestServer)
  {
    [sTestServer shutdown];
    v2 = sTestServer;
    sTestServer = 0;
  }
}

- (NSXPCListenerEndpoint)remoteAccountStoreEndpoint
{
  accountStoreListener = [sTestServer accountStoreListener];
  endpoint = [accountStoreListener endpoint];

  return endpoint;
}

- (NSXPCListenerEndpoint)remoteOAuthSignerEndpoint
{
  oauthSignerListener = [sTestServer oauthSignerListener];
  endpoint = [oauthSignerListener endpoint];

  return endpoint;
}

@end