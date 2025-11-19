@interface UNUserNotificationCenterDelegateConnectionListener
+ (id)sharedInstance;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (UNUserNotificationCenterDelegateConnectionListener)init;
- (void)_queue_didChangeSettings:(id)a3 forBundleIdentifier:(id)a4;
- (void)_queue_didOpenApplicationForResponse:(id)a3 forBundleIdentifier:(id)a4;
- (void)_queue_didReceiveNotificationResponse:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5;
- (void)_queue_ensureListenerForBundleIdentifier:(id)a3;
- (void)_queue_invalidateListenerForBundleIdentifier:(id)a3;
- (void)_queue_setDelegate:(id)a3 forBundleIdentifier:(id)a4;
- (void)didChangeSettings:(id)a3 forBundleIdentifier:(id)a4;
- (void)didOpenApplicationForResponse:(id)a3 forBundleIdentifier:(id)a4;
- (void)didReceiveNotificationResponse:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5;
- (void)setDelegate:(id)a3 forBundleIdentifier:(id)a4;
@end

@implementation UNUserNotificationCenterDelegateConnectionListener

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[UNUserNotificationCenterDelegateConnectionListener sharedInstance];
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

uint64_t __68__UNUserNotificationCenterDelegateConnectionListener_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance = objc_alloc_init(UNUserNotificationCenterDelegateConnectionListener);

  return MEMORY[0x1EEE66BB8]();
}

- (UNUserNotificationCenterDelegateConnectionListener)init
{
  v14.receiver = self;
  v14.super_class = UNUserNotificationCenterDelegateConnectionListener;
  v2 = [(UNUserNotificationCenterDelegateConnectionListener *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    listenerByBundleIdentifier = v2->_listenerByBundleIdentifier;
    v2->_listenerByBundleIdentifier = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    delegateByBundleIdentifier = v2->_delegateByBundleIdentifier;
    v2->_delegateByBundleIdentifier = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.usernotifications.DelegateConnectionListener", v7);
    queue = v2->_queue;
    v2->_queue = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.usernotifications.DelegateConnectionListener.call-out", v10);
    callOutQueue = v2->_callOutQueue;
    v2->_callOutQueue = v11;
  }

  return v2;
}

- (void)setDelegate:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__UNUserNotificationCenterDelegateConnectionListener_setDelegate_forBundleIdentifier___block_invoke;
  block[3] = &unk_1E7CFF870;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)didReceiveNotificationResponse:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __127__UNUserNotificationCenterDelegateConnectionListener_didReceiveNotificationResponse_forBundleIdentifier_withCompletionHandler___block_invoke;
  v15[3] = &unk_1E7CFF898;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

- (void)didChangeSettings:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__UNUserNotificationCenterDelegateConnectionListener_didChangeSettings_forBundleIdentifier___block_invoke;
  block[3] = &unk_1E7CFF870;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)didOpenApplicationForResponse:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104__UNUserNotificationCenterDelegateConnectionListener_didOpenApplicationForResponse_forBundleIdentifier___block_invoke;
  block[3] = &unk_1E7CFF870;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = +[UNUserNotificationCenterDelegateService serverInterface];
  [v5 setExportedInterface:v6];

  [v5 setExportedObject:self];
  [v5 setInterruptionHandler:&__block_literal_global_6];
  [v5 setInvalidationHandler:&__block_literal_global_9];
  [v5 resume];

  return 1;
}

void __89__UNUserNotificationCenterDelegateConnectionListener_listener_shouldAcceptNewConnection___block_invoke()
{
  v0 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B85E3000, v0, OS_LOG_TYPE_DEFAULT, "delegate connection interrupted", v1, 2u);
  }
}

void __89__UNUserNotificationCenterDelegateConnectionListener_listener_shouldAcceptNewConnection___block_invoke_7()
{
  v0 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B85E3000, v0, OS_LOG_TYPE_DEFAULT, "delegate connection invalidated", v1, 2u);
  }
}

- (void)_queue_setDelegate:(id)a3 forBundleIdentifier:(id)a4
{
  v9 = a3;
  queue = self->_queue;
  v7 = a4;
  dispatch_assert_queue_V2(queue);
  delegateByBundleIdentifier = self->_delegateByBundleIdentifier;
  if (v9)
  {
    [(NSMutableDictionary *)delegateByBundleIdentifier setObject:v9 forKey:v7];
    [(UNUserNotificationCenterDelegateConnectionListener *)self _queue_ensureListenerForBundleIdentifier:v7];
  }

  else
  {
    [(NSMutableDictionary *)delegateByBundleIdentifier removeObjectForKey:v7];
    [(UNUserNotificationCenterDelegateConnectionListener *)self _queue_invalidateListenerForBundleIdentifier:v7];
  }
}

- (void)_queue_ensureListenerForBundleIdentifier:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(NSMutableDictionary *)self->_listenerByBundleIdentifier objectForKey:v4];
  if (!v5)
  {
    v6 = UNLogConnections;
    if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = v4;
      _os_log_impl(&dword_1B85E3000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Listening for connections to delegate", &v9, 0xCu);
    }

    v7 = [UNUserNotificationCenterDelegateService serviceNameForBundleIdentifier:v4];
    v5 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:v7];
    [v5 setDelegate:self];
    [(NSMutableDictionary *)self->_listenerByBundleIdentifier setObject:v5 forKey:v4];
    [v5 resume];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_queue_invalidateListenerForBundleIdentifier:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(NSMutableDictionary *)self->_listenerByBundleIdentifier objectForKey:v4];
  if (v5)
  {
    v6 = UNLogConnections;
    if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = v4;
      _os_log_impl(&dword_1B85E3000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Invalidating listener for delegate", &v8, 0xCu);
    }

    [v5 invalidate];
    [(NSMutableDictionary *)self->_listenerByBundleIdentifier removeObjectForKey:v4];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_queue_didReceiveNotificationResponse:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v11 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [v8 actionIdentifier];
    v14 = [v8 notification];
    v15 = [v14 request];
    v16 = [v15 identifier];
    v17 = [v16 un_logDigest];
    *buf = 138543874;
    v29 = v9;
    v30 = 2114;
    v31 = v13;
    v32 = 2114;
    v33 = v17;
    _os_log_impl(&dword_1B85E3000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received action %{public}@ response for notification %{public}@", buf, 0x20u);
  }

  v18 = [(NSMutableDictionary *)self->_delegateByBundleIdentifier objectForKey:v9];
  callOutQueue = self->_callOutQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __134__UNUserNotificationCenterDelegateConnectionListener__queue_didReceiveNotificationResponse_forBundleIdentifier_withCompletionHandler___block_invoke;
  block[3] = &unk_1E7CFF8E8;
  v25 = v18;
  v26 = v8;
  v27 = v10;
  v20 = v10;
  v21 = v8;
  v22 = v18;
  dispatch_async(callOutQueue, block);

  v23 = *MEMORY[0x1E69E9840];
}

void __134__UNUserNotificationCenterDelegateConnectionListener__queue_didReceiveNotificationResponse_forBundleIdentifier_withCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __134__UNUserNotificationCenterDelegateConnectionListener__queue_didReceiveNotificationResponse_forBundleIdentifier_withCompletionHandler___block_invoke_2;
  v3[3] = &unk_1E7CFF8C0;
  v4 = *(a1 + 48);
  [v1 didReceiveNotificationResponse:v2 withCompletionHandler:v3];
}

uint64_t __134__UNUserNotificationCenterDelegateConnectionListener__queue_didReceiveNotificationResponse_forBundleIdentifier_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)_queue_didChangeSettings:(id)a3 forBundleIdentifier:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v18 = v7;
    v19 = 2114;
    v20 = v6;
    _os_log_impl(&dword_1B85E3000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] changed settings %{public}@", buf, 0x16u);
  }

  v9 = [(NSMutableDictionary *)self->_delegateByBundleIdentifier objectForKey:v7];
  callOutQueue = self->_callOutQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __99__UNUserNotificationCenterDelegateConnectionListener__queue_didChangeSettings_forBundleIdentifier___block_invoke;
  v14[3] = &unk_1E7CFF910;
  v15 = v9;
  v16 = v6;
  v11 = v6;
  v12 = v9;
  dispatch_async(callOutQueue, v14);

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_queue_didOpenApplicationForResponse:(id)a3 forBundleIdentifier:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [v6 actionIdentifier];
    v11 = [v6 notification];
    v12 = [v11 request];
    v13 = [v12 identifier];
    v14 = [v13 un_logDigest];
    *buf = 138543874;
    v24 = v7;
    v25 = 2114;
    v26 = v10;
    v27 = 2114;
    v28 = v14;
    _os_log_impl(&dword_1B85E3000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Did open application for action %{public}@ response for notification %{public}@", buf, 0x20u);
  }

  v15 = [(NSMutableDictionary *)self->_delegateByBundleIdentifier objectForKey:v7];
  callOutQueue = self->_callOutQueue;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __111__UNUserNotificationCenterDelegateConnectionListener__queue_didOpenApplicationForResponse_forBundleIdentifier___block_invoke;
  v20[3] = &unk_1E7CFF910;
  v21 = v15;
  v22 = v6;
  v17 = v6;
  v18 = v15;
  dispatch_async(callOutQueue, v20);

  v19 = *MEMORY[0x1E69E9840];
}

@end