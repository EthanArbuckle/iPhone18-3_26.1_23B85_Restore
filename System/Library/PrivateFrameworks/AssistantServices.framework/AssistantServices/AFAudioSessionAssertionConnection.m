@interface AFAudioSessionAssertionConnection
- (AFAudioSessionAssertionConnection)initWithInstanceContext:(id)a3 acquisitionContext:(id)a4 relinquishmentHandler:(id)a5;
- (NSString)description;
- (id)_xpcConnection;
- (void)_acquireWithContext:(id)a3;
- (void)_clearXPCConnection;
- (void)_finalizeWithContext:(id)a3 error:(id)a4;
- (void)_relinquishWithContext:(id)a3 error:(id)a4 options:(unint64_t)a5;
- (void)dealloc;
- (void)handleXPCConnectionInterrupted;
- (void)handleXPCConnectionInvalidated;
- (void)invalidate;
- (void)relinquishWithContext:(id)a3 options:(unint64_t)a4;
- (void)relinquishWithError:(id)a3 options:(unint64_t)a4;
@end

@implementation AFAudioSessionAssertionConnection

- (void)_clearXPCConnection
{
  v11 = *MEMORY[0x1E69E9840];
  xpcConnection = self->_xpcConnection;
  if (xpcConnection)
  {
    v4 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      v7 = 136315394;
      v8 = "[AFAudioSessionAssertionConnection _clearXPCConnection]";
      v9 = 2048;
      v10 = xpcConnection;
      _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s Destroy XPC connection %p.", &v7, 0x16u);
      xpcConnection = self->_xpcConnection;
    }

    [(NSXPCConnection *)xpcConnection setExportedObject:0];
    [(NSXPCConnection *)self->_xpcConnection invalidate];
    v5 = self->_xpcConnection;
    self->_xpcConnection = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (id)_xpcConnection
{
  v23 = *MEMORY[0x1E69E9840];
  xpcConnection = self->_xpcConnection;
  if (!xpcConnection)
  {
    v4 = [(AFInstanceContext *)self->_instanceContext createXPCConnectionWithMachServiceName:@"com.apple.assistant.audio-session-assertion" options:0];
    v5 = self->_xpcConnection;
    self->_xpcConnection = v4;

    [(NSXPCConnection *)self->_xpcConnection _setQueue:self->_queue];
    objc_initWeak(&location, self);
    v6 = self->_xpcConnection;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __51__AFAudioSessionAssertionConnection__xpcConnection__block_invoke;
    v16[3] = &unk_1E7348A80;
    objc_copyWeak(&v17, &location);
    [(NSXPCConnection *)v6 setInvalidationHandler:v16];
    v7 = self->_xpcConnection;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __51__AFAudioSessionAssertionConnection__xpcConnection__block_invoke_2;
    v14[3] = &unk_1E7348A80;
    objc_copyWeak(&v15, &location);
    [(NSXPCConnection *)v7 setInterruptionHandler:v14];
    v8 = self->_xpcConnection;
    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F05BF140];
    [(NSXPCConnection *)v8 setRemoteObjectInterface:v9];

    [(NSXPCConnection *)self->_xpcConnection resume];
    v10 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      v13 = self->_xpcConnection;
      *buf = 136315394;
      v20 = "[AFAudioSessionAssertionConnection _xpcConnection]";
      v21 = 2048;
      v22 = v13;
      _os_log_debug_impl(&dword_1912FE000, v10, OS_LOG_TYPE_DEBUG, "%s Create XPC connection %p.", buf, 0x16u);
    }

    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
    xpcConnection = self->_xpcConnection;
  }

  v11 = *MEMORY[0x1E69E9840];

  return xpcConnection;
}

void __51__AFAudioSessionAssertionConnection__xpcConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

void __51__AFAudioSessionAssertionConnection__xpcConnection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

- (void)handleXPCConnectionInvalidated
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFAudioSessionAssertionConnection handleXPCConnectionInvalidated]";
    v7 = 2048;
    v8 = self;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s %p", &v5, 0x16u);
  }

  [(AFAudioSessionAssertionConnection *)self invalidate];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)handleXPCConnectionInterrupted
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFAudioSessionAssertionConnection handleXPCConnectionInterrupted]";
    v7 = 2048;
    v8 = self;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s %p", &v5, 0x16u);
  }

  [(AFAudioSessionAssertionConnection *)self invalidate];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_finalizeWithContext:(id)a3 error:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(AFTwoArgumentSafetyBlock *)self->_relinquishmentHandler invokeWithValue:v6 andValue:v7])
  {
    v8 = AFSiriLogContextConnection;
    if (v7)
    {
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        v10 = 136315650;
        v11 = "[AFAudioSessionAssertionConnection _finalizeWithContext:error:]";
        v12 = 2048;
        v13 = self;
        v14 = 2112;
        v15 = v7;
        _os_log_error_impl(&dword_1912FE000, v8, OS_LOG_TYPE_ERROR, "%s %p error = %@", &v10, 0x20u);
      }
    }

    else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v10 = 136315650;
      v11 = "[AFAudioSessionAssertionConnection _finalizeWithContext:error:]";
      v12 = 2048;
      v13 = self;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s %p context = %@", &v10, 0x20u);
    }
  }

  [(AFAudioSessionAssertionConnection *)self _clearXPCConnection];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_relinquishWithContext:(id)a3 error:(id)a4 options:(unint64_t)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v19 = "[AFAudioSessionAssertionConnection _relinquishWithContext:error:options:]";
    v20 = 2048;
    v21 = self;
    v22 = 2112;
    v23 = v8;
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&dword_1912FE000, v10, OS_LOG_TYPE_INFO, "%s %p context = %@, error = %@", buf, 0x2Au);
  }

  objc_initWeak(buf, self);
  v11 = [(AFAudioSessionAssertionConnection *)self _xpcConnection];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __74__AFAudioSessionAssertionConnection__relinquishWithContext_error_options___block_invoke;
  v16[3] = &unk_1E7349738;
  objc_copyWeak(&v17, buf);
  v12 = [v11 remoteObjectProxyWithErrorHandler:v16];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__AFAudioSessionAssertionConnection__relinquishWithContext_error_options___block_invoke_18;
  v14[3] = &unk_1E7348A80;
  objc_copyWeak(&v15, buf);
  [v12 relinquishAudioSessionWithContext:v8 error:v9 options:a5 completion:v14];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);

  v13 = *MEMORY[0x1E69E9840];
}

void __74__AFAudioSessionAssertionConnection__relinquishWithContext_error_options___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v6 = v4;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = 136315650;
    v9 = "[AFAudioSessionAssertionConnection _relinquishWithContext:error:options:]_block_invoke";
    v10 = 2048;
    v11 = WeakRetained;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_1912FE000, v6, OS_LOG_TYPE_ERROR, "%s %p error = %@", &v8, 0x20u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __74__AFAudioSessionAssertionConnection__relinquishWithContext_error_options___block_invoke_18(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v3 = v2;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = 136315394;
    v7 = "[AFAudioSessionAssertionConnection _relinquishWithContext:error:options:]_block_invoke";
    v8 = 2048;
    v9 = WeakRetained;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p done", &v6, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_acquireWithContext:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v19 = "[AFAudioSessionAssertionConnection _acquireWithContext:]";
    v20 = 2048;
    v21 = self;
    v22 = 2112;
    v23 = v4;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s %p context = %@", buf, 0x20u);
  }

  v6 = self->_queue;
  objc_initWeak(buf, self);
  v7 = [(AFAudioSessionAssertionConnection *)self _xpcConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __57__AFAudioSessionAssertionConnection__acquireWithContext___block_invoke;
  v15[3] = &unk_1E7349710;
  v8 = v6;
  v16 = v8;
  objc_copyWeak(&v17, buf);
  v9 = [v7 remoteObjectProxyWithErrorHandler:v15];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__AFAudioSessionAssertionConnection__acquireWithContext___block_invoke_3;
  v12[3] = &unk_1E73427C0;
  v10 = v8;
  v13 = v10;
  objc_copyWeak(&v14, buf);
  [v9 acquireAudioSessionWithContext:v4 relinquishmentHandler:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v17);

  objc_destroyWeak(buf);
  v11 = *MEMORY[0x1E69E9840];
}

void __57__AFAudioSessionAssertionConnection__acquireWithContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__AFAudioSessionAssertionConnection__acquireWithContext___block_invoke_2;
  v6[3] = &unk_1E73470E0;
  objc_copyWeak(&v8, (a1 + 40));
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v8);
}

void __57__AFAudioSessionAssertionConnection__acquireWithContext___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__AFAudioSessionAssertionConnection__acquireWithContext___block_invoke_4;
  block[3] = &unk_1E7347500;
  objc_copyWeak(&v13, (a1 + 40));
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);

  objc_destroyWeak(&v13);
}

void __57__AFAudioSessionAssertionConnection__acquireWithContext___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _finalizeWithContext:*(a1 + 32) error:*(a1 + 40)];
}

void __57__AFAudioSessionAssertionConnection__acquireWithContext___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _finalizeWithContext:0 error:*(a1 + 32)];
}

- (void)relinquishWithError:(id)a3 options:(unint64_t)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v11 = v7;
    v12 = AFAssertionRelinquishmentOptionsGetNames(a4);
    *buf = 136315906;
    v17 = "[AFAudioSessionAssertionConnection relinquishWithError:options:]";
    v18 = 2048;
    v19 = self;
    v20 = 2112;
    v21 = v6;
    v22 = 2112;
    v23 = v12;
    _os_log_error_impl(&dword_1912FE000, v11, OS_LOG_TYPE_ERROR, "%s %p error = %@, options = %@", buf, 0x2Au);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__AFAudioSessionAssertionConnection_relinquishWithError_options___block_invoke;
  block[3] = &unk_1E73484C0;
  block[4] = self;
  v14 = v6;
  v15 = a4;
  v9 = v6;
  dispatch_async(queue, block);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)relinquishWithContext:(id)a3 options:(unint64_t)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v9 = AFAssertionRelinquishmentOptionsGetNames(a4);
    *buf = 136315906;
    v17 = "[AFAudioSessionAssertionConnection relinquishWithContext:options:]";
    v18 = 2048;
    v19 = self;
    v20 = 2112;
    v21 = v6;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s %p context = %@, options = %@", buf, 0x2Au);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__AFAudioSessionAssertionConnection_relinquishWithContext_options___block_invoke;
  block[3] = &unk_1E73484C0;
  block[4] = self;
  v14 = v6;
  v15 = a4;
  v11 = v6;
  dispatch_async(queue, block);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v8 = "[AFAudioSessionAssertionConnection invalidate]";
    v9 = 2048;
    v10 = self;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__AFAudioSessionAssertionConnection_invalidate__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(queue, block);
  v5 = *MEMORY[0x1E69E9840];
}

void __47__AFAudioSessionAssertionConnection_invalidate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ is invalidated without relinquishment and finalization.", v1];
  v2 = [AFError errorWithCode:42 description:v3];
  [v1 _finalizeWithContext:0 error:v2];
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v9 = "[AFAudioSessionAssertionConnection dealloc]";
    v10 = 2048;
    v11 = self;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
  }

  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ is deallocated without relinquishment and finalization.", self];
  v5 = [AFError errorWithCode:41 description:v4];
  [(AFAudioSessionAssertionConnection *)self _finalizeWithContext:0 error:v5];

  v7.receiver = self;
  v7.super_class = AFAudioSessionAssertionConnection;
  [(AFAudioSessionAssertionConnection *)&v7 dealloc];
  v6 = *MEMORY[0x1E69E9840];
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFAudioSessionAssertionConnection;
  v4 = [(AFAudioSessionAssertionConnection *)&v8 description];
  instanceContext = self->_instanceContext;
  v6 = [v3 initWithFormat:@"%@ {uuid = %@, instanceContext = %@, acquisitionContext = %@}", v4, self->_uuid, instanceContext, self->_acquisitionContext];

  return v6;
}

- (AFAudioSessionAssertionConnection)initWithInstanceContext:(id)a3 acquisitionContext:(id)a4 relinquishmentHandler:(id)a5
{
  v43 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v34.receiver = self;
  v34.super_class = AFAudioSessionAssertionConnection;
  v11 = [(AFAudioSessionAssertionConnection *)&v34 init];
  if (v11)
  {
    v12 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      v36 = "[AFAudioSessionAssertionConnection initWithInstanceContext:acquisitionContext:relinquishmentHandler:]";
      v37 = 2048;
      v38 = v11;
      v39 = 2112;
      v40 = v8;
      v41 = 2112;
      v42 = v9;
      _os_log_impl(&dword_1912FE000, v12, OS_LOG_TYPE_INFO, "%s %p instanceContext = %@, acquisitionContext = %@", buf, 0x2Au);
    }

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_attr_make_with_qos_class(v13, QOS_CLASS_USER_INITIATED, 0);
    v15 = AFAudioSessionAssertionGetConnectionWorkloop();
    v16 = dispatch_queue_create_with_target_V2("com.apple.assistant.audio-session-assertion.client-connection", v14, v15);
    queue = v11->_queue;
    v11->_queue = v16;

    if (v8)
    {
      v18 = v8;
    }

    else
    {
      v18 = +[AFInstanceContext currentContext];
    }

    instanceContext = v11->_instanceContext;
    v11->_instanceContext = v18;

    v20 = [v9 copy];
    acquisitionContext = v11->_acquisitionContext;
    v11->_acquisitionContext = v20;

    v22 = [AFTwoArgumentSafetyBlock alloc];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __102__AFAudioSessionAssertionConnection_initWithInstanceContext_acquisitionContext_relinquishmentHandler___block_invoke;
    v32[3] = &unk_1E7342798;
    v33 = v10;
    v23 = [AFError errorWithCode:40];
    v24 = [(AFTwoArgumentSafetyBlock *)v22 initWithBlock:v32 defaultValue1:0 defaultValue2:v23];
    relinquishmentHandler = v11->_relinquishmentHandler;
    v11->_relinquishmentHandler = v24;

    v26 = v11->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __102__AFAudioSessionAssertionConnection_initWithInstanceContext_acquisitionContext_relinquishmentHandler___block_invoke_2;
    block[3] = &unk_1E7349860;
    v30 = v11;
    v31 = v9;
    dispatch_async(v26, block);
  }

  v27 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t __102__AFAudioSessionAssertionConnection_initWithInstanceContext_acquisitionContext_relinquishmentHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end