@interface VSWebServerConnection
- (VSWebServerConnection)initWithConnection:(_CFHTTPServerConnection *)connection;
- (VSWebServerConnectionDelegate)delegate;
- (id)server;
- (void)invalidate;
- (void)resume;
- (void)suspend;
@end

@implementation VSWebServerConnection

- (VSWebServerConnection)initWithConnection:(_CFHTTPServerConnection *)connection
{
  if (!connection)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The connection parameter must not be nil."];
  }

  v8.receiver = self;
  v8.super_class = VSWebServerConnection;
  v5 = [(VSWebServerConnection *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_connection = connection;
    _CFHTTPServerConnectionSetClient();
  }

  return v6;
}

- (id)server
{
  [(VSWebServerConnection *)self connection];
  v2 = _CFHTTPServerConnectionCopyProperty();
  if (v2)
  {
    v3 = v2;
    v4 = CFGetTypeID(v2);
    if (v4 == _CFHTTPServerGetTypeID())
    {
      v5 = _CFHTTPServerGetClient();
    }

    else
    {
      v5 = 0;
    }

    CFRelease(v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)resume
{
  privateQueue = [(VSWebServerConnection *)self privateQueue];
  if (privateQueue)
  {
    v4 = privateQueue;
    dispatch_resume(privateQueue);
  }

  else
  {
    v4 = dispatch_queue_create("com.apple.VideoSubscriberAccount.WebServer.Connection", 0);
    [(VSWebServerConnection *)self setPrivateQueue:v4];
    [(VSWebServerConnection *)self connection];
    _CFHTTPServerConnectionSetDispatchQueue();
  }
}

- (void)suspend
{
  privateQueue = [(VSWebServerConnection *)self privateQueue];
  dispatch_suspend(privateQueue);
}

- (void)invalidate
{
  connection = [(VSWebServerConnection *)self connection];

  MEMORY[0x28210D0B0](connection);
}

- (VSWebServerConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end