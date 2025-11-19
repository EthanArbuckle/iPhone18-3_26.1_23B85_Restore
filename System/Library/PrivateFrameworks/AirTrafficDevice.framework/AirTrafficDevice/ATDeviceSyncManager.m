@interface ATDeviceSyncManager
+ (id)deviceSyncManager;
- (ATDeviceSyncManager)init;
- (id)_activeSessionsOnMessageLink:(id)a3;
- (id)_initiateSyncForDataClass:(id)a3 onMessageLink:(id)a4;
- (id)_sessionForMessageLink:(id)a3 dataClass:(id)a4;
- (id)_sessionTaskForRequest:(id)a3 onMessageLink:(id)a4;
- (id)_startSyncSessionForDataClass:(id)a3 messageLink:(id)a4 identifier:(id)a5;
- (id)initiateSyncForDataClass:(id)a3 onMessageLink:(id)a4;
- (void)_cancelSyncForDataClass:(id)a3 onMessageLink:(id)a4 setSyncPending:(BOOL)a5;
- (void)_handleBeginSyncSessionRequest:(id)a3 onMessageLink:(id)a4;
- (void)_handleEndSyncSessionRequest:(id)a3 onMessageLink:(id)a4;
- (void)_handleRequest:(id)a3 onMessageLink:(id)a4;
- (void)_removeSessionForMessageLink:(id)a3 dataClass:(id)a4;
- (void)_setSession:(id)a3 forMessageLink:(id)a4 dataClass:(id)a5;
- (void)cancelSyncForDataClass:(id)a3 onMessageLink:(id)a4;
- (void)cancelSyncOnMessageLink:(id)a3;
- (void)initiateSyncOnMessageLink:(id)a3;
- (void)messageLink:(id)a3 didReceiveRequest:(id)a4;
- (void)messageLinkWasClosed:(id)a3;
- (void)messageLinkWasInitialized:(id)a3;
- (void)messageLinkWasOpened:(id)a3;
- (void)session:(id)a3 didFinishSessionTask:(id)a4;
- (void)session:(id)a3 willBeginSessionTask:(id)a4;
- (void)sessionDidFinish:(id)a3;
- (void)sessionWillBegin:(id)a3;
@end

@implementation ATDeviceSyncManager

- (id)_sessionTaskForRequest:(id)a3 onMessageLink:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 dataClass];
  v9 = [(ATDeviceSyncManager *)self _sessionForMessageLink:v7 dataClass:v8];

  if (v9 && ([v9 isCancelled] & 1) == 0 && (objc_msgSend(v9, "isFinished") & 1) == 0)
  {
    v12 = [v6 command];
    if ([v12 isEqualToString:@"Sync"])
    {
      v13 = &ATDeviceSyncSessionSyncTaskGroupingKey;
    }

    else
    {
      v14 = [v6 command];
      if ([v14 isEqualToString:@"SyncTaskFinished"])
      {
        v13 = &ATDeviceSyncSessionSyncTaskGroupingKey;
      }

      else
      {
        v17 = [v6 command];
        v18 = [v17 isEqualToString:@"UpdateSyncSessionTask"];

        if (v18)
        {
          v13 = &ATDeviceSyncSessionSyncTaskGroupingKey;
          goto LABEL_14;
        }

        v12 = [v6 command];
        if ([v12 isEqualToString:@"BeginAssetTask"])
        {
          v13 = &ATDeviceSyncSessionAssetTaskGroupingKey;
          goto LABEL_13;
        }

        v14 = [v6 command];
        if (([v14 isEqualToString:@"EndAssetTask"] & 1) == 0)
        {
          v19 = [v6 command];
          if (([v19 isEqualToString:@"RequestAsset"] & 1) == 0)
          {
            v20 = [v6 command];
            if (([v20 isEqualToString:@"UpdateAssetSessionTask"] & 1) == 0)
            {
              v21 = [v6 command];
              if (([v21 isEqualToString:@"FileProgress"] & 1) == 0)
              {
                v22 = [v6 command];
                v23 = [v22 isEqualToString:@"AssetMetrics"];

                if ((v23 & 1) == 0)
                {
                  v15 = 0;
                  goto LABEL_15;
                }

                v13 = &ATDeviceSyncSessionAssetTaskGroupingKey;
LABEL_14:
                v15 = *v13;
LABEL_15:
                v16 = [v9 sessionTasksWithGroupingKey:v15];
                if ([v16 count])
                {
                  v10 = [v16 objectAtIndex:0];
                }

                else
                {
                  v10 = 0;
                }

                goto LABEL_5;
              }
            }
          }
        }

        v13 = &ATDeviceSyncSessionAssetTaskGroupingKey;
      }
    }

LABEL_13:

    goto LABEL_14;
  }

  v10 = 0;
LABEL_5:

  return v10;
}

- (id)_startSyncSessionForDataClass:(id)a3 messageLink:(id)a4 identifier:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _ATLogCategoryDeviceSync();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v20 = self;
    v21 = 2114;
    v22 = v8;
    v23 = 2114;
    v24 = v9;
    _os_log_impl(&dword_223819000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting %{public}@ sync session on %{public}@", buf, 0x20u);
  }

  ATReportEventIncrementingScalarKey();
  v12 = objc_alloc(MEMORY[0x277CEA468]);
  v13 = [v12 initWithSessionIdentifier:v10 sessionTypeIdentifier:*MEMORY[0x277CEA408]];

  [v13 setDataClass:v8];
  [v13 setMessageLink:v9];
  v14 = [MEMORY[0x277CE5430] sharedSessionServer];
  [v14 addSession:v13];

  [v13 addObserver:self];
  v15 = [[ATDeviceSyncSessionSyncTask alloc] initWithDataClass:v8 onMessageLink:v9];
  v18 = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  [v13 addSessionTasks:v16];

  [(ATDeviceSyncManager *)self _setSession:v13 forMessageLink:v9 dataClass:v8];
  [v13 start];

  return v13;
}

- (void)_removeSessionForMessageLink:(id)a3 dataClass:(id)a4
{
  v12 = a3;
  v6 = a4;
  activeSessionsForLinkIDAndDataClass = self->_activeSessionsForLinkIDAndDataClass;
  v8 = [v12 guid];
  v9 = [(NSMutableDictionary *)activeSessionsForLinkIDAndDataClass objectForKey:v8];

  if (v9)
  {
    [v9 removeObjectForKey:v6];
  }

  if (![v9 count])
  {
    v10 = self->_activeSessionsForLinkIDAndDataClass;
    v11 = [v12 guid];
    [(NSMutableDictionary *)v10 removeObjectForKey:v11];
  }
}

- (void)_setSession:(id)a3 forMessageLink:(id)a4 dataClass:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(ATDeviceSyncManager *)self _activeSessionsOnMessageLink:v8];
  if (!v10)
  {
    v10 = [MEMORY[0x277CBEB38] dictionary];
    activeSessionsForLinkIDAndDataClass = self->_activeSessionsForLinkIDAndDataClass;
    v12 = [v8 guid];
    [(NSMutableDictionary *)activeSessionsForLinkIDAndDataClass setObject:v10 forKey:v12];
  }

  [v10 setObject:v13 forKey:v9];
}

- (id)_sessionForMessageLink:(id)a3 dataClass:(id)a4
{
  v6 = a4;
  activeSessionsForLinkIDAndDataClass = self->_activeSessionsForLinkIDAndDataClass;
  v8 = [a3 guid];
  v9 = [(NSMutableDictionary *)activeSessionsForLinkIDAndDataClass objectForKey:v8];

  if (v9)
  {
    v10 = [v9 objectForKey:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_activeSessionsOnMessageLink:(id)a3
{
  activeSessionsForLinkIDAndDataClass = self->_activeSessionsForLinkIDAndDataClass;
  v4 = [a3 guid];
  v5 = [(NSMutableDictionary *)activeSessionsForLinkIDAndDataClass objectForKey:v4];

  return v5;
}

- (void)_handleRequest:(id)a3 onMessageLink:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(ATDeviceSyncManager *)self _sessionTaskForRequest:v6 onMessageLink:v7];
  v9 = v8;
  if (v8)
  {
    [v8 messageLink:v7 didReceiveRequest:v6];
  }

  else
  {
    v10 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v6 command];
      v17 = 138543618;
      v18 = self;
      v19 = 2114;
      v20 = v11;
      _os_log_impl(&dword_223819000, v10, OS_LOG_TYPE_ERROR, "%{public}@: No running task for request %{public}@.", &v17, 0x16u);
    }

    v12 = [v6 command];
    v13 = [v12 isEqualToString:@"RequestAsset"];

    if (v13)
    {
      v14 = 27;
    }

    else
    {
      v14 = 23;
    }

    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:v14 userInfo:0];
    v16 = [v6 responseWithError:v15 parameters:0];
    [v7 sendResponse:v16 withCompletion:0];
  }
}

- (void)_handleEndSyncSessionRequest:(id)a3 onMessageLink:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 dataClass];
  v9 = [(ATDeviceSyncManager *)self _sessionForMessageLink:v7 dataClass:v8];

  v10 = [v6 parameterForKey:@"_SessionID"];
  if (v9)
  {
    v11 = [v9 sessionIdentifier];
    if ([v11 isEqualToString:v10] && objc_msgSend(v9, "isRunning"))
    {
      if (([v9 isFinished] & 1) == 0)
      {

LABEL_13:
        v16 = _ATLogCategoryDeviceSync();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 138543362;
          v18 = self;
          _os_log_impl(&dword_223819000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: Canceling active session.", &v17, 0xCu);
        }

        [v9 cancel];
        goto LABEL_11;
      }

      v12 = [v9 isCancelled];

      if ((v12 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  v13 = _ATLogCategoryDeviceSync();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v9 sessionIdentifier];
    v17 = 138543874;
    v18 = self;
    v19 = 2114;
    v20 = v14;
    v21 = 2114;
    v22 = v10;
    _os_log_impl(&dword_223819000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Not cancelling active session with sessionId: %{public}@ - sessionId to cancel: %{public}@", &v17, 0x20u);
  }

LABEL_11:
  v15 = [v6 responseWithError:0 parameters:0];
  [v7 sendResponse:v15 withCompletion:0];
}

- (void)_handleBeginSyncSessionRequest:(id)a3 onMessageLink:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 dataClass];
  v9 = +[ATClientController sharedInstance];
  v10 = [v9 clientForDataclass:v8];

  if (v10 && [v10 conformsToProtocol:&unk_2837092A8] && (objc_msgSend(v10, "isEnabled") & 1) != 0)
  {
    v11 = +[ATDevicePairedSyncManager sharedPairedSyncManager];
    v12 = [v11 hasRestriction];

    if (v12)
    {
      v13 = _ATLogCategoryDeviceSync();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v43 = self;
        v44 = 2114;
        v45 = v7;
        v46 = 2114;
        v47 = v8;
        v14 = "%{public}@: sync is restricted on %{public}@ for dataclass %{public}@ - ignoring request to begin sync";
        v15 = v13;
        v16 = 32;
LABEL_9:
        _os_log_impl(&dword_223819000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
        goto LABEL_10;
      }

      goto LABEL_10;
    }

    v21 = [v6 parameters];
    v17 = [v21 objectForKey:@"_SessionID"];

    v22 = [v6 dataClass];
    v19 = [(ATDeviceSyncManager *)self _sessionForMessageLink:v7 dataClass:v22];

    if (!v19 || ([v19 isFinished] & 1) != 0 || objc_msgSend(v19, "isCancelled"))
    {
      v23 = [v6 dataClass];
      v24 = [(ATDeviceSyncManager *)self _startSyncSessionForDataClass:v23 messageLink:v7 identifier:v17];

      v40 = @"_SessionID";
      v25 = [v24 sessionIdentifier];
      v41 = v25;
      v26 = MEMORY[0x277CBEAC0];
      v27 = &v41;
      v28 = &v40;
    }

    else
    {
      v30 = _ATLogCategoryDeviceSync();
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
      if (!v17)
      {
        if (v31)
        {
          *buf = 138543362;
          v43 = self;
          _os_log_impl(&dword_223819000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring request to begin sync session.", buf, 0xCu);
        }

        v25 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:16 userInfo:0];
        v18 = [v6 responseWithError:v25 parameters:0];
        goto LABEL_17;
      }

      if (v31)
      {
        *buf = 138543362;
        v43 = self;
        _os_log_impl(&dword_223819000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@: Canceling active session and adopting remote session.", buf, 0xCu);
      }

      [v19 cancel];
      v32 = [v6 dataClass];
      [(ATDeviceSyncManager *)self _removeSessionForMessageLink:v7 dataClass:v32];

      v34 = [v6 dataClass];
      v35 = [v6 parameters];
      v33 = [v35 objectForKey:@"_SessionID"];
      v24 = [(ATDeviceSyncManager *)self _startSyncSessionForDataClass:v34 messageLink:v7 identifier:v33];

      v38 = @"_SessionID";
      v25 = [v24 sessionIdentifier];
      v39 = v25;
      v26 = MEMORY[0x277CBEAC0];
      v27 = &v39;
      v28 = &v38;
    }

    v29 = [v26 dictionaryWithObjects:v27 forKeys:v28 count:1];
    v18 = [v6 responseWithError:0 parameters:v29];

    v19 = v24;
LABEL_17:

    goto LABEL_11;
  }

  v13 = _ATLogCategoryDeviceSync();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v43 = self;
    v44 = 2114;
    v45 = v8;
    v14 = "%{public}@: sync disabled for data class '%{public}@'.";
    v15 = v13;
    v16 = 22;
    goto LABEL_9;
  }

LABEL_10:

  v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:9 userInfo:0];
  v18 = [v6 responseWithError:v17 parameters:0];
  v19 = 0;
LABEL_11:

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __68__ATDeviceSyncManager__handleBeginSyncSessionRequest_onMessageLink___block_invoke;
  v36[3] = &unk_2784E59D8;
  v36[4] = self;
  v37 = v19;
  v20 = v19;
  [v7 sendResponse:v18 withCompletion:v36];
}

void __68__ATDeviceSyncManager__handleBeginSyncSessionRequest_onMessageLink___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to send BeginSyncSession response", &v7, 0xCu);
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      [v6 cancel];
    }
  }
}

- (void)_cancelSyncForDataClass:(id)a3 onMessageLink:(id)a4 setSyncPending:(BOOL)a5
{
  v5 = a5;
  v19 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(ATDeviceSyncManager *)self _sessionForMessageLink:v9 dataClass:v8];
  v11 = v10;
  if (v10 && [v10 isRunning] && (!objc_msgSend(v11, "isFinished") || (objc_msgSend(v11, "isCancelled") & 1) == 0))
  {
    v12 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543874;
      v14 = self;
      v15 = 2114;
      v16 = v8;
      v17 = 2114;
      v18 = v9;
      _os_log_impl(&dword_223819000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Cancelling sync session for data class %{public}@ on %{public}@", &v13, 0x20u);
    }

    [v11 cancel];
  }

  [(ATDeviceSettings *)self->_settings setSyncPending:v5 forDataClass:v8];
}

- (id)_initiateSyncForDataClass:(id)a3 onMessageLink:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _ATLogCategoryDeviceSync();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v33 = self;
    v34 = 2114;
    v35 = v6;
    v36 = 2048;
    v37 = v7;
    _os_log_impl(&dword_223819000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: trying to initiate sync for dataclass %{public}@ on link=%p", buf, 0x20u);
  }

  v9 = +[ATDevicePairedSyncManager sharedPairedSyncManager];
  v10 = [v9 hasRestriction];

  if (!v10)
  {
    v13 = +[ATClientController sharedInstance];
    v14 = [v13 clientForDataclass:v6];

    if ((objc_opt_respondsToSelector() & 1) != 0 && ([v14 isEnabled] & 1) == 0)
    {
      [(ATDeviceSettings *)self->_settings setSyncPending:0 forDataClass:v6];
      v18 = _ATLogCategoryDeviceSync();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544130;
        v33 = self;
        v34 = 2048;
        v35 = v14;
        v36 = 2114;
        v37 = v6;
        v38 = 2048;
        v39 = v7;
        _os_log_impl(&dword_223819000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: Sync Client=%p is not enabled to sync dataclass %{public}@ on link=%p", buf, 0x2Au);
      }

      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:9 userInfo:0];
      goto LABEL_24;
    }

    [(ATDeviceSettings *)self->_settings setSyncPending:1 forDataClass:v6];
    if ([v7 isInitialized])
    {
      v15 = [(ATDeviceSyncManager *)self _sessionForMessageLink:v7 dataClass:v6];
      if (v15)
      {
        v16 = v15;
        v17 = _ATLogCategoryDeviceSync();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          v33 = self;
          v34 = 2114;
          v35 = v6;
          v36 = 2114;
          v37 = v16;
          _os_log_impl(&dword_223819000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: not starting sync for dataclass %{public}@ because we already have an active session %{public}@", buf, 0x20u);
        }

        v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:0 userInfo:0];

        goto LABEL_24;
      }

      if ([v7 endpointType] == 1)
      {
        v19 = [(ATDeviceSyncManager *)self _startSyncSessionForDataClass:v6 messageLink:v7 identifier:0];
        v20 = v19;
        if (v19)
        {
          v30 = @"_SessionID";
          v21 = [v19 sessionIdentifier];
          v31 = v21;
          v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        }

        else
        {
          v22 = 0;
        }
      }

      else
      {
        v22 = 0;
        v20 = 0;
      }

      v23 = [objc_alloc(MEMORY[0x277CEA458]) initWithCommand:@"BeginSyncSession" dataClass:v6 parameters:v22];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __63__ATDeviceSyncManager__initiateSyncForDataClass_onMessageLink___block_invoke;
      v26[3] = &unk_2784E4920;
      v26[4] = self;
      v27 = v6;
      v28 = v7;
      v29 = v20;
      v24 = v20;
      [v28 sendRequest:v23 withCompletion:v26];
    }

    v12 = 0;
LABEL_24:

    goto LABEL_25;
  }

  v11 = _ATLogCategoryDeviceSync();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v33 = self;
    v34 = 2114;
    v35 = v7;
    v36 = 2114;
    v37 = v6;
    _os_log_impl(&dword_223819000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: sync is restricted on %{public}@ for dataclass %{public}@ - ignoring request to begin sync", buf, 0x20u);
  }

  v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:9 userInfo:0];
LABEL_25:

  return v12;
}

void __63__ATDeviceSyncManager__initiateSyncForDataClass_onMessageLink___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      *buf = 138543874;
      v30 = v8;
      v31 = 2114;
      v32 = v6;
      v33 = 2114;
      v34 = v9;
      _os_log_impl(&dword_223819000, v7, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@ error sending begin sync session for dataclass %{public}@", buf, 0x20u);
    }

    v11 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = *(v11 + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__ATDeviceSyncManager__initiateSyncForDataClass_onMessageLink___block_invoke_80;
    block[3] = &unk_2784E59B0;
    block[4] = v11;
    v27 = v10;
    v28 = *(a1 + 48);
    dispatch_async(v12, block);

    v13 = v27;
LABEL_5:

    goto LABEL_13;
  }

  v14 = [v5 error];

  if (!v14)
  {
    if (*(a1 + 56))
    {
      goto LABEL_13;
    }

    v20 = *(a1 + 32);
    v19 = *(a1 + 40);
    v21 = *(v20 + 8);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __63__ATDeviceSyncManager__initiateSyncForDataClass_onMessageLink___block_invoke_81;
    v22[3] = &unk_2784E5100;
    v22[4] = v20;
    v23 = v19;
    v24 = *(a1 + 48);
    v25 = v5;
    dispatch_async(v21, v22);

    v13 = v23;
    goto LABEL_5;
  }

  v15 = _ATLogCategoryDeviceSync();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = *(a1 + 32);
    v17 = [v5 error];
    v18 = *(a1 + 40);
    *buf = 138543874;
    v30 = v16;
    v31 = 2114;
    v32 = v17;
    v33 = 2114;
    v34 = v18;
    _os_log_impl(&dword_223819000, v15, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@ error after sending begin sync session for dataclass %{public}@", buf, 0x20u);
  }

  if (*(a1 + 56))
  {
    [*(a1 + 32) cancelSyncForDataClass:*(a1 + 40) onMessageLink:*(a1 + 48)];
  }

  [*(*(a1 + 32) + 24) setSyncPending:0 forDataClass:*(a1 + 40)];
LABEL_13:
}

void __63__ATDeviceSyncManager__initiateSyncForDataClass_onMessageLink___block_invoke_81(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v6 = [*(a1 + 56) parameters];
  v4 = [v6 objectForKey:@"_SessionID"];
  v5 = [v1 _startSyncSessionForDataClass:v2 messageLink:v3 identifier:v4];
}

- (void)sessionDidFinish:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__ATDeviceSyncManager_sessionDidFinish___block_invoke;
  v7[3] = &unk_2784E5960;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __40__ATDeviceSyncManager_sessionDidFinish___block_invoke(uint64_t a1)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v2 = _ATLogCategoryDeviceSync();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_223819000, v2, OS_LOG_TYPE_DEFAULT, "Sync session complete", buf, 2u);
  }

  v3 = [*(a1 + 32) sessionIdentifier];
  v4 = [*(a1 + 32) dataClass];
  v5 = [*(a1 + 32) messageLink];
  [v5 removeTimeoutException];
  v6 = [*(a1 + 40) _sessionForMessageLink:v5 dataClass:v4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 sessionIdentifier];
    v9 = [*(a1 + 32) sessionIdentifier];
    v10 = [v8 isEqualToString:v9];

    if (v10)
    {
      [*(a1 + 40) _removeSessionForMessageLink:v5 dataClass:v4];
    }
  }

  if ([*(a1 + 32) isCancelled])
  {
    v29 = @"_SessionID";
    v30[0] = v3;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v12 = [objc_alloc(MEMORY[0x277CEA458]) initWithCommand:@"EndSyncSession" dataClass:v4 parameters:v11];
    [v5 sendRequest:v12 withCompletion:0];
LABEL_8:

    goto LABEL_10;
  }

  v11 = [*(a1 + 32) error];
  if (!v11)
  {
    if ([v5 endpointType] != 1)
    {
      goto LABEL_11;
    }

    v13 = +[ATClientController sharedInstance];
    v11 = [v13 clientForDataclass:v4];

    if ([v11 conformsToProtocol:&unk_2837092A8])
    {
      v14 = *(*(a1 + 40) + 24);
      v15 = [v5 identifier];
      v12 = [v14 syncStateForLibrary:v15 dataClass:v4];

      v16 = [v11 currentRevision];
      if (v16 != [v12 lastServerRevision])
      {
        v17 = _ATLogCategoryDeviceSync();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = *(a1 + 40);
          *buf = 138543618;
          v26 = v18;
          v27 = 2114;
          v28 = v4;
          _os_log_impl(&dword_223819000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: new changes available for '%{public}@' - syncing again", buf, 0x16u);
        }

        [*(*(a1 + 40) + 24) setSyncPending:1 forDataClass:v4];
        v19 = dispatch_time(0, 5000000000);
        v20 = *(a1 + 40);
        v21 = *(v20 + 8);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __40__ATDeviceSyncManager_sessionDidFinish___block_invoke_77;
        block[3] = &unk_2784E59B0;
        block[4] = v20;
        v23 = v4;
        v24 = v5;
        dispatch_after(v19, v21, block);
      }

      goto LABEL_8;
    }
  }

LABEL_10:

LABEL_11:
}

- (void)sessionWillBegin:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__ATDeviceSyncManager_sessionWillBegin___block_invoke;
  block[3] = &unk_2784E5938;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

void __40__ATDeviceSyncManager_sessionWillBegin___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) messageLink];
  [v1 addTimeoutException];
}

- (void)session:(id)a3 didFinishSessionTask:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__ATDeviceSyncManager_session_didFinishSessionTask___block_invoke;
  block[3] = &unk_2784E59B0;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __52__ATDeviceSyncManager_session_didFinishSessionTask___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) dataClass];
  v3 = [*(a1 + 40) sessionGroupingKey];
  v4 = [v3 isEqualToString:@"ATDeviceSyncSessionSyncTaskGroupingKey"];

  v5 = *(a1 + 40);
  if (v4)
  {
    v6 = [v5 error];
    if (!v6)
    {
      if (([*(a1 + 40) isCancelled] & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v7 = [v5 sessionGroupingKey];
  v8 = [v7 isEqualToString:@"ATDeviceSyncSessionAssetTaskGroupingKey"];

  if (v8)
  {
    v6 = [*(a1 + 40) error];
    if (!v6)
    {
      if (([*(a1 + 40) isCancelled] & 1) == 0)
      {
        v9 = _ATLogCategoryDeviceSync();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a1 + 48);
          v13 = 138543618;
          v14 = v10;
          v15 = 2114;
          v16 = v2;
          _os_log_impl(&dword_223819000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: session for data class %{public}@ completed successfully - clearing needs-sync flag", &v13, 0x16u);
        }

        v11 = *(*(a1 + 48) + 24);
        v12 = [*(a1 + 32) dataClass];
        [v11 setSyncPending:0 forDataClass:v12];
      }

      goto LABEL_8;
    }

LABEL_7:

LABEL_8:
    ATReportEventIncrementingScalarKey();
  }

LABEL_9:
}

- (void)session:(id)a3 willBeginSessionTask:(id)a4
{
  v5 = [a4 sessionGroupingKey];
  v6 = [v5 isEqualToString:@"ATDeviceSyncSessionSyncTaskGroupingKey"];

  if (v6)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__ATDeviceSyncManager_session_willBeginSessionTask___block_invoke;
    block[3] = &unk_2784E5938;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

uint64_t __52__ATDeviceSyncManager_session_willBeginSessionTask___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) pairingSyncCompletionTime];
  if (v3 != 0.0)
  {
    [*(*(a1 + 32) + 24) setPairingSyncCompletionTime:0.0];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];

    return ATReportEventAddDoubleToScalarKey();
  }

  return result;
}

- (void)messageLink:(id)a3 didReceiveRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__ATDeviceSyncManager_messageLink_didReceiveRequest___block_invoke;
  block[3] = &unk_2784E59B0;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

uint64_t __53__ATDeviceSyncManager_messageLink_didReceiveRequest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) command];
  v3 = [v2 isEqualToString:@"BeginSyncSession"];

  if (v3)
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = *(a1 + 48);

    return [v4 _handleBeginSyncSessionRequest:v5 onMessageLink:v6];
  }

  else
  {
    v8 = [*(a1 + 32) command];
    v9 = [v8 isEqualToString:@"EndSyncSession"];

    v11 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = *(a1 + 48);
    if (v9)
    {

      return [v10 _handleEndSyncSessionRequest:v11 onMessageLink:v12];
    }

    else
    {

      return [v10 _handleRequest:v11 onMessageLink:v12];
    }
  }
}

- (void)messageLinkWasClosed:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__ATDeviceSyncManager_messageLinkWasClosed___block_invoke;
  v7[3] = &unk_2784E5960;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __44__ATDeviceSyncManager_messageLinkWasClosed___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _activeSessionsOnMessageLink:*(a1 + 40)];
  if (v2)
  {
    v3 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138543618;
      v18 = v4;
      v19 = 2114;
      v20 = v2;
      _os_log_impl(&dword_223819000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: message link was closed - cancelling remaining sessions %{public}@", buf, 0x16u);
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [v2 allValues];
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * v9);
          v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:8 userInfo:0];
          [v10 setError:v11];

          [v10 cancel];
          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

- (void)messageLinkWasInitialized:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__ATDeviceSyncManager_messageLinkWasInitialized___block_invoke;
  v7[3] = &unk_2784E5960;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __49__ATDeviceSyncManager_messageLinkWasInitialized___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = +[ATClientController sharedInstance];
  v3 = [v2 allClients];

  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        if ([v8 conformsToProtocol:&unk_2837092A8])
        {
          v9 = [v8 syncDataClass];
          if (([*(*(a1 + 32) + 24) isSyncPendingForDataClass:v9] & 1) != 0 || objc_msgSend(*(a1 + 40), "endpointType") == 1 && (v10 = *(*(a1 + 32) + 24), objc_msgSend(*(a1 + 40), "identifier"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "syncStateForLibrary:dataClass:", v11, v9), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v12))
          {
            v13 = [*(a1 + 32) _initiateSyncForDataClass:v9 onMessageLink:*(a1 + 40)];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }
}

- (void)messageLinkWasOpened:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = +[ATClientController sharedInstance];
  v6 = [v5 allClients];

  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 conformsToProtocol:&unk_2837092A8])
        {
          v12 = [v11 syncDataClass];
          [v4 addRequestHandler:self forDataClass:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)cancelSyncOnMessageLink:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__ATDeviceSyncManager_cancelSyncOnMessageLink___block_invoke;
  v7[3] = &unk_2784E5960;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __47__ATDeviceSyncManager_cancelSyncOnMessageLink___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _activeSessionsOnMessageLink:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = [v2 allKeys];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(a1 + 32) _cancelSyncForDataClass:*(*(&v9 + 1) + 8 * v8++) onMessageLink:*(a1 + 40) setSyncPending:0];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)initiateSyncOnMessageLink:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__ATDeviceSyncManager_initiateSyncOnMessageLink___block_invoke;
  v7[3] = &unk_2784E5960;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __49__ATDeviceSyncManager_initiateSyncOnMessageLink___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = +[ATClientController sharedInstance];
  v3 = [v2 allClients];

  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 conformsToProtocol:&unk_2837092A8])
        {
          v9 = *(a1 + 32);
          v10 = [v8 syncDataClass];
          v11 = [v9 _initiateSyncForDataClass:v10 onMessageLink:*(a1 + 40)];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (void)cancelSyncForDataClass:(id)a3 onMessageLink:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__ATDeviceSyncManager_cancelSyncForDataClass_onMessageLink___block_invoke;
  block[3] = &unk_2784E59B0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (id)initiateSyncForDataClass:(id)a3 onMessageLink:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__1115;
  v21 = __Block_byref_object_dispose__1116;
  v22 = 0;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__ATDeviceSyncManager_initiateSyncForDataClass_onMessageLink___block_invoke;
  v13[3] = &unk_2784E5030;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v16 = &v17;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

uint64_t __62__ATDeviceSyncManager_initiateSyncForDataClass_onMessageLink___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 56) + 8) + 40) = [*(a1 + 32) _initiateSyncForDataClass:*(a1 + 40) onMessageLink:*(a1 + 48)];

  return MEMORY[0x2821F96F8]();
}

- (ATDeviceSyncManager)init
{
  v12.receiver = self;
  v12.super_class = ATDeviceSyncManager;
  v2 = [(ATDeviceSyncManager *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    activeSessionsForLinkIDAndDataClass = v2->_activeSessionsForLinkIDAndDataClass;
    v2->_activeSessionsForLinkIDAndDataClass = v3;

    v5 = objc_opt_class();
    Name = class_getName(v5);
    v7 = dispatch_queue_create(Name, 0);
    queue = v2->_queue;
    v2->_queue = v7;

    v9 = +[ATDeviceSettings sharedInstance];
    settings = v2->_settings;
    v2->_settings = v9;
  }

  return v2;
}

+ (id)deviceSyncManager
{
  v2 = objc_alloc_init(ATDeviceSyncManager);

  return v2;
}

@end