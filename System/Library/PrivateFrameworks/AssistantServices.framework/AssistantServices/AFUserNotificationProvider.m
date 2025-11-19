@interface AFUserNotificationProvider
- (AFUserNotificationProvider)init;
- (id)_connection;
- (void)postNotificationRequest:(id)a3 responseHandler:(id)a4;
- (void)receivedNotificationResponse:(id)a3;
- (void)withdrawNotificationRequestWithIdentifier:(id)a3;
@end

@implementation AFUserNotificationProvider

- (void)receivedNotificationResponse:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 notification];
  v6 = [v5 request];
  v7 = [v6 identifier];

  v8 = [(NSMutableDictionary *)self->_responseHandlersByNotificationID objectForKey:v7];
  v9 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8, v4);
  }

  else
  {
    v10 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "[AFUserNotificationProvider receivedNotificationResponse:]";
      v14 = 2112;
      v15 = v4;
      _os_log_error_impl(&dword_1912FE000, v10, OS_LOG_TYPE_ERROR, "%s No response handler for %@", &v12, 0x16u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)_connection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.assistant.notification_service" options:0];
    v5 = self->_connection;
    self->_connection = v4;

    [(NSXPCConnection *)self->_connection _setQueue:self->_queue];
    v6 = self->_connection;
    v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F05BEC00];
    [(NSXPCConnection *)v6 setRemoteObjectInterface:v7];

    [(NSXPCConnection *)self->_connection setExportedObject:self];
    v8 = self->_connection;
    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F057B220];
    [(NSXPCConnection *)v8 setExportedInterface:v9];

    objc_initWeak(&location, self);
    v10 = self->_connection;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __41__AFUserNotificationProvider__connection__block_invoke;
    v15[3] = &unk_1E7348A80;
    objc_copyWeak(&v16, &location);
    [(NSXPCConnection *)v10 setInterruptionHandler:v15];
    v11 = self->_connection;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __41__AFUserNotificationProvider__connection__block_invoke_15;
    v13[3] = &unk_1E7348A80;
    objc_copyWeak(&v14, &location);
    [(NSXPCConnection *)v11 setInvalidationHandler:v13];
    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  return connection;
}

void __41__AFUserNotificationProvider__connection__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315138;
    v7 = "[AFUserNotificationProvider _connection]_block_invoke";
    _os_log_error_impl(&dword_1912FE000, v2, OS_LOG_TYPE_ERROR, "%s Connection to assistantd for notification interrupted", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained[1];
  WeakRetained[1] = 0;

  v5 = *MEMORY[0x1E69E9840];
}

void __41__AFUserNotificationProvider__connection__block_invoke_15(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315138;
    v7 = "[AFUserNotificationProvider _connection]_block_invoke";
    _os_log_error_impl(&dword_1912FE000, v2, OS_LOG_TYPE_ERROR, "%s Connection to assistantd for notification invalidated", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained[1];
  WeakRetained[1] = 0;

  v5 = *MEMORY[0x1E69E9840];
}

- (void)withdrawNotificationRequestWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(AFUserNotificationProvider *)self _connection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__AFUserNotificationProvider_withdrawNotificationRequestWithIdentifier___block_invoke;
  v7[3] = &unk_1E73493C0;
  v7[4] = self;
  v6 = [v5 remoteObjectProxyWithErrorHandler:v7];
  [v6 withdrawNotificationRequestWithIdentifier:v4];
}

void __72__AFUserNotificationProvider_withdrawNotificationRequestWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315394;
    v9 = "[AFUserNotificationProvider withdrawNotificationRequestWithIdentifier:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s Error connecting to assistantd for notification service: %@", &v8, 0x16u);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  *(v5 + 8) = 0;

  v7 = *MEMORY[0x1E69E9840];
}

- (void)postNotificationRequest:(id)a3 responseHandler:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 identifier];
  if (v8)
  {
    queue = self->_queue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __70__AFUserNotificationProvider_postNotificationRequest_responseHandler___block_invoke;
    v12[3] = &unk_1E73479F0;
    v15 = v7;
    v12[4] = self;
    v13 = v8;
    v14 = v6;
    dispatch_async(queue, v12);
  }

  else
  {
    v10 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "[AFUserNotificationProvider postNotificationRequest:responseHandler:]";
      v18 = 2112;
      v19 = v6;
      _os_log_error_impl(&dword_1912FE000, v10, OS_LOG_TYPE_ERROR, "%s No identifier specified for %@", buf, 0x16u);
    }

    (*(v7 + 2))(v7, 0);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __70__AFUserNotificationProvider_postNotificationRequest_responseHandler___block_invoke(uint64_t a1)
{
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__AFUserNotificationProvider_postNotificationRequest_responseHandler___block_invoke_2;
  v12[3] = &unk_1E7342920;
  v2 = *(a1 + 56);
  v12[4] = *(a1 + 32);
  v13 = v2;
  v3 = MEMORY[0x193AFB7B0](v12);
  v4 = *(*(a1 + 32) + 16);
  v5 = MEMORY[0x193AFB7B0]();
  [v4 setObject:v5 forKey:*(a1 + 40)];

  v6 = [*(a1 + 32) _connection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__AFUserNotificationProvider_postNotificationRequest_responseHandler___block_invoke_4;
  v11[3] = &unk_1E73493C0;
  v11[4] = *(a1 + 32);
  v7 = [v6 remoteObjectProxyWithErrorHandler:v11];
  v8 = *(a1 + 48);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__AFUserNotificationProvider_postNotificationRequest_responseHandler___block_invoke_4;
  v9[3] = &unk_1E73493C0;
  v10 = v8;
  [v7 postNotificationRequest:v10 completion:v9];
}

void __70__AFUserNotificationProvider_postNotificationRequest_responseHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3, v5);
  v6 = [v5 notification];

  v7 = [v6 request];
  v8 = [v7 identifier];

  v9 = *(a1 + 32);
  v10 = *(v9 + 24);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__AFUserNotificationProvider_postNotificationRequest_responseHandler___block_invoke_3;
  v12[3] = &unk_1E7349860;
  v12[4] = v9;
  v13 = v8;
  v11 = v8;
  dispatch_async(v10, v12);
}

void __70__AFUserNotificationProvider_postNotificationRequest_responseHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315394;
    v9 = "[AFUserNotificationProvider postNotificationRequest:responseHandler:]_block_invoke_4";
    v10 = 2112;
    v11 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s Error connecting to assistantd for notification service: %@", &v8, 0x16u);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  *(v5 + 8) = 0;

  v7 = *MEMORY[0x1E69E9840];
}

{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 136315650;
      v8 = "[AFUserNotificationProvider postNotificationRequest:responseHandler:]_block_invoke";
      v9 = 2112;
      v10 = v6;
      v11 = 2112;
      v12 = v3;
      _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s Error posting notification %@: %@", &v7, 0x20u);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (AFUserNotificationProvider)init
{
  v9.receiver = self;
  v9.super_class = AFUserNotificationProvider;
  v2 = [(AFUserNotificationProvider *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("AFUserNotificationProvider", v3);

    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    responseHandlersByNotificationID = v2->_responseHandlersByNotificationID;
    v2->_responseHandlersByNotificationID = v6;
  }

  return v2;
}

@end