@interface MTRDeviceControllerXPCProxyHandle
- (MTRDeviceControllerServerProtocol)proxy;
- (MTRDeviceControllerXPCProxyHandle)initWithXPCConnection:(id)a3;
- (NSXPCConnection)xpcConnection;
- (void)dealloc;
@end

@implementation MTRDeviceControllerXPCProxyHandle

- (MTRDeviceControllerXPCProxyHandle)initWithXPCConnection:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MTRDeviceControllerXPCProxyHandle;
  v5 = [(MTRDeviceControllerXPCProxyHandle *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_xpcConnection, v4);
  }

  return v6;
}

- (MTRDeviceControllerServerProtocol)proxy
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);
  v3 = [WeakRetained remoteObjectProxy];

  return v3;
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