@interface AMSEngagementConnection
- (AMSEngagementConnection)initWithNotificationCenter:(id)center;
- (id)_makeExportedClientConnectionInterface;
- (id)_makeRemoteConnectionInterface;
- (id)_newRemoteConnection;
- (id)proxy;
- (void)_removeRemoteConnection;
- (void)beginObservingMessages;
- (void)contentInfoForApp:(id)app cacheKey:(id)key version:(id)version reply:(id)reply;
- (void)dealloc;
- (void)enqueueWithRequest:(id)request completion:(id)completion;
- (void)fetchMetricsIdentifiers;
- (void)handlePushedEvent:(id)event;
- (void)manualSyncMetricsIdentifiers;
- (void)notifyBlockedMessages:(id)messages;
- (void)syncMetricsIdentifiers;
- (void)syncWithRequest:(id)request completion:(id)completion;
- (void)treatmentStoreServiceWithReply:(id)reply;
- (void)treatmentsDidSyncronize;
@end

@implementation AMSEngagementConnection

- (id)proxy
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  connection = [(AMSEngagementConnection *)selfCopy connection];
  if (!connection)
  {
    connection = [(AMSEngagementConnection *)selfCopy _newRemoteConnection];
    [(AMSEngagementConnection *)selfCopy setConnection:connection];
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __32__AMSEngagementConnection_proxy__block_invoke;
  v6[3] = &unk_1E73B34B8;
  v6[4] = selfCopy;
  v4 = [connection remoteObjectProxyWithErrorHandler:v6];

  objc_sync_exit(selfCopy);

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

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    *buf = 138543618;
    v20 = v5;
    v21 = 2114;
    v22 = v6;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Creating new connection.", buf, 0x16u);
  }

  v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.xpc.amsengagementd" options:0];
  queue = [(AMSEngagementConnection *)self queue];
  [v7 _setQueue:queue];

  _makeRemoteConnectionInterface = [(AMSEngagementConnection *)self _makeRemoteConnectionInterface];
  [v7 setRemoteObjectInterface:_makeRemoteConnectionInterface];

  _makeExportedClientConnectionInterface = [(AMSEngagementConnection *)self _makeExportedClientConnectionInterface];
  [v7 setExportedInterface:_makeExportedClientConnectionInterface];

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
  proxy = [(AMSEngagementConnection *)self proxy];
  [proxy beginObservingMessages];
}

- (AMSEngagementConnection)initWithNotificationCenter:(id)center
{
  centerCopy = center;
  v12.receiver = self;
  v12.super_class = AMSEngagementConnection;
  v6 = [(AMSEngagementConnection *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_notificationCenter, center);
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
  connection = [(AMSEngagementConnection *)self connection];
  [connection invalidate];

  [(AMSEngagementConnection *)self setConnection:0];
}

- (void)handlePushedEvent:(id)event
{
  eventCopy = event;
  notificationCenter = [(AMSEngagementConnection *)self notificationCenter];
  [notificationCenter postNotificationName:@"com.apple.AppleMediaServices.engagement.pushEvent" object:eventCopy];
}

- (void)treatmentsDidSyncronize
{
  notificationCenter = [(AMSEngagementConnection *)self notificationCenter];
  [notificationCenter postNotificationName:@"AMSEngagementTreatmentsDidSyncronizeNotification" object:0];
}

- (void)contentInfoForApp:(id)app cacheKey:(id)key version:(id)version reply:(id)reply
{
  replyCopy = reply;
  versionCopy = version;
  keyCopy = key;
  appCopy = app;
  proxy = [(AMSEngagementConnection *)self proxy];
  [proxy contentInfoForApp:appCopy cacheKey:keyCopy version:versionCopy reply:replyCopy];
}

- (void)enqueueWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  proxy = [(AMSEngagementConnection *)self proxy];
  [proxy enqueueWithRequest:requestCopy completion:completionCopy];
}

- (void)notifyBlockedMessages:(id)messages
{
  messagesCopy = messages;
  proxy = [(AMSEngagementConnection *)self proxy];
  [proxy notifyBlockedMessages:messagesCopy];
}

- (void)syncWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  proxy = [(AMSEngagementConnection *)self proxy];
  [proxy syncWithRequest:requestCopy completion:completionCopy];
}

- (void)syncMetricsIdentifiers
{
  proxy = [(AMSEngagementConnection *)self proxy];
  [proxy syncMetricsIdentifiers];
}

- (void)fetchMetricsIdentifiers
{
  proxy = [(AMSEngagementConnection *)self proxy];
  [proxy fetchMetricsIdentifiers];
}

- (void)treatmentStoreServiceWithReply:(id)reply
{
  replyCopy = reply;
  proxy = [(AMSEngagementConnection *)self proxy];
  [proxy treatmentStoreServiceWithReply:replyCopy];
}

- (void)manualSyncMetricsIdentifiers
{
  proxy = [(AMSEngagementConnection *)self proxy];
  [proxy manualSyncMetricsIdentifiers];
}

@end