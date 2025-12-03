@interface _AFDeviceContextServiceDelegateProxy
- (_AFDeviceContextServiceDelegateProxy)initWithConnection:(id)connection;
- (void)updateLocalDeviceContext:(id)context;
@end

@implementation _AFDeviceContextServiceDelegateProxy

- (void)updateLocalDeviceContext:(id)context
{
  contextCopy = context;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  [WeakRetained _updateLocalDeviceContext:contextCopy];
}

- (_AFDeviceContextServiceDelegateProxy)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v8.receiver = self;
  v8.super_class = _AFDeviceContextServiceDelegateProxy;
  v5 = [(_AFDeviceContextServiceDelegateProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_connection, connectionCopy);
  }

  return v6;
}

@end