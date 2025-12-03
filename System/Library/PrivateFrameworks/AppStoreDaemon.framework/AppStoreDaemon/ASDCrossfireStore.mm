@interface ASDCrossfireStore
+ (id)interface;
- (ASDCrossfireStore)init;
- (void)flushMetricsWithCompletionBlock:(id)block;
- (void)getAppEventsWithCompletionBlock:(id)block;
- (void)recordLaunchesWithCompletionBlock:(id)block;
- (void)recordMetricsWithCompletionBlock:(id)block;
- (void)reportAppEvent:(id)event completionBlock:(id)block;
- (void)resetMetricsWithCompletionBlock:(id)block;
- (void)sendMetricsWithCompletionBlock:(id)block;
@end

@implementation ASDCrossfireStore

+ (id)interface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3049FF8];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_getAppEventsWithCompletionBlock_ argumentIndex:0 ofReply:1];

  return v2;
}

- (ASDCrossfireStore)init
{
  v3 = +[ASDServiceBroker defaultBroker];
  v4 = v3;
  if (self)
  {
    v7.receiver = self;
    v7.super_class = ASDCrossfireStore;
    v5 = [(ASDCrossfireStore *)&v7 init];
    self = v5;
    if (v5)
    {
      objc_storeStrong(&v5->_serviceBroker, v3);
    }
  }

  return self;
}

- (void)flushMetricsWithCompletionBlock:(id)block
{
  v14 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] flushMetricsWithCompletionBlock", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__ASDCrossfireStore_flushMetricsWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDC400;
  v11 = blockCopy;
  v8 = blockCopy;
  [(ASDServiceBroker *)serviceBroker getCrossfireServiceWithCompletionHandler:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __53__ASDCrossfireStore_flushMetricsWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __53__ASDCrossfireStore_flushMetricsWithCompletionBlock___block_invoke_2;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__ASDCrossfireStore_flushMetricsWithCompletionBlock___block_invoke_3;
    v7[3] = &unk_1E7CDB758;
    v8 = *(a1 + 32);
    [v4 flushMetricsWithCompletionBlock:v7];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 32) + 16);

    v6();
  }
}

- (void)getAppEventsWithCompletionBlock:(id)block
{
  v14 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] getAppEventsWithCompletionBlock", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__ASDCrossfireStore_getAppEventsWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDC400;
  v11 = blockCopy;
  v8 = blockCopy;
  [(ASDServiceBroker *)serviceBroker getCrossfireServiceWithCompletionHandler:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __53__ASDCrossfireStore_getAppEventsWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __53__ASDCrossfireStore_getAppEventsWithCompletionBlock___block_invoke_2;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__ASDCrossfireStore_getAppEventsWithCompletionBlock___block_invoke_3;
    v7[3] = &unk_1E7CDB7A8;
    v8 = *(a1 + 32);
    [v4 getAppEventsWithCompletionBlock:v7];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 32) + 16);

    v6();
  }
}

- (void)recordLaunchesWithCompletionBlock:(id)block
{
  v14 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] recordLaunchesWithCompletionBlock", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__ASDCrossfireStore_recordLaunchesWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDC400;
  v11 = blockCopy;
  v8 = blockCopy;
  [(ASDServiceBroker *)serviceBroker getCrossfireServiceWithCompletionHandler:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __55__ASDCrossfireStore_recordLaunchesWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __55__ASDCrossfireStore_recordLaunchesWithCompletionBlock___block_invoke_2;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __55__ASDCrossfireStore_recordLaunchesWithCompletionBlock___block_invoke_3;
    v7[3] = &unk_1E7CDB758;
    v8 = *(a1 + 32);
    [v4 recordLaunchesWithCompletionBlock:v7];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 32) + 16);

    v6();
  }
}

- (void)recordMetricsWithCompletionBlock:(id)block
{
  v14 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] recordMetricsWithCompletionBlock", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__ASDCrossfireStore_recordMetricsWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDC400;
  v11 = blockCopy;
  v8 = blockCopy;
  [(ASDServiceBroker *)serviceBroker getCrossfireServiceWithCompletionHandler:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __54__ASDCrossfireStore_recordMetricsWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __54__ASDCrossfireStore_recordMetricsWithCompletionBlock___block_invoke_2;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __54__ASDCrossfireStore_recordMetricsWithCompletionBlock___block_invoke_3;
    v7[3] = &unk_1E7CDB758;
    v8 = *(a1 + 32);
    [v4 recordMetricsWithCompletionBlock:v7];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 32) + 16);

    v6();
  }
}

- (void)reportAppEvent:(id)event completionBlock:(id)block
{
  v19 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  blockCopy = block;
  v8 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = objc_opt_class();
    v9 = v18;
    _os_log_impl(&dword_1B8220000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] reportAppEvent", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __52__ASDCrossfireStore_reportAppEvent_completionBlock___block_invoke;
  v14[3] = &unk_1E7CDC428;
  v15 = eventCopy;
  v16 = blockCopy;
  v11 = eventCopy;
  v12 = blockCopy;
  [(ASDServiceBroker *)serviceBroker getCrossfireServiceWithCompletionHandler:v14];

  v13 = *MEMORY[0x1E69E9840];
}

void __52__ASDCrossfireStore_reportAppEvent_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52__ASDCrossfireStore_reportAppEvent_completionBlock___block_invoke_2;
    v10[3] = &unk_1E7CDB730;
    v11 = *(a1 + 40);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __52__ASDCrossfireStore_reportAppEvent_completionBlock___block_invoke_3;
    v8[3] = &unk_1E7CDB758;
    v5 = *(a1 + 32);
    v9 = *(a1 + 40);
    [v4 reportAppEvent:v5 completionBlock:v8];
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 40) + 16);

    v7();
  }
}

- (void)resetMetricsWithCompletionBlock:(id)block
{
  v14 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] resetMetricsWithCompletionBlock", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__ASDCrossfireStore_resetMetricsWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDC400;
  v11 = blockCopy;
  v8 = blockCopy;
  [(ASDServiceBroker *)serviceBroker getCrossfireServiceWithCompletionHandler:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __53__ASDCrossfireStore_resetMetricsWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __53__ASDCrossfireStore_resetMetricsWithCompletionBlock___block_invoke_2;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__ASDCrossfireStore_resetMetricsWithCompletionBlock___block_invoke_3;
    v7[3] = &unk_1E7CDB758;
    v8 = *(a1 + 32);
    [v4 resetMetricsWithCompletionBlock:v7];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 32) + 16);

    v6();
  }
}

- (void)sendMetricsWithCompletionBlock:(id)block
{
  v14 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] sendMetricsWithCompletionBlock", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__ASDCrossfireStore_sendMetricsWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDC400;
  v11 = blockCopy;
  v8 = blockCopy;
  [(ASDServiceBroker *)serviceBroker getCrossfireServiceWithCompletionHandler:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __52__ASDCrossfireStore_sendMetricsWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __52__ASDCrossfireStore_sendMetricsWithCompletionBlock___block_invoke_2;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __52__ASDCrossfireStore_sendMetricsWithCompletionBlock___block_invoke_3;
    v7[3] = &unk_1E7CDB758;
    v8 = *(a1 + 32);
    [v4 sendMetricsWithCompletionBlock:v7];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 32) + 16);

    v6();
  }
}

@end