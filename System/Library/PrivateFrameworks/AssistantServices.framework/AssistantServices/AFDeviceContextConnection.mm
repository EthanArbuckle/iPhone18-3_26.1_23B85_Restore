@interface AFDeviceContextConnection
- (AFDeviceContextConnection)initWithQueue:(id)queue instanceContext:(id)context delegate:(id)delegate;
- (NSString)description;
- (id)_remoteServiceWithErrorHandler:(id)handler;
- (id)_xpcConnection;
- (void)_beginUpdateLocalDeviceContext;
- (void)_clearXPCConnection;
- (void)_endUpdateLocalDeviceContext;
- (void)_fetchLocalDeviceContextWithCompletion:(id)completion;
- (void)_handleXPCConnectionInterruption;
- (void)_handleXPCConnectionInvalidation;
- (void)_invalidate;
- (void)_updateLocalDeviceContext:(id)context;
- (void)beginUpdateLocalDeviceContext;
- (void)dealloc;
- (void)donateSerializedContextMapByPrivacyClass:(id)class withMetadataMap:(id)map forType:(id)type pushToRemote:(BOOL)remote completion:(id)completion;
- (void)endUpdateLocalDeviceContext;
- (void)getLocalDeviceContextWithCompletion:(id)completion;
- (void)invalidate;
@end

@implementation AFDeviceContextConnection

- (void)_updateLocalDeviceContext:(id)context
{
  v28 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  dispatch_assert_queue_V2(self->_queue);
  v5 = self->_localDeviceContext;
  v6 = contextCopy;
  v7 = v6;
  if (v5 == v6)
  {

LABEL_13:
    goto LABEL_14;
  }

  if (v6 && v5)
  {
    v8 = [(AFDeviceContext *)v5 isEqual:v6];

    if (v8)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  v9 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    localDeviceContext = self->_localDeviceContext;
    v11 = v9;
    identifier = [(AFDeviceContext *)localDeviceContext identifier];
    identifier2 = [(AFDeviceContext *)v7 identifier];
    v20 = 136315906;
    v21 = "[AFDeviceContextConnection _updateLocalDeviceContext:]";
    v22 = 2048;
    selfCopy = self;
    v24 = 2112;
    v25 = identifier;
    v26 = 2112;
    v27 = identifier2;
    _os_log_impl(&dword_1912FE000, v11, OS_LOG_TYPE_INFO, "%s %p localDeviceContext (old) = %@ (new) = %@", &v20, 0x2Au);
  }

  v14 = [(AFDeviceContext *)v7 copy];
  v15 = self->_localDeviceContext;
  self->_localDeviceContext = v14;

  if (self->_isUpdatingLocalDeviceContext)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v5 = objc_loadWeakRetained(&self->_delegate);
      v18 = [(AFDeviceContext *)self->_localDeviceContext copy];
      [(AFDeviceContext *)v5 deviceContextConnection:self didUpdateLocalDeviceContext:v18];

      goto LABEL_13;
    }
  }

LABEL_14:

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_endUpdateLocalDeviceContext
{
  v14 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (self->_isInvalid)
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "[AFDeviceContextConnection _endUpdateLocalDeviceContext]";
      v12 = 2048;
      selfCopy2 = self;
      _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s %p Ignored because the connection is invalidated.", buf, 0x16u);
    }
  }

  else if (self->_isUpdatingLocalDeviceContext)
  {
    self->_isUpdatingLocalDeviceContext = 0;
    localDeviceContext = self->_localDeviceContext;
    self->_localDeviceContext = 0;

    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v11 = "[AFDeviceContextConnection _endUpdateLocalDeviceContext]";
      v12 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57__AFDeviceContextConnection__endUpdateLocalDeviceContext__block_invoke;
    v8[3] = &unk_1E7349738;
    objc_copyWeak(&v9, buf);
    v6 = [(AFDeviceContextConnection *)self _remoteServiceWithErrorHandler:v8];
    [v6 endUpdateLocalDeviceContext];

    objc_destroyWeak(&v9);
    objc_destroyWeak(buf);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __57__AFDeviceContextConnection__endUpdateLocalDeviceContext__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v6 = v4;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = 136315650;
    v9 = "[AFDeviceContextConnection _endUpdateLocalDeviceContext]_block_invoke";
    v10 = 2048;
    v11 = WeakRetained;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_1912FE000, v6, OS_LOG_TYPE_ERROR, "%s %p error = %@", &v8, 0x20u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_beginUpdateLocalDeviceContext
{
  v19 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (self->_isInvalid)
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[AFDeviceContextConnection _beginUpdateLocalDeviceContext]";
      v17 = 2048;
      selfCopy2 = self;
      _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s %p Ignored because the connection is invalidated.", buf, 0x16u);
    }
  }

  else if (!self->_isUpdatingLocalDeviceContext)
  {
    self->_isUpdatingLocalDeviceContext = 1;
    localDeviceContext = self->_localDeviceContext;
    self->_localDeviceContext = 0;

    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v16 = "[AFDeviceContextConnection _beginUpdateLocalDeviceContext]";
      v17 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __59__AFDeviceContextConnection__beginUpdateLocalDeviceContext__block_invoke;
    v13[3] = &unk_1E7349738;
    objc_copyWeak(&v14, buf);
    v6 = [(AFDeviceContextConnection *)self _remoteServiceWithErrorHandler:v13];
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __59__AFDeviceContextConnection__beginUpdateLocalDeviceContext__block_invoke_13;
    v11 = &unk_1E7348A80;
    objc_copyWeak(&v12, buf);
    [v6 beginUpdateLocalDeviceContextWithReply:&v8];

    [(AFDeviceContextConnection *)self _fetchLocalDeviceContextWithCompletion:0, v8, v9, v10, v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __59__AFDeviceContextConnection__beginUpdateLocalDeviceContext__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = v4;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v9 = 136315650;
    v10 = "[AFDeviceContextConnection _beginUpdateLocalDeviceContext]_block_invoke";
    v11 = 2048;
    v12 = WeakRetained;
    v13 = 2112;
    v14 = v3;
    _os_log_error_impl(&dword_1912FE000, v7, OS_LOG_TYPE_ERROR, "%s %p error = %@", &v9, 0x20u);
  }

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 _endUpdateLocalDeviceContext];

  v6 = *MEMORY[0x1E69E9840];
}

void __59__AFDeviceContextConnection__beginUpdateLocalDeviceContext__block_invoke_13(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v3 = v2;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = 136315394;
    v8 = "[AFDeviceContextConnection _beginUpdateLocalDeviceContext]_block_invoke";
    v9 = 2048;
    v10 = WeakRetained;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p reply", &v7, 0x16u);
  }

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 _endUpdateLocalDeviceContext];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_fetchLocalDeviceContextWithCompletion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  v5 = AFSiriLogContextConnection;
  if (self->_isInvalid)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "[AFDeviceContextConnection _fetchLocalDeviceContextWithCompletion:]";
      v15 = 2048;
      selfCopy2 = self;
      _os_log_error_impl(&dword_1912FE000, v5, OS_LOG_TYPE_ERROR, "%s %p Ignored because the connection is invalidated.", buf, 0x16u);
      if (!completionCopy)
      {
        goto LABEL_8;
      }

      goto LABEL_4;
    }

    if (completionCopy)
    {
LABEL_4:
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v14 = "[AFDeviceContextConnection _fetchLocalDeviceContextWithCompletion:]";
      v15 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __68__AFDeviceContextConnection__fetchLocalDeviceContextWithCompletion___block_invoke;
    v11[3] = &unk_1E7349738;
    objc_copyWeak(&v12, buf);
    v6 = [(AFDeviceContextConnection *)self _remoteServiceWithErrorHandler:v11];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __68__AFDeviceContextConnection__fetchLocalDeviceContextWithCompletion___block_invoke_11;
    v8[3] = &unk_1E73482D0;
    objc_copyWeak(&v10, buf);
    v9 = completionCopy;
    [v6 getLocalDeviceContextWithReply:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }

LABEL_8:

  v7 = *MEMORY[0x1E69E9840];
}

void __68__AFDeviceContextConnection__fetchLocalDeviceContextWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v6 = v4;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = 136315650;
    v9 = "[AFDeviceContextConnection _fetchLocalDeviceContextWithCompletion:]_block_invoke";
    v10 = 2048;
    v11 = WeakRetained;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_1912FE000, v6, OS_LOG_TYPE_ERROR, "%s %p error = %@", &v8, 0x20u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __68__AFDeviceContextConnection__fetchLocalDeviceContextWithCompletion___block_invoke_11(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = [v3 identifier];
    v11 = 136315650;
    v12 = "[AFDeviceContextConnection _fetchLocalDeviceContextWithCompletion:]_block_invoke";
    v13 = 2048;
    v14 = WeakRetained;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s %p localDeviceContext = %@", &v11, 0x20u);
  }

  v8 = objc_loadWeakRetained((a1 + 40));
  [v8 _updateLocalDeviceContext:v3];

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v3);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)_remoteServiceWithErrorHandler:(id)handler
{
  v16 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_isInvalid)
  {
    _xpcConnection = [(AFDeviceContextConnection *)self _xpcConnection];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __60__AFDeviceContextConnection__remoteServiceWithErrorHandler___block_invoke;
    v10[3] = &unk_1E7348AA8;
    v11 = handlerCopy;
    v7 = [_xpcConnection remoteObjectProxyWithErrorHandler:v10];

    goto LABEL_6;
  }

  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v13 = "[AFDeviceContextConnection _remoteServiceWithErrorHandler:]";
    v14 = 2048;
    selfCopy = self;
    _os_log_error_impl(&dword_1912FE000, v5, OS_LOG_TYPE_ERROR, "%s %p Ignored because the connection is invalidated.", buf, 0x16u);
    if (handlerCopy)
    {
      goto LABEL_4;
    }
  }

  else if (handlerCopy)
  {
LABEL_4:
    _xpcConnection = [AFError errorWithCode:23];
    (*(handlerCopy + 2))(handlerCopy, _xpcConnection);
    v7 = 0;
LABEL_6:

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

uint64_t __60__AFDeviceContextConnection__remoteServiceWithErrorHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_invalidate
{
  v10 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  [(AFDeviceContextConnection *)self _endUpdateLocalDeviceContext];
  if (!self->_isInvalid)
  {
    self->_isInvalid = 1;
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v6 = 136315394;
      v7 = "[AFDeviceContextConnection _invalidate]";
      v8 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p", &v6, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained deviceContextConnectionDidInvalidate:self];

    objc_storeWeak(&self->_delegate, 0);
  }

  [(AFDeviceContextConnection *)self _clearXPCConnection];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_clearXPCConnection
{
  v13 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  xpcConnection = self->_xpcConnection;
  if (xpcConnection)
  {
    v4 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v7 = 136315650;
      v8 = "[AFDeviceContextConnection _clearXPCConnection]";
      v9 = 2048;
      selfCopy = self;
      v11 = 2112;
      v12 = xpcConnection;
      _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s %p xpcConnection = %@", &v7, 0x20u);
      xpcConnection = self->_xpcConnection;
    }

    [(NSXPCConnection *)xpcConnection invalidate];
    v5 = self->_xpcConnection;
    self->_xpcConnection = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_handleXPCConnectionInterruption
{
  v12 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    xpcConnection = self->_xpcConnection;
    v6 = 136315650;
    v7 = "[AFDeviceContextConnection _handleXPCConnectionInterruption]";
    v8 = 2048;
    selfCopy = self;
    v10 = 2112;
    v11 = xpcConnection;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p xpcConnection = %@", &v6, 0x20u);
  }

  [(AFDeviceContextConnection *)self _invalidate];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_handleXPCConnectionInvalidation
{
  v12 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    xpcConnection = self->_xpcConnection;
    v6 = 136315650;
    v7 = "[AFDeviceContextConnection _handleXPCConnectionInvalidation]";
    v8 = 2048;
    selfCopy = self;
    v10 = 2112;
    v11 = xpcConnection;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p xpcConnection = %@", &v6, 0x20u);
  }

  [(AFDeviceContextConnection *)self _invalidate];
  v5 = *MEMORY[0x1E69E9840];
}

- (id)_xpcConnection
{
  v31 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (self->_isInvalid)
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "[AFDeviceContextConnection _xpcConnection]";
      v27 = 2048;
      selfCopy2 = self;
      _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s %p Ignored because the connection is invalidated.", buf, 0x16u);
    }

    v4 = 0;
  }

  else
  {
    xpcConnection = self->_xpcConnection;
    if (!xpcConnection)
    {
      v6 = [(AFInstanceContext *)self->_instanceContext createXPCConnectionWithMachServiceName:@"com.apple.assistant.device-context" options:0];
      v7 = self->_xpcConnection;
      self->_xpcConnection = v6;

      [(NSXPCConnection *)self->_xpcConnection _setQueue:self->_queue];
      v8 = self->_xpcConnection;
      v9 = AFDeviceContextServiceGetXPCInterface();
      [(NSXPCConnection *)v8 setRemoteObjectInterface:v9];

      v10 = self->_xpcConnection;
      v11 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F05A3AB8];
      [(NSXPCConnection *)v10 setExportedInterface:v11];

      v12 = self->_xpcConnection;
      v13 = [[_AFDeviceContextServiceDelegateProxy alloc] initWithConnection:self];
      [(NSXPCConnection *)v12 setExportedObject:v13];

      objc_initWeak(&location, self);
      v14 = self->_xpcConnection;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __43__AFDeviceContextConnection__xpcConnection__block_invoke;
      v22[3] = &unk_1E7348A80;
      objc_copyWeak(&v23, &location);
      [(NSXPCConnection *)v14 setInvalidationHandler:v22];
      v15 = self->_xpcConnection;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __43__AFDeviceContextConnection__xpcConnection__block_invoke_2;
      v20[3] = &unk_1E7348A80;
      objc_copyWeak(&v21, &location);
      [(NSXPCConnection *)v15 setInterruptionHandler:v20];
      [(NSXPCConnection *)self->_xpcConnection resume];
      v16 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v17 = self->_xpcConnection;
        *buf = 136315650;
        v26 = "[AFDeviceContextConnection _xpcConnection]";
        v27 = 2048;
        selfCopy2 = self;
        v29 = 2112;
        v30 = v17;
        _os_log_impl(&dword_1912FE000, v16, OS_LOG_TYPE_INFO, "%s %p xpcConnection = %@", buf, 0x20u);
      }

      objc_destroyWeak(&v21);
      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
      xpcConnection = self->_xpcConnection;
    }

    v4 = xpcConnection;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v4;
}

void __43__AFDeviceContextConnection__xpcConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleXPCConnectionInvalidation];
}

void __43__AFDeviceContextConnection__xpcConnection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleXPCConnectionInterruption];
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__AFDeviceContextConnection_invalidate__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)donateSerializedContextMapByPrivacyClass:(id)class withMetadataMap:(id)map forType:(id)type pushToRemote:(BOOL)remote completion:(id)completion
{
  classCopy = class;
  mapCopy = map;
  typeCopy = type;
  completionCopy = completion;
  queue = self->_queue;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __118__AFDeviceContextConnection_donateSerializedContextMapByPrivacyClass_withMetadataMap_forType_pushToRemote_completion___block_invoke;
  v21[3] = &unk_1E7349578;
  v21[4] = self;
  v22 = classCopy;
  v23 = mapCopy;
  v24 = typeCopy;
  remoteCopy = remote;
  v25 = completionCopy;
  v17 = completionCopy;
  v18 = typeCopy;
  v19 = mapCopy;
  v20 = classCopy;
  dispatch_async(queue, v21);
}

void __118__AFDeviceContextConnection_donateSerializedContextMapByPrivacyClass_withMetadataMap_forType_pushToRemote_completion___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (*(v1 + 48) == 1)
  {
    v2 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v8 = "[AFDeviceContextConnection donateSerializedContextMapByPrivacyClass:withMetadataMap:forType:pushToRemote:completion:]_block_invoke";
      v9 = 2048;
      v10 = v1;
      _os_log_error_impl(&dword_1912FE000, v2, OS_LOG_TYPE_ERROR, "%s %p Ignored because the connection is invalidated.", buf, 0x16u);
    }

    v3 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v6 = [*(a1 + 32) _remoteServiceWithErrorHandler:&__block_literal_global_41854];
    [v6 donateSerializedContextMapByPrivacyClass:*(a1 + 40) withMetadataMap:*(a1 + 48) forType:*(a1 + 56) pushToRemote:*(a1 + 72) completion:*(a1 + 64)];
    v5 = *MEMORY[0x1E69E9840];
  }
}

void __118__AFDeviceContextConnection_donateSerializedContextMapByPrivacyClass_withMetadataMap_forType_pushToRemote_completion___block_invoke_7(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFDeviceContextConnection donateSerializedContextMapByPrivacyClass:withMetadataMap:forType:pushToRemote:completion:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s error = %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)endUpdateLocalDeviceContext
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__AFDeviceContextConnection_endUpdateLocalDeviceContext__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)beginUpdateLocalDeviceContext
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__AFDeviceContextConnection_beginUpdateLocalDeviceContext__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)getLocalDeviceContextWithCompletion:(id)completion
{
  if (!completion)
  {
    v8 = v3;
    v9 = v4;
    queue = self->_queue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __65__AFDeviceContextConnection_getLocalDeviceContextWithCompletion___block_invoke;
    v6[3] = &unk_1E7349838;
    v6[4] = self;
    v7 = 0;
    dispatch_async(queue, v6);
  }
}

void __65__AFDeviceContextConnection_getLocalDeviceContextWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 49) == 1 && (v3 = *(v2 + 56)) != 0)
  {
    v4 = *(a1 + 40);
    v7 = [v3 copy];
    (*(v4 + 16))(v4, v7);
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 32);

    [v6 _fetchLocalDeviceContextWithCompletion:v5];
  }
}

- (AFDeviceContextConnection)initWithQueue:(id)queue instanceContext:(id)context delegate:(id)delegate
{
  v29 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  contextCopy = context;
  delegateCopy = delegate;
  v22.receiver = self;
  v22.super_class = AFDeviceContextConnection;
  v11 = [(AFDeviceContextConnection *)&v22 init];
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
      v14 = MEMORY[0x1E69E96A0];
      v15 = MEMORY[0x1E69E96A0];
      queue = v11->_queue;
      v11->_queue = v14;
    }

    if (contextCopy)
    {
      v16 = contextCopy;
    }

    else
    {
      v16 = +[AFInstanceContext defaultContext];
    }

    instanceContext = v11->_instanceContext;
    v11->_instanceContext = v16;

    objc_storeWeak(&v11->_delegate, delegateCopy);
    v18 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v19 = v11->_instanceContext;
      *buf = 136315650;
      v24 = "[AFDeviceContextConnection initWithQueue:instanceContext:delegate:]";
      v25 = 2048;
      v26 = v11;
      v27 = 2112;
      v28 = v19;
      _os_log_impl(&dword_1912FE000, v18, OS_LOG_TYPE_INFO, "%s %p instanceContext = %@", buf, 0x20u);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)dealloc
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    instanceContext = self->_instanceContext;
    *buf = 136315650;
    v8 = "[AFDeviceContextConnection dealloc]";
    v9 = 2048;
    selfCopy = self;
    v11 = 2112;
    v12 = instanceContext;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p instanceContext = %@", buf, 0x20u);
  }

  v6.receiver = self;
  v6.super_class = AFDeviceContextConnection;
  [(AFDeviceContextConnection *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7.receiver = self;
  v7.super_class = AFDeviceContextConnection;
  v4 = [(AFDeviceContextConnection *)&v7 description];
  v5 = [v3 initWithFormat:@"%@ {instanceContext = %@}", v4, self->_instanceContext];

  return v5;
}

@end