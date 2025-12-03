@interface ADDeviceContextConnection
- (ADDeviceContextConnection)initWithQueue:(id)queue xpcConnection:(id)connection delegate:(id)delegate;
- (id)_remoteServiceDelegateWithErrorHandler:(id)handler;
- (void)_beginUpdateLocalDeviceContextWithReply:(id)reply;
- (void)_clearXPCConnection;
- (void)_endUpdateLocalDeviceContext;
- (void)_handleXPCConnectionInterruption;
- (void)_handleXPCConnectionInvalidation;
- (void)_invalidate;
- (void)dealloc;
- (void)donateSerializedContextMapByPrivacyClass:(id)class withMetadataMap:(id)map forType:(id)type pushToRemote:(BOOL)remote completion:(id)completion;
- (void)getLocalDeviceContextWithReply:(id)reply;
- (void)invalidate;
- (void)updateLocalDeviceContext:(id)context;
@end

@implementation ADDeviceContextConnection

- (void)_endUpdateLocalDeviceContext
{
  dispatch_assert_queue_V2(self->_queue);
  self->_isUpdatingLocalDeviceContext = 0;
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = 136315650;
    v7 = "[ADDeviceContextConnection _endUpdateLocalDeviceContext]";
    v8 = 2048;
    selfCopy2 = self;
    v10 = 1024;
    v11 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s %p isUpdatingLocalDeviceContext = %d", &v6, 0x1Cu);
  }

  updateLocalDeviceContextReply = self->_updateLocalDeviceContextReply;
  if (updateLocalDeviceContextReply)
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v6 = 136315394;
      v7 = "[ADDeviceContextConnection _endUpdateLocalDeviceContext]";
      v8 = 2048;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %p sending reply...", &v6, 0x16u);
      updateLocalDeviceContextReply = self->_updateLocalDeviceContextReply;
    }

    updateLocalDeviceContextReply[2](updateLocalDeviceContextReply);
  }
}

- (void)_beginUpdateLocalDeviceContextWithReply:(id)reply
{
  queue = self->_queue;
  replyCopy = reply;
  dispatch_assert_queue_V2(queue);
  self->_isUpdatingLocalDeviceContext = 1;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = "[ADDeviceContextConnection _beginUpdateLocalDeviceContextWithReply:]";
    v11 = 2048;
    selfCopy = self;
    v13 = 1024;
    v14 = 1;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s %p isUpdatingLocalDeviceContext = %d", &v9, 0x1Cu);
  }

  v7 = objc_retainBlock(replyCopy);

  updateLocalDeviceContextReply = self->_updateLocalDeviceContextReply;
  self->_updateLocalDeviceContextReply = v7;
}

- (id)_remoteServiceDelegateWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_isInvalid)
  {
    xpcConnection = self->_xpcConnection;
    if (xpcConnection)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10012C6BC;
      v10[3] = &unk_10051D2F0;
      v11 = handlerCopy;
      v6 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v10];
      v7 = v11;
LABEL_7:

      goto LABEL_10;
    }
  }

  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v13 = "[ADDeviceContextConnection _remoteServiceDelegateWithErrorHandler:]";
    v14 = 2048;
    selfCopy = self;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s %p Ignored because the connection is invalidated.", buf, 0x16u);
    if (handlerCopy)
    {
      goto LABEL_6;
    }
  }

  else if (handlerCopy)
  {
LABEL_6:
    v7 = [AFError errorWithCode:23];
    (*(handlerCopy + 2))(handlerCopy, v7);
    v6 = 0;
    goto LABEL_7;
  }

  v6 = 0;
LABEL_10:

  return v6;
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_queue);
  [(ADDeviceContextConnection *)self _endUpdateLocalDeviceContext];
  if (!self->_isInvalid)
  {
    self->_isInvalid = 1;
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v5 = 136315394;
      v6 = "[ADDeviceContextConnection _invalidate]";
      v7 = 2048;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s %p", &v5, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained deviceContextConnectionDidInvalidate:self];

    objc_storeWeak(&self->_delegate, 0);
  }

  [(ADDeviceContextConnection *)self _clearXPCConnection];
}

- (void)_clearXPCConnection
{
  dispatch_assert_queue_V2(self->_queue);
  xpcConnection = self->_xpcConnection;
  if (xpcConnection)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v6 = 136315650;
      v7 = "[ADDeviceContextConnection _clearXPCConnection]";
      v8 = 2048;
      selfCopy = self;
      v10 = 2112;
      v11 = xpcConnection;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s %p xpcConnection = %@", &v6, 0x20u);
      xpcConnection = self->_xpcConnection;
    }

    [(NSXPCConnection *)xpcConnection invalidate];
    v5 = self->_xpcConnection;
    self->_xpcConnection = 0;
  }
}

- (void)_handleXPCConnectionInterruption
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    xpcConnection = self->_xpcConnection;
    v5 = 136315650;
    v6 = "[ADDeviceContextConnection _handleXPCConnectionInterruption]";
    v7 = 2048;
    selfCopy = self;
    v9 = 2112;
    v10 = xpcConnection;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s %p xpcConnection = %@", &v5, 0x20u);
  }

  [(ADDeviceContextConnection *)self _invalidate];
}

- (void)_handleXPCConnectionInvalidation
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    xpcConnection = self->_xpcConnection;
    v5 = 136315650;
    v6 = "[ADDeviceContextConnection _handleXPCConnectionInvalidation]";
    v7 = 2048;
    selfCopy = self;
    v9 = 2112;
    v10 = xpcConnection;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s %p xpcConnection = %@", &v5, 0x20u);
  }

  [(ADDeviceContextConnection *)self _invalidate];
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012CAF0;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)donateSerializedContextMapByPrivacyClass:(id)class withMetadataMap:(id)map forType:(id)type pushToRemote:(BOOL)remote completion:(id)completion
{
  remoteCopy = remote;
  classCopy = class;
  mapCopy = map;
  typeCopy = type;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v17 = WeakRetained;
  if (self->_isInvalid || !WeakRetained)
  {
    v18 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315394;
      v20 = "[ADDeviceContextConnection donateSerializedContextMapByPrivacyClass:withMetadataMap:forType:pushToRemote:completion:]";
      v21 = 2048;
      selfCopy = self;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s %p Ignored because the connection is invalidated.", &v19, 0x16u);
      if (!completionCopy)
      {
        goto LABEL_7;
      }
    }

    else if (!completionCopy)
    {
      goto LABEL_7;
    }

    completionCopy[2](completionCopy);
    goto LABEL_7;
  }

  [WeakRetained deviceContextConnection:self donateSerializedContextMapByPrivacyClass:classCopy withMetadataMap:mapCopy forType:typeCopy pushToRemote:remoteCopy completion:completionCopy];
LABEL_7:
}

- (void)getLocalDeviceContextWithReply:(id)reply
{
  replyCopy = reply;
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = WeakRetained;
  v7 = AFSiriLogContextDaemon;
  if (self->_isInvalid || !WeakRetained)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "[ADDeviceContextConnection getLocalDeviceContextWithReply:]";
      v13 = 2048;
      selfCopy2 = self;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s %p Ignored because the connection is invalidated.", buf, 0x16u);
      if (!replyCopy)
      {
        goto LABEL_9;
      }
    }

    else if (!replyCopy)
    {
      goto LABEL_9;
    }

    replyCopy[2](replyCopy, 0);
    goto LABEL_9;
  }

  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[ADDeviceContextConnection getLocalDeviceContextWithReply:]";
    v13 = 2048;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10012CE90;
  v8[3] = &unk_100512920;
  objc_copyWeak(&v10, buf);
  v9 = replyCopy;
  [v6 deviceContextConnection:self getLocalDeviceContextWithCompletion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
LABEL_9:
}

- (void)updateLocalDeviceContext:(id)context
{
  contextCopy = context;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10012D050;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = contextCopy;
  v6 = contextCopy;
  dispatch_async(queue, v7);
}

- (ADDeviceContextConnection)initWithQueue:(id)queue xpcConnection:(id)connection delegate:(id)delegate
{
  queueCopy = queue;
  connectionCopy = connection;
  delegateCopy = delegate;
  v31.receiver = self;
  v31.super_class = ADDeviceContextConnection;
  v11 = [(ADDeviceContextConnection *)&v31 init];
  if (v11)
  {
    if (queueCopy)
    {
      v12 = queueCopy;
      queue = v11->_queue;
      v11->_queue = v12;
    }

    else
    {
      v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v15 = dispatch_queue_attr_make_with_qos_class(v14, QOS_CLASS_DEFAULT, 0);

      v16 = dispatch_queue_create("com.apple.assistant.device-context.client-connection", v15);
      queue = v11->_queue;
      v11->_queue = v16;
    }

    objc_storeWeak(&v11->_delegate, delegateCopy);
    objc_storeStrong(&v11->_xpcConnection, connection);
    [(NSXPCConnection *)v11->_xpcConnection _setQueue:v11->_queue];
    xpcConnection = v11->_xpcConnection;
    v18 = AFDeviceContextServiceDelegateGetXPCInterface();
    [(NSXPCConnection *)xpcConnection setRemoteObjectInterface:v18];

    v19 = v11->_xpcConnection;
    v20 = AFDeviceContextServiceGetXPCInterface();
    [(NSXPCConnection *)v19 setExportedInterface:v20];

    [(NSXPCConnection *)v11->_xpcConnection setExportedObject:v11];
    objc_initWeak(&location, v11);
    v21 = v11->_xpcConnection;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10012D620;
    v28[3] = &unk_10051B5F0;
    objc_copyWeak(&v29, &location);
    [(NSXPCConnection *)v21 setInvalidationHandler:v28];
    v22 = v11->_xpcConnection;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10012D660;
    v26[3] = &unk_10051B5F0;
    objc_copyWeak(&v27, &location);
    [(NSXPCConnection *)v22 setInterruptionHandler:v26];
    [(NSXPCConnection *)v11->_xpcConnection resume];
    v23 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v24 = v11->_xpcConnection;
      *buf = 136315650;
      v33 = "[ADDeviceContextConnection initWithQueue:xpcConnection:delegate:]";
      v34 = 2048;
      v35 = v11;
      v36 = 2112;
      v37 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s %p xpcConnection = %@", buf, 0x20u);
    }

    objc_destroyWeak(&v27);
    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  return v11;
}

- (void)dealloc
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v6 = "[ADDeviceContextConnection dealloc]";
    v7 = 2048;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
  }

  v4.receiver = self;
  v4.super_class = ADDeviceContextConnection;
  [(ADDeviceContextConnection *)&v4 dealloc];
}

@end