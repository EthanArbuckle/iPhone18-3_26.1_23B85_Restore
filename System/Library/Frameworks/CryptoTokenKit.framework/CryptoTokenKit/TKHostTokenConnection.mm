@interface TKHostTokenConnection
- (NSString)slotName;
- (NSXPCListenerEndpoint)endpoint;
- (TKHostTokenConnection)initWithToken:(id)token;
- (void)dealloc;
@end

@implementation TKHostTokenConnection

- (TKHostTokenConnection)initWithToken:(id)token
{
  tokenCopy = token;
  v9.receiver = self;
  v9.super_class = TKHostTokenConnection;
  v6 = [(TKHostTokenConnection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_token, token);
    [tokenCopy setConnectionCount:{objc_msgSend(tokenCopy, "connectionCount") + 1}];
  }

  return v7;
}

- (NSXPCListenerEndpoint)endpoint
{
  token = [(TKHostTokenConnection *)self token];
  endpoint = [token endpoint];

  return endpoint;
}

- (NSString)slotName
{
  token = [(TKHostTokenConnection *)self token];
  slotName = [token slotName];

  return slotName;
}

- (void)dealloc
{
  token = [(TKHostTokenConnection *)self token];
  objc_sync_enter(token);
  v4 = [token connectionCount] - 1;
  [token setConnectionCount:v4];
  if (!v4)
  {
    [token setEndpoint:0];
    registry = [token registry];

    if (registry)
    {
      driver = [token driver];
      tokenID = [token tokenID];
      [driver releaseTokenWithTokenID:tokenID];
    }

    [token setDriver:0];
  }

  objc_sync_exit(token);

  v8.receiver = self;
  v8.super_class = TKHostTokenConnection;
  [(TKHostTokenConnection *)&v8 dealloc];
}

@end