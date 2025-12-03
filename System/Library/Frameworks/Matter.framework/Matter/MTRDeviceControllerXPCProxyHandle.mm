@interface MTRDeviceControllerXPCProxyHandle
- (MTRDeviceControllerServerProtocol)proxy;
- (MTRDeviceControllerXPCProxyHandle)initWithXPCConnection:(id)connection;
- (NSXPCConnection)xpcConnection;
- (void)dealloc;
@end

@implementation MTRDeviceControllerXPCProxyHandle

- (MTRDeviceControllerXPCProxyHandle)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  v8.receiver = self;
  v8.super_class = MTRDeviceControllerXPCProxyHandle;
  v5 = [(MTRDeviceControllerXPCProxyHandle *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_xpcConnection, connectionCopy);
  }

  return v6;
}

- (MTRDeviceControllerServerProtocol)proxy
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);
  remoteObjectProxy = [WeakRetained remoteObjectProxy];

  return remoteObjectProxy;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);
  [WeakRetained invalidate];

  v4.receiver = self;
  v4.super_class = MTRDeviceControllerXPCProxyHandle;
  [(MTRDeviceControllerXPCProxyHandle *)&v4 dealloc];
}

- (NSXPCConnection)xpcConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);

  return WeakRetained;
}

@end