@interface AAAccountUserNotificationPublisher
- (AAAccountUserNotificationPublisher)initWithDaemonXPCEndpoint:(id)a3;
- (void)postAccountUserNotificationWith:(id)a3 completion:(id)a4;
@end

@implementation AAAccountUserNotificationPublisher

- (AAAccountUserNotificationPublisher)initWithDaemonXPCEndpoint:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AAAccountUserNotificationPublisher;
  v5 = [(AAAccountUserNotificationPublisher *)&v9 init];
  if (v5)
  {
    v6 = [[AAAccountUserNotificationDaemonConnection alloc] initWithListenerEndpoint:v4];
    daemonConnection = v5->_daemonConnection;
    v5->_daemonConnection = v6;
  }

  return v5;
}

- (void)postAccountUserNotificationWith:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (+[AAPreferences shouldEnableAccountUserNotifications])
  {
    *buf = 0;
    v22 = buf;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__0;
    v25 = __Block_byref_object_dispose__0;
    v8 = self;
    v26 = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __81__AAAccountUserNotificationPublisher_postAccountUserNotificationWith_completion___block_invoke;
    aBlock[3] = &unk_1E7C9B050;
    v20 = buf;
    v19 = v7;
    v9 = _Block_copy(aBlock);
    daemonConnection = v8->_daemonConnection;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __81__AAAccountUserNotificationPublisher_postAccountUserNotificationWith_completion___block_invoke_30;
    v16[3] = &unk_1E7C9B078;
    v11 = v9;
    v17 = v11;
    v12 = [(AAAccountUserNotificationDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:v16];
    v13 = _AALogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1B6F6A000, v13, OS_LOG_TYPE_DEFAULT, "Calling daemon service to publish account user notification.", v15, 2u);
    }

    [v12 postAccountUserNotificationWith:v6 completion:v11];
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v14 = _AALogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "Account user notification feature not enabled.", buf, 2u);
    }
  }
}

void __81__AAAccountUserNotificationPublisher_postAccountUserNotificationWith_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = _AALogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "Local completion called after post account notification", v8, 2u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

void __81__AAAccountUserNotificationPublisher_postAccountUserNotificationWith_completion___block_invoke_30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __81__AAAccountUserNotificationPublisher_postAccountUserNotificationWith_completion___block_invoke_30_cold_1(v3, v4);
  }

  (*(*(a1 + 32) + 16))();
}

void __81__AAAccountUserNotificationPublisher_postAccountUserNotificationWith_completion___block_invoke_30_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_ERROR, "AppleAccount daemon connection for publishing account user notification encountered error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end