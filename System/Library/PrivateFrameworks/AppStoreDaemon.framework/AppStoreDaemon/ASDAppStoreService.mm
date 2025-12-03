@interface ASDAppStoreService
+ (id)defaultService;
- (ASDAppStoreChangedObserver)observer;
- (ASDAppStoreService)init;
- (void)_refreshCache:(int)cache sendActionResponse:;
- (void)addBadgeIDs:(id)ds replyHandler:(id)handler;
- (void)allBadgeIDsWithReplyHandler:(id)handler;
- (void)allBadgeMetricsWithReplyHandler:(id)handler;
- (void)badgeCountWithReplyHandler:(id)handler;
- (void)dealloc;
- (void)launchAppStoreWithURL:(id)l withReplyHandler:(id)handler;
- (void)reloadWidgetOnConnectivityToEndpoint:(id)endpoint parameters:(id)parameters replyHandler:(id)handler;
- (void)removeAllBadgeIDsWithReplyHandler:(id)handler;
- (void)removeBadgeIDs:(id)ds replyHandler:(id)handler;
- (void)removeMetricsForBadgeIDs:(id)ds replyHandler:(id)handler;
- (void)setObserver:(id)observer;
@end

@implementation ASDAppStoreService

- (ASDAppStoreService)init
{
  v3 = +[ASDServiceBroker defaultBroker];
  if (self && (v18.receiver = self, v18.super_class = ASDAppStoreService, (v4 = [(ASDAppStoreService *)&v18 init]) != 0))
  {
    v5 = v4;
    objc_storeWeak(&v4->_serviceBroker, v3);

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.ASDAppStoreService.dispatch", v6);
    dispatchQueue = v5->_dispatchQueue;
    v5->_dispatchQueue = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.ASDAppStoreService.notification", v9);
    notificationQueue = v5->_notificationQueue;
    v5->_notificationQueue = v10;

    objc_initWeak(&v18.receiver, v5);
    v5->_badgesChangedNotificationToken = -1;
    v12 = dispatch_get_global_queue(21, 0);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __26__ASDAppStoreService_init__block_invoke;
    handler[3] = &unk_1E7CDC170;
    objc_copyWeak(&v17, &v18.receiver);
    notify_register_dispatch("com.apple.appstored.ASDAppStoreServiceBadgesChanged", &v5->_badgesChangedNotificationToken, v12, handler);

    v5->_badgesChangedForAppStoreNotificationToken = -1;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __26__ASDAppStoreService_init__block_invoke_2;
    v14[3] = &unk_1E7CDC170;
    objc_copyWeak(&v15, &v18.receiver);
    notify_register_dispatch("com.apple.appstored.ASDAppStoreServiceBadgeChangedWithActionResponse", &v5->_badgesChangedForAppStoreNotificationToken, v12, v14);

    [(ASDAppStoreService *)v5 _refreshCache:0 sendActionResponse:?];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v18.receiver);
  }

  else
  {

    return 0;
  }

  return v5;
}

void __26__ASDAppStoreService_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [(ASDAppStoreService *)WeakRetained _refreshCache:0 sendActionResponse:?];
    WeakRetained = v2;
  }
}

- (void)_refreshCache:(int)cache sendActionResponse:
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *&buf[4] = objc_opt_class();
    *&buf[12] = 1024;
    *&buf[14] = a2;
    *&buf[18] = 1024;
    *&buf[20] = cache;
    v7 = *&buf[4];
    _os_log_impl(&dword_1B8220000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Refreshing caches with notify: %{BOOL}d sendActionResponse: %{BOOL}d", buf, 0x18u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = 0;
  v8 = self[2];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__ASDAppStoreService__refreshCache_sendActionResponse___block_invoke;
  block[3] = &unk_1E7CDB840;
  block[4] = self;
  block[5] = buf;
  dispatch_sync(v8, block);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__ASDAppStoreService__refreshCache_sendActionResponse___block_invoke_2;
  v10[3] = &unk_1E7CDC608;
  v11 = a2;
  v10[4] = self;
  v10[5] = buf;
  cacheCopy = cache;
  [self allBadgeMetricsWithReplyHandler:v10];
  _Block_object_dispose(buf, 8);

  v9 = *MEMORY[0x1E69E9840];
}

void __26__ASDAppStoreService_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [(ASDAppStoreService *)WeakRetained _refreshCache:1 sendActionResponse:?];
    WeakRetained = v2;
  }
}

- (void)dealloc
{
  badgesChangedNotificationToken = self->_badgesChangedNotificationToken;
  if (badgesChangedNotificationToken != -1)
  {
    notify_cancel(badgesChangedNotificationToken);
    self->_badgesChangedNotificationToken = -1;
  }

  badgesChangedForAppStoreNotificationToken = self->_badgesChangedForAppStoreNotificationToken;
  if (badgesChangedForAppStoreNotificationToken != -1)
  {
    notify_cancel(badgesChangedForAppStoreNotificationToken);
    self->_badgesChangedForAppStoreNotificationToken = -1;
  }

  v5.receiver = self;
  v5.super_class = ASDAppStoreService;
  [(ASDAppStoreService *)&v5 dealloc];
}

+ (id)defaultService
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__ASDAppStoreService_defaultService__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED90D4C8 != -1)
  {
    dispatch_once(&qword_1ED90D4C8, block);
  }

  v2 = _MergedGlobals_30;

  return v2;
}

uint64_t __36__ASDAppStoreService_defaultService__block_invoke(uint64_t a1)
{
  _MergedGlobals_30 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (ASDAppStoreChangedObserver)observer
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__ASDAppStoreService_observer__block_invoke;
  v5[3] = &unk_1E7CDB840;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __30__ASDAppStoreService_observer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x1EEE66BB8]();
}

- (void)setObserver:(id)observer
{
  observerCopy = observer;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__ASDAppStoreService_setObserver___block_invoke;
  v7[3] = &unk_1E7CDB868;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)addBadgeIDs:(id)ds replyHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  v8 = +[ASDServiceBroker defaultBroker];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__ASDAppStoreService_addBadgeIDs_replyHandler___block_invoke;
  v11[3] = &unk_1E7CDC590;
  v12 = dsCopy;
  v13 = handlerCopy;
  v11[4] = self;
  v9 = dsCopy;
  v10 = handlerCopy;
  [v8 getAppStoreServiceWithCompletionHandler:v11];
}

void __47__ASDAppStoreService_addBadgeIDs_replyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __47__ASDAppStoreService_addBadgeIDs_replyHandler___block_invoke_2;
    v14[3] = &unk_1E7CDBAB8;
    v14[4] = *(a1 + 32);
    v15 = *(a1 + 48);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v14];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __47__ASDAppStoreService_addBadgeIDs_replyHandler___block_invoke_9;
    v12[3] = &unk_1E7CDB758;
    v7 = *(a1 + 40);
    v13 = *(a1 + 48);
    [v6 addBadgeIDs:v7 replyHandler:v12];
  }

  else
  {
    v8 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      *buf = 138543618;
      v17 = objc_opt_class();
      v18 = 2114;
      v19 = v5;
      v11 = v17;
      _os_log_error_impl(&dword_1B8220000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] addBadgeIDs failed with error: %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __47__ASDAppStoreService_addBadgeIDs_replyHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v9 = 138543618;
    v10 = objc_opt_class();
    v11 = 2114;
    v12 = v3;
    v8 = v10;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] addBadgeIDs failed with xpc error: %{public}@", &v9, 0x16u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v3, v5);
  v6 = *MEMORY[0x1E69E9840];
}

void __47__ASDAppStoreService_addBadgeIDs_replyHandler___block_invoke_9(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__ASDAppStoreService_addBadgeIDs_replyHandler___block_invoke_2_10;
  block[3] = &unk_1E7CDBB30;
  v7 = *(a1 + 32);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)allBadgeMetricsWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[ASDServiceBroker defaultBroker];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__ASDAppStoreService_allBadgeMetricsWithReplyHandler___block_invoke;
  v7[3] = &unk_1E7CDC4C8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [v5 getAppStoreServiceWithCompletionHandler:v7];
}

void __54__ASDAppStoreService_allBadgeMetricsWithReplyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __54__ASDAppStoreService_allBadgeMetricsWithReplyHandler___block_invoke_2;
    v14[3] = &unk_1E7CDBAB8;
    v6 = *(a1 + 40);
    v14[4] = *(a1 + 32);
    v15 = v6;
    v7 = [a2 remoteObjectProxyWithErrorHandler:v14];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __54__ASDAppStoreService_allBadgeMetricsWithReplyHandler___block_invoke_13;
    v12[3] = &unk_1E7CDB7F8;
    v13 = *(a1 + 40);
    [v7 allBadgeMetricsWithReplyHandler:v12];
  }

  else
  {
    v8 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      *buf = 138543618;
      v17 = objc_opt_class();
      v18 = 2114;
      v19 = v5;
      v11 = v17;
      _os_log_error_impl(&dword_1B8220000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] allBadgeMetricsWithReplyHandler failed with error: %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __54__ASDAppStoreService_allBadgeMetricsWithReplyHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v9 = 138543618;
    v10 = objc_opt_class();
    v11 = 2114;
    v12 = v3;
    v8 = v10;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] allBadgeMetricsWithReplyHandler failed with xpc error: %{public}@", &v9, 0x16u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v3, v5);
  v6 = *MEMORY[0x1E69E9840];
}

void __54__ASDAppStoreService_allBadgeMetricsWithReplyHandler___block_invoke_13(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__ASDAppStoreService_allBadgeMetricsWithReplyHandler___block_invoke_2_14;
  block[3] = &unk_1E7CDBAE0;
  v8 = *(a1 + 32);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)allBadgeIDsWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[ASDServiceBroker defaultBroker];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__ASDAppStoreService_allBadgeIDsWithReplyHandler___block_invoke;
  v7[3] = &unk_1E7CDC4C8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [v5 getAppStoreServiceWithCompletionHandler:v7];
}

void __50__ASDAppStoreService_allBadgeIDsWithReplyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __50__ASDAppStoreService_allBadgeIDsWithReplyHandler___block_invoke_2;
    v14[3] = &unk_1E7CDBAB8;
    v6 = *(a1 + 40);
    v14[4] = *(a1 + 32);
    v15 = v6;
    v7 = [a2 remoteObjectProxyWithErrorHandler:v14];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __50__ASDAppStoreService_allBadgeIDsWithReplyHandler___block_invoke_16;
    v12[3] = &unk_1E7CDB7A8;
    v13 = *(a1 + 40);
    [v7 allBadgeIDsWithReplyHandler:v12];
  }

  else
  {
    v8 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      *buf = 138543618;
      v17 = objc_opt_class();
      v18 = 2114;
      v19 = v5;
      v11 = v17;
      _os_log_error_impl(&dword_1B8220000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] allBadgeIDsWithReplyHandler failed with error: %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __50__ASDAppStoreService_allBadgeIDsWithReplyHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v9 = 138543618;
    v10 = objc_opt_class();
    v11 = 2114;
    v12 = v3;
    v8 = v10;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] allBadgeIDsWithReplyHandler failed with xpc error: %{public}@", &v9, 0x16u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), MEMORY[0x1E695E0F0], v3, v5);
  v6 = *MEMORY[0x1E69E9840];
}

void __50__ASDAppStoreService_allBadgeIDsWithReplyHandler___block_invoke_16(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__ASDAppStoreService_allBadgeIDsWithReplyHandler___block_invoke_2_17;
  block[3] = &unk_1E7CDBAE0;
  v8 = *(a1 + 32);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)badgeCountWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[ASDServiceBroker defaultBroker];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__ASDAppStoreService_badgeCountWithReplyHandler___block_invoke;
  v7[3] = &unk_1E7CDC4C8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [v5 getAppStoreServiceWithCompletionHandler:v7];
}

void __49__ASDAppStoreService_badgeCountWithReplyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __49__ASDAppStoreService_badgeCountWithReplyHandler___block_invoke_2;
    v14[3] = &unk_1E7CDBAB8;
    v6 = *(a1 + 40);
    v14[4] = *(a1 + 32);
    v15 = v6;
    v7 = [a2 remoteObjectProxyWithErrorHandler:v14];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __49__ASDAppStoreService_badgeCountWithReplyHandler___block_invoke_19;
    v12[3] = &unk_1E7CDC4F0;
    v13 = *(a1 + 40);
    [v7 badgeIDCountWithReplyHandler:v12];
  }

  else
  {
    v8 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      *buf = 138543618;
      v17 = objc_opt_class();
      v18 = 2114;
      v19 = v5;
      v11 = v17;
      _os_log_error_impl(&dword_1B8220000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] badgeCountWithReplyHandler failed with error: %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __49__ASDAppStoreService_badgeCountWithReplyHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v9 = 138543618;
    v10 = objc_opt_class();
    v11 = 2114;
    v12 = v3;
    v8 = v10;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] badgeCountWithReplyHandler failed with xpc error: %{public}@", &v9, 0x16u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v3, v5);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)removeAllBadgeIDsWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[ASDServiceBroker defaultBroker];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__ASDAppStoreService_removeAllBadgeIDsWithReplyHandler___block_invoke;
  v7[3] = &unk_1E7CDC4C8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [v5 getAppStoreServiceWithCompletionHandler:v7];
}

void __56__ASDAppStoreService_removeAllBadgeIDsWithReplyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __56__ASDAppStoreService_removeAllBadgeIDsWithReplyHandler___block_invoke_2;
    v14[3] = &unk_1E7CDBAB8;
    v6 = *(a1 + 40);
    v14[4] = *(a1 + 32);
    v15 = v6;
    v7 = [a2 remoteObjectProxyWithErrorHandler:v14];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __56__ASDAppStoreService_removeAllBadgeIDsWithReplyHandler___block_invoke_21;
    v12[3] = &unk_1E7CDB758;
    v13 = *(a1 + 40);
    [v7 removeAllBadgeIDsWithReplyHandler:v12];
  }

  else
  {
    v8 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      *buf = 138543618;
      v17 = objc_opt_class();
      v18 = 2114;
      v19 = v5;
      v11 = v17;
      _os_log_error_impl(&dword_1B8220000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] removeAllBadgeIDsWithReplyHandler failed with error: %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __56__ASDAppStoreService_removeAllBadgeIDsWithReplyHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v9 = 138543618;
    v10 = objc_opt_class();
    v11 = 2114;
    v12 = v3;
    v8 = v10;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] removeAllBadgeIDsWithReplyHandler failed with xpc error: %{public}@", &v9, 0x16u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v3, v5);
  v6 = *MEMORY[0x1E69E9840];
}

void __56__ASDAppStoreService_removeAllBadgeIDsWithReplyHandler___block_invoke_21(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__ASDAppStoreService_removeAllBadgeIDsWithReplyHandler___block_invoke_2_22;
  block[3] = &unk_1E7CDBB30;
  v7 = *(a1 + 32);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)removeBadgeIDs:(id)ds replyHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  v8 = +[ASDServiceBroker defaultBroker];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__ASDAppStoreService_removeBadgeIDs_replyHandler___block_invoke;
  v11[3] = &unk_1E7CDC590;
  v12 = dsCopy;
  v13 = handlerCopy;
  v11[4] = self;
  v9 = dsCopy;
  v10 = handlerCopy;
  [v8 getAppStoreServiceWithCompletionHandler:v11];
}

void __50__ASDAppStoreService_removeBadgeIDs_replyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __50__ASDAppStoreService_removeBadgeIDs_replyHandler___block_invoke_2;
    v14[3] = &unk_1E7CDBAB8;
    v14[4] = *(a1 + 32);
    v15 = *(a1 + 48);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v14];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __50__ASDAppStoreService_removeBadgeIDs_replyHandler___block_invoke_23;
    v12[3] = &unk_1E7CDB758;
    v7 = *(a1 + 40);
    v13 = *(a1 + 48);
    [v6 removeBadgeIDs:v7 replyHandler:v12];
  }

  else
  {
    v8 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      *buf = 138543618;
      v17 = objc_opt_class();
      v18 = 2114;
      v19 = v5;
      v11 = v17;
      _os_log_error_impl(&dword_1B8220000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] removeBadgeIDs failed with error: %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __50__ASDAppStoreService_removeBadgeIDs_replyHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v9 = 138543618;
    v10 = objc_opt_class();
    v11 = 2114;
    v12 = v3;
    v8 = v10;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] removeBadgeIDs failed with xpc error: %{public}@", &v9, 0x16u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v3, v5);
  v6 = *MEMORY[0x1E69E9840];
}

void __50__ASDAppStoreService_removeBadgeIDs_replyHandler___block_invoke_23(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__ASDAppStoreService_removeBadgeIDs_replyHandler___block_invoke_2_24;
  block[3] = &unk_1E7CDBB30;
  v7 = *(a1 + 32);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)removeMetricsForBadgeIDs:(id)ds replyHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  v8 = +[ASDServiceBroker defaultBroker];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__ASDAppStoreService_removeMetricsForBadgeIDs_replyHandler___block_invoke;
  v11[3] = &unk_1E7CDC590;
  v12 = dsCopy;
  v13 = handlerCopy;
  v11[4] = self;
  v9 = dsCopy;
  v10 = handlerCopy;
  [v8 getAppStoreServiceWithCompletionHandler:v11];
}

void __60__ASDAppStoreService_removeMetricsForBadgeIDs_replyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __60__ASDAppStoreService_removeMetricsForBadgeIDs_replyHandler___block_invoke_2;
    v14[3] = &unk_1E7CDBAB8;
    v14[4] = *(a1 + 32);
    v15 = *(a1 + 48);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v14];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__ASDAppStoreService_removeMetricsForBadgeIDs_replyHandler___block_invoke_25;
    v12[3] = &unk_1E7CDB758;
    v7 = *(a1 + 40);
    v13 = *(a1 + 48);
    [v6 removeBadgeMetricsForBadgeIDs:v7 replyHandler:v12];
  }

  else
  {
    v8 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      *buf = 138543618;
      v17 = objc_opt_class();
      v18 = 2114;
      v19 = v5;
      v11 = v17;
      _os_log_error_impl(&dword_1B8220000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] removeMetricsForBadgeIDs failed with error: %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __60__ASDAppStoreService_removeMetricsForBadgeIDs_replyHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v9 = 138543618;
    v10 = objc_opt_class();
    v11 = 2114;
    v12 = v3;
    v8 = v10;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] removeMetricsForBadgeIDs failed with xpc error: %{public}@", &v9, 0x16u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v3, v5);
  v6 = *MEMORY[0x1E69E9840];
}

void __60__ASDAppStoreService_removeMetricsForBadgeIDs_replyHandler___block_invoke_25(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__ASDAppStoreService_removeMetricsForBadgeIDs_replyHandler___block_invoke_2_26;
  block[3] = &unk_1E7CDBB30;
  v7 = *(a1 + 32);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)launchAppStoreWithURL:(id)l withReplyHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v8 = +[ASDServiceBroker defaultBroker];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__ASDAppStoreService_launchAppStoreWithURL_withReplyHandler___block_invoke;
  v11[3] = &unk_1E7CDC590;
  v11[4] = self;
  v12 = lCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = lCopy;
  [v8 getAppStoreServiceWithCompletionHandler:v11];
}

void __61__ASDAppStoreService_launchAppStoreWithURL_withReplyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __61__ASDAppStoreService_launchAppStoreWithURL_withReplyHandler___block_invoke_2;
    v18[3] = &unk_1E7CDC518;
    v6 = *(a1 + 40);
    v18[4] = *(a1 + 32);
    v19 = v6;
    v20 = *(a1 + 48);
    v7 = [a2 remoteObjectProxyWithErrorHandler:v18];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __61__ASDAppStoreService_launchAppStoreWithURL_withReplyHandler___block_invoke_27;
    v15[3] = &unk_1E7CDC568;
    v8 = *(a1 + 40);
    v15[4] = *(a1 + 32);
    v16 = v8;
    v17 = *(a1 + 48);
    [v7 launchAppStoreWithURL:v16 withReplyHandler:v15];
  }

  else
  {
    v9 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = objc_opt_class();
      v13 = *(a1 + 40);
      *buf = 138543874;
      v22 = v12;
      v23 = 2114;
      v24 = v13;
      v25 = 2114;
      v26 = v5;
      v14 = v12;
      _os_log_error_impl(&dword_1B8220000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to launch %{public}@ error: %{public}@", buf, 0x20u);
    }

    (*(*(a1 + 48) + 16))();
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __61__ASDAppStoreService_launchAppStoreWithURL_withReplyHandler___block_invoke_2(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = a1[4];
    v8 = objc_opt_class();
    v9 = a1[5];
    v11 = 138543874;
    v12 = v8;
    v13 = 2114;
    v14 = v9;
    v15 = 2114;
    v16 = v3;
    v10 = v8;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to launch %{public}@ error: %{public}@", &v11, 0x20u);
  }

  (*(a1[6] + 16))(a1[6], 2, v3, v5);
  v6 = *MEMORY[0x1E69E9840];
}

void __61__ASDAppStoreService_launchAppStoreWithURL_withReplyHandler___block_invoke_27(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = objc_opt_class();
      v12 = *(a1 + 40);
      *buf = 138543874;
      v19 = v11;
      v20 = 2114;
      v21 = v12;
      v22 = 2048;
      v23 = a2;
      v13 = v11;
      _os_log_error_impl(&dword_1B8220000, v6, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to launch %{public}@ status: %ld", buf, 0x20u);
    }
  }

  v7 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__ASDAppStoreService_launchAppStoreWithURL_withReplyHandler___block_invoke_28;
  block[3] = &unk_1E7CDC540;
  v16 = *(a1 + 48);
  v17 = a2;
  v15 = v5;
  v8 = v5;
  dispatch_async(v7, block);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)reloadWidgetOnConnectivityToEndpoint:(id)endpoint parameters:(id)parameters replyHandler:(id)handler
{
  endpointCopy = endpoint;
  parametersCopy = parameters;
  handlerCopy = handler;
  v12 = +[ASDServiceBroker defaultBroker];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __83__ASDAppStoreService_reloadWidgetOnConnectivityToEndpoint_parameters_replyHandler___block_invoke;
  v16[3] = &unk_1E7CDC5B8;
  v19 = handlerCopy;
  v20 = a2;
  v16[4] = self;
  v17 = endpointCopy;
  v18 = parametersCopy;
  v13 = parametersCopy;
  v14 = endpointCopy;
  v15 = handlerCopy;
  [v12 getAppStoreServiceWithCompletionHandler:v16];
}

void __83__ASDAppStoreService_reloadWidgetOnConnectivityToEndpoint_parameters_replyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __83__ASDAppStoreService_reloadWidgetOnConnectivityToEndpoint_parameters_replyHandler___block_invoke_2;
    v19[3] = &unk_1E7CDBBD0;
    v19[4] = *(a1 + 32);
    v16 = *(a1 + 56);
    v6 = v16;
    v20 = v16;
    v7 = [a2 remoteObjectProxyWithErrorHandler:v19];
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __83__ASDAppStoreService_reloadWidgetOnConnectivityToEndpoint_parameters_replyHandler___block_invoke_29;
    v17[3] = &unk_1E7CDB758;
    v18 = *(a1 + 56);
    [v7 reloadWidgetOnConnectivityToEndpoint:v8 parameters:v9 replyHandler:v17];
  }

  else
  {
    v10 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v13 = objc_opt_class();
      v14 = *(a1 + 64);
      v15 = v13;
      *buf = 138543874;
      v22 = v13;
      v23 = 2080;
      Name = sel_getName(v14);
      v25 = 2114;
      v26 = v5;
      _os_log_error_impl(&dword_1B8220000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] %s failed with error: %{public}@", buf, 0x20u);
    }

    (*(*(a1 + 56) + 16))();
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __83__ASDAppStoreService_reloadWidgetOnConnectivityToEndpoint_parameters_replyHandler___block_invoke_2(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = a1[4];
    v7 = objc_opt_class();
    v8 = a1[6];
    v9 = v7;
    v10 = 138543874;
    v11 = v7;
    v12 = 2080;
    Name = sel_getName(v8);
    v14 = 2114;
    v15 = v3;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] %s failed with xpc error: %{public}@", &v10, 0x20u);
  }

  (*(a1[5] + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

void __83__ASDAppStoreService_reloadWidgetOnConnectivityToEndpoint_parameters_replyHandler___block_invoke_29(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__ASDAppStoreService_reloadWidgetOnConnectivityToEndpoint_parameters_replyHandler___block_invoke_2_30;
  block[3] = &unk_1E7CDBB30;
  v7 = *(a1 + 32);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

void __75__ASDAppStoreService__handleNotificationRefresh_addedBadges_removedBadges___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  [WeakRetained service:*(a1 + 32) badgesDidChange:*(a1 + 40)];
}

void __75__ASDAppStoreService__handleNotificationRefresh_addedBadges_removedBadges___block_invoke_55(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  [WeakRetained service:*(a1 + 32) didAddBadges:*(a1 + 40)];
}

void __75__ASDAppStoreService__handleNotificationRefresh_addedBadges_removedBadges___block_invoke_58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  [WeakRetained service:*(a1 + 32) didRemoveBadges:*(a1 + 40)];
}

uint64_t __55__ASDAppStoreService__refreshCache_sendActionResponse___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void __55__ASDAppStoreService__refreshCache_sendActionResponse___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__ASDAppStoreService__refreshCache_sendActionResponse___block_invoke_3;
  v7[3] = &unk_1E7CDC5E0;
  v7[4] = v4;
  v8 = v3;
  v10 = *(a1 + 48);
  v9 = *(a1 + 40);
  v6 = v3;
  dispatch_async(v5, v7);
}

void __55__ASDAppStoreService__refreshCache_sendActionResponse___block_invoke_3(uint64_t a1)
{
  v83 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  if (*(a1 + 56) == 1)
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = [*(*(*(a1 + 48) + 8) + 40) allKeys];
    v7 = [v5 setWithArray:v6];

    v8 = MEMORY[0x1E695DFD8];
    v9 = [*(a1 + 40) allKeys];
    v10 = [v8 setWithArray:v9];

    v58 = [MEMORY[0x1E695DF90] dictionary];
    v57 = [MEMORY[0x1E695DF90] dictionary];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v65 objects:v70 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v66;
      obj = *v66;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v66 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v65 + 1) + 8 * i);
          if (([v10 containsObject:v16] & 1) == 0)
          {
            v17 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:v16];
            objc_opt_class();
            v18 = _ASA(v17);

            if (v18)
            {
              v19 = MEMORY[0x1E695E0F8];
              if (*(a1 + 57))
              {
                v20 = [v18 objectForKeyedSubscript:@"actionMetrics"];

                if (v20)
                {
                  v19 = [v18 objectForKeyedSubscript:@"actionMetrics"];
                }

                else
                {
                  v19 = MEMORY[0x1E695E0F8];
                }

                v14 = obj;
              }
            }

            else
            {
              v19 = MEMORY[0x1E695E0F8];
            }

            [v58 setValue:v19 forKey:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v65 objects:v70 count:16];
      }

      while (v13);
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    obja = v10;
    v21 = [obja countByEnumeratingWithState:&v61 objects:v69 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v62;
      v24 = MEMORY[0x1E695E0F8];
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v62 != v23)
          {
            objc_enumerationMutation(obja);
          }

          v26 = *(*(&v61 + 1) + 8 * j);
          if (([v11 containsObject:v26] & 1) == 0)
          {
            v27 = [*(a1 + 40) objectForKeyedSubscript:v26];
            objc_opt_class();
            v28 = _ASA(v27);

            if (v28 && ([v28 objectForKeyedSubscript:@"metrics"], v29 = objc_claimAutoreleasedReturnValue(), v29, v29))
            {
              v30 = [v28 objectForKeyedSubscript:@"metrics"];
            }

            else
            {
              v30 = v24;
            }

            [v57 setValue:v30 forKey:v26];
          }
        }

        v22 = [obja countByEnumeratingWithState:&v61 objects:v69 count:16];
      }

      while (v22);
    }

    v31 = *(a1 + 32);
    v32 = [obja allObjects];
    v33 = [v57 copy];
    v34 = [v58 copy];
    v35 = v32;
    v36 = v33;
    v37 = v34;
    if (v31)
    {
      WeakRetained = objc_loadWeakRetained((v31 + 40));
      v39 = objc_opt_respondsToSelector();

      if (v39)
      {
        v40 = ASDLogHandleForCategory(13);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          v41 = objc_opt_class();
          *buf = 138543618;
          *&buf[4] = v41;
          *&buf[12] = 2114;
          *&buf[14] = v35;
          v42 = v41;
          _os_log_impl(&dword_1B8220000, v40, OS_LOG_TYPE_INFO, "[%{public}@] Handling apps refreshed to %{public}@", buf, 0x16u);
        }

        v43 = *(v31 + 24);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __75__ASDAppStoreService__handleNotificationRefresh_addedBadges_removedBadges___block_invoke;
        v80 = &unk_1E7CDB868;
        v81 = v31;
        v82 = v35;
        dispatch_async(v43, buf);
      }

      v44 = objc_loadWeakRetained((v31 + 40));
      if (objc_opt_respondsToSelector())
      {
        v45 = [v36 count];

        if (v45)
        {
          v46 = ASDLogHandleForCategory(13);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            v47 = objc_opt_class();
            *block = 138543618;
            *&block[4] = v47;
            *&block[12] = 2114;
            *&block[14] = v36;
            v48 = v47;
            _os_log_impl(&dword_1B8220000, v46, OS_LOG_TYPE_INFO, "[%{public}@] Handling didAddBadges %{public}@", block, 0x16u);
          }

          v49 = *(v31 + 24);
          *block = MEMORY[0x1E69E9820];
          *&block[8] = 3221225472;
          *&block[16] = __75__ASDAppStoreService__handleNotificationRefresh_addedBadges_removedBadges___block_invoke_55;
          v76 = &unk_1E7CDB868;
          v77 = v31;
          v78 = v36;
          dispatch_async(v49, block);
        }
      }

      else
      {
      }

      v50 = objc_loadWeakRetained((v31 + 40));
      if (objc_opt_respondsToSelector())
      {
        v51 = [v37 count];

        if (v51)
        {
          v52 = ASDLogHandleForCategory(13);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
          {
            v53 = objc_opt_class();
            *v71 = 138543618;
            *&v71[4] = v53;
            *&v71[12] = 2114;
            *&v71[14] = v37;
            v54 = v53;
            _os_log_impl(&dword_1B8220000, v52, OS_LOG_TYPE_INFO, "[%{public}@] Handling didRemoveBadges %{public}@", v71, 0x16u);
          }

          v55 = *(v31 + 24);
          *v71 = MEMORY[0x1E69E9820];
          *&v71[8] = 3221225472;
          *&v71[16] = __75__ASDAppStoreService__handleNotificationRefresh_addedBadges_removedBadges___block_invoke_58;
          v72 = &unk_1E7CDB868;
          v73 = v31;
          v74 = v37;
          dispatch_async(v55, v71);
        }
      }

      else
      {
      }
    }
  }

  v56 = *MEMORY[0x1E69E9840];
}

@end