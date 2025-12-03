@interface TKTokenConnection
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (TKTokenConnection)initWithToken:(id)token;
- (void)dealloc;
@end

@implementation TKTokenConnection

- (TKTokenConnection)initWithToken:(id)token
{
  tokenCopy = token;
  v17.receiver = self;
  v17.super_class = TKTokenConnection;
  v6 = [(TKTokenConnection *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_token, token);
    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    sessions = v7->_sessions;
    v7->_sessions = strongToWeakObjectsMapTable;

    token = [(TKTokenConnection *)v7 token];
    tokenDriver = [token tokenDriver];
    keepAlive = [tokenDriver keepAlive];
    initialKeepAlive = v7->_initialKeepAlive;
    v7->_initialKeepAlive = keepAlive;

    anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
    listener = v7->_listener;
    v7->_listener = anonymousListener;

    [(NSXPCListener *)v7->_listener setDelegate:v7];
    [(NSXPCListener *)v7->_listener resume];
  }

  return v7;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  gotLoadHelper_x8__OBJC_CLASS___LAContext(v4);
  v7 = *(v6 + 3664);
  v9 = v8;
  objc_opt_class();
  v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5A8D7B0];
  [v9 setExportedInterface:v10];

  v11 = [[TKTokenSessionConnection alloc] initWithTokenConnection:self];
  [v9 setExportedObject:v11];

  [v9 resume];
  return 1;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener invalidate];
  token = [(TKTokenConnection *)self token];
  [token terminate];

  v4.receiver = self;
  v4.super_class = TKTokenConnection;
  [(TKTokenConnection *)&v4 dealloc];
}

@end