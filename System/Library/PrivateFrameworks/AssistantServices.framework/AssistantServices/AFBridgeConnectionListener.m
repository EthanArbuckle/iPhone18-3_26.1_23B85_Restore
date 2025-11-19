@interface AFBridgeConnectionListener
- (AFBridgeConnectionListener)initWithBridgeName:(id)a3 machService:(id)a4 withServiceInterface:(id)a5 withDelegateInterface:(id)a6;
- (AFBridgeConnectionListenerDelegate)delegate;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)notifyClientWithBlock:(id)a3;
- (void)resumeConnectionWithBridgeProxy:(id)a3;
@end

@implementation AFBridgeConnectionListener

- (AFBridgeConnectionListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)notifyClientWithBlock:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__AFBridgeConnectionListener_notifyClientWithBlock___block_invoke;
  v7[3] = &unk_1E7349838;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __52__AFBridgeConnectionListener_notifyClientWithBlock___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    v2 = [*(*(a1 + 32) + 32) remoteObjectProxy];

    v3 = AFSiriLogContextDaemon;
    v4 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
    if (v2)
    {
      if (v4)
      {
        v5 = *(*(a1 + 32) + 32);
        v6 = v3;
        v7 = [v5 remoteObjectProxy];
        v12 = 136315394;
        v13 = "[AFBridgeConnectionListener notifyClientWithBlock:]_block_invoke";
        v14 = 2112;
        v15 = v7;
        _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s Sending a message to remote object: %@", &v12, 0x16u);

LABEL_7:
      }
    }

    else if (v4)
    {
      v8 = *(*(a1 + 32) + 32);
      v6 = v3;
      v12 = 136315394;
      v13 = "[AFBridgeConnectionListener notifyClientWithBlock:]_block_invoke";
      v14 = 1026;
      LODWORD(v15) = [v8 processIdentifier];
      _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s RemoteObjectProxy is nil for client PID (%{public}d)", &v12, 0x12u);
      goto LABEL_7;
    }

    v9 = *(a1 + 40);
    v10 = [*(*(a1 + 32) + 32) remoteObjectProxy];
    (*(v9 + 16))(v9, v10);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)resumeConnectionWithBridgeProxy:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__AFBridgeConnectionListener_resumeConnectionWithBridgeProxy___block_invoke;
  v7[3] = &unk_1E7349860;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __62__AFBridgeConnectionListener_resumeConnectionWithBridgeProxy___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  objc_storeStrong((*(a1 + 32) + 56), *(a1 + 40));
  v2 = *(a1 + 32);
  if (*(v2 + 56))
  {
    v3 = AFSiriLogContextDaemon;
    if (*(v2 + 64) == 1)
    {
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v4 = *(v2 + 72);
        v12 = 136315394;
        v13 = "[AFBridgeConnectionListener resumeConnectionWithBridgeProxy:]_block_invoke";
        v14 = 2112;
        v15 = v4;
        v5 = "%s AFBridgeConnectionListener for bridge: %@ has already been resumed previously";
        v6 = v3;
LABEL_7:
        _os_log_error_impl(&dword_1912FE000, v6, OS_LOG_TYPE_ERROR, v5, &v12, 0x16u);
      }
    }

    else
    {
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v9 = *(v2 + 72);
        v10 = *(v2 + 40);
        v12 = 136315650;
        v13 = "[AFBridgeConnectionListener resumeConnectionWithBridgeProxy:]_block_invoke";
        v14 = 2112;
        v15 = v9;
        v16 = 2112;
        v17 = v10;
        _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s Resuming AFBridgeConnectionListener for bridge: %@, service: %@", &v12, 0x20u);
        v2 = *(a1 + 32);
      }

      [*(v2 + 8) resume];
      *(*(a1 + 32) + 64) = 1;
    }
  }

  else
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v8 = *(v2 + 40);
      v12 = 136315394;
      v13 = "[AFBridgeConnectionListener resumeConnectionWithBridgeProxy:]_block_invoke";
      v14 = 2112;
      v15 = v8;
      v5 = "%s Bridge proxy not passed for listener: %@";
      v6 = v7;
      goto LABEL_7;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    machServiceName = self->_machServiceName;
    *buf = 136315394;
    v28 = "[AFBridgeConnectionListener listener:shouldAcceptNewConnection:]";
    v29 = 2112;
    v30 = machServiceName;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s Incoming connection request for: %@", buf, 0x16u);
  }

  v10 = [v7 valueForEntitlement:self->_machServiceName];

  if (v10)
  {
    [v7 setExportedInterface:self->_exportedInterface];
    [v7 setExportedObject:self->_bridgeProxy];
    [v7 setRemoteObjectInterface:self->_remoteInterface];
    v11 = [v7 processIdentifier];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __65__AFBridgeConnectionListener_listener_shouldAcceptNewConnection___block_invoke;
    v25[3] = &unk_1E7346BE8;
    v26 = v11;
    v25[4] = self;
    [v7 setInvalidationHandler:v25];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __65__AFBridgeConnectionListener_listener_shouldAcceptNewConnection___block_invoke_2;
    v23[3] = &unk_1E7346BE8;
    v24 = v11;
    v23[4] = self;
    [v7 setInterruptionHandler:v23];
    queue = self->_queue;
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __65__AFBridgeConnectionListener_listener_shouldAcceptNewConnection___block_invoke_3;
    v20 = &unk_1E7349860;
    v21 = self;
    v13 = v7;
    v22 = v13;
    dispatch_async(queue, &v17);
    [v13 resume];
  }

  else
  {
    v14 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v28 = "[AFBridgeConnectionListener listener:shouldAcceptNewConnection:]";
      _os_log_error_impl(&dword_1912FE000, v14, OS_LOG_TYPE_ERROR, "%s Entitlement missing on incoming connection request", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v10 != 0;
}

void __65__AFBridgeConnectionListener_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v6 = 136315394;
    v7 = "[AFBridgeConnectionListener listener:shouldAcceptNewConnection:]_block_invoke";
    v8 = 1024;
    v9 = v3;
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s AFBridgeConnectionListener connection invalidated (client pid=%d)", &v6, 0x12u);
  }

  v4 = [*(a1 + 32) delegate];
  [v4 connectionInvalidated];

  v5 = *MEMORY[0x1E69E9840];
}

void __65__AFBridgeConnectionListener_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v6 = 136315394;
    v7 = "[AFBridgeConnectionListener listener:shouldAcceptNewConnection:]_block_invoke";
    v8 = 1024;
    v9 = v3;
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s AFBridgeConnectionListener connection interrupted (client pid=%d)", &v6, 0x12u);
  }

  v4 = [*(a1 + 32) delegate];
  [v4 connectionInterrupted];

  v5 = *MEMORY[0x1E69E9840];
}

- (AFBridgeConnectionListener)initWithBridgeName:(id)a3 machService:(id)a4 withServiceInterface:(id)a5 withDelegateInterface:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v23.receiver = self;
  v23.super_class = AFBridgeConnectionListener;
  v15 = [(AFBridgeConnectionListener *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_bridgeName, a3);
    objc_storeStrong(&v16->_machServiceName, a4);
    objc_storeStrong(&v16->_exportedInterface, a5);
    objc_storeStrong(&v16->_remoteInterface, a6);
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("AFBridgeConnectionListener", v17);

    queue = v16->_queue;
    v16->_queue = v18;

    v20 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:v12];
    listener = v16->_listener;
    v16->_listener = v20;

    [(NSXPCListener *)v16->_listener setDelegate:v16];
    v16->_listenerResumed = 0;
  }

  return v16;
}

@end