@interface _AFDeviceContextServiceDelegateProxy
- (_AFDeviceContextServiceDelegateProxy)initWithConnection:(id)a3;
- (void)updateLocalDeviceContext:(id)a3;
@end

@implementation _AFDeviceContextServiceDelegateProxy

- (void)updateLocalDeviceContext:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  [WeakRetained _updateLocalDeviceContext:v4];
}

- (_AFDeviceContextServiceDelegateProxy)initWithConnection:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _AFDeviceContextServiceDelegateProxy;
  v5 = [(_AFDeviceContextServiceDelegateProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_connection, v4);
  }

  return v6;
}

@end