@interface ACDTestManager
- (NSXPCListenerEndpoint)remoteAccountStoreEndpoint;
- (NSXPCListenerEndpoint)remoteOAuthSignerEndpoint;
- (void)startTestServer;
- (void)stopTestServer;
@end

@implementation ACDTestManager

- (void)startTestServer
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ACDTestManager.m" lineNumber:28 description:@"There can only be one test server running at a time"];
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
  v2 = [sTestServer accountStoreListener];
  v3 = [v2 endpoint];

  return v3;
}

- (NSXPCListenerEndpoint)remoteOAuthSignerEndpoint
{
  v2 = [sTestServer oauthSignerListener];
  v3 = [v2 endpoint];

  return v3;
}

@end