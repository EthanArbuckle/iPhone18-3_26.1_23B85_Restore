@interface ADPeerStreamConnection
- (ADPeerStreamConnection)initWithServiceIdentifier:(id)a3 delegate:(id)a4 listener:(BOOL)a5;
- (void)close;
- (void)getLocalMetrics:(id)a3;
- (void)getSocket:(id)a3;
@end

@implementation ADPeerStreamConnection

- (void)close
{
  [(IDSDeviceConnection *)self->_vendedDeviceConnection close];
  sharedConnection = self->_sharedConnection;

  [(ADSharedPeerStreamConnection *)sharedConnection closeForConnection:self];
}

- (void)getLocalMetrics:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = AFSiriLogContextIDS;
    if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "[ADPeerStreamConnection getLocalMetrics:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", &v9, 0xCu);
    }

    vendedDeviceConnection = self->_vendedDeviceConnection;
    if (vendedDeviceConnection)
    {
      v7 = [(IDSDeviceConnection *)vendedDeviceConnection metrics];
      v4[2](v4, v7);
    }

    else
    {
      v8 = AFSiriLogContextIDS;
      if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
      {
        v9 = 136315138;
        v10 = "[ADPeerStreamConnection getLocalMetrics:]";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s No current IDS device connection", &v9, 0xCu);
      }

      v4[2](v4, 0);
    }
  }
}

- (void)getSocket:(id)a3
{
  v4 = a3;
  vendedDeviceConnection = self->_vendedDeviceConnection;
  self->_vendedDeviceConnection = 0;

  sharedConnection = self->_sharedConnection;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100096FE0;
  v8[3] = &unk_10050FE10;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [(ADSharedPeerStreamConnection *)sharedConnection getSocketForConnection:self completion:v8];
}

- (ADPeerStreamConnection)initWithServiceIdentifier:(id)a3 delegate:(id)a4 listener:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = ADPeerStreamConnection;
  v10 = [(ADPeerStreamConnection *)&v17 init];
  if (v10)
  {
    v11 = [ADSharedPeerStreamConnection sharedPeerStreamConnectionWithServiceIdentifier:v8 listener:v5];
    sharedConnection = v10->_sharedConnection;
    v10->_sharedConnection = v11;

    v13 = objc_storeWeak(&v10->_delegate, v9);
    if (v9)
    {
      v14 = v10->_sharedConnection;
      WeakRetained = objc_loadWeakRetained(&v10->_delegate);
      [(ADSharedPeerStreamConnection *)v14 addDelegate:WeakRetained];
    }
  }

  return v10;
}

@end