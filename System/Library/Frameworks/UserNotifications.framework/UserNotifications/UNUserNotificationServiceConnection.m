@interface UNUserNotificationServiceConnection
+ (id)sharedInstance;
- (UNUserNotificationServiceConnection)init;
- (id)_queue_ensureConnection;
- (id)badgeNumberForBundleIdentifier:(id)a3;
- (id)clearedInfoForBundleIdentifier:(id)a3;
- (id)deliveredNotificationsForBundleIdentifier:(id)a3;
- (id)notificationCategoriesForBundleIdentifier:(id)a3;
- (id)notificationSettingsForBundleIdentifier:(id)a3;
- (id)notificationSettingsForTopicsWithBundleIdentifier:(id)a3;
- (id)notificationTopicsForBundleIdentifier:(id)a3;
- (id)pendingNotificationRequestsForBundleIdentifier:(id)a3;
- (void)_invalidate;
- (void)_queue_addObserver:(id)a3 forBundleIdentifier:(id)a4;
- (void)_queue_didReceiveDeviceToken:(id)a3 forBundleIdentifier:(id)a4;
- (void)_queue_invalidatedConnection;
- (void)_queue_removeObserver:(id)a3 forBundleIdentifier:(id)a4;
- (void)addNotificationRequest:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5;
- (void)addObserver:(id)a3 forBundleIdentifier:(id)a4;
- (void)didReceiveDeviceToken:(id)a3 forBundleIdentifier:(id)a4;
- (void)getBadgeNumberForBundleIdentifier:(id)a3 withCompletionHandler:(id)a4;
- (void)getDeliveredNotificationsForBundleIdentifier:(id)a3 withCompletionHandler:(id)a4;
- (void)getNotificationCategoriesForBundleIdentifier:(id)a3 withCompletionHandler:(id)a4;
- (void)getNotificationSettingsForBundleIdentifier:(id)a3 withCompletionHandler:(id)a4;
- (void)getNotificationSettingsForTopicsWithBundleIdentifier:(id)a3 withCompletionHandler:(id)a4;
- (void)getNotificationTopicsForBundleIdentifier:(id)a3 withCompletionHandler:(id)a4;
- (void)getPendingNotificationRequestsForBundleIdentifier:(id)a3 withCompletionHandler:(id)a4;
- (void)performBlockOnConnectionQueue:(id)a3;
- (void)removeAllDeliveredNotificationsForBundleIdentifier:(id)a3 completionHandler:(id)a4;
- (void)removeAllPendingNotificationRequestsForBundleIdentifier:(id)a3 completionHandler:(id)a4;
- (void)removeDeliveredNotificationsWithIdentifiers:(id)a3 forBundleIdentifier:(id)a4 completionHandler:(id)a5;
- (void)removeObserver:(id)a3 forBundleIdentifier:(id)a4;
- (void)removePendingNotificationRequestsWithIdentifiers:(id)a3 forBundleIdentifier:(id)a4 completionHandler:(id)a5;
- (void)removeSimilarNotificationRequests:(id)a3 forBundleIdentifier:(id)a4 completionHandler:(id)a5;
- (void)replaceContentForRequestWithIdentifier:(id)a3 bundleIdentifier:(id)a4 replacementContent:(id)a5 completionHandler:(id)a6;
- (void)requestAuthorizationWithOptions:(unint64_t)a3 forBundleIdentifier:(id)a4 completionHandler:(id)a5;
- (void)requestRemoveAuthorizationForBundleIdentifier:(id)a3 completionHandler:(id)a4;
- (void)setBadgeCount:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5;
- (void)setBadgeNumber:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5;
- (void)setBadgeString:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5;
- (void)setNotificationCategories:(id)a3 forBundleIdentifier:(id)a4;
- (void)setNotificationRequests:(id)a3 forBundleIdentifier:(id)a4 completionHandler:(id)a5;
- (void)setNotificationTopics:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5;
- (void)setObservingUserNotifications:(BOOL)a3 forBundleIdentifier:(id)a4;
@end

@implementation UNUserNotificationServiceConnection

- (id)_queue_ensureConnection
{
  dispatch_assert_queue_V2(self->_queue);
  connection = self->_connection;
  if (!connection)
  {
    objc_initWeak(&location, self);
    v4 = @"com.apple.usernotifications.usernotificationservice";
    if (_os_feature_enabled_impl())
    {
      v5 = @"com.apple.usernotifications.listener";

      v4 = v5;
    }

    v6 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:v4 options:0];
    v7 = self->_connection;
    self->_connection = v6;

    v8 = self->_connection;
    v9 = +[UNUserNotificationService serverInterface];
    [(NSXPCConnection *)v8 setRemoteObjectInterface:v9];

    v10 = self->_connection;
    v11 = +[UNUserNotificationService clientInterface];
    [(NSXPCConnection *)v10 setExportedInterface:v11];

    v12 = self->_connection;
    v13 = objc_loadWeakRetained(&location);
    [(NSXPCConnection *)v12 setExportedObject:v13];

    objc_initWeak(&from, self->_queue);
    v14 = self->_connection;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __62__UNUserNotificationServiceConnection__queue_ensureConnection__block_invoke;
    v23[3] = &unk_1E7CFFA88;
    objc_copyWeak(&v24, &from);
    objc_copyWeak(&v25, &location);
    [(NSXPCConnection *)v14 setInterruptionHandler:v23];
    v15 = self->_connection;
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __62__UNUserNotificationServiceConnection__queue_ensureConnection__block_invoke_3;
    v20 = &unk_1E7CFFA88;
    objc_copyWeak(&v21, &from);
    objc_copyWeak(&v22, &location);
    [(NSXPCConnection *)v15 setInvalidationHandler:&v17];
    [(NSXPCConnection *)self->_connection resume:v17];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&from);

    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  return connection;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[UNUserNotificationServiceConnection sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_1;

  return v3;
}

- (UNUserNotificationServiceConnection)init
{
  v12.receiver = self;
  v12.super_class = UNUserNotificationServiceConnection;
  v2 = [(UNUserNotificationServiceConnection *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    observersByBundleIdentifier = v2->_observersByBundleIdentifier;
    v2->_observersByBundleIdentifier = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.usernotifications.UNUserNotificationServiceConnection", v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.usernotifications.UNUserNotificationServiceConnection.call-out", v8);
    callOutQueue = v2->_callOutQueue;
    v2->_callOutQueue = v9;
  }

  return v2;
}

uint64_t __53__UNUserNotificationServiceConnection_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance_1 = objc_alloc_init(UNUserNotificationServiceConnection);

  return MEMORY[0x1EEE66BB8]();
}

- (void)addObserver:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__UNUserNotificationServiceConnection_addObserver_forBundleIdentifier___block_invoke;
  block[3] = &unk_1E7CFF870;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)removeObserver:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__UNUserNotificationServiceConnection_removeObserver_forBundleIdentifier___block_invoke;
  block[3] = &unk_1E7CFF870;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, block);
}

- (void)setObservingUserNotifications:(BOOL)a3 forBundleIdentifier:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__UNUserNotificationServiceConnection_setObservingUserNotifications_forBundleIdentifier___block_invoke;
  block[3] = &unk_1E7CFFDE0;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(queue, block);
}

void __89__UNUserNotificationServiceConnection_setObservingUserNotifications_forBundleIdentifier___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _queue_ensureConnection];
  v2 = [v3 remoteObjectProxy];
  [v2 setObservingUserNotifications:*(a1 + 48) forBundleIdentifier:*(a1 + 40)];
}

- (void)requestAuthorizationWithOptions:(unint64_t)a3 forBundleIdentifier:(id)a4 completionHandler:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v20 = v8;
    v21 = 2048;
    v22 = a3;
    _os_log_impl(&dword_1B85E3000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requesting authorization with options %ld", buf, 0x16u);
  }

  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __109__UNUserNotificationServiceConnection_requestAuthorizationWithOptions_forBundleIdentifier_completionHandler___block_invoke;
  v15[3] = &unk_1E7CFFEA8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = a3;
  v12 = v9;
  v13 = v8;
  dispatch_async(queue, v15);

  v14 = *MEMORY[0x1E69E9840];
}

void __109__UNUserNotificationServiceConnection_requestAuthorizationWithOptions_forBundleIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_ensureConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __109__UNUserNotificationServiceConnection_requestAuthorizationWithOptions_forBundleIdentifier_completionHandler___block_invoke_2;
  v13[3] = &unk_1E7CFFE30;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v14 = v3;
  v15 = v4;
  v16 = *(a1 + 48);
  v5 = [v2 remoteObjectProxyWithErrorHandler:v13];
  v6 = *(a1 + 56);
  v7 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __109__UNUserNotificationServiceConnection_requestAuthorizationWithOptions_forBundleIdentifier_completionHandler___block_invoke_2_6;
  v9[3] = &unk_1E7CFFE80;
  v10 = v7;
  v8 = *(a1 + 48);
  v11 = *(a1 + 32);
  v12 = v8;
  [v5 requestAuthorizationWithOptions:v6 forBundleIdentifier:v10 completionHandler:v9];
}

void __109__UNUserNotificationServiceConnection_requestAuthorizationWithOptions_forBundleIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_ERROR))
  {
    __109__UNUserNotificationServiceConnection_requestAuthorizationWithOptions_forBundleIdentifier_completionHandler___block_invoke_2_cold_1(a1);
  }

  v4 = *(*(a1 + 40) + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __109__UNUserNotificationServiceConnection_requestAuthorizationWithOptions_forBundleIdentifier_completionHandler___block_invoke_4;
  v7[3] = &unk_1E7CFFE08;
  v5 = *(a1 + 48);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __109__UNUserNotificationServiceConnection_requestAuthorizationWithOptions_forBundleIdentifier_completionHandler___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

void __109__UNUserNotificationServiceConnection_requestAuthorizationWithOptions_forBundleIdentifier_completionHandler___block_invoke_2_6(uint64_t a1, int a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 48) != 0;
    *buf = 138544130;
    v18 = v7;
    v19 = 1024;
    v20 = a2;
    v21 = 1024;
    v22 = v5 != 0;
    v23 = 1024;
    v24 = v8;
    _os_log_impl(&dword_1B85E3000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requested authorization [ didGrant: %d hasError: %d hasCompletionHandler: %d ]", buf, 0x1Eu);
  }

  v9 = *(*(a1 + 40) + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __109__UNUserNotificationServiceConnection_requestAuthorizationWithOptions_forBundleIdentifier_completionHandler___block_invoke_7;
  block[3] = &unk_1E7CFFE58;
  v10 = *(a1 + 48);
  v16 = a2;
  v14 = v5;
  v15 = v10;
  v11 = v5;
  dispatch_async(v9, block);

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __109__UNUserNotificationServiceConnection_requestAuthorizationWithOptions_forBundleIdentifier_completionHandler___block_invoke_7(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

- (void)requestRemoveAuthorizationForBundleIdentifier:(id)a3 completionHandler:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = v6;
    _os_log_impl(&dword_1B85E3000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requesting remove authorization", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __103__UNUserNotificationServiceConnection_requestRemoveAuthorizationForBundleIdentifier_completionHandler___block_invoke;
  block[3] = &unk_1E7CFF8E8;
  block[4] = self;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(queue, block);

  v12 = *MEMORY[0x1E69E9840];
}

void __103__UNUserNotificationServiceConnection_requestRemoveAuthorizationForBundleIdentifier_completionHandler___block_invoke(id *a1)
{
  v2 = [a1[4] _queue_ensureConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __103__UNUserNotificationServiceConnection_requestRemoveAuthorizationForBundleIdentifier_completionHandler___block_invoke_2;
  v12[3] = &unk_1E7CFFE30;
  v3 = a1[5];
  v4 = a1[4];
  v13 = v3;
  v14 = v4;
  v15 = a1[6];
  v5 = [v2 remoteObjectProxyWithErrorHandler:v12];
  v6 = a1[5];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __103__UNUserNotificationServiceConnection_requestRemoveAuthorizationForBundleIdentifier_completionHandler___block_invoke_2_10;
  v8[3] = &unk_1E7CFFE80;
  v9 = v6;
  v7 = a1[6];
  v10 = a1[4];
  v11 = v7;
  [v5 requestRemoveAuthorizationForBundleIdentifier:v9 completionHandler:v8];
}

void __103__UNUserNotificationServiceConnection_requestRemoveAuthorizationForBundleIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_ERROR))
  {
    __103__UNUserNotificationServiceConnection_requestRemoveAuthorizationForBundleIdentifier_completionHandler___block_invoke_2_cold_1(a1);
  }

  v4 = *(*(a1 + 40) + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __103__UNUserNotificationServiceConnection_requestRemoveAuthorizationForBundleIdentifier_completionHandler___block_invoke_9;
  v7[3] = &unk_1E7CFFE08;
  v5 = *(a1 + 48);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __103__UNUserNotificationServiceConnection_requestRemoveAuthorizationForBundleIdentifier_completionHandler___block_invoke_9(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

void __103__UNUserNotificationServiceConnection_requestRemoveAuthorizationForBundleIdentifier_completionHandler___block_invoke_2_10(uint64_t a1, int a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 48) != 0;
    *buf = 138544130;
    v18 = v7;
    v19 = 1024;
    v20 = a2;
    v21 = 1024;
    v22 = v5 != 0;
    v23 = 1024;
    v24 = v8;
    _os_log_impl(&dword_1B85E3000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requested remove authorization [ didGrant: %d hasError: %d hasCompletionHandler: %d ]", buf, 0x1Eu);
  }

  v9 = *(*(a1 + 40) + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __103__UNUserNotificationServiceConnection_requestRemoveAuthorizationForBundleIdentifier_completionHandler___block_invoke_11;
  block[3] = &unk_1E7CFFE58;
  v10 = *(a1 + 48);
  v16 = a2;
  v14 = v5;
  v15 = v10;
  v11 = v5;
  dispatch_async(v9, block);

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __103__UNUserNotificationServiceConnection_requestRemoveAuthorizationForBundleIdentifier_completionHandler___block_invoke_11(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

- (id)notificationSettingsForBundleIdentifier:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v4;
    _os_log_impl(&dword_1B85E3000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting notification settings (sync)", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__UNUserNotificationServiceConnection_notificationSettingsForBundleIdentifier___block_invoke;
  block[3] = &unk_1E7CFFEF8;
  block[4] = self;
  v12 = v4;
  p_buf = &buf;
  v7 = v4;
  dispatch_sync(queue, block);
  v8 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void __79__UNUserNotificationServiceConnection_notificationSettingsForBundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_ensureConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__UNUserNotificationServiceConnection_notificationSettingsForBundleIdentifier___block_invoke_2;
  v10[3] = &unk_1E7CFFA38;
  v11 = *(a1 + 40);
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v10];
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__UNUserNotificationServiceConnection_notificationSettingsForBundleIdentifier___block_invoke_12;
  v7[3] = &unk_1E7CFFED0;
  v5 = v4;
  v6 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  [v3 getNotificationSettingsForBundleIdentifier:v5 withCompletionHandler:v7];
}

void __79__UNUserNotificationServiceConnection_notificationSettingsForBundleIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_ERROR))
  {
    __79__UNUserNotificationServiceConnection_notificationSettingsForBundleIdentifier___block_invoke_2_cold_1(a1);
  }
}

void __79__UNUserNotificationServiceConnection_notificationSettingsForBundleIdentifier___block_invoke_12(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 138543618;
    v10 = v5;
    v11 = 1024;
    v12 = v3 != 0;
    _os_log_impl(&dword_1B85E3000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got notification settings [ hasResult: %d ]", &v9, 0x12u);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x1E69E9840];
}

- (void)getNotificationSettingsForBundleIdentifier:(id)a3 withCompletionHandler:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = v6;
    _os_log_impl(&dword_1B85E3000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting notification settings (async)", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104__UNUserNotificationServiceConnection_getNotificationSettingsForBundleIdentifier_withCompletionHandler___block_invoke;
  block[3] = &unk_1E7CFF8E8;
  block[4] = self;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(queue, block);

  v12 = *MEMORY[0x1E69E9840];
}

void __104__UNUserNotificationServiceConnection_getNotificationSettingsForBundleIdentifier_withCompletionHandler___block_invoke(id *a1)
{
  v2 = [a1[4] _queue_ensureConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __104__UNUserNotificationServiceConnection_getNotificationSettingsForBundleIdentifier_withCompletionHandler___block_invoke_2;
  v12[3] = &unk_1E7CFFE30;
  v3 = a1[5];
  v4 = a1[4];
  v13 = v3;
  v14 = v4;
  v15 = a1[6];
  v5 = [v2 remoteObjectProxyWithErrorHandler:v12];
  v6 = a1[5];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __104__UNUserNotificationServiceConnection_getNotificationSettingsForBundleIdentifier_withCompletionHandler___block_invoke_2_15;
  v8[3] = &unk_1E7CFFF20;
  v9 = v6;
  v7 = a1[6];
  v10 = a1[4];
  v11 = v7;
  [v5 getNotificationSettingsForBundleIdentifier:v9 withCompletionHandler:v8];
}

void __104__UNUserNotificationServiceConnection_getNotificationSettingsForBundleIdentifier_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_ERROR))
  {
    __79__UNUserNotificationServiceConnection_notificationSettingsForBundleIdentifier___block_invoke_2_cold_1(a1);
  }

  v4 = *(*(a1 + 40) + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104__UNUserNotificationServiceConnection_getNotificationSettingsForBundleIdentifier_withCompletionHandler___block_invoke_14;
  block[3] = &unk_1E7CFF8C0;
  v6 = *(a1 + 48);
  dispatch_async(v4, block);
}

uint64_t __104__UNUserNotificationServiceConnection_getNotificationSettingsForBundleIdentifier_withCompletionHandler___block_invoke_14(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __104__UNUserNotificationServiceConnection_getNotificationSettingsForBundleIdentifier_withCompletionHandler___block_invoke_2_15(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 48) != 0;
    *buf = 138543874;
    v15 = v5;
    v16 = 1024;
    v17 = v3 != 0;
    v18 = 1024;
    v19 = v6;
    _os_log_impl(&dword_1B85E3000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got notification settings [ hasResult: %d hasCompletionHandler: %d ]", buf, 0x18u);
  }

  v7 = *(*(a1 + 40) + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __104__UNUserNotificationServiceConnection_getNotificationSettingsForBundleIdentifier_withCompletionHandler___block_invoke_16;
  v11[3] = &unk_1E7CFFE08;
  v8 = *(a1 + 48);
  v12 = v3;
  v13 = v8;
  v9 = v3;
  dispatch_async(v7, v11);

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __104__UNUserNotificationServiceConnection_getNotificationSettingsForBundleIdentifier_withCompletionHandler___block_invoke_16(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)setNotificationCategories:(id)a3 forBundleIdentifier:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    *buf = 138543618;
    v34 = v6;
    v35 = 2048;
    v36 = [v5 count];
    _os_log_impl(&dword_1B85E3000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Setting %ld notification categories", buf, 0x16u);
  }

  v9 = [MEMORY[0x1E695DFA8] set];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v29;
    do
    {
      v14 = 0;
      do
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v28 + 1) + 8 * v14);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v9 addObject:v15];
        }

        else
        {
          v16 = UNLogConnections;
          if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_ERROR))
          {
            v17 = v16;
            v18 = objc_opt_class();
            *buf = 138543618;
            v34 = v6;
            v35 = 2114;
            v36 = v18;
            v19 = v18;
            _os_log_error_impl(&dword_1B85E3000, v17, OS_LOG_TYPE_ERROR, "[%{public}@] Expected a UNNotificationCategory: %{public}@", buf, 0x16u);
          }
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v12);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__UNUserNotificationServiceConnection_setNotificationCategories_forBundleIdentifier___block_invoke;
  block[3] = &unk_1E7CFF870;
  block[4] = self;
  v26 = v9;
  v27 = v6;
  v21 = v6;
  v22 = v9;
  dispatch_sync(queue, block);

  v23 = *MEMORY[0x1E69E9840];
}

void __85__UNUserNotificationServiceConnection_setNotificationCategories_forBundleIdentifier___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _queue_ensureConnection];
  v2 = [v3 remoteObjectProxy];
  [v2 setNotificationCategories:*(a1 + 40) forBundleIdentifier:*(a1 + 48)];
}

- (id)notificationCategoriesForBundleIdentifier:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v4;
    _os_log_impl(&dword_1B85E3000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting notification categories (sync)", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__UNUserNotificationServiceConnection_notificationCategoriesForBundleIdentifier___block_invoke;
  block[3] = &unk_1E7CFFEF8;
  block[4] = self;
  v12 = v4;
  p_buf = &buf;
  v7 = v4;
  dispatch_sync(queue, block);
  v8 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void __81__UNUserNotificationServiceConnection_notificationCategoriesForBundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_ensureConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__UNUserNotificationServiceConnection_notificationCategoriesForBundleIdentifier___block_invoke_2;
  v10[3] = &unk_1E7CFFA38;
  v11 = *(a1 + 40);
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v10];
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81__UNUserNotificationServiceConnection_notificationCategoriesForBundleIdentifier___block_invoke_19;
  v7[3] = &unk_1E7CFFF48;
  v5 = v4;
  v6 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  [v3 getNotificationCategoriesForBundleIdentifier:v5 withCompletionHandler:v7];
}

void __81__UNUserNotificationServiceConnection_notificationCategoriesForBundleIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_ERROR))
  {
    __81__UNUserNotificationServiceConnection_notificationCategoriesForBundleIdentifier___block_invoke_2_cold_1(a1);
  }
}

void __81__UNUserNotificationServiceConnection_notificationCategoriesForBundleIdentifier___block_invoke_19(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v10 = 138543618;
    v11 = v5;
    v12 = 2048;
    v13 = [v3 count];
    _os_log_impl(&dword_1B85E3000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got %ld notification categories", &v10, 0x16u);
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;

  v9 = *MEMORY[0x1E69E9840];
}

- (void)getNotificationCategoriesForBundleIdentifier:(id)a3 withCompletionHandler:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = v6;
    _os_log_impl(&dword_1B85E3000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting notification categories (async)", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __106__UNUserNotificationServiceConnection_getNotificationCategoriesForBundleIdentifier_withCompletionHandler___block_invoke;
  block[3] = &unk_1E7CFF8E8;
  block[4] = self;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(queue, block);

  v12 = *MEMORY[0x1E69E9840];
}

void __106__UNUserNotificationServiceConnection_getNotificationCategoriesForBundleIdentifier_withCompletionHandler___block_invoke(id *a1)
{
  v2 = [a1[4] _queue_ensureConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __106__UNUserNotificationServiceConnection_getNotificationCategoriesForBundleIdentifier_withCompletionHandler___block_invoke_2;
  v12[3] = &unk_1E7CFFE30;
  v3 = a1[5];
  v4 = a1[4];
  v13 = v3;
  v14 = v4;
  v15 = a1[6];
  v5 = [v2 remoteObjectProxyWithErrorHandler:v12];
  v6 = a1[5];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __106__UNUserNotificationServiceConnection_getNotificationCategoriesForBundleIdentifier_withCompletionHandler___block_invoke_2_22;
  v8[3] = &unk_1E7CFFF70;
  v9 = v6;
  v7 = a1[6];
  v10 = a1[4];
  v11 = v7;
  [v5 getNotificationCategoriesForBundleIdentifier:v9 withCompletionHandler:v8];
}

void __106__UNUserNotificationServiceConnection_getNotificationCategoriesForBundleIdentifier_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_ERROR))
  {
    __81__UNUserNotificationServiceConnection_notificationCategoriesForBundleIdentifier___block_invoke_2_cold_1(a1);
  }

  v4 = *(*(a1 + 40) + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __106__UNUserNotificationServiceConnection_getNotificationCategoriesForBundleIdentifier_withCompletionHandler___block_invoke_21;
  block[3] = &unk_1E7CFF8C0;
  v6 = *(a1 + 48);
  dispatch_async(v4, block);
}

uint64_t __106__UNUserNotificationServiceConnection_getNotificationCategoriesForBundleIdentifier_withCompletionHandler___block_invoke_21(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __106__UNUserNotificationServiceConnection_getNotificationCategoriesForBundleIdentifier_withCompletionHandler___block_invoke_2_22(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v3 count];
    v8 = *(a1 + 48) != 0;
    *buf = 138543874;
    v17 = v5;
    v18 = 2048;
    v19 = v7;
    v20 = 1024;
    v21 = v8;
    _os_log_impl(&dword_1B85E3000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got %ld notification categories [ hasCompletionHandler: %d ]", buf, 0x1Cu);
  }

  v9 = *(*(a1 + 40) + 32);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __106__UNUserNotificationServiceConnection_getNotificationCategoriesForBundleIdentifier_withCompletionHandler___block_invoke_23;
  v13[3] = &unk_1E7CFFE08;
  v10 = *(a1 + 48);
  v14 = v3;
  v15 = v10;
  v11 = v3;
  dispatch_async(v9, v13);

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __106__UNUserNotificationServiceConnection_getNotificationCategoriesForBundleIdentifier_withCompletionHandler___block_invoke_23(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)addNotificationRequest:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_class();
  v12 = UNSafeCast(v11, v8);
  if (v12)
  {
    v13 = [v8 destinations];
    v14 = UNLogConnections;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v12 identifier];
      v15 = [v22 un_logDigest];
      v23 = v10;
      if (v13 == 15)
      {
        v24 = @"Default";
      }

      else
      {
        v24 = UNNotificationDestinationStrings(v13);
      }

      v17 = [v8 content];
      v18 = [v17 date];
      v19 = [v18 un_logString];
      *buf = 138544130;
      v30 = v9;
      v31 = 2114;
      v32 = v15;
      v33 = 2114;
      v34 = v24;
      v35 = 2114;
      v36 = v19;
      _os_log_impl(&dword_1B85E3000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Adding notification request %{public}@ to destinations: %{public}@, contentDate: %{public}@", buf, 0x2Au);

      if (v13 != 15)
      {
      }

      v10 = v23;
    }

    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __104__UNUserNotificationServiceConnection_addNotificationRequest_forBundleIdentifier_withCompletionHandler___block_invoke;
    block[3] = &unk_1E7CFFFC0;
    block[4] = self;
    v26 = v9;
    v28 = v10;
    v27 = v12;
    dispatch_sync(queue, block);
  }

  else
  {
    v16 = UNLogConnections;
    if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_ERROR))
    {
      [UNUserNotificationServiceConnection addNotificationRequest:v9 forBundleIdentifier:v16 withCompletionHandler:?];
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __104__UNUserNotificationServiceConnection_addNotificationRequest_forBundleIdentifier_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_ensureConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __104__UNUserNotificationServiceConnection_addNotificationRequest_forBundleIdentifier_withCompletionHandler___block_invoke_2;
  v13[3] = &unk_1E7CFFE30;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v14 = v3;
  v15 = v4;
  v16 = *(a1 + 56);
  v5 = [v2 remoteObjectProxyWithErrorHandler:v13];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __104__UNUserNotificationServiceConnection_addNotificationRequest_forBundleIdentifier_withCompletionHandler___block_invoke_2_27;
  v9[3] = &unk_1E7CFFF98;
  v10 = v6;
  v8 = *(a1 + 56);
  v11 = *(a1 + 32);
  v12 = v8;
  [v5 addNotificationRequest:v7 forBundleIdentifier:v10 withCompletionHandler:v9];
}

void __104__UNUserNotificationServiceConnection_addNotificationRequest_forBundleIdentifier_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_ERROR))
  {
    __104__UNUserNotificationServiceConnection_addNotificationRequest_forBundleIdentifier_withCompletionHandler___block_invoke_2_cold_1(a1);
  }

  v4 = *(*(a1 + 40) + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __104__UNUserNotificationServiceConnection_addNotificationRequest_forBundleIdentifier_withCompletionHandler___block_invoke_26;
  v7[3] = &unk_1E7CFFE08;
  v5 = *(a1 + 48);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __104__UNUserNotificationServiceConnection_addNotificationRequest_forBundleIdentifier_withCompletionHandler___block_invoke_26(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void __104__UNUserNotificationServiceConnection_addNotificationRequest_forBundleIdentifier_withCompletionHandler___block_invoke_2_27(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 48) != 0;
    *buf = 138543874;
    v15 = v5;
    v16 = 1024;
    v17 = v3 != 0;
    v18 = 1024;
    v19 = v6;
    _os_log_impl(&dword_1B85E3000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Added notification request: [ hasError: %d hasCompletionHandler: %d ]", buf, 0x18u);
  }

  v7 = *(*(a1 + 40) + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __104__UNUserNotificationServiceConnection_addNotificationRequest_forBundleIdentifier_withCompletionHandler___block_invoke_28;
  v11[3] = &unk_1E7CFFE08;
  v8 = *(a1 + 48);
  v12 = v3;
  v13 = v8;
  v9 = v3;
  dispatch_async(v7, v11);

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __104__UNUserNotificationServiceConnection_addNotificationRequest_forBundleIdentifier_withCompletionHandler___block_invoke_28(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)replaceContentForRequestWithIdentifier:(id)a3 bundleIdentifier:(id)a4 replacementContent:(id)a5 completionHandler:(id)a6
{
  v30 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_opt_class();
  v15 = UNSafeCast(v14, v12);
  v16 = UNLogConnections;
  if (v15)
  {
    if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      v18 = [v10 un_logDigest];
      *buf = 138543618;
      v27 = v11;
      v28 = 2114;
      v29 = v18;
      _os_log_impl(&dword_1B85E3000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Replacing notification content %{public}@", buf, 0x16u);
    }

    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __132__UNUserNotificationServiceConnection_replaceContentForRequestWithIdentifier_bundleIdentifier_replacementContent_completionHandler___block_invoke;
    block[3] = &unk_1E7CFFFE8;
    block[4] = self;
    v22 = v11;
    v25 = v13;
    v23 = v10;
    v24 = v15;
    dispatch_sync(queue, block);
  }

  else if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_ERROR))
  {
    [UNUserNotificationServiceConnection replaceContentForRequestWithIdentifier:v11 bundleIdentifier:v16 replacementContent:? completionHandler:?];
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __132__UNUserNotificationServiceConnection_replaceContentForRequestWithIdentifier_bundleIdentifier_replacementContent_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_ensureConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __132__UNUserNotificationServiceConnection_replaceContentForRequestWithIdentifier_bundleIdentifier_replacementContent_completionHandler___block_invoke_2;
  v14[3] = &unk_1E7CFFE30;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v15 = v3;
  v16 = v4;
  v17 = *(a1 + 64);
  v5 = [v2 remoteObjectProxyWithErrorHandler:v14];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __132__UNUserNotificationServiceConnection_replaceContentForRequestWithIdentifier_bundleIdentifier_replacementContent_completionHandler___block_invoke_2_31;
  v10[3] = &unk_1E7CFFF98;
  v11 = v6;
  v9 = *(a1 + 64);
  v12 = *(a1 + 32);
  v13 = v9;
  [v5 replaceContentForRequestWithIdentifier:v7 bundleIdentifier:v11 replacementContent:v8 completionHandler:v10];
}

void __132__UNUserNotificationServiceConnection_replaceContentForRequestWithIdentifier_bundleIdentifier_replacementContent_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_ERROR))
  {
    __132__UNUserNotificationServiceConnection_replaceContentForRequestWithIdentifier_bundleIdentifier_replacementContent_completionHandler___block_invoke_2_cold_1(a1);
  }

  v4 = *(*(a1 + 40) + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __132__UNUserNotificationServiceConnection_replaceContentForRequestWithIdentifier_bundleIdentifier_replacementContent_completionHandler___block_invoke_30;
  v7[3] = &unk_1E7CFFE08;
  v5 = *(a1 + 48);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __132__UNUserNotificationServiceConnection_replaceContentForRequestWithIdentifier_bundleIdentifier_replacementContent_completionHandler___block_invoke_30(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void __132__UNUserNotificationServiceConnection_replaceContentForRequestWithIdentifier_bundleIdentifier_replacementContent_completionHandler___block_invoke_2_31(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 48) != 0;
    *buf = 138543874;
    v15 = v5;
    v16 = 1024;
    v17 = v3 != 0;
    v18 = 1024;
    v19 = v6;
    _os_log_impl(&dword_1B85E3000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Replaced notification content: [ hasError: %d hasCompletionHandler: %d ]", buf, 0x18u);
  }

  v7 = *(*(a1 + 40) + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __132__UNUserNotificationServiceConnection_replaceContentForRequestWithIdentifier_bundleIdentifier_replacementContent_completionHandler___block_invoke_32;
  v11[3] = &unk_1E7CFFE08;
  v8 = *(a1 + 48);
  v12 = v3;
  v13 = v8;
  v9 = v3;
  dispatch_async(v7, v11);

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __132__UNUserNotificationServiceConnection_replaceContentForRequestWithIdentifier_bundleIdentifier_replacementContent_completionHandler___block_invoke_32(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)setNotificationRequests:(id)a3 forBundleIdentifier:(id)a4 completionHandler:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E695DF70] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      v14 = 0;
      do
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v24 + 1) + 8 * v14);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v9 addObject:v15];
        }

        else
        {
          NSLog(@"Expected a UNNotificationRequest: %@", v15);
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v12);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__UNUserNotificationServiceConnection_setNotificationRequests_forBundleIdentifier_completionHandler___block_invoke;
  block[3] = &unk_1E7CFF870;
  v21 = v8;
  v22 = v9;
  v23 = self;
  v17 = v9;
  v18 = v8;
  dispatch_sync(queue, block);

  v19 = *MEMORY[0x1E69E9840];
}

void __101__UNUserNotificationServiceConnection_setNotificationRequests_forBundleIdentifier_completionHandler___block_invoke(id *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[4];
    v3 = a1[5];
    v5 = v2;
    v6 = [v3 count];
    v7 = [a1[5] un_map:&__block_literal_global_41];
    *buf = 138543874;
    v14 = v4;
    v15 = 2048;
    v16 = v6;
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&dword_1B85E3000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Setting %ld notification requests %{public}@", buf, 0x20u);
  }

  v8 = [a1[6] _queue_ensureConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __101__UNUserNotificationServiceConnection_setNotificationRequests_forBundleIdentifier_completionHandler___block_invoke_42;
  v11[3] = &unk_1E7CFFA38;
  v12 = a1[4];
  v9 = [v8 remoteObjectProxyWithErrorHandler:v11];
  [v9 setNotificationRequests:a1[5] forBundleIdentifier:a1[4]];

  v10 = *MEMORY[0x1E69E9840];
}

id __101__UNUserNotificationServiceConnection_setNotificationRequests_forBundleIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = [v2 un_logDigest];

  return v3;
}

void __101__UNUserNotificationServiceConnection_setNotificationRequests_forBundleIdentifier_completionHandler___block_invoke_42(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_ERROR))
  {
    __101__UNUserNotificationServiceConnection_setNotificationRequests_forBundleIdentifier_completionHandler___block_invoke_42_cold_1(a1);
  }
}

- (id)pendingNotificationRequestsForBundleIdentifier:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v4;
    _os_log_impl(&dword_1B85E3000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting pending notification requests (sync)", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__UNUserNotificationServiceConnection_pendingNotificationRequestsForBundleIdentifier___block_invoke;
  block[3] = &unk_1E7CFFEF8;
  block[4] = self;
  v12 = v4;
  p_buf = &buf;
  v7 = v4;
  dispatch_sync(queue, block);
  v8 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void __86__UNUserNotificationServiceConnection_pendingNotificationRequestsForBundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_ensureConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __86__UNUserNotificationServiceConnection_pendingNotificationRequestsForBundleIdentifier___block_invoke_2;
  v10[3] = &unk_1E7CFFA38;
  v11 = *(a1 + 40);
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v10];
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __86__UNUserNotificationServiceConnection_pendingNotificationRequestsForBundleIdentifier___block_invoke_43;
  v7[3] = &unk_1E7D00030;
  v5 = v4;
  v6 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  [v3 getPendingNotificationRequestsForBundleIdentifier:v5 withCompletionHandler:v7];
}

void __86__UNUserNotificationServiceConnection_pendingNotificationRequestsForBundleIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_ERROR))
  {
    __86__UNUserNotificationServiceConnection_pendingNotificationRequestsForBundleIdentifier___block_invoke_2_cold_1(a1);
  }
}

void __86__UNUserNotificationServiceConnection_pendingNotificationRequestsForBundleIdentifier___block_invoke_43(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v10 = 138543618;
    v11 = v5;
    v12 = 2048;
    v13 = [v3 count];
    _os_log_impl(&dword_1B85E3000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got %ld pending notification", &v10, 0x16u);
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;

  v9 = *MEMORY[0x1E69E9840];
}

- (void)getPendingNotificationRequestsForBundleIdentifier:(id)a3 withCompletionHandler:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = v6;
    _os_log_impl(&dword_1B85E3000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting pending notification requests (async)", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __111__UNUserNotificationServiceConnection_getPendingNotificationRequestsForBundleIdentifier_withCompletionHandler___block_invoke;
  block[3] = &unk_1E7CFF8E8;
  block[4] = self;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(queue, block);

  v12 = *MEMORY[0x1E69E9840];
}

void __111__UNUserNotificationServiceConnection_getPendingNotificationRequestsForBundleIdentifier_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_ensureConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __111__UNUserNotificationServiceConnection_getPendingNotificationRequestsForBundleIdentifier_withCompletionHandler___block_invoke_2;
  v9[3] = &unk_1E7CFFE30;
  v3 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v3;
  v11 = *(a1 + 48);
  v4 = [v2 remoteObjectProxyWithErrorHandler:v9];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __111__UNUserNotificationServiceConnection_getPendingNotificationRequestsForBundleIdentifier_withCompletionHandler___block_invoke_45;
  v6[3] = &unk_1E7D00058;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  v8 = *(a1 + 48);
  [v4 getPendingNotificationRequestsForBundleIdentifier:v7 withCompletionHandler:v6];
}

void __111__UNUserNotificationServiceConnection_getPendingNotificationRequestsForBundleIdentifier_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __111__UNUserNotificationServiceConnection_getPendingNotificationRequestsForBundleIdentifier_withCompletionHandler___block_invoke_3;
  block[3] = &unk_1E7CFF8E8;
  v7 = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(v4, block);
}

uint64_t __111__UNUserNotificationServiceConnection_getPendingNotificationRequestsForBundleIdentifier_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_ERROR))
  {
    __111__UNUserNotificationServiceConnection_getPendingNotificationRequestsForBundleIdentifier_withCompletionHandler___block_invoke_3_cold_1(a1, v2);
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __111__UNUserNotificationServiceConnection_getPendingNotificationRequestsForBundleIdentifier_withCompletionHandler___block_invoke_45(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __111__UNUserNotificationServiceConnection_getPendingNotificationRequestsForBundleIdentifier_withCompletionHandler___block_invoke_2_46;
  block[3] = &unk_1E7CFF8E8;
  v7 = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(v4, block);
}

uint64_t __111__UNUserNotificationServiceConnection_getPendingNotificationRequestsForBundleIdentifier_withCompletionHandler___block_invoke_2_46(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[4];
    v3 = a1[5];
    v5 = v2;
    v6 = [v3 count];
    v7 = a1[6] != 0;
    v10 = 138543874;
    v11 = v4;
    v12 = 2048;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    _os_log_impl(&dword_1B85E3000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got %ld pending notification [ hasCompletionHandler: %d ]", &v10, 0x1Cu);
  }

  result = a1[6];
  if (result)
  {
    result = (*(result + 16))(result, a1[5]);
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)removePendingNotificationRequestsWithIdentifiers:(id)a3 forBundleIdentifier:(id)a4 completionHandler:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [v8 count];
    v14 = [v8 un_map:&__block_literal_global_49];
    *buf = 138543874;
    v25 = v9;
    v26 = 2048;
    v27 = v13;
    v28 = 2114;
    v29 = v14;
    _os_log_impl(&dword_1B85E3000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Removing %ld pending notification requests with identifiers %{public}@", buf, 0x20u);
  }

  queue = self->_queue;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __126__UNUserNotificationServiceConnection_removePendingNotificationRequestsWithIdentifiers_forBundleIdentifier_completionHandler___block_invoke_50;
  v20[3] = &unk_1E7CFFFC0;
  v20[4] = self;
  v21 = v9;
  v22 = v8;
  v23 = v10;
  v16 = v8;
  v17 = v10;
  v18 = v9;
  dispatch_sync(queue, v20);

  v19 = *MEMORY[0x1E69E9840];
}

void __126__UNUserNotificationServiceConnection_removePendingNotificationRequestsWithIdentifiers_forBundleIdentifier_completionHandler___block_invoke_50(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_ensureConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __126__UNUserNotificationServiceConnection_removePendingNotificationRequestsWithIdentifiers_forBundleIdentifier_completionHandler___block_invoke_2;
  v10[3] = &unk_1E7CFFF98;
  v11 = *(a1 + 40);
  v3 = *(a1 + 56);
  v12 = *(a1 + 32);
  v13 = v3;
  v4 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v10];
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __126__UNUserNotificationServiceConnection_removePendingNotificationRequestsWithIdentifiers_forBundleIdentifier_completionHandler___block_invoke_2_52;
  v8[3] = &unk_1E7D000A0;
  v7 = *(a1 + 56);
  v8[4] = *(a1 + 32);
  v9 = v7;
  [v4 removePendingNotificationRequestsWithIdentifiers:v5 forBundleIdentifier:v6 completionHandler:v8];
}

void __126__UNUserNotificationServiceConnection_removePendingNotificationRequestsWithIdentifiers_forBundleIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_ERROR))
  {
    __126__UNUserNotificationServiceConnection_removePendingNotificationRequestsWithIdentifiers_forBundleIdentifier_completionHandler___block_invoke_2_cold_1(a1);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = *(*(a1 + 40) + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __126__UNUserNotificationServiceConnection_removePendingNotificationRequestsWithIdentifiers_forBundleIdentifier_completionHandler___block_invoke_51;
    v6[3] = &unk_1E7CFFE08;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __126__UNUserNotificationServiceConnection_removePendingNotificationRequestsWithIdentifiers_forBundleIdentifier_completionHandler___block_invoke_2_52(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(*(a1 + 32) + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __126__UNUserNotificationServiceConnection_removePendingNotificationRequestsWithIdentifiers_forBundleIdentifier_completionHandler___block_invoke_3;
    block[3] = &unk_1E7CFFE58;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

- (void)removeSimilarNotificationRequests:(id)a3 forBundleIdentifier:(id)a4 completionHandler:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    *buf = 138543618;
    v23 = v9;
    v24 = 2048;
    v25 = [v8 count];
    _os_log_impl(&dword_1B85E3000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Removing %ld similar pending notification requests", buf, 0x16u);
  }

  queue = self->_queue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __111__UNUserNotificationServiceConnection_removeSimilarNotificationRequests_forBundleIdentifier_completionHandler___block_invoke;
  v18[3] = &unk_1E7CFFFC0;
  v18[4] = self;
  v19 = v9;
  v20 = v8;
  v21 = v10;
  v14 = v8;
  v15 = v10;
  v16 = v9;
  dispatch_sync(queue, v18);

  v17 = *MEMORY[0x1E69E9840];
}

void __111__UNUserNotificationServiceConnection_removeSimilarNotificationRequests_forBundleIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_ensureConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __111__UNUserNotificationServiceConnection_removeSimilarNotificationRequests_forBundleIdentifier_completionHandler___block_invoke_2;
  v10[3] = &unk_1E7CFFF98;
  v11 = *(a1 + 40);
  v3 = *(a1 + 56);
  v12 = *(a1 + 32);
  v13 = v3;
  v4 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v10];
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __111__UNUserNotificationServiceConnection_removeSimilarNotificationRequests_forBundleIdentifier_completionHandler___block_invoke_2_54;
  v8[3] = &unk_1E7D000A0;
  v7 = *(a1 + 56);
  v8[4] = *(a1 + 32);
  v9 = v7;
  [v4 removeSimilarNotificationRequests:v5 forBundleIdentifier:v6 completionHandler:v8];
}

void __111__UNUserNotificationServiceConnection_removeSimilarNotificationRequests_forBundleIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_ERROR))
  {
    __111__UNUserNotificationServiceConnection_removeSimilarNotificationRequests_forBundleIdentifier_completionHandler___block_invoke_2_cold_1(a1);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = *(*(a1 + 40) + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __111__UNUserNotificationServiceConnection_removeSimilarNotificationRequests_forBundleIdentifier_completionHandler___block_invoke_53;
    v6[3] = &unk_1E7CFFE08;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __111__UNUserNotificationServiceConnection_removeSimilarNotificationRequests_forBundleIdentifier_completionHandler___block_invoke_2_54(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(*(a1 + 32) + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __111__UNUserNotificationServiceConnection_removeSimilarNotificationRequests_forBundleIdentifier_completionHandler___block_invoke_3;
    block[3] = &unk_1E7CFFE58;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

- (void)removeAllPendingNotificationRequestsForBundleIdentifier:(id)a3 completionHandler:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = v6;
    _os_log_impl(&dword_1B85E3000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Removing all pending notification requests", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __113__UNUserNotificationServiceConnection_removeAllPendingNotificationRequestsForBundleIdentifier_completionHandler___block_invoke;
  block[3] = &unk_1E7CFF8E8;
  block[4] = self;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_sync(queue, block);

  v12 = *MEMORY[0x1E69E9840];
}

void __113__UNUserNotificationServiceConnection_removeAllPendingNotificationRequestsForBundleIdentifier_completionHandler___block_invoke(id *a1)
{
  v2 = [a1[4] _queue_ensureConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __113__UNUserNotificationServiceConnection_removeAllPendingNotificationRequestsForBundleIdentifier_completionHandler___block_invoke_2;
  v9[3] = &unk_1E7CFFF98;
  v10 = a1[5];
  v3 = a1[6];
  v11 = a1[4];
  v12 = v3;
  v4 = [v2 remoteObjectProxyWithErrorHandler:v9];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __113__UNUserNotificationServiceConnection_removeAllPendingNotificationRequestsForBundleIdentifier_completionHandler___block_invoke_2_56;
  v7[3] = &unk_1E7D000A0;
  v5 = a1[5];
  v6 = a1[6];
  v7[4] = a1[4];
  v8 = v6;
  [v4 removeAllPendingNotificationRequestsForBundleIdentifier:v5 completionHandler:v7];
}

void __113__UNUserNotificationServiceConnection_removeAllPendingNotificationRequestsForBundleIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_ERROR))
  {
    __113__UNUserNotificationServiceConnection_removeAllPendingNotificationRequestsForBundleIdentifier_completionHandler___block_invoke_2_cold_1(a1);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = *(*(a1 + 40) + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __113__UNUserNotificationServiceConnection_removeAllPendingNotificationRequestsForBundleIdentifier_completionHandler___block_invoke_55;
    v6[3] = &unk_1E7CFFE08;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __113__UNUserNotificationServiceConnection_removeAllPendingNotificationRequestsForBundleIdentifier_completionHandler___block_invoke_2_56(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(*(a1 + 32) + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __113__UNUserNotificationServiceConnection_removeAllPendingNotificationRequestsForBundleIdentifier_completionHandler___block_invoke_3;
    block[3] = &unk_1E7CFFE58;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

- (id)deliveredNotificationsForBundleIdentifier:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v4;
    _os_log_impl(&dword_1B85E3000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting delivered notifications (sync)", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__UNUserNotificationServiceConnection_deliveredNotificationsForBundleIdentifier___block_invoke;
  block[3] = &unk_1E7CFFEF8;
  block[4] = self;
  v12 = v4;
  p_buf = &buf;
  v7 = v4;
  dispatch_sync(queue, block);
  v8 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void __81__UNUserNotificationServiceConnection_deliveredNotificationsForBundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_ensureConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__UNUserNotificationServiceConnection_deliveredNotificationsForBundleIdentifier___block_invoke_2;
  v10[3] = &unk_1E7CFFA38;
  v11 = *(a1 + 40);
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v10];
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81__UNUserNotificationServiceConnection_deliveredNotificationsForBundleIdentifier___block_invoke_57;
  v7[3] = &unk_1E7D00030;
  v5 = v4;
  v6 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  [v3 getDeliveredNotificationsForBundleIdentifier:v5 withCompletionHandler:v7];
}

void __81__UNUserNotificationServiceConnection_deliveredNotificationsForBundleIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_ERROR))
  {
    __81__UNUserNotificationServiceConnection_deliveredNotificationsForBundleIdentifier___block_invoke_2_cold_1(a1);
  }
}

void __81__UNUserNotificationServiceConnection_deliveredNotificationsForBundleIdentifier___block_invoke_57(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v10 = 138543618;
    v11 = v5;
    v12 = 2048;
    v13 = [v3 count];
    _os_log_impl(&dword_1B85E3000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got %ld delivered notifications", &v10, 0x16u);
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;

  v9 = *MEMORY[0x1E69E9840];
}

- (void)getDeliveredNotificationsForBundleIdentifier:(id)a3 withCompletionHandler:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = v6;
    _os_log_impl(&dword_1B85E3000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting delivered notifications", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __106__UNUserNotificationServiceConnection_getDeliveredNotificationsForBundleIdentifier_withCompletionHandler___block_invoke;
  block[3] = &unk_1E7CFF8E8;
  block[4] = self;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(queue, block);

  v12 = *MEMORY[0x1E69E9840];
}

void __106__UNUserNotificationServiceConnection_getDeliveredNotificationsForBundleIdentifier_withCompletionHandler___block_invoke(id *a1)
{
  v2 = [a1[4] _queue_ensureConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __106__UNUserNotificationServiceConnection_getDeliveredNotificationsForBundleIdentifier_withCompletionHandler___block_invoke_2;
  v12[3] = &unk_1E7CFFE30;
  v3 = a1[5];
  v4 = a1[4];
  v13 = v3;
  v14 = v4;
  v15 = a1[6];
  v5 = [v2 remoteObjectProxyWithErrorHandler:v12];
  v6 = a1[5];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __106__UNUserNotificationServiceConnection_getDeliveredNotificationsForBundleIdentifier_withCompletionHandler___block_invoke_2_59;
  v8[3] = &unk_1E7D000C8;
  v9 = v6;
  v7 = a1[6];
  v10 = a1[4];
  v11 = v7;
  [v5 getDeliveredNotificationsForBundleIdentifier:v9 withCompletionHandler:v8];
}

void __106__UNUserNotificationServiceConnection_getDeliveredNotificationsForBundleIdentifier_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_ERROR))
  {
    __81__UNUserNotificationServiceConnection_deliveredNotificationsForBundleIdentifier___block_invoke_2_cold_1(a1);
  }

  v4 = *(*(a1 + 40) + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __106__UNUserNotificationServiceConnection_getDeliveredNotificationsForBundleIdentifier_withCompletionHandler___block_invoke_58;
  block[3] = &unk_1E7CFF8C0;
  v6 = *(a1 + 48);
  dispatch_async(v4, block);
}

uint64_t __106__UNUserNotificationServiceConnection_getDeliveredNotificationsForBundleIdentifier_withCompletionHandler___block_invoke_58(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __106__UNUserNotificationServiceConnection_getDeliveredNotificationsForBundleIdentifier_withCompletionHandler___block_invoke_2_59(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v3 count];
    v8 = *(a1 + 48) != 0;
    *buf = 138543874;
    v17 = v5;
    v18 = 2048;
    v19 = v7;
    v20 = 1024;
    v21 = v8;
    _os_log_impl(&dword_1B85E3000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got %ld delivered notifications [ hasCompletionHandler: %d ]", buf, 0x1Cu);
  }

  v9 = *(*(a1 + 40) + 32);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __106__UNUserNotificationServiceConnection_getDeliveredNotificationsForBundleIdentifier_withCompletionHandler___block_invoke_60;
  v13[3] = &unk_1E7CFFE08;
  v10 = *(a1 + 48);
  v14 = v3;
  v15 = v10;
  v11 = v3;
  dispatch_async(v9, v13);

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __106__UNUserNotificationServiceConnection_getDeliveredNotificationsForBundleIdentifier_withCompletionHandler___block_invoke_60(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)removeDeliveredNotificationsWithIdentifiers:(id)a3 forBundleIdentifier:(id)a4 completionHandler:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [v8 count];
    v14 = [v8 un_map:&__block_literal_global_62];
    *buf = 138543874;
    v25 = v9;
    v26 = 2048;
    v27 = v13;
    v28 = 2114;
    v29 = v14;
    _os_log_impl(&dword_1B85E3000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Removing %ld delivered notifications with identifiers %{public}@", buf, 0x20u);
  }

  queue = self->_queue;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __121__UNUserNotificationServiceConnection_removeDeliveredNotificationsWithIdentifiers_forBundleIdentifier_completionHandler___block_invoke_63;
  v20[3] = &unk_1E7CFFFC0;
  v20[4] = self;
  v21 = v9;
  v22 = v8;
  v23 = v10;
  v16 = v8;
  v17 = v10;
  v18 = v9;
  dispatch_sync(queue, v20);

  v19 = *MEMORY[0x1E69E9840];
}

void __121__UNUserNotificationServiceConnection_removeDeliveredNotificationsWithIdentifiers_forBundleIdentifier_completionHandler___block_invoke_63(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_ensureConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __121__UNUserNotificationServiceConnection_removeDeliveredNotificationsWithIdentifiers_forBundleIdentifier_completionHandler___block_invoke_2;
  v10[3] = &unk_1E7CFFF98;
  v11 = *(a1 + 40);
  v3 = *(a1 + 56);
  v12 = *(a1 + 32);
  v13 = v3;
  v4 = [v2 remoteObjectProxyWithErrorHandler:v10];
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __121__UNUserNotificationServiceConnection_removeDeliveredNotificationsWithIdentifiers_forBundleIdentifier_completionHandler___block_invoke_2_65;
  v8[3] = &unk_1E7D000A0;
  v7 = *(a1 + 56);
  v8[4] = *(a1 + 32);
  v9 = v7;
  [v4 removeDeliveredNotificationsWithIdentifiers:v5 forBundleIdentifier:v6 completionHandler:v8];
}

void __121__UNUserNotificationServiceConnection_removeDeliveredNotificationsWithIdentifiers_forBundleIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_ERROR))
  {
    __121__UNUserNotificationServiceConnection_removeDeliveredNotificationsWithIdentifiers_forBundleIdentifier_completionHandler___block_invoke_2_cold_1(a1);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = *(*(a1 + 40) + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __121__UNUserNotificationServiceConnection_removeDeliveredNotificationsWithIdentifiers_forBundleIdentifier_completionHandler___block_invoke_64;
    v6[3] = &unk_1E7CFFE08;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __121__UNUserNotificationServiceConnection_removeDeliveredNotificationsWithIdentifiers_forBundleIdentifier_completionHandler___block_invoke_2_65(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(*(a1 + 32) + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __121__UNUserNotificationServiceConnection_removeDeliveredNotificationsWithIdentifiers_forBundleIdentifier_completionHandler___block_invoke_3;
    block[3] = &unk_1E7CFFE58;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

- (void)removeAllDeliveredNotificationsForBundleIdentifier:(id)a3 completionHandler:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = v6;
    _os_log_impl(&dword_1B85E3000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Removing all delivered notifications", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __108__UNUserNotificationServiceConnection_removeAllDeliveredNotificationsForBundleIdentifier_completionHandler___block_invoke;
  block[3] = &unk_1E7CFF8E8;
  block[4] = self;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_sync(queue, block);

  v12 = *MEMORY[0x1E69E9840];
}

void __108__UNUserNotificationServiceConnection_removeAllDeliveredNotificationsForBundleIdentifier_completionHandler___block_invoke(id *a1)
{
  v2 = [a1[4] _queue_ensureConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __108__UNUserNotificationServiceConnection_removeAllDeliveredNotificationsForBundleIdentifier_completionHandler___block_invoke_2;
  v9[3] = &unk_1E7CFFF98;
  v10 = a1[5];
  v3 = a1[6];
  v11 = a1[4];
  v12 = v3;
  v4 = [v2 remoteObjectProxyWithErrorHandler:v9];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __108__UNUserNotificationServiceConnection_removeAllDeliveredNotificationsForBundleIdentifier_completionHandler___block_invoke_2_67;
  v7[3] = &unk_1E7D000A0;
  v5 = a1[5];
  v6 = a1[6];
  v7[4] = a1[4];
  v8 = v6;
  [v4 removeAllDeliveredNotificationsForBundleIdentifier:v5 completionHandler:v7];
}

void __108__UNUserNotificationServiceConnection_removeAllDeliveredNotificationsForBundleIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_ERROR))
  {
    __108__UNUserNotificationServiceConnection_removeAllDeliveredNotificationsForBundleIdentifier_completionHandler___block_invoke_2_cold_1(a1);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = *(*(a1 + 40) + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __108__UNUserNotificationServiceConnection_removeAllDeliveredNotificationsForBundleIdentifier_completionHandler___block_invoke_66;
    v6[3] = &unk_1E7CFFE08;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __108__UNUserNotificationServiceConnection_removeAllDeliveredNotificationsForBundleIdentifier_completionHandler___block_invoke_2_67(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(*(a1 + 32) + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __108__UNUserNotificationServiceConnection_removeAllDeliveredNotificationsForBundleIdentifier_completionHandler___block_invoke_3;
    block[3] = &unk_1E7CFFE58;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

- (id)badgeNumberForBundleIdentifier:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v4;
    _os_log_impl(&dword_1B85E3000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting badge number (sync)", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__UNUserNotificationServiceConnection_badgeNumberForBundleIdentifier___block_invoke;
  block[3] = &unk_1E7CFFEF8;
  block[4] = self;
  v12 = v4;
  p_buf = &buf;
  v7 = v4;
  dispatch_sync(queue, block);
  v8 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void __70__UNUserNotificationServiceConnection_badgeNumberForBundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_ensureConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__UNUserNotificationServiceConnection_badgeNumberForBundleIdentifier___block_invoke_2;
  v10[3] = &unk_1E7CFFA38;
  v11 = *(a1 + 40);
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v10];
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__UNUserNotificationServiceConnection_badgeNumberForBundleIdentifier___block_invoke_68;
  v7[3] = &unk_1E7D000F0;
  v5 = v4;
  v6 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  [v3 getBadgeNumberForBundleIdentifier:v5 withCompletionHandler:v7];
}

void __70__UNUserNotificationServiceConnection_badgeNumberForBundleIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_ERROR))
  {
    __70__UNUserNotificationServiceConnection_badgeNumberForBundleIdentifier___block_invoke_2_cold_1(a1);
  }
}

void __70__UNUserNotificationServiceConnection_badgeNumberForBundleIdentifier___block_invoke_68(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(*(*(a1 + 40) + 8) + 40);
    v10 = 138543618;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_1B85E3000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got badge number [ badge: %@ ]", &v10, 0x16u);
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;

  v9 = *MEMORY[0x1E69E9840];
}

- (void)getBadgeNumberForBundleIdentifier:(id)a3 withCompletionHandler:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = v6;
    _os_log_impl(&dword_1B85E3000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting badge number (async)", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__UNUserNotificationServiceConnection_getBadgeNumberForBundleIdentifier_withCompletionHandler___block_invoke;
  block[3] = &unk_1E7CFF8E8;
  block[4] = self;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(queue, block);

  v12 = *MEMORY[0x1E69E9840];
}

void __95__UNUserNotificationServiceConnection_getBadgeNumberForBundleIdentifier_withCompletionHandler___block_invoke(id *a1)
{
  v2 = [a1[4] _queue_ensureConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __95__UNUserNotificationServiceConnection_getBadgeNumberForBundleIdentifier_withCompletionHandler___block_invoke_2;
  v12[3] = &unk_1E7CFFE30;
  v3 = a1[5];
  v4 = a1[4];
  v13 = v3;
  v14 = v4;
  v15 = a1[6];
  v5 = [v2 remoteObjectProxyWithErrorHandler:v12];
  v6 = a1[5];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __95__UNUserNotificationServiceConnection_getBadgeNumberForBundleIdentifier_withCompletionHandler___block_invoke_2_71;
  v8[3] = &unk_1E7D00118;
  v9 = v6;
  v7 = a1[6];
  v10 = a1[4];
  v11 = v7;
  [v5 getBadgeNumberForBundleIdentifier:v9 withCompletionHandler:v8];
}

void __95__UNUserNotificationServiceConnection_getBadgeNumberForBundleIdentifier_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_ERROR))
  {
    __70__UNUserNotificationServiceConnection_badgeNumberForBundleIdentifier___block_invoke_2_cold_1(a1);
  }

  v4 = *(*(a1 + 40) + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__UNUserNotificationServiceConnection_getBadgeNumberForBundleIdentifier_withCompletionHandler___block_invoke_70;
  block[3] = &unk_1E7CFF8C0;
  v6 = *(a1 + 48);
  dispatch_async(v4, block);
}

uint64_t __95__UNUserNotificationServiceConnection_getBadgeNumberForBundleIdentifier_withCompletionHandler___block_invoke_70(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __95__UNUserNotificationServiceConnection_getBadgeNumberForBundleIdentifier_withCompletionHandler___block_invoke_2_71(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 48) != 0;
    *buf = 138543874;
    v15 = v5;
    v16 = 2112;
    v17 = v3;
    v18 = 1024;
    v19 = v6;
    _os_log_impl(&dword_1B85E3000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got badge number [ badge: %@ hasCompletionHandler: %d ]", buf, 0x1Cu);
  }

  v7 = *(*(a1 + 40) + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __95__UNUserNotificationServiceConnection_getBadgeNumberForBundleIdentifier_withCompletionHandler___block_invoke_72;
  v11[3] = &unk_1E7CFFE08;
  v8 = *(a1 + 48);
  v12 = v3;
  v13 = v8;
  v9 = v3;
  dispatch_async(v7, v11);

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __95__UNUserNotificationServiceConnection_getBadgeNumberForBundleIdentifier_withCompletionHandler___block_invoke_72(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)setBadgeNumber:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v22 = v9;
    v23 = 2114;
    v24 = v8;
    _os_log_impl(&dword_1B85E3000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Setting badge number to %{public}@", buf, 0x16u);
  }

  queue = self->_queue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __96__UNUserNotificationServiceConnection_setBadgeNumber_forBundleIdentifier_withCompletionHandler___block_invoke;
  v17[3] = &unk_1E7CFFFC0;
  v17[4] = self;
  v18 = v9;
  v19 = v8;
  v20 = v10;
  v13 = v8;
  v14 = v10;
  v15 = v9;
  dispatch_sync(queue, v17);

  v16 = *MEMORY[0x1E69E9840];
}

void __96__UNUserNotificationServiceConnection_setBadgeNumber_forBundleIdentifier_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_ensureConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __96__UNUserNotificationServiceConnection_setBadgeNumber_forBundleIdentifier_withCompletionHandler___block_invoke_2;
  v13[3] = &unk_1E7CFFE30;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v14 = v3;
  v15 = v4;
  v16 = *(a1 + 56);
  v5 = [v2 remoteObjectProxyWithErrorHandler:v13];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __96__UNUserNotificationServiceConnection_setBadgeNumber_forBundleIdentifier_withCompletionHandler___block_invoke_2_74;
  v9[3] = &unk_1E7CFFF98;
  v10 = v6;
  v8 = *(a1 + 56);
  v11 = *(a1 + 32);
  v12 = v8;
  [v5 setBadgeNumber:v7 forBundleIdentifier:v10 withCompletionHandler:v9];
}

void __96__UNUserNotificationServiceConnection_setBadgeNumber_forBundleIdentifier_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_ERROR))
  {
    __96__UNUserNotificationServiceConnection_setBadgeNumber_forBundleIdentifier_withCompletionHandler___block_invoke_2_cold_1(a1);
  }

  v4 = *(*(a1 + 40) + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __96__UNUserNotificationServiceConnection_setBadgeNumber_forBundleIdentifier_withCompletionHandler___block_invoke_73;
  v7[3] = &unk_1E7CFFE08;
  v5 = *(a1 + 48);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __96__UNUserNotificationServiceConnection_setBadgeNumber_forBundleIdentifier_withCompletionHandler___block_invoke_73(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void __96__UNUserNotificationServiceConnection_setBadgeNumber_forBundleIdentifier_withCompletionHandler___block_invoke_2_74(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 48) != 0;
    *buf = 138543874;
    v15 = v5;
    v16 = 1024;
    v17 = v6;
    v18 = 1024;
    v19 = v3 != 0;
    _os_log_impl(&dword_1B85E3000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set badge number [ hasCompletionHandler: %d hasError: %d ]", buf, 0x18u);
  }

  v7 = *(*(a1 + 40) + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __96__UNUserNotificationServiceConnection_setBadgeNumber_forBundleIdentifier_withCompletionHandler___block_invoke_75;
  v11[3] = &unk_1E7CFFE08;
  v8 = *(a1 + 48);
  v12 = v3;
  v13 = v8;
  v9 = v3;
  dispatch_async(v7, v11);

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __96__UNUserNotificationServiceConnection_setBadgeNumber_forBundleIdentifier_withCompletionHandler___block_invoke_75(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)setBadgeCount:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v22 = v9;
    v23 = 2114;
    v24 = v8;
    _os_log_impl(&dword_1B85E3000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Setting badge count to %{public}@", buf, 0x16u);
  }

  queue = self->_queue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __95__UNUserNotificationServiceConnection_setBadgeCount_forBundleIdentifier_withCompletionHandler___block_invoke;
  v17[3] = &unk_1E7CFFFC0;
  v17[4] = self;
  v18 = v9;
  v19 = v8;
  v20 = v10;
  v13 = v8;
  v14 = v10;
  v15 = v9;
  dispatch_sync(queue, v17);

  v16 = *MEMORY[0x1E69E9840];
}

void __95__UNUserNotificationServiceConnection_setBadgeCount_forBundleIdentifier_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_ensureConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __95__UNUserNotificationServiceConnection_setBadgeCount_forBundleIdentifier_withCompletionHandler___block_invoke_2;
  v13[3] = &unk_1E7CFFE30;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v14 = v3;
  v15 = v4;
  v16 = *(a1 + 56);
  v5 = [v2 remoteObjectProxyWithErrorHandler:v13];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __95__UNUserNotificationServiceConnection_setBadgeCount_forBundleIdentifier_withCompletionHandler___block_invoke_2_77;
  v9[3] = &unk_1E7CFFF98;
  v10 = v6;
  v8 = *(a1 + 56);
  v11 = *(a1 + 32);
  v12 = v8;
  [v5 setBadgeCount:v7 forBundleIdentifier:v10 withCompletionHandler:v9];
}

void __95__UNUserNotificationServiceConnection_setBadgeCount_forBundleIdentifier_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_ERROR))
  {
    __95__UNUserNotificationServiceConnection_setBadgeCount_forBundleIdentifier_withCompletionHandler___block_invoke_2_cold_1(a1);
  }

  v4 = *(*(a1 + 40) + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __95__UNUserNotificationServiceConnection_setBadgeCount_forBundleIdentifier_withCompletionHandler___block_invoke_76;
  v7[3] = &unk_1E7CFFE08;
  v5 = *(a1 + 48);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __95__UNUserNotificationServiceConnection_setBadgeCount_forBundleIdentifier_withCompletionHandler___block_invoke_76(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void __95__UNUserNotificationServiceConnection_setBadgeCount_forBundleIdentifier_withCompletionHandler___block_invoke_2_77(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 48) != 0;
    *buf = 138543874;
    v15 = v5;
    v16 = 1024;
    v17 = v6;
    v18 = 1024;
    v19 = v3 != 0;
    _os_log_impl(&dword_1B85E3000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set badge count [ hasCompletionHandler: %d hasError: %d ]", buf, 0x18u);
  }

  v7 = *(*(a1 + 40) + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __95__UNUserNotificationServiceConnection_setBadgeCount_forBundleIdentifier_withCompletionHandler___block_invoke_78;
  v11[3] = &unk_1E7CFFE08;
  v8 = *(a1 + 48);
  v12 = v3;
  v13 = v8;
  v9 = v3;
  dispatch_async(v7, v11);

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __95__UNUserNotificationServiceConnection_setBadgeCount_forBundleIdentifier_withCompletionHandler___block_invoke_78(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)setBadgeString:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v22 = v9;
    v23 = 2114;
    v24 = v8;
    _os_log_impl(&dword_1B85E3000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Setting badge string to %{public}@", buf, 0x16u);
  }

  queue = self->_queue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __96__UNUserNotificationServiceConnection_setBadgeString_forBundleIdentifier_withCompletionHandler___block_invoke;
  v17[3] = &unk_1E7CFFFC0;
  v17[4] = self;
  v18 = v9;
  v19 = v8;
  v20 = v10;
  v13 = v8;
  v14 = v10;
  v15 = v9;
  dispatch_sync(queue, v17);

  v16 = *MEMORY[0x1E69E9840];
}

void __96__UNUserNotificationServiceConnection_setBadgeString_forBundleIdentifier_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_ensureConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __96__UNUserNotificationServiceConnection_setBadgeString_forBundleIdentifier_withCompletionHandler___block_invoke_2;
  v13[3] = &unk_1E7CFFE30;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v14 = v3;
  v15 = v4;
  v16 = *(a1 + 56);
  v5 = [v2 remoteObjectProxyWithErrorHandler:v13];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __96__UNUserNotificationServiceConnection_setBadgeString_forBundleIdentifier_withCompletionHandler___block_invoke_2_80;
  v9[3] = &unk_1E7CFFF98;
  v10 = v6;
  v8 = *(a1 + 56);
  v11 = *(a1 + 32);
  v12 = v8;
  [v5 setBadgeString:v7 forBundleIdentifier:v10 withCompletionHandler:v9];
}

void __96__UNUserNotificationServiceConnection_setBadgeString_forBundleIdentifier_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_ERROR))
  {
    __96__UNUserNotificationServiceConnection_setBadgeString_forBundleIdentifier_withCompletionHandler___block_invoke_2_cold_1(a1);
  }

  v4 = *(*(a1 + 40) + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __96__UNUserNotificationServiceConnection_setBadgeString_forBundleIdentifier_withCompletionHandler___block_invoke_79;
  v7[3] = &unk_1E7CFFE08;
  v5 = *(a1 + 48);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __96__UNUserNotificationServiceConnection_setBadgeString_forBundleIdentifier_withCompletionHandler___block_invoke_79(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void __96__UNUserNotificationServiceConnection_setBadgeString_forBundleIdentifier_withCompletionHandler___block_invoke_2_80(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 48) != 0;
    *buf = 138543874;
    v15 = v5;
    v16 = 1024;
    v17 = v6;
    v18 = 1024;
    v19 = v3 != 0;
    _os_log_impl(&dword_1B85E3000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set badge string [ hasCompletionHandler: %d hasError: %d ]", buf, 0x18u);
  }

  v7 = *(*(a1 + 40) + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __96__UNUserNotificationServiceConnection_setBadgeString_forBundleIdentifier_withCompletionHandler___block_invoke_81;
  v11[3] = &unk_1E7CFFE08;
  v8 = *(a1 + 48);
  v12 = v3;
  v13 = v8;
  v9 = v3;
  dispatch_async(v7, v11);

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __96__UNUserNotificationServiceConnection_setBadgeString_forBundleIdentifier_withCompletionHandler___block_invoke_81(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)setNotificationTopics:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v22 = v9;
    v23 = 2114;
    v24 = v8;
    _os_log_impl(&dword_1B85E3000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Setting topics %{public}@", buf, 0x16u);
  }

  queue = self->_queue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __103__UNUserNotificationServiceConnection_setNotificationTopics_forBundleIdentifier_withCompletionHandler___block_invoke;
  v17[3] = &unk_1E7CFFFC0;
  v17[4] = self;
  v18 = v9;
  v19 = v8;
  v20 = v10;
  v13 = v8;
  v14 = v10;
  v15 = v9;
  dispatch_sync(queue, v17);

  v16 = *MEMORY[0x1E69E9840];
}

void __103__UNUserNotificationServiceConnection_setNotificationTopics_forBundleIdentifier_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_ensureConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __103__UNUserNotificationServiceConnection_setNotificationTopics_forBundleIdentifier_withCompletionHandler___block_invoke_2;
  v13[3] = &unk_1E7CFFE30;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v14 = v3;
  v15 = v4;
  v16 = *(a1 + 56);
  v5 = [v2 remoteObjectProxyWithErrorHandler:v13];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __103__UNUserNotificationServiceConnection_setNotificationTopics_forBundleIdentifier_withCompletionHandler___block_invoke_2_83;
  v9[3] = &unk_1E7CFFF98;
  v10 = v6;
  v8 = *(a1 + 56);
  v11 = *(a1 + 32);
  v12 = v8;
  [v5 setNotificationTopics:v7 forBundleIdentifier:v10 withCompletionHandler:v9];
}

void __103__UNUserNotificationServiceConnection_setNotificationTopics_forBundleIdentifier_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_ERROR))
  {
    __103__UNUserNotificationServiceConnection_setNotificationTopics_forBundleIdentifier_withCompletionHandler___block_invoke_2_cold_1(a1);
  }

  v4 = *(*(a1 + 40) + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __103__UNUserNotificationServiceConnection_setNotificationTopics_forBundleIdentifier_withCompletionHandler___block_invoke_82;
  v7[3] = &unk_1E7CFFE08;
  v5 = *(a1 + 48);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __103__UNUserNotificationServiceConnection_setNotificationTopics_forBundleIdentifier_withCompletionHandler___block_invoke_82(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void __103__UNUserNotificationServiceConnection_setNotificationTopics_forBundleIdentifier_withCompletionHandler___block_invoke_2_83(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 48) != 0;
    *buf = 138543874;
    v15 = v5;
    v16 = 1024;
    v17 = v6;
    v18 = 1024;
    v19 = v3 != 0;
    _os_log_impl(&dword_1B85E3000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set topics [ hasCompletionHandler: %d hasError: %d ]", buf, 0x18u);
  }

  v7 = *(*(a1 + 40) + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __103__UNUserNotificationServiceConnection_setNotificationTopics_forBundleIdentifier_withCompletionHandler___block_invoke_84;
  v11[3] = &unk_1E7CFFE08;
  v8 = *(a1 + 48);
  v12 = v3;
  v13 = v8;
  v9 = v3;
  dispatch_async(v7, v11);

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __103__UNUserNotificationServiceConnection_setNotificationTopics_forBundleIdentifier_withCompletionHandler___block_invoke_84(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)getNotificationTopicsForBundleIdentifier:(id)a3 withCompletionHandler:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = v6;
    _os_log_impl(&dword_1B85E3000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting topics", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __102__UNUserNotificationServiceConnection_getNotificationTopicsForBundleIdentifier_withCompletionHandler___block_invoke;
  block[3] = &unk_1E7CFF8E8;
  block[4] = self;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(queue, block);

  v12 = *MEMORY[0x1E69E9840];
}

void __102__UNUserNotificationServiceConnection_getNotificationTopicsForBundleIdentifier_withCompletionHandler___block_invoke(id *a1)
{
  v2 = [a1[4] _queue_ensureConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __102__UNUserNotificationServiceConnection_getNotificationTopicsForBundleIdentifier_withCompletionHandler___block_invoke_2;
  v12[3] = &unk_1E7CFFE30;
  v3 = a1[5];
  v4 = a1[4];
  v13 = v3;
  v14 = v4;
  v15 = a1[6];
  v5 = [v2 remoteObjectProxyWithErrorHandler:v12];
  v6 = a1[5];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __102__UNUserNotificationServiceConnection_getNotificationTopicsForBundleIdentifier_withCompletionHandler___block_invoke_2_86;
  v8[3] = &unk_1E7CFFF70;
  v9 = v6;
  v7 = a1[6];
  v10 = a1[4];
  v11 = v7;
  [v5 getNotificationTopicsForBundleIdentifier:v9 withCompletionHandler:v8];
}

void __102__UNUserNotificationServiceConnection_getNotificationTopicsForBundleIdentifier_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_ERROR))
  {
    __102__UNUserNotificationServiceConnection_getNotificationTopicsForBundleIdentifier_withCompletionHandler___block_invoke_2_cold_1(a1);
  }

  v4 = *(*(a1 + 40) + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __102__UNUserNotificationServiceConnection_getNotificationTopicsForBundleIdentifier_withCompletionHandler___block_invoke_85;
  block[3] = &unk_1E7CFF8C0;
  v6 = *(a1 + 48);
  dispatch_async(v4, block);
}

uint64_t __102__UNUserNotificationServiceConnection_getNotificationTopicsForBundleIdentifier_withCompletionHandler___block_invoke_85(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __102__UNUserNotificationServiceConnection_getNotificationTopicsForBundleIdentifier_withCompletionHandler___block_invoke_2_86(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 48) != 0;
    *buf = 138543618;
    v15 = v5;
    v16 = 1024;
    v17 = v6;
    _os_log_impl(&dword_1B85E3000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Get topics [ hasCompletionHandler: %d ]", buf, 0x12u);
  }

  v7 = *(*(a1 + 40) + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __102__UNUserNotificationServiceConnection_getNotificationTopicsForBundleIdentifier_withCompletionHandler___block_invoke_87;
  v11[3] = &unk_1E7CFFE08;
  v8 = *(a1 + 48);
  v12 = v3;
  v13 = v8;
  v9 = v3;
  dispatch_async(v7, v11);

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __102__UNUserNotificationServiceConnection_getNotificationTopicsForBundleIdentifier_withCompletionHandler___block_invoke_87(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (id)notificationTopicsForBundleIdentifier:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v4;
    _os_log_impl(&dword_1B85E3000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting topics (sync)", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__UNUserNotificationServiceConnection_notificationTopicsForBundleIdentifier___block_invoke;
  block[3] = &unk_1E7CFFEF8;
  block[4] = self;
  v12 = v4;
  p_buf = &buf;
  v7 = v4;
  dispatch_sync(queue, block);
  v8 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void __77__UNUserNotificationServiceConnection_notificationTopicsForBundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_ensureConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__UNUserNotificationServiceConnection_notificationTopicsForBundleIdentifier___block_invoke_2;
  v10[3] = &unk_1E7CFFA38;
  v11 = *(a1 + 40);
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v10];
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__UNUserNotificationServiceConnection_notificationTopicsForBundleIdentifier___block_invoke_88;
  v7[3] = &unk_1E7CFFF48;
  v5 = v4;
  v6 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  [v3 getNotificationTopicsForBundleIdentifier:v5 withCompletionHandler:v7];
}

void __77__UNUserNotificationServiceConnection_notificationTopicsForBundleIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_ERROR))
  {
    __102__UNUserNotificationServiceConnection_getNotificationTopicsForBundleIdentifier_withCompletionHandler___block_invoke_2_cold_1(a1);
  }
}

void __77__UNUserNotificationServiceConnection_notificationTopicsForBundleIdentifier___block_invoke_88(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v10 = 138543618;
    v11 = v5;
    v12 = 2048;
    v13 = [v3 count];
    _os_log_impl(&dword_1B85E3000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got %ld topics", &v10, 0x16u);
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;

  v9 = *MEMORY[0x1E69E9840];
}

- (void)getNotificationSettingsForTopicsWithBundleIdentifier:(id)a3 withCompletionHandler:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = v6;
    _os_log_impl(&dword_1B85E3000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting topic settings", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __114__UNUserNotificationServiceConnection_getNotificationSettingsForTopicsWithBundleIdentifier_withCompletionHandler___block_invoke;
  block[3] = &unk_1E7CFF8E8;
  block[4] = self;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(queue, block);

  v12 = *MEMORY[0x1E69E9840];
}

void __114__UNUserNotificationServiceConnection_getNotificationSettingsForTopicsWithBundleIdentifier_withCompletionHandler___block_invoke(id *a1)
{
  v2 = [a1[4] _queue_ensureConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __114__UNUserNotificationServiceConnection_getNotificationSettingsForTopicsWithBundleIdentifier_withCompletionHandler___block_invoke_2;
  v12[3] = &unk_1E7CFFE30;
  v3 = a1[5];
  v4 = a1[4];
  v13 = v3;
  v14 = v4;
  v15 = a1[6];
  v5 = [v2 remoteObjectProxyWithErrorHandler:v12];
  v6 = a1[5];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __114__UNUserNotificationServiceConnection_getNotificationSettingsForTopicsWithBundleIdentifier_withCompletionHandler___block_invoke_2_90;
  v8[3] = &unk_1E7D00140;
  v9 = v6;
  v7 = a1[6];
  v10 = a1[4];
  v11 = v7;
  [v5 getNotificationSettingsForTopicsWithBundleIdentifier:v9 withCompletionHandler:v8];
}

void __114__UNUserNotificationServiceConnection_getNotificationSettingsForTopicsWithBundleIdentifier_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_ERROR))
  {
    __114__UNUserNotificationServiceConnection_getNotificationSettingsForTopicsWithBundleIdentifier_withCompletionHandler___block_invoke_2_cold_1(a1);
  }

  v4 = *(*(a1 + 40) + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __114__UNUserNotificationServiceConnection_getNotificationSettingsForTopicsWithBundleIdentifier_withCompletionHandler___block_invoke_89;
  block[3] = &unk_1E7CFF8C0;
  v6 = *(a1 + 48);
  dispatch_async(v4, block);
}

uint64_t __114__UNUserNotificationServiceConnection_getNotificationSettingsForTopicsWithBundleIdentifier_withCompletionHandler___block_invoke_89(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __114__UNUserNotificationServiceConnection_getNotificationSettingsForTopicsWithBundleIdentifier_withCompletionHandler___block_invoke_2_90(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 48) != 0;
    *buf = 138543618;
    v15 = v5;
    v16 = 1024;
    v17 = v6;
    _os_log_impl(&dword_1B85E3000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Get topic settings [ hasCompletionHandler: %d ]", buf, 0x12u);
  }

  v7 = *(*(a1 + 40) + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __114__UNUserNotificationServiceConnection_getNotificationSettingsForTopicsWithBundleIdentifier_withCompletionHandler___block_invoke_91;
  v11[3] = &unk_1E7CFFE08;
  v8 = *(a1 + 48);
  v12 = v3;
  v13 = v8;
  v9 = v3;
  dispatch_async(v7, v11);

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __114__UNUserNotificationServiceConnection_getNotificationSettingsForTopicsWithBundleIdentifier_withCompletionHandler___block_invoke_91(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (id)notificationSettingsForTopicsWithBundleIdentifier:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v4;
    _os_log_impl(&dword_1B85E3000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting topic settings (sync)", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__UNUserNotificationServiceConnection_notificationSettingsForTopicsWithBundleIdentifier___block_invoke;
  block[3] = &unk_1E7CFFEF8;
  block[4] = self;
  v12 = v4;
  p_buf = &buf;
  v7 = v4;
  dispatch_sync(queue, block);
  v8 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void __89__UNUserNotificationServiceConnection_notificationSettingsForTopicsWithBundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_ensureConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __89__UNUserNotificationServiceConnection_notificationSettingsForTopicsWithBundleIdentifier___block_invoke_2;
  v10[3] = &unk_1E7CFFA38;
  v11 = *(a1 + 40);
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v10];
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __89__UNUserNotificationServiceConnection_notificationSettingsForTopicsWithBundleIdentifier___block_invoke_93;
  v7[3] = &unk_1E7D00168;
  v5 = v4;
  v6 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  [v3 getNotificationSettingsForTopicsWithBundleIdentifier:v5 withCompletionHandler:v7];
}

void __89__UNUserNotificationServiceConnection_notificationSettingsForTopicsWithBundleIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_ERROR))
  {
    __114__UNUserNotificationServiceConnection_getNotificationSettingsForTopicsWithBundleIdentifier_withCompletionHandler___block_invoke_2_cold_1(a1);
  }
}

void __89__UNUserNotificationServiceConnection_notificationSettingsForTopicsWithBundleIdentifier___block_invoke_93(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v10 = 138543618;
    v11 = v5;
    v12 = 2048;
    v13 = [v3 count];
    _os_log_impl(&dword_1B85E3000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got %ld topic settings", &v10, 0x16u);
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;

  v9 = *MEMORY[0x1E69E9840];
}

- (id)clearedInfoForBundleIdentifier:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v4;
    _os_log_impl(&dword_1B85E3000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting cleared info (sync)", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__UNUserNotificationServiceConnection_clearedInfoForBundleIdentifier___block_invoke;
  block[3] = &unk_1E7CFFEF8;
  block[4] = self;
  v12 = v4;
  p_buf = &buf;
  v7 = v4;
  dispatch_sync(queue, block);
  v8 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void __70__UNUserNotificationServiceConnection_clearedInfoForBundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_ensureConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__UNUserNotificationServiceConnection_clearedInfoForBundleIdentifier___block_invoke_2;
  v10[3] = &unk_1E7CFFA38;
  v11 = *(a1 + 40);
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v10];
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__UNUserNotificationServiceConnection_clearedInfoForBundleIdentifier___block_invoke_94;
  v7[3] = &unk_1E7D00190;
  v5 = v4;
  v6 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  [v3 getClearedInfoForDataProviderMigrationWithBundleIdentifier:v5 withCompletionHandler:v7];
}

void __70__UNUserNotificationServiceConnection_clearedInfoForBundleIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_ERROR))
  {
    __70__UNUserNotificationServiceConnection_clearedInfoForBundleIdentifier___block_invoke_2_cold_1(a1);
  }
}

void __70__UNUserNotificationServiceConnection_clearedInfoForBundleIdentifier___block_invoke_94(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_1B85E3000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got cleared info", &v9, 0xCu);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x1E69E9840];
}

- (void)performBlockOnConnectionQueue:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__UNUserNotificationServiceConnection_performBlockOnConnectionQueue___block_invoke;
  block[3] = &unk_1E7CFF8C0;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, block);
}

uint64_t __69__UNUserNotificationServiceConnection_performBlockOnConnectionQueue___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)didReceiveDeviceToken:(id)a3 forBundleIdentifier:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = v7;
    _os_log_impl(&dword_1B85E3000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Did receive remote notification token", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__UNUserNotificationServiceConnection_didReceiveDeviceToken_forBundleIdentifier___block_invoke;
  block[3] = &unk_1E7CFF870;
  block[4] = self;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(queue, block);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_invalidate
{
  [(NSXPCConnection *)self->_connection invalidate];
  [(NSXPCConnection *)self->_connection setInterruptionHandler:0];
  [(NSXPCConnection *)self->_connection setInvalidationHandler:0];
  [(NSXPCConnection *)self->_connection setExportedObject:0];

  [(UNUserNotificationServiceConnection *)self setConnection:0];
}

void __62__UNUserNotificationServiceConnection__queue_ensureConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__UNUserNotificationServiceConnection__queue_ensureConnection__block_invoke_2;
    block[3] = &unk_1E7CFFA60;
    objc_copyWeak(&v4, (a1 + 40));
    dispatch_async(WeakRetained, block);
    objc_destroyWeak(&v4);
  }
}

void __62__UNUserNotificationServiceConnection__queue_ensureConnection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_interruptedConnection];
}

void __62__UNUserNotificationServiceConnection__queue_ensureConnection__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__UNUserNotificationServiceConnection__queue_ensureConnection__block_invoke_4;
    block[3] = &unk_1E7CFFA60;
    objc_copyWeak(&v4, (a1 + 40));
    dispatch_async(WeakRetained, block);
    objc_destroyWeak(&v4);
  }
}

void __62__UNUserNotificationServiceConnection__queue_ensureConnection__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_invalidatedConnection];
}

- (void)_queue_invalidatedConnection
{
  dispatch_assert_queue_V2(self->_queue);

  [(UNUserNotificationServiceConnection *)self _invalidate];
}

- (void)_queue_didReceiveDeviceToken:(id)a3 forBundleIdentifier:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = [(NSMutableDictionary *)self->_observersByBundleIdentifier objectForKey:v7];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 didReceiveDeviceToken:v6 forBundleIdentifier:v7];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_queue_addObserver:(id)a3 forBundleIdentifier:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (v10)
  {
    v7 = [(NSMutableDictionary *)self->_observersByBundleIdentifier objectForKey:v6];
    if (!v7)
    {
      v7 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:4];
      [(NSMutableDictionary *)self->_observersByBundleIdentifier setObject:v7 forKey:v6];
    }

    [v7 addObject:v10];
    if ([v7 count])
    {
      v8 = [(UNUserNotificationServiceConnection *)self _queue_ensureConnection];
      v9 = [v8 remoteObjectProxy];
      [v9 setObservingUserNotifications:1 forBundleIdentifier:v6];
    }
  }
}

- (void)_queue_removeObserver:(id)a3 forBundleIdentifier:(id)a4
{
  v11 = a4;
  observersByBundleIdentifier = self->_observersByBundleIdentifier;
  v7 = a3;
  v8 = [(NSMutableDictionary *)observersByBundleIdentifier objectForKey:v11];
  [v8 removeObject:v7];

  if (![v8 count])
  {
    [(NSMutableDictionary *)self->_observersByBundleIdentifier removeObjectForKey:v11];
    v9 = [(UNUserNotificationServiceConnection *)self _queue_ensureConnection];
    v10 = [v9 remoteObjectProxy];
    [v10 setObservingUserNotifications:0 forBundleIdentifier:v11];
  }
}

void __109__UNUserNotificationServiceConnection_requestAuthorizationWithOptions_forBundleIdentifier_completionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_1B85E3000, v1, v2, "[%{public}@] Requesting authorization failed with error: %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __103__UNUserNotificationServiceConnection_requestRemoveAuthorizationForBundleIdentifier_completionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_1B85E3000, v1, v2, "[%{public}@] Requesting remove authorization failed with error: %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __79__UNUserNotificationServiceConnection_notificationSettingsForBundleIdentifier___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_1B85E3000, v1, v2, "[%{public}@] Getting notification settings failed with error: %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __81__UNUserNotificationServiceConnection_notificationCategoriesForBundleIdentifier___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_1B85E3000, v1, v2, "[%{public}@] Getting notification categories failed with error: %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

- (void)addNotificationRequest:(uint64_t)a1 forBundleIdentifier:(void *)a2 withCompletionHandler:.cold.1(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_3(v3);
  OUTLINED_FUNCTION_4(&dword_1B85E3000, v5, v6, "[%{public}@] Expected a UNNotificationRequest: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __104__UNUserNotificationServiceConnection_addNotificationRequest_forBundleIdentifier_withCompletionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_1B85E3000, v1, v2, "[%{public}@] Adding notification request failed with error: %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

- (void)replaceContentForRequestWithIdentifier:(uint64_t)a1 bundleIdentifier:(void *)a2 replacementContent:completionHandler:.cold.1(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_3(v3);
  OUTLINED_FUNCTION_4(&dword_1B85E3000, v5, v6, "[%{public}@] Expected a UNNotificationContent: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __132__UNUserNotificationServiceConnection_replaceContentForRequestWithIdentifier_bundleIdentifier_replacementContent_completionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_1B85E3000, v1, v2, "[%{public}@] Replacing notification content failed with error: %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __101__UNUserNotificationServiceConnection_setNotificationRequests_forBundleIdentifier_completionHandler___block_invoke_42_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_1B85E3000, v1, v2, "[%{public}@] Setting notification requests failed with error: %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __86__UNUserNotificationServiceConnection_pendingNotificationRequestsForBundleIdentifier___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_1B85E3000, v1, v2, "[%{public}@] Getting pending notification requests failed with error: %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __111__UNUserNotificationServiceConnection_getPendingNotificationRequestsForBundleIdentifier_withCompletionHandler___block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = 138543618;
  v6 = v2;
  v7 = 2114;
  v8 = v3;
  _os_log_error_impl(&dword_1B85E3000, a2, OS_LOG_TYPE_ERROR, "[%{public}@] Getting pending notification requests failed with error: %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void __126__UNUserNotificationServiceConnection_removePendingNotificationRequestsWithIdentifiers_forBundleIdentifier_completionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_1B85E3000, v1, v2, "[%{public}@] Removing pending notification with error: %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __111__UNUserNotificationServiceConnection_removeSimilarNotificationRequests_forBundleIdentifier_completionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_1B85E3000, v1, v2, "[%{public}@] Getting similar pending notification requests failed with error: %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __113__UNUserNotificationServiceConnection_removeAllPendingNotificationRequestsForBundleIdentifier_completionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_1B85E3000, v1, v2, "[%{public}@] Removing all pending notification requests with error: %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __81__UNUserNotificationServiceConnection_deliveredNotificationsForBundleIdentifier___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_1B85E3000, v1, v2, "[%{public}@] Getting delivered notifications failed with error: %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __121__UNUserNotificationServiceConnection_removeDeliveredNotificationsWithIdentifiers_forBundleIdentifier_completionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_1B85E3000, v1, v2, "[%{public}@] Removing delivered notifications with error: %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __108__UNUserNotificationServiceConnection_removeAllDeliveredNotificationsForBundleIdentifier_completionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_1B85E3000, v1, v2, "[%{public}@] Removing all delivered notifications with error: %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __70__UNUserNotificationServiceConnection_badgeNumberForBundleIdentifier___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_1B85E3000, v1, v2, "[%{public}@] Getting badge number failed with error: %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __96__UNUserNotificationServiceConnection_setBadgeNumber_forBundleIdentifier_withCompletionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_1B85E3000, v1, v2, "[%{public}@] Setting badge number failed with error: %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __95__UNUserNotificationServiceConnection_setBadgeCount_forBundleIdentifier_withCompletionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_1B85E3000, v1, v2, "[%{public}@] Setting badge count failed with error: %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __96__UNUserNotificationServiceConnection_setBadgeString_forBundleIdentifier_withCompletionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_1B85E3000, v1, v2, "[%{public}@] Setting badge string failed with error: %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __103__UNUserNotificationServiceConnection_setNotificationTopics_forBundleIdentifier_withCompletionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_1B85E3000, v1, v2, "[%{public}@] Setting topics failed with error: %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __102__UNUserNotificationServiceConnection_getNotificationTopicsForBundleIdentifier_withCompletionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_1B85E3000, v1, v2, "[%{public}@] Getting topics failed with error: %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __114__UNUserNotificationServiceConnection_getNotificationSettingsForTopicsWithBundleIdentifier_withCompletionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_1B85E3000, v1, v2, "[%{public}@] Getting topic settings failed with error: %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __70__UNUserNotificationServiceConnection_clearedInfoForBundleIdentifier___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_1B85E3000, v1, v2, "[%{public}@] Getting cleared info failed with error: %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

@end