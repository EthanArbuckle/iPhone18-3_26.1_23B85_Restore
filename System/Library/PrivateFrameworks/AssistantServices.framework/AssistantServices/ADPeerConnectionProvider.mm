@interface ADPeerConnectionProvider
+ (void)getMetricsContext:(id)context;
- (BOOL)shouldFallbackFromError:(id)error;
- (id)_peerConnection;
- (id)connectionType;
- (id)headerDataWithForceReconnect:(BOOL)reconnect;
- (id)initListenerWithQueue:(id)queue;
- (void)_getNWConnectionWithInitialData:(id)data completion:(id)completion;
- (void)close;
- (void)peerStreamConnection:(id)connection failedWithError:(id)error;
- (void)updateConnectionMetrics:(id)metrics completion:(id)completion;
@end

@implementation ADPeerConnectionProvider

- (void)peerStreamConnection:(id)connection failedWithError:(id)error
{
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained connectionProvider:self receivedError:errorCopy];
}

- (void)updateConnectionMetrics:(id)metrics completion:(id)completion
{
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_10013F67C;
  v13 = &unk_10051E038;
  metricsCopy = metrics;
  completionCopy = completion;
  v9.receiver = self;
  v9.super_class = ADPeerConnectionProvider;
  v6 = completionCopy;
  v7 = metricsCopy;
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

- (void)_getNWConnectionWithInitialData:(id)data completion:(id)completion
{
  completionCopy = completion;
  kdebug_trace();
  _peerConnection = [(ADPeerConnectionProvider *)self _peerConnection];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013F898;
  v8[3] = &unk_100512D40;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [_peerConnection getSocket:v8];
}

- (BOOL)shouldFallbackFromError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:@"ADPeerStreamConnectionErrorDomain"] && !objc_msgSend(errorCopy, "code"))
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

- (id)headerDataWithForceReconnect:(BOOL)reconnect
{
  reconnectCopy = reconnect;
  v5 = AFSiriLogContextProxy;
  if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO))
  {
    v13 = 136315394;
    v14 = "[ADPeerConnectionProvider headerDataWithForceReconnect:]";
    v15 = 1024;
    v16 = reconnectCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s forceReconnect %d", &v13, 0x12u);
  }

  _url = [(ADPeerConnectionProvider *)self _url];
  absoluteString = [_url absoluteString];
  uTF8String = [absoluteString UTF8String];

  if (uTF8String)
  {
    v9 = strlen(uTF8String);
    v10 = malloc_type_malloc(v9 + 6, 0x8EC0D6CAuLL);
    *v10 = 17233;
    v10[1] = reconnectCopy;
    v10[2] = bswap32(v9) >> 16;
    memmove(v10 + 3, uTF8String, v9);
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

- (id)initListenerWithQueue:(id)queue
{
  result = [(ADPeerConnectionProvider *)self initWithQueue:queue];
  if (result)
  {
    *(result + 24) = 1;
  }

  return result;
}

+ (void)getMetricsContext:(id)context
{
  contextCopy = context;
  if (AFIsNano())
  {
    v3 = [ADSharedPeerStreamConnection sharedPeerStreamConnectionWithServiceIdentifier:@"com.apple.private.alloy.siri.proxy" listener:0];
    [v3 getMetricsContext:contextCopy];
  }

  else
  {
    contextCopy[2](contextCopy, 0);
  }
}

@end