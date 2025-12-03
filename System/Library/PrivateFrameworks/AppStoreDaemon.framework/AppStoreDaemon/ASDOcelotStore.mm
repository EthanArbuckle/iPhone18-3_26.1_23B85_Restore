@interface ASDOcelotStore
+ (id)interface;
- (ASDOcelotStore)init;
- (void)flushMetricsWithCompletionBlock:(id)block;
- (void)getAppPayoutEventsWithCompletionBlock:(id)block;
- (void)getAppSummaryEventsWithCompletionBlock:(id)block;
- (void)recordLaunchesWithCompletionBlock:(id)block;
- (void)recordMetricsWithCompletionBlock:(id)block;
- (void)reportAppEvent:(id)event completionBlock:(id)block;
- (void)resetPayoutWithCompletionBlock:(id)block;
- (void)resetSummaryWithCompletionBlock:(id)block;
- (void)sbsyncIfSubscribedWithAccount:(id)account completionBlock:(id)block;
- (void)sbsyncWithCompletionBlock:(id)block;
- (void)sbsyncWithDuration:(id)duration completionBlock:(id)block;
- (void)sendPayoutWithCompletionBlock:(id)block;
- (void)sendSummaryWithCompletionBlock:(id)block;
- (void)showUpsellForItemID:(id)d completionBlock:(id)block;
- (void)subscriptionDetailsWithCompletionBlock:(id)block;
- (void)subscriptionStateWithCompletionBlock:(id)block;
- (void)topAppsForAccount:(id)account completionBlock:(id)block;
@end

@implementation ASDOcelotStore

+ (id)interface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3049DB8];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_getAppPayoutEventsWithCompletionBlock_ argumentIndex:0 ofReply:1];

  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [v2 setClasses:v8 forSelector:sel_getAppSummaryEventsWithCompletionBlock_ argumentIndex:0 ofReply:1];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v9 setWithObjects:{v10, v11, objc_opt_class(), 0}];
  [v2 setClasses:v12 forSelector:sel_subscriptionDetailsWithCompletionBlock_ argumentIndex:0 ofReply:1];

  return v2;
}

- (ASDOcelotStore)init
{
  v3 = +[ASDServiceBroker defaultBroker];
  v4 = v3;
  if (self)
  {
    v7.receiver = self;
    v7.super_class = ASDOcelotStore;
    v5 = [(ASDOcelotStore *)&v7 init];
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
  v10[2] = __50__ASDOcelotStore_flushMetricsWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDB780;
  v11 = blockCopy;
  v8 = blockCopy;
  [(ASDServiceBroker *)serviceBroker getOcelotServiceWithCompletionHandler:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __50__ASDOcelotStore_flushMetricsWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __50__ASDOcelotStore_flushMetricsWithCompletionBlock___block_invoke_2;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__ASDOcelotStore_flushMetricsWithCompletionBlock___block_invoke_3;
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

- (void)getAppPayoutEventsWithCompletionBlock:(id)block
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
  v10[2] = __56__ASDOcelotStore_getAppPayoutEventsWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDB780;
  v11 = blockCopy;
  v8 = blockCopy;
  [(ASDServiceBroker *)serviceBroker getOcelotServiceWithCompletionHandler:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __56__ASDOcelotStore_getAppPayoutEventsWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56__ASDOcelotStore_getAppPayoutEventsWithCompletionBlock___block_invoke_2;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __56__ASDOcelotStore_getAppPayoutEventsWithCompletionBlock___block_invoke_3;
    v7[3] = &unk_1E7CDB7A8;
    v8 = *(a1 + 32);
    [v4 getAppPayoutEventsWithCompletionBlock:v7];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 32) + 16);

    v6();
  }
}

- (void)getAppSummaryEventsWithCompletionBlock:(id)block
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
  v10[2] = __57__ASDOcelotStore_getAppSummaryEventsWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDB780;
  v11 = blockCopy;
  v8 = blockCopy;
  [(ASDServiceBroker *)serviceBroker getOcelotServiceWithCompletionHandler:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __57__ASDOcelotStore_getAppSummaryEventsWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__ASDOcelotStore_getAppSummaryEventsWithCompletionBlock___block_invoke_2;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __57__ASDOcelotStore_getAppSummaryEventsWithCompletionBlock___block_invoke_3;
    v7[3] = &unk_1E7CDB7A8;
    v8 = *(a1 + 32);
    [v4 getAppSummaryEventsWithCompletionBlock:v7];
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
  v10[2] = __52__ASDOcelotStore_recordLaunchesWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDB780;
  v11 = blockCopy;
  v8 = blockCopy;
  [(ASDServiceBroker *)serviceBroker getOcelotServiceWithCompletionHandler:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __52__ASDOcelotStore_recordLaunchesWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __52__ASDOcelotStore_recordLaunchesWithCompletionBlock___block_invoke_2;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __52__ASDOcelotStore_recordLaunchesWithCompletionBlock___block_invoke_3;
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
  v10[2] = __51__ASDOcelotStore_recordMetricsWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDB780;
  v11 = blockCopy;
  v8 = blockCopy;
  [(ASDServiceBroker *)serviceBroker getOcelotServiceWithCompletionHandler:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __51__ASDOcelotStore_recordMetricsWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __51__ASDOcelotStore_recordMetricsWithCompletionBlock___block_invoke_2;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __51__ASDOcelotStore_recordMetricsWithCompletionBlock___block_invoke_3;
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
  v14[2] = __49__ASDOcelotStore_reportAppEvent_completionBlock___block_invoke;
  v14[3] = &unk_1E7CDB7D0;
  v15 = eventCopy;
  v16 = blockCopy;
  v11 = eventCopy;
  v12 = blockCopy;
  [(ASDServiceBroker *)serviceBroker getOcelotServiceWithCompletionHandler:v14];

  v13 = *MEMORY[0x1E69E9840];
}

void __49__ASDOcelotStore_reportAppEvent_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __49__ASDOcelotStore_reportAppEvent_completionBlock___block_invoke_2;
    v10[3] = &unk_1E7CDB730;
    v11 = *(a1 + 40);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __49__ASDOcelotStore_reportAppEvent_completionBlock___block_invoke_3;
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

- (void)resetSummaryWithCompletionBlock:(id)block
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
  v10[2] = __50__ASDOcelotStore_resetSummaryWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDB780;
  v11 = blockCopy;
  v8 = blockCopy;
  [(ASDServiceBroker *)serviceBroker getOcelotServiceWithCompletionHandler:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __50__ASDOcelotStore_resetSummaryWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __50__ASDOcelotStore_resetSummaryWithCompletionBlock___block_invoke_2;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__ASDOcelotStore_resetSummaryWithCompletionBlock___block_invoke_3;
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

- (void)resetPayoutWithCompletionBlock:(id)block
{
  v14 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] resetPayoutWithCompletionBlock", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__ASDOcelotStore_resetPayoutWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDB780;
  v11 = blockCopy;
  v8 = blockCopy;
  [(ASDServiceBroker *)serviceBroker getOcelotServiceWithCompletionHandler:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __49__ASDOcelotStore_resetPayoutWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__ASDOcelotStore_resetPayoutWithCompletionBlock___block_invoke_2;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __49__ASDOcelotStore_resetPayoutWithCompletionBlock___block_invoke_3;
    v7[3] = &unk_1E7CDB758;
    v8 = *(a1 + 32);
    [v4 resetPayoutWithCompletionBlock:v7];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 32) + 16);

    v6();
  }
}

- (void)sbsyncIfSubscribedWithAccount:(id)account completionBlock:(id)block
{
  v19 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  blockCopy = block;
  v8 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = objc_opt_class();
    v9 = v18;
    _os_log_impl(&dword_1B8220000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] sbsyncIfSubscribedWithAccount", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__ASDOcelotStore_sbsyncIfSubscribedWithAccount_completionBlock___block_invoke;
  v14[3] = &unk_1E7CDB7D0;
  v15 = accountCopy;
  v16 = blockCopy;
  v11 = accountCopy;
  v12 = blockCopy;
  [(ASDServiceBroker *)serviceBroker getOcelotServiceWithCompletionHandler:v14];

  v13 = *MEMORY[0x1E69E9840];
}

void __64__ASDOcelotStore_sbsyncIfSubscribedWithAccount_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __64__ASDOcelotStore_sbsyncIfSubscribedWithAccount_completionBlock___block_invoke_2;
    v10[3] = &unk_1E7CDB730;
    v11 = *(a1 + 40);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __64__ASDOcelotStore_sbsyncIfSubscribedWithAccount_completionBlock___block_invoke_3;
    v8[3] = &unk_1E7CDB758;
    v5 = *(a1 + 32);
    v9 = *(a1 + 40);
    [v4 sbsyncIfSubscribedWithAccount:v5 completionBlock:v8];
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 40) + 16);

    v7();
  }
}

- (void)sbsyncWithCompletionBlock:(id)block
{
  v14 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] sbsyncWithCompletionBlock", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__ASDOcelotStore_sbsyncWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDB780;
  v11 = blockCopy;
  v8 = blockCopy;
  [(ASDServiceBroker *)serviceBroker getOcelotServiceWithCompletionHandler:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __44__ASDOcelotStore_sbsyncWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __44__ASDOcelotStore_sbsyncWithCompletionBlock___block_invoke_2;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __44__ASDOcelotStore_sbsyncWithCompletionBlock___block_invoke_3;
    v7[3] = &unk_1E7CDB758;
    v8 = *(a1 + 32);
    [v4 sbsyncWithCompletionBlock:v7];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 32) + 16);

    v6();
  }
}

- (void)sbsyncWithDuration:(id)duration completionBlock:(id)block
{
  v19 = *MEMORY[0x1E69E9840];
  durationCopy = duration;
  blockCopy = block;
  v8 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = objc_opt_class();
    v9 = v18;
    _os_log_impl(&dword_1B8220000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] sbsyncWithCompletionBlock", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53__ASDOcelotStore_sbsyncWithDuration_completionBlock___block_invoke;
  v14[3] = &unk_1E7CDB7D0;
  v15 = durationCopy;
  v16 = blockCopy;
  v11 = durationCopy;
  v12 = blockCopy;
  [(ASDServiceBroker *)serviceBroker getOcelotServiceWithCompletionHandler:v14];

  v13 = *MEMORY[0x1E69E9840];
}

void __53__ASDOcelotStore_sbsyncWithDuration_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53__ASDOcelotStore_sbsyncWithDuration_completionBlock___block_invoke_2;
    v10[3] = &unk_1E7CDB730;
    v11 = *(a1 + 40);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __53__ASDOcelotStore_sbsyncWithDuration_completionBlock___block_invoke_3;
    v8[3] = &unk_1E7CDB758;
    v5 = *(a1 + 32);
    v9 = *(a1 + 40);
    [v4 sbsyncWithDuration:v5 completionBlock:v8];
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 40) + 16);

    v7();
  }
}

- (void)sendSummaryWithCompletionBlock:(id)block
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
  v10[2] = __49__ASDOcelotStore_sendSummaryWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDB780;
  v11 = blockCopy;
  v8 = blockCopy;
  [(ASDServiceBroker *)serviceBroker getOcelotServiceWithCompletionHandler:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __49__ASDOcelotStore_sendSummaryWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__ASDOcelotStore_sendSummaryWithCompletionBlock___block_invoke_2;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __49__ASDOcelotStore_sendSummaryWithCompletionBlock___block_invoke_3;
    v7[3] = &unk_1E7CDB758;
    v8 = *(a1 + 32);
    [v4 sendSummaryMetricsWithCompletionBlock:v7];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 32) + 16);

    v6();
  }
}

- (void)sendPayoutWithCompletionBlock:(id)block
{
  v14 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] sendPayoutWithCompletionBlock", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__ASDOcelotStore_sendPayoutWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDB780;
  v11 = blockCopy;
  v8 = blockCopy;
  [(ASDServiceBroker *)serviceBroker getOcelotServiceWithCompletionHandler:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __48__ASDOcelotStore_sendPayoutWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__ASDOcelotStore_sendPayoutWithCompletionBlock___block_invoke_2;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __48__ASDOcelotStore_sendPayoutWithCompletionBlock___block_invoke_3;
    v7[3] = &unk_1E7CDB758;
    v8 = *(a1 + 32);
    [v4 sendPayoutMetricsWithCompletionBlock:v7];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 32) + 16);

    v6();
  }
}

- (void)showUpsellForItemID:(id)d completionBlock:(id)block
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  blockCopy = block;
  v8 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = objc_opt_class();
    v9 = v18;
    _os_log_impl(&dword_1B8220000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] showUpsellForItemID", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54__ASDOcelotStore_showUpsellForItemID_completionBlock___block_invoke;
  v14[3] = &unk_1E7CDB7D0;
  v15 = dCopy;
  v16 = blockCopy;
  v11 = dCopy;
  v12 = blockCopy;
  [(ASDServiceBroker *)serviceBroker getOcelotServiceWithCompletionHandler:v14];

  v13 = *MEMORY[0x1E69E9840];
}

void __54__ASDOcelotStore_showUpsellForItemID_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __54__ASDOcelotStore_showUpsellForItemID_completionBlock___block_invoke_2;
    v10[3] = &unk_1E7CDB730;
    v11 = *(a1 + 40);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__ASDOcelotStore_showUpsellForItemID_completionBlock___block_invoke_3;
    v8[3] = &unk_1E7CDB758;
    v5 = *(a1 + 32);
    v9 = *(a1 + 40);
    [v4 showUpsellForItemID:v5 completionBlock:v8];
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 40) + 16);

    v7();
  }
}

- (void)subscriptionDetailsWithCompletionBlock:(id)block
{
  v14 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] subscriptionDetailsWithCompletionBlock", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__ASDOcelotStore_subscriptionDetailsWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDB780;
  v11 = blockCopy;
  v8 = blockCopy;
  [(ASDServiceBroker *)serviceBroker getOcelotServiceWithCompletionHandler:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __57__ASDOcelotStore_subscriptionDetailsWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__ASDOcelotStore_subscriptionDetailsWithCompletionBlock___block_invoke_2;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __57__ASDOcelotStore_subscriptionDetailsWithCompletionBlock___block_invoke_3;
    v7[3] = &unk_1E7CDB7F8;
    v8 = *(a1 + 32);
    [v4 subscriptionDetailsWithCompletionBlock:v7];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 32) + 16);

    v6();
  }
}

- (void)subscriptionStateWithCompletionBlock:(id)block
{
  v14 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] subscriptionStateWithCompletionBlock", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__ASDOcelotStore_subscriptionStateWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDB780;
  v11 = blockCopy;
  v8 = blockCopy;
  [(ASDServiceBroker *)serviceBroker getOcelotServiceWithCompletionHandler:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __55__ASDOcelotStore_subscriptionStateWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __55__ASDOcelotStore_subscriptionStateWithCompletionBlock___block_invoke_2;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __55__ASDOcelotStore_subscriptionStateWithCompletionBlock___block_invoke_3;
    v7[3] = &unk_1E7CDB758;
    v8 = *(a1 + 32);
    [v4 subscriptionStateWithCompletionBlock:v7];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 32) + 16);

    v6();
  }
}

- (void)topAppsForAccount:(id)account completionBlock:(id)block
{
  v19 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  blockCopy = block;
  v8 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = objc_opt_class();
    v9 = v18;
    _os_log_impl(&dword_1B8220000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] topAppsForAccount", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __52__ASDOcelotStore_topAppsForAccount_completionBlock___block_invoke;
  v14[3] = &unk_1E7CDB7D0;
  v15 = accountCopy;
  v16 = blockCopy;
  v11 = accountCopy;
  v12 = blockCopy;
  [(ASDServiceBroker *)serviceBroker getOcelotServiceWithCompletionHandler:v14];

  v13 = *MEMORY[0x1E69E9840];
}

void __52__ASDOcelotStore_topAppsForAccount_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52__ASDOcelotStore_topAppsForAccount_completionBlock___block_invoke_2;
    v10[3] = &unk_1E7CDB730;
    v11 = *(a1 + 40);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __52__ASDOcelotStore_topAppsForAccount_completionBlock___block_invoke_3;
    v8[3] = &unk_1E7CDB7A8;
    v5 = *(a1 + 32);
    v9 = *(a1 + 40);
    [v4 topAppsForAccount:v5 completionBlock:v8];
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 40) + 16);

    v7();
  }
}

@end