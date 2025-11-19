@interface AMSEngagementConnection
- (AMSEngagementConnection)initWithNotificationCenter:(id)a3;
- (id)_makeExportedClientConnectionInterface;
- (id)_makeRemoteConnectionInterface;
- (id)_newRemoteConnection;
- (id)proxy;
- (void)_removeRemoteConnection;
- (void)beginObservingMessages;
- (void)contentInfoForApp:(id)a3 cacheKey:(id)a4 version:(id)a5 reply:(id)a6;
- (void)dealloc;
- (void)enqueueWithRequest:(id)a3 completion:(id)a4;
- (void)fetchMetricsIdentifiers;
- (void)handlePushedEvent:(id)a3;
- (void)manualSyncMetricsIdentifiers;
- (void)notifyBlockedMessages:(id)a3;
- (void)syncMetricsIdentifiers;
- (void)syncWithRequest:(id)a3 completion:(id)a4;
- (void)treatmentStoreServiceWithReply:(id)a3;
- (void)treatmentsDidSyncronize;
@end

@implementation AMSEngagementConnection

- (id)proxy
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(AMSEngagementConnection *)v2 connection];
  if (!v3)
  {
    v3 = [(AMSEngagementConnection *)v2 _newRemoteConnection];
    [(AMSEngagementConnection *)v2 setConnection:v3];
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __32__AMSEngagementConnection_proxy__block_invoke;
  v6[3] = &unk_1E73B34B8;
  v6[4] = v2;
  v4 = [v3 remoteObjectProxyWithErrorHandler:v6];

  objc_sync_exit(v2);

  return v4;
}

- (id)_newRemoteConnection
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = +[AMSLogConfig sharedEngagementConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    *buf = 138543618;
    v20 = v5;
    v21 = 2114;
    v22 = v6;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Creating new connection.", buf, 0x16u);
  }

  v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.xpc.amsengagementd" options:0];
  v8 = [(AMSEngagementConnection *)self queue];
  [v7 _setQueue:v8];

  v9 = [(AMSEngagementConnection *)self _makeRemoteConnectionInterface];
  [v7 setRemoteObjectInterface:v9];

  v10 = [(AMSEngagementConnection *)self _makeExportedClientConnectionInterface];
  [v7 setExportedInterface:v10];

  [v7 setExportedObject:self];
  objc_initWeak(buf, self);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __47__AMSEngagementConnection__newRemoteConnection__block_invoke;
  v17[3] = &unk_1E73B4418;
  objc_copyWeak(&v18, buf);
  [v7 setInvalidationHandler:v17];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __47__AMSEngagementConnection__newRemoteConnection__block_invoke_2;
  v15 = &unk_1E73B4418;
  objc_copyWeak(&v16, buf);
  [v7 setInterruptionHandler:&v12];
  [v7 resume];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
  return v7;
}

- (id)_makeRemoteConnectionInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F07950A8];
  v3 = objc_alloc(MEMORY[0x1E695DFD8]);
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v3 initWithObjects:{v4, v5, objc_opt_class(), 0}];
  [v2 setClasses:v6 forSelector:sel_contentInfoForApp_cacheKey_version_reply_ argumentIndex:0 ofReply:1];
  v7 = +[AMSEngagementEnqueueResult archiveClasses];
  [v2 setClasses:v7 forSelector:sel_enqueueWithRequest_completion_ argumentIndex:0 ofReply:1];

  v8 = +[AMSEngagementSyncResult archiveClasses];
  [v2 setClasses:v8 forSelector:sel_syncWithRequest_completion_ argumentIndex:0 ofReply:1];

  v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F07CDFE8];
  v10 = objc_alloc(MEMORY[0x1E695DFD8]);
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v10 initWithObjects:{v11, v12, v13, objc_opt_class(), 0}];
  [v9 setClasses:v14 forSelector:sel_treatmentsForAreas_cachePolicy_startDate_endDate_completion_ argumentIndex:0 ofReply:1];
  v15 = objc_alloc(MEMORY[0x1E695DFD8]);
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = [v15 initWithObjects:{v16, v17, objc_opt_class(), 0}];
  [v9 setClasses:v18 forSelector:sel_areasWithIDs_cachePolicy_completion_ argumentIndex:0 ofReply:1];
  [v2 setInterface:v9 forSelector:sel_treatmentStoreServiceWithReply_ argumentIndex:0 ofReply:1];

  return v2;
}

- (id)_makeExportedClientConnectionInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0794F58];
  v3 = +[AMSEngagementPushEvent archiveClasses];
  [v2 setClasses:v3 forSelector:sel_handlePushedEvent_ argumentIndex:0 ofReply:0];

  return v2;
}

- (void)beginObservingMessages
{
  v2 = [(AMSEngagementConnection *)self proxy];
  [v2 beginObservingMessages];
}

- (AMSEngagementConnection)initWithNotificationCenter:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = AMSEngagementConnection;
  v6 = [(AMSEngagementConnection *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_notificationCenter, a3);
    v8 = dispatch_get_global_queue(0, 0);
    v9 = dispatch_queue_create_with_target_V2("com.apple.AppleMediaServices.engagement", 0, v8);
    queue = v7->_queue;
    v7->_queue = v9;
  }

  return v7;
}

void __32__AMSEngagementConnection_proxy__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[AMSLogConfig sharedEngagementConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    v7 = 138543874;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    v11 = 2114;
    v12 = v2;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to retrieve remote object. %{public}@", &v7, 0x20u);
  }
}

- (void)dealloc
{
  [(AMSEngagementConnection *)self _removeRemoteConnection];
  v3.receiver = self;
  v3.super_class = AMSEngagementConnection;
  [(AMSEngagementConnection *)&v3 dealloc];
}

void __47__AMSEngagementConnection__newRemoteConnection__block_invoke(uint64_t a1)
{
  obj = objc_loadWeakRetained((a1 + 32));
  objc_sync_enter(obj);
  [obj _removeRemoteConnection];
  objc_sync_exit(obj);

  v1 = [obj notificationCenter];
  [v1 postNotificationName:@"AMSEnagementConnectionErrorNotification" object:0];
}

void __47__AMSEngagementConnection__newRemoteConnection__block_invoke_2(uint64_t a1)
{
  obj = objc_loadWeakRetained((a1 + 32));
  objc_sync_enter(obj);
  [obj _removeRemoteConnection];
  objc_sync_exit(obj);

  v1 = [obj notificationCenter];
  [v1 postNotificationName:@"AMSEnagementConnectionErrorNotification" object:0];
}

- (void)_removeRemoteConnection
{
  v3 = [(AMSEngagementConnection *)self connection];
  [v3 invalidate];

  [(AMSEngagementConnection *)self setConnection:0];
}

- (void)handlePushedEvent:(id)a3
{
  v4 = a3;
  v5 = [(AMSEngagementConnection *)self notificationCenter];
  [v5 postNotificationName:@"com.apple.AppleMediaServices.engagement.pushEvent" object:v4];
}

- (void)treatmentsDidSyncronize
{
  v2 = [(AMSEngagementConnection *)self notificationCenter];
  [v2 postNotificationName:@"AMSEngagementTreatmentsDidSyncronizeNotification" object:0];
}

- (void)contentInfoForApp:(id)a3 cacheKey:(id)a4 version:(id)a5 reply:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(AMSEngagementConnection *)self proxy];
  [v14 contentInfoForApp:v13 cacheKey:v12 version:v11 reply:v10];
}

- (void)enqueueWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AMSEngagementConnection *)self proxy];
  [v8 enqueueWithRequest:v7 completion:v6];
}

- (void)notifyBlockedMessages:(id)a3
{
  v4 = a3;
  v5 = [(AMSEngagementConnection *)self proxy];
  [v5 notifyBlockedMessages:v4];
}

- (void)syncWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AMSEngagementConnection *)self proxy];
  [v8 syncWithRequest:v7 completion:v6];
}

- (void)syncMetricsIdentifiers
{
  v2 = [(AMSEngagementConnection *)self proxy];
  [v2 syncMetricsIdentifiers];
}

- (void)fetchMetricsIdentifiers
{
  v2 = [(AMSEngagementConnection *)self proxy];
  [v2 fetchMetricsIdentifiers];
}

- (void)treatmentStoreServiceWithReply:(id)a3
{
  v4 = a3;
  v5 = [(AMSEngagementConnection *)self proxy];
  [v5 treatmentStoreServiceWithReply:v4];
}

- (void)manualSyncMetricsIdentifiers
{
  v2 = [(AMSEngagementConnection *)self proxy];
  [v2 manualSyncMetricsIdentifiers];
}

@end