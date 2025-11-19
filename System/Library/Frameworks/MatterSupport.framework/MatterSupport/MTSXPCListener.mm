@interface MTSXPCListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (MTSXPCListener)initWithXPCListener:(id)a3;
- (MTSXPCListenerDelegate)delegate;
- (void)start;
@end

@implementation MTSXPCListener

- (MTSXPCListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [[MTSXPCConnection alloc] initWithXPCConnection:v5];

  v7 = [(MTSXPCListener *)self delegate];
  LOBYTE(self) = [v7 listener:self shouldAcceptNewConnection:v6];

  return self;
}

- (void)start
{
  v3 = [(MTSXPCListener *)self xpcListener];
  [v3 setDelegate:self];

  v4 = [(MTSXPCListener *)self xpcListener];
  [v4 resume];
}

- (MTSXPCListener)initWithXPCListener:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v12.receiver = self;
    v12.super_class = MTSXPCListener;
    v7 = [(MTSXPCListener *)&v12 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_xpcListener, a3);
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