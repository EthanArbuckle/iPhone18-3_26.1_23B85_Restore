@interface AMSServerDataCacheService
- (AMSServerDataCacheService)init;
- (id)_makeRemoteConnectionInterface;
- (id)_newRemoteConnection;
- (id)dataForAccountDSID:(id)d cacheTypeID:(id)iD networkPolicy:(int64_t)policy;
- (id)granularNotificationSettingsForAccountDSID:(id)d bundleID:(id)iD networkPolicy:(int64_t)policy;
- (id)proxyWithErrorHandler:(id)handler;
- (id)reminderEventsForAccount:(id)account service:(id)service eventType:(id)type networkPolicy:(int64_t)policy;
- (id)setUpCacheForAccount:(id)account;
- (id)setUpCacheForAccountDSID:(id)d;
- (id)tearDownCacheForAccountDSID:(id)d;
- (id)updateCacheForAccountDSID:(id)d withCachePayload:(id)payload;
- (id)updateCacheForAccountDSID:(id)d withCacheTypeIDs:(id)ds;
- (void)_removeRemoteConnection;
- (void)dealloc;
@end

@implementation AMSServerDataCacheService

- (AMSServerDataCacheService)init
{
  v7.receiver = self;
  v7.super_class = AMSServerDataCacheService;
  v2 = [(AMSServerDataCacheService *)&v7 init];
  if (v2)
  {
    v3 = dispatch_get_global_queue(0, 0);
    v4 = dispatch_queue_create_with_target_V2("com.apple.AppleMediaServices.serverDataCacheService", 0, v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

- (id)proxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__60;
  v16 = __Block_byref_object_dispose__60;
  v17 = 0;
  queue = [(AMSServerDataCacheService *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__AMSServerDataCacheService_proxyWithErrorHandler___block_invoke;
  block[3] = &unk_1E73BBD00;
  v10 = handlerCopy;
  v11 = &v12;
  block[4] = self;
  v6 = handlerCopy;
  dispatch_sync(queue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __51__AMSServerDataCacheService_proxyWithErrorHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  if (!v2)
  {
    v2 = [*(a1 + 32) _newRemoteConnection];
    [*(a1 + 32) setConnection:v2];
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__AMSServerDataCacheService_proxyWithErrorHandler___block_invoke_2;
  v7[3] = &unk_1E73BBCD8;
  v3 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v3;
  v4 = [v2 remoteObjectProxyWithErrorHandler:v7];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __51__AMSServerDataCacheService_proxyWithErrorHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedServerDataCacheConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    v8 = 138543874;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    v12 = 2114;
    v13 = v3;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to retrieve remote object. %{public}@", &v8, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)dealloc
{
  [(AMSServerDataCacheService *)self _removeRemoteConnection];
  v3.receiver = self;
  v3.super_class = AMSServerDataCacheService;
  [(AMSServerDataCacheService *)&v3 dealloc];
}

- (id)_makeRemoteConnectionInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F07CE168];
  [v2 setClass:objc_opt_class() forSelector:sel_setUpCacheForAccount_completion_ argumentIndex:0 ofReply:0];

  return v2;
}

- (id)_newRemoteConnection
{
  queue = [(AMSServerDataCacheService *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.xpc.amsserverdatacacheservice" options:0];
  queue2 = [(AMSServerDataCacheService *)self queue];
  [v4 _setQueue:queue2];

  _makeRemoteConnectionInterface = [(AMSServerDataCacheService *)self _makeRemoteConnectionInterface];
  [v4 setRemoteObjectInterface:_makeRemoteConnectionInterface];

  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__AMSServerDataCacheService__newRemoteConnection__block_invoke;
  v10[3] = &unk_1E73B4418;
  objc_copyWeak(&v11, &location);
  [v4 setInvalidationHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__AMSServerDataCacheService__newRemoteConnection__block_invoke_2;
  v8[3] = &unk_1E73B4418;
  objc_copyWeak(&v9, &location);
  [v4 setInterruptionHandler:v8];
  [v4 resume];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
  return v4;
}

void __49__AMSServerDataCacheService__newRemoteConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _removeRemoteConnection];
}

void __49__AMSServerDataCacheService__newRemoteConnection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _removeRemoteConnection];
}

- (void)_removeRemoteConnection
{
  connection = [(AMSServerDataCacheService *)self connection];
  [connection invalidate];

  [(AMSServerDataCacheService *)self setConnection:0];
}

- (id)reminderEventsForAccount:(id)account service:(id)service eventType:(id)type networkPolicy:(int64_t)policy
{
  v35 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  typeCopy = type;
  ams_DSID = [account ams_DSID];
  v13 = objc_opt_new();
  if (ams_DSID)
  {
    v14 = +[AMSLogConfig sharedServerDataCacheConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v14 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = AMSLogKey();
      *buf = 138544386;
      v26 = v16;
      v27 = 2114;
      v28 = v17;
      v29 = 2114;
      v30 = typeCopy;
      v31 = 2114;
      v32 = serviceCopy;
      v33 = 2114;
      v34 = ams_DSID;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Retrieving %{public}@ events for %{public}@ %{public}@.", buf, 0x34u);
    }

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __86__AMSServerDataCacheService_reminderEventsForAccount_service_eventType_networkPolicy___block_invoke;
    v23[3] = &unk_1E73B34B8;
    v18 = v13;
    v24 = v18;
    v19 = [(AMSServerDataCacheService *)self proxyWithErrorHandler:v23];
    completionHandlerAdapter = [v18 completionHandlerAdapter];
    [v19 reminderEventsForAccountDSID:ams_DSID service:serviceCopy eventType:typeCopy networkPolicy:policy completion:completionHandlerAdapter];

    v21 = v18;
  }

  else
  {
    v21 = AMSError(12, @"No dsid for account", @"Account is missing dsid", 0);
    [v13 finishWithError:v21];
  }

  return v13;
}

- (id)granularNotificationSettingsForAccountDSID:(id)d bundleID:(id)iD networkPolicy:(int64_t)policy
{
  v30 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  v10 = objc_opt_new();
  v11 = +[AMSLogConfig sharedServerDataCacheConfig];
  if (!v11)
  {
    v11 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v11 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = AMSLogKey();
    *buf = 138544130;
    v23 = v13;
    v24 = 2114;
    v25 = v14;
    v26 = 2114;
    v27 = dCopy;
    v28 = 2114;
    v29 = iDCopy;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Retrieving granular notification settings for %{public}@ %{public}@.", buf, 0x2Au);
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __95__AMSServerDataCacheService_granularNotificationSettingsForAccountDSID_bundleID_networkPolicy___block_invoke;
  v20[3] = &unk_1E73B34B8;
  v15 = v10;
  v21 = v15;
  v16 = [(AMSServerDataCacheService *)self proxyWithErrorHandler:v20];
  completionHandlerAdapter = [v15 completionHandlerAdapter];
  [v16 granularNotificationSettingsForAccountDSID:dCopy bundleID:iDCopy networkPolicy:policy completion:completionHandlerAdapter];

  v18 = v15;
  return v15;
}

- (id)dataForAccountDSID:(id)d cacheTypeID:(id)iD networkPolicy:(int64_t)policy
{
  v32 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  v10 = objc_opt_new();
  v11 = +[AMSLogConfig sharedServerDataCacheConfig];
  if (!v11)
  {
    v11 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v11 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = AMSLogKey();
    *buf = 138544386;
    v23 = v13;
    v24 = 2114;
    v25 = v14;
    v26 = 2114;
    v27 = dCopy;
    v28 = 2114;
    v29 = iDCopy;
    v30 = 2048;
    policyCopy = policy;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Retrieving data for %{public}@ cacheTypeId: %{public}@, networkPolicy: %ld.", buf, 0x34u);
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __74__AMSServerDataCacheService_dataForAccountDSID_cacheTypeID_networkPolicy___block_invoke;
  v20[3] = &unk_1E73B34B8;
  v15 = v10;
  v21 = v15;
  v16 = [(AMSServerDataCacheService *)self proxyWithErrorHandler:v20];
  completionHandlerAdapter = [v15 completionHandlerAdapter];
  [v16 dataForAccountDSID:dCopy cacheTypeID:iDCopy networkPolicy:policy completion:completionHandlerAdapter];

  v18 = v15;
  return v15;
}

- (id)setUpCacheForAccount:(id)account
{
  v24 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v5 = objc_opt_new();
  v6 = +[AMSLogConfig sharedServerDataCacheConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = AMSLogKey();
    ams_DSID = [accountCopy ams_DSID];
    *buf = 138543874;
    v19 = v8;
    v20 = 2114;
    v21 = v9;
    v22 = 2114;
    v23 = ams_DSID;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Setting up cache for dsid %{public}@.", buf, 0x20u);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __50__AMSServerDataCacheService_setUpCacheForAccount___block_invoke;
  v16[3] = &unk_1E73B34B8;
  v11 = v5;
  v17 = v11;
  v12 = [(AMSServerDataCacheService *)self proxyWithErrorHandler:v16];
  completionHandlerAdapter = [v11 completionHandlerAdapter];
  [v12 setUpCacheForAccount:accountCopy completion:completionHandlerAdapter];

  v14 = v11;
  return v11;
}

- (id)setUpCacheForAccountDSID:(id)d
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = objc_opt_new();
  v6 = +[AMSLogConfig sharedServerDataCacheConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = AMSLogKey();
    *buf = 138543874;
    v18 = v8;
    v19 = 2114;
    v20 = v9;
    v21 = 2114;
    v22 = dCopy;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Setting up cache for dsid %{public}@.", buf, 0x20u);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__AMSServerDataCacheService_setUpCacheForAccountDSID___block_invoke;
  v15[3] = &unk_1E73B34B8;
  v10 = v5;
  v16 = v10;
  v11 = [(AMSServerDataCacheService *)self proxyWithErrorHandler:v15];
  completionHandlerAdapter = [v10 completionHandlerAdapter];
  [v11 setUpCacheForAccountDSID:dCopy completion:completionHandlerAdapter];

  v13 = v10;
  return v10;
}

- (id)tearDownCacheForAccountDSID:(id)d
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = objc_opt_new();
  v6 = +[AMSLogConfig sharedServerDataCacheConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = AMSLogKey();
    *buf = 138543874;
    v18 = v8;
    v19 = 2114;
    v20 = v9;
    v21 = 2114;
    v22 = dCopy;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Tearing down cache for dsid %{public}@.", buf, 0x20u);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __57__AMSServerDataCacheService_tearDownCacheForAccountDSID___block_invoke;
  v15[3] = &unk_1E73B34B8;
  v10 = v5;
  v16 = v10;
  v11 = [(AMSServerDataCacheService *)self proxyWithErrorHandler:v15];
  completionHandlerAdapter = [v10 completionHandlerAdapter];
  [v11 tearDownCacheForAccountDSID:dCopy completion:completionHandlerAdapter];

  v13 = v10;
  return v10;
}

- (id)updateCacheForAccountDSID:(id)d withCachePayload:(id)payload
{
  v26 = *MEMORY[0x1E69E9840];
  dCopy = d;
  payloadCopy = payload;
  v8 = objc_opt_new();
  v9 = +[AMSLogConfig sharedServerDataCacheConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v9 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = AMSLogKey();
    *buf = 138543874;
    v21 = v11;
    v22 = 2114;
    v23 = v12;
    v24 = 2114;
    v25 = dCopy;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Updating cache for %{public}@ with payload", buf, 0x20u);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __72__AMSServerDataCacheService_updateCacheForAccountDSID_withCachePayload___block_invoke;
  v18[3] = &unk_1E73B34B8;
  v13 = v8;
  v19 = v13;
  v14 = [(AMSServerDataCacheService *)self proxyWithErrorHandler:v18];
  completionHandlerAdapter = [v13 completionHandlerAdapter];
  [v14 updateCacheForAccountDSID:dCopy withCachePayload:payloadCopy completion:completionHandlerAdapter];

  v16 = v13;
  return v13;
}

- (id)updateCacheForAccountDSID:(id)d withCacheTypeIDs:(id)ds
{
  v28 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dsCopy = ds;
  v8 = objc_opt_new();
  v9 = +[AMSLogConfig sharedServerDataCacheConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v9 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = AMSLogKey();
    *buf = 138544130;
    v21 = v11;
    v22 = 2114;
    v23 = v12;
    v24 = 2114;
    v25 = dCopy;
    v26 = 2114;
    v27 = dsCopy;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Updating data for %{public}@ cacheTypeIds: %{public}@", buf, 0x2Au);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __72__AMSServerDataCacheService_updateCacheForAccountDSID_withCacheTypeIDs___block_invoke;
  v18[3] = &unk_1E73B34B8;
  v13 = v8;
  v19 = v13;
  v14 = [(AMSServerDataCacheService *)self proxyWithErrorHandler:v18];
  completionHandlerAdapter = [v13 completionHandlerAdapter];
  [v14 updateCacheForAccountDSID:dCopy withCacheTypeIDs:dsCopy completion:completionHandlerAdapter];

  v16 = v13;
  return v13;
}

@end