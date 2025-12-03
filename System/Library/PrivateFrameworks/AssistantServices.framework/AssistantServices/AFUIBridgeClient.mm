@interface AFUIBridgeClient
- (AFUIBridgeClient)initWithDelegate:(id)delegate delegateQueue:(id)queue;
- (AFUIBridgeClientDelegate)delegate;
- (id)_connection;
- (id)_uiBridgeService;
- (id)_uiBridgeServiceWithErrorHandler:(id)handler;
- (void)dealloc;
- (void)preheat;
- (void)siriDismissed;
- (void)siriPrompted;
- (void)siriWillPrompt;
- (void)startAttending;
- (void)stopAttendingWithReason:(unint64_t)reason;
@end

@implementation AFUIBridgeClient

- (AFUIBridgeClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)stopAttendingWithReason:(unint64_t)reason
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__AFUIBridgeClient_stopAttendingWithReason___block_invoke;
  block[3] = &unk_1E7346CF0;
  objc_copyWeak(v7, &location);
  v7[1] = reason;
  dispatch_async(queue, block);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __44__AFUIBridgeClient_stopAttendingWithReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained _uiBridgeService];
    [v3 stopAttendingWithReason:*(a1 + 40)];

    WeakRetained = v4;
  }
}

- (void)startAttending
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__AFUIBridgeClient_startAttending__block_invoke;
  v4[3] = &unk_1E7348A80;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __34__AFUIBridgeClient_startAttending__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained _uiBridgeService];
    v3 = objc_opt_respondsToSelector();

    WeakRetained = v5;
    if (v3)
    {
      v4 = [v5 _uiBridgeService];
      [v4 startAttending];

      WeakRetained = v5;
    }
  }
}

- (void)siriPrompted
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __32__AFUIBridgeClient_siriPrompted__block_invoke;
  v4[3] = &unk_1E7348A80;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __32__AFUIBridgeClient_siriPrompted__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained _uiBridgeService];
    [v2 siriPrompted];

    WeakRetained = v3;
  }
}

- (void)siriWillPrompt
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__AFUIBridgeClient_siriWillPrompt__block_invoke;
  v4[3] = &unk_1E7348A80;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __34__AFUIBridgeClient_siriWillPrompt__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained _uiBridgeService];
    v3 = objc_opt_respondsToSelector();

    WeakRetained = v5;
    if (v3)
    {
      v4 = [v5 _uiBridgeService];
      [v4 siriWillPrompt];

      WeakRetained = v5;
    }
  }
}

- (void)siriDismissed
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__AFUIBridgeClient_siriDismissed__block_invoke;
  v4[3] = &unk_1E7348A80;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __33__AFUIBridgeClient_siriDismissed__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained _uiBridgeService];
    [v2 siriDismissed];

    WeakRetained = v3;
  }
}

- (void)preheat
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __27__AFUIBridgeClient_preheat__block_invoke;
  v4[3] = &unk_1E7348A80;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __27__AFUIBridgeClient_preheat__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained _uiBridgeService];
    [v2 preheat];

    WeakRetained = v3;
  }
}

- (id)_uiBridgeServiceWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _connection = [(AFUIBridgeClient *)self _connection];
  v6 = [_connection remoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (id)_uiBridgeService
{
  _connection = [(AFUIBridgeClient *)self _connection];
  remoteObjectProxy = [_connection remoteObjectProxy];

  return remoteObjectProxy;
}

- (id)_connection
{
  dispatch_assert_queue_V2(self->_queue);
  xpcConnection = self->_xpcConnection;
  if (!xpcConnection)
  {
    v4 = +[AFInstanceContext defaultContext];
    v5 = [v4 createXPCConnectionWithMachServiceName:@"com.apple.assistant.request-dispatcher.uibridge-service" options:0];
    v6 = self->_xpcConnection;
    self->_xpcConnection = v5;

    v7 = self->_xpcConnection;
    v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0576D60];
    [(NSXPCConnection *)v7 setRemoteObjectInterface:v8];

    v9 = self->_xpcConnection;
    v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0576FC8];
    [(NSXPCConnection *)v9 setExportedInterface:v10];

    v11 = self->_xpcConnection;
    v12 = [[AFUIBridgeServiceProxy alloc] initWithClient:self];
    [(NSXPCConnection *)v11 setExportedObject:v12];

    [(NSXPCConnection *)self->_xpcConnection _setQueue:self->_queue];
    objc_initWeak(&location, self);
    v13 = self->_xpcConnection;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __31__AFUIBridgeClient__connection__block_invoke;
    v18[3] = &unk_1E7348A80;
    objc_copyWeak(&v19, &location);
    [(NSXPCConnection *)v13 setInvalidationHandler:v18];
    v14 = self->_xpcConnection;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __31__AFUIBridgeClient__connection__block_invoke_2;
    v16[3] = &unk_1E7348A80;
    objc_copyWeak(&v17, &location);
    [(NSXPCConnection *)v14 setInterruptionHandler:v16];
    [(NSXPCConnection *)self->_xpcConnection resume];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
    xpcConnection = self->_xpcConnection;
  }

  return xpcConnection;
}

void __31__AFUIBridgeClient__connection__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v10 = "[AFUIBridgeClient _connection]_block_invoke";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s UIBridge Connection Invalidated", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[4];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __31__AFUIBridgeClient__connection__block_invoke_67;
    block[3] = &unk_1E7348A80;
    objc_copyWeak(&v8, (a1 + 32));
    dispatch_async(v5, block);
    objc_destroyWeak(&v8);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __31__AFUIBridgeClient__connection__block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v10 = "[AFUIBridgeClient _connection]_block_invoke_2";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s UIBridge Connection Interrupted", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[4];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __31__AFUIBridgeClient__connection__block_invoke_69;
    block[3] = &unk_1E7348A80;
    objc_copyWeak(&v8, (a1 + 32));
    dispatch_async(v5, block);
    objc_destroyWeak(&v8);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __31__AFUIBridgeClient__connection__block_invoke_69(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[1] invalidate];
    v2 = v3[1];
    v3[1] = 0;

    WeakRetained = v3;
  }
}

void __31__AFUIBridgeClient__connection__block_invoke_67(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[1];
    WeakRetained[1] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v3.receiver = self;
  v3.super_class = AFUIBridgeClient;
  [(AFUIBridgeClient *)&v3 dealloc];
}

- (AFUIBridgeClient)initWithDelegate:(id)delegate delegateQueue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = AFUIBridgeClient;
  v8 = [(AFUIBridgeClient *)&v14 init];
  if (v8)
  {
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_USER_INTERACTIVE, 0);

    v11 = dispatch_queue_create("com.apple.siri.uibridge-client", v10);
    queue = v8->_queue;
    v8->_queue = v11;

    objc_storeStrong(&v8->_delegateQueue, queue);
    objc_storeWeak(&v8->_delegate, delegateCopy);
  }

  return v8;
}

@end