@interface ACDFakeRemoteAccountStoreSession
- (ACDFakeRemoteAccountStoreSession)initWithFakeProxy:(id)a3;
- (id)remoteObjectProxy;
- (id)remoteObjectProxyWithErrorHandler:(id)a3;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3;
@end

@implementation ACDFakeRemoteAccountStoreSession

- (ACDFakeRemoteAccountStoreSession)initWithFakeProxy:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ACDFakeRemoteAccountStoreSession;
  v5 = [(ACRemoteAccountStoreSession *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_proxy, v4);
  }

  return v6;
}

- (id)remoteObjectProxy
{
  WeakRetained = objc_loadWeakRetained(&self->_proxy);

  return WeakRetained;
}

- (id)remoteObjectProxyWithErrorHandler:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_proxy);

  return WeakRetained;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_proxy);

  return WeakRetained;
}

@end