@interface ADPeerConnectionProvider
+ (void)getMetricsContext:(id)a3;
- (BOOL)shouldFallbackFromError:(id)a3;
- (id)_peerConnection;
- (id)connectionType;
- (id)headerDataWithForceReconnect:(BOOL)a3;
- (id)initListenerWithQueue:(id)a3;
- (void)_getNWConnectionWithInitialData:(id)a3 completion:(id)a4;
- (void)close;
- (void)peerStreamConnection:(id)a3 failedWithError:(id)a4;
- (void)updateConnectionMetrics:(id)a3 completion:(id)a4;
@end

@implementation ADPeerConnectionProvider

- (void)peerStreamConnection:(id)a3 failedWithError:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained connectionProvider:self receivedError:v5];
}

- (void)updateConnectionMetrics:(id)a3 completion:(id)a4
{
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_10013F67C;
  v13 = &unk_10051E038;
  v14 = a3;
  v15 = a4;
  v9.receiver = self;
  v9.super_class = ADPeerConnectionProvider;
  v6 = v15;
  v7 = v14;
  [(ADPeerConnectionProvider *)&v9 updateConnectionMetrics:v7 completion:&v10];
  v8 = [(ADPeerConnectionProvider *)self _peerConnection:v9.receiver];
  [v8 getLocalMetrics:&stru_100512D80];
}

- (id)connectionType
{
  v2 = [[SiriCoreConnectionType alloc] initWithTechnology:3002];

  return v2;
}

- (void)close
{
  v3.receiver = self;
  v3.super_class = ADPeerConnectionProvider;
  [(ADPeerConnectionProvider *)&v3 close];
  [(ADPeerStreamConnection *)self->_peerConnection close];
}

- (void)_getNWConnectionWithInitialData:(id)a3 completion:(id)a4
{
  v5 = a4;
  kdebug_trace();
  v6 = [(ADPeerConnectionProvider *)self _peerConnection];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013F898;
  v8[3] = &unk_100512D40;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 getSocket:v8];
}

- (BOOL)shouldFallbackFromError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:@"ADPeerStreamConnectionErrorDomain"] && !objc_msgSend(v3, "code"))
  {
    if (qword_100590550 != -1)
    {
      dispatch_once(&qword_100590550, &stru_100516C10);
    }

    v5 = byte_100590549;
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

- (id)headerDataWithForceReconnect:(BOOL)a3
{
  v3 = a3;
  v5 = AFSiriLogContextProxy;
  if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO))
  {
    v13 = 136315394;
    v14 = "[ADPeerConnectionProvider headerDataWithForceReconnect:]";
    v15 = 1024;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s forceReconnect %d", &v13, 0x12u);
  }

  v6 = [(ADPeerConnectionProvider *)self _url];
  v7 = [v6 absoluteString];
  v8 = [v7 UTF8String];

  if (v8)
  {
    v9 = strlen(v8);
    v10 = malloc_type_malloc(v9 + 6, 0x8EC0D6CAuLL);
    *v10 = 17233;
    v10[1] = v3;
    v10[2] = bswap32(v9) >> 16;
    memmove(v10 + 3, v8, v9);
    v11 = dispatch_data_create(v10, v9 + 6, 0, _dispatch_data_destructor_free);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_peerConnection
{
  peerConnection = self->_peerConnection;
  if (!peerConnection)
  {
    v4 = [[ADPeerStreamConnection alloc] initWithServiceIdentifier:@"com.apple.private.alloy.siri.proxy" delegate:self listener:self->_isListener];
    v5 = self->_peerConnection;
    self->_peerConnection = v4;

    peerConnection = self->_peerConnection;
  }

  return peerConnection;
}

- (id)initListenerWithQueue:(id)a3
{
  result = [(ADPeerConnectionProvider *)self initWithQueue:a3];
  if (result)
  {
    *(result + 24) = 1;
  }

  return result;
}

+ (void)getMetricsContext:(id)a3
{
  v4 = a3;
  if (AFIsNano())
  {
    v3 = [ADSharedPeerStreamConnection sharedPeerStreamConnectionWithServiceIdentifier:@"com.apple.private.alloy.siri.proxy" listener:0];
    [v3 getMetricsContext:v4];
  }

  else
  {
    v4[2](v4, 0);
  }
}

@end