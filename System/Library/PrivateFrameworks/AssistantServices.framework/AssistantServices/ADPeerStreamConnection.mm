@interface ADPeerStreamConnection
- (ADPeerStreamConnection)initWithServiceIdentifier:(id)identifier delegate:(id)delegate listener:(BOOL)listener;
- (void)close;
- (void)getLocalMetrics:(id)metrics;
- (void)getSocket:(id)socket;
@end

@implementation ADPeerStreamConnection

- (void)close
{
  [(IDSDeviceConnection *)self->_vendedDeviceConnection close];
  sharedConnection = self->_sharedConnection;

  [(ADSharedPeerStreamConnection *)sharedConnection closeForConnection:self];
}

- (void)getLocalMetrics:(id)metrics
{
  metricsCopy = metrics;
  if (metricsCopy)
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
      metrics = [(IDSDeviceConnection *)vendedDeviceConnection metrics];
      metricsCopy[2](metricsCopy, metrics);
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

      metricsCopy[2](metricsCopy, 0);
    }
  }
}

- (void)getSocket:(id)socket
{
  socketCopy = socket;
  vendedDeviceConnection = self->_vendedDeviceConnection;
  self->_vendedDeviceConnection = 0;

  sharedConnection = self->_sharedConnection;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100096FE0;
  v8[3] = &unk_10050FE10;
  v8[4] = self;
  v9 = socketCopy;
  v7 = socketCopy;
  [(ADSharedPeerStreamConnection *)sharedConnection getSocketForConnection:self completion:v8];
}

- (ADPeerStreamConnection)initWithServiceIdentifier:(id)identifier delegate:(id)delegate listener:(BOOL)listener
{
  listenerCopy = listener;
  identifierCopy = identifier;
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = ADPeerStreamConnection;
  v10 = [(ADPeerStreamConnection *)&v17 init];
  if (v10)
  {
    v11 = [ADSharedPeerStreamConnection sharedPeerStreamConnectionWithServiceIdentifier:identifierCopy listener:listenerCopy];
    sharedConnection = v10->_sharedConnection;
    v10->_sharedConnection = v11;

    v13 = objc_storeWeak(&v10->_delegate, delegateCopy);
    if (delegateCopy)
    {
      v14 = v10->_sharedConnection;
      WeakRetained = objc_loadWeakRetained(&v10->_delegate);
      [(ADSharedPeerStreamConnection *)v14 addDelegate:WeakRetained];
    }
  }

  return v10;
}

@end