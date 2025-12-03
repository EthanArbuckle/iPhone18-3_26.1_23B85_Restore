@interface MTSXPCListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (MTSXPCListener)initWithXPCListener:(id)listener;
- (MTSXPCListenerDelegate)delegate;
- (void)start;
@end

@implementation MTSXPCListener

- (MTSXPCListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [[MTSXPCConnection alloc] initWithXPCConnection:connectionCopy];

  delegate = [(MTSXPCListener *)self delegate];
  LOBYTE(self) = [delegate listener:self shouldAcceptNewConnection:v6];

  return self;
}

- (void)start
{
  xpcListener = [(MTSXPCListener *)self xpcListener];
  [xpcListener setDelegate:self];

  xpcListener2 = [(MTSXPCListener *)self xpcListener];
  [xpcListener2 resume];
}

- (MTSXPCListener)initWithXPCListener:(id)listener
{
  listenerCopy = listener;
  if (listenerCopy)
  {
    v6 = listenerCopy;
    v12.receiver = self;
    v12.super_class = MTSXPCListener;
    v7 = [(MTSXPCListener *)&v12 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_xpcListener, listener);
    }

    return v8;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    [(MTSThreadScanResult *)v10 .cxx_destruct];
  }

  return result;
}

@end