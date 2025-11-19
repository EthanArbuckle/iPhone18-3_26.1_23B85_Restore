@interface TKHostTokenConnection
- (NSString)slotName;
- (NSXPCListenerEndpoint)endpoint;
- (TKHostTokenConnection)initWithToken:(id)a3;
- (void)dealloc;
@end

@implementation TKHostTokenConnection

- (TKHostTokenConnection)initWithToken:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TKHostTokenConnection;
  v6 = [(TKHostTokenConnection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_token, a3);
    [v5 setConnectionCount:{objc_msgSend(v5, "connectionCount") + 1}];
  }

  return v7;
}

- (NSXPCListenerEndpoint)endpoint
{
  v2 = [(TKHostTokenConnection *)self token];
  v3 = [v2 endpoint];

  return v3;
}

- (NSString)slotName
{
  v2 = [(TKHostTokenConnection *)self token];
  v3 = [v2 slotName];

  return v3;
}

- (void)dealloc
{
  v3 = [(TKHostTokenConnection *)self token];
  objc_sync_enter(v3);
  v4 = [v3 connectionCount] - 1;
  [v3 setConnectionCount:v4];
  if (!v4)
  {
    [v3 setEndpoint:0];
    v5 = [v3 registry];

    if (v5)
    {
      v6 = [v3 driver];
      v7 = [v3 tokenID];
      [v6 releaseTokenWithTokenID:v7];
    }

    [v3 setDriver:0];
  }

  objc_sync_exit(v3);

  v8.receiver = self;
  v8.super_class = TKHostTokenConnection;
  [(TKHostTokenConnection *)&v8 dealloc];
}

@end