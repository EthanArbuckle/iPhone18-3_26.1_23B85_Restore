@interface ATDeviceSyncSessionSyncTask
- (ATDeviceSyncSessionSyncTask)initWithDataClass:(id)class onMessageLink:(id)link;
- (void)_applyChangesForSyncResponse:(id)response toCurrentRevision:(unint64_t)revision versionToken:(id)token onMessageLink:(id)link;
- (void)_drainInputStream:(id)stream withCompletion:(id)completion;
- (void)_finishSyncWithError:(id)error;
- (void)_finishTaskWithError:(id)error;
- (void)_processSyncRequest:(id)request onMessageLink:(id)link;
- (void)_processSyncResponse:(id)response onMessageLink:(id)link;
- (void)_resetSyncDataForLibrary:(id)library withCompletionHandler:(id)handler;
- (void)_sendSyncRequestOnMessageLink:(id)link;
- (void)_sendSyncRequestWithChangesAfterRevision:(unint64_t)revision toRevision:(unint64_t)toRevision withNewRevision:(unint64_t)newRevision withSyncType:(unsigned int)type onMessageLink:(id)link;
- (void)_sendSyncRequestWithParams:(id)params withSyncType:(unsigned int)type syncState:(id)state newRevision:(unint64_t)revision versionToken:(id)token inputStream:(id)stream onMessageLink:(id)link;
- (void)_sendSyncResponseToRequest:(id)request withChangesAfterRevision:(unint64_t)revision toRevision:(unint64_t)toRevision withNewRevision:(unint64_t)newRevision withSyncType:(unsigned int)type onMessageLink:(id)link;
- (void)_sendSyncResponseToRequest:(id)request withParams:(id)params withNewRevision:(unint64_t)revision withSyncType:(unsigned int)type inputStream:(id)stream onMessageLink:(id)link;
- (void)_updateProgressWithCount:(unint64_t)count totalItemCount:(unint64_t)clientTotalItemCount forEndpointType:(int)type;
- (void)cancel;
- (void)messageLink:(id)link didReceiveRequest:(id)request;
- (void)start;
@end

@implementation ATDeviceSyncSessionSyncTask

- (void)_updateProgressWithCount:(unint64_t)count totalItemCount:(unint64_t)clientTotalItemCount forEndpointType:(int)type
{
  if (self->_syncIterationCount == 1)
  {
    if (type == 1)
    {
      self->_serverCurrentItemCount = count;
      self->_serverTotalItemCount = clientTotalItemCount;
      if (self->_clientTotalItemCount)
      {
        clientTotalItemCount = self->_clientTotalItemCount;
      }

      self->_clientTotalItemCount = clientTotalItemCount;
    }

    else
    {
      self->_clientCurrentItemCount = count;
      self->_clientTotalItemCount = clientTotalItemCount;
    }

    v11 = v5;
    v12 = v6;
    serverCurrentItemCount = self->_serverCurrentItemCount;
    clientCurrentItemCount = self->_clientCurrentItemCount;
    serverTotalItemCount = self->_serverTotalItemCount;
    v10.receiver = self;
    v10.super_class = ATDeviceSyncSessionSyncTask;
    [(ATDeviceSyncSessionTask *)&v10 updateProgressWithCount:clientCurrentItemCount + serverCurrentItemCount totalItemCount:clientTotalItemCount + serverTotalItemCount];
  }
}

- (void)_drainInputStream:(id)stream withCompletion:(id)completion
{
  streamCopy = stream;
  completionCopy = completion;
  v8 = completionCopy;
  if (streamCopy)
  {
    v9 = objc_alloc(MEMORY[0x277D27F20]);
    queue = [(ATDeviceSyncSessionTask *)self queue];
    v11 = [v9 initWithInputStream:streamCopy queue:queue];

    [(NSMutableArray *)self->_streamReaders addObject:v11];
    objc_initWeak(&location, self);
    objc_initWeak(&from, v11);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __64__ATDeviceSyncSessionSyncTask__drainInputStream_withCompletion___block_invoke;
    v19[3] = &unk_2784E53C0;
    objc_copyWeak(&v21, &from);
    objc_copyWeak(&v22, &location);
    v20 = v8;
    v12 = MEMORY[0x223DED0C0](v19);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __64__ATDeviceSyncSessionSyncTask__drainInputStream_withCompletion___block_invoke_165;
    v17[3] = &unk_2784E53E8;
    v13 = v12;
    v18 = v13;
    [v11 setDidFinishReadingBlock:v17];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __64__ATDeviceSyncSessionSyncTask__drainInputStream_withCompletion___block_invoke_2;
    v15[3] = &unk_2784E5410;
    v14 = v13;
    v16 = v14;
    [v11 setDidEncounterErrorBlock:v15];
    [v11 setDidReadDataBlock:&__block_literal_global_3532];
    [v11 start];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __64__ATDeviceSyncSessionSyncTask__drainInputStream_withCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_loadWeakRetained((a1 + 48));
  v4 = v3;
  if (v3 && (*(v3 + 201) & 1) == 0)
  {
    v7 = [v3 queue];
    dispatch_assert_queue_V2(v7);

    [v4[24] removeObject:WeakRetained];
    v5 = _ATLogCategoryDeviceSync();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    v9 = 138543618;
    v10 = v4;
    v11 = 2048;
    v12 = WeakRetained;
    v6 = "%{public}@: Removing reader=%p";
  }

  else
  {
    v5 = _ATLogCategoryDeviceSync();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    v9 = 138543618;
    v10 = v4;
    v11 = 2048;
    v12 = WeakRetained;
    v6 = "%{public}@: Not removing reader=%p";
  }

  _os_log_impl(&dword_223819000, v5, OS_LOG_TYPE_DEFAULT, v6, &v9, 0x16u);
LABEL_8:

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, 0);
  }
}

- (void)_resetSyncDataForLibrary:(id)library withCompletionHandler:(id)handler
{
  libraryCopy = library;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_pluginClient);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__ATDeviceSyncSessionSyncTask__resetSyncDataForLibrary_withCompletionHandler___block_invoke;
  v11[3] = &unk_2784E5398;
  v11[4] = self;
  v12 = libraryCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = libraryCopy;
  [WeakRetained resetSyncDataWithCompletion:v11];
}

void __78__ATDeviceSyncSessionSyncTask__resetSyncDataForLibrary_withCompletionHandler___block_invoke(void *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = a1[4];
      v11 = 138543618;
      v12 = v5;
      v13 = 2114;
      v14 = v3;
      _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_ERROR, "%{public}@: failed to reset sync data store. err=%{public}@", &v11, 0x16u);
    }
  }

  else
  {
    v6 = a1[4];
    v7 = a1[5];
    v8 = v6[23];
    v9 = [v6 dataClass];
    [v8 setSyncState:0 forLibrary:v7 dataClass:v9];
  }

  v10 = a1[6];
  if (v10)
  {
    (*(v10 + 16))(v10, v3);
  }
}

- (void)_sendSyncResponseToRequest:(id)request withParams:(id)params withNewRevision:(unint64_t)revision withSyncType:(unsigned int)type inputStream:(id)stream onMessageLink:(id)link
{
  v10 = *&type;
  v39[3] = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  linkCopy = link;
  settings = self->_settings;
  streamCopy = stream;
  requestCopy = request;
  identifier = [linkCopy identifier];
  dataClass = [(ATSessionTask *)self dataClass];
  v19 = [(ATDeviceSettings *)settings syncStateForLibrary:identifier dataClass:dataClass];

  v32 = paramsCopy;
  if (paramsCopy)
  {
    [MEMORY[0x277CBEB38] dictionaryWithDictionary:paramsCopy];
  }

  else
  {
    [MEMORY[0x277CBEB38] dictionary];
  }
  v20 = ;
  identifier2 = [linkCopy identifier];
  [v20 setObject:identifier2 forKey:@"LibraryID"];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v10];
  [v20 setObject:v22 forKey:@"SyncType"];

  v38[0] = @"LastServerRevision";
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v19, "lastServerRevision")}];
  v39[0] = v23;
  v38[1] = @"LastClientRevision";
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v19, "lastClientRevision")}];
  v39[1] = v24;
  v38[2] = @"NewRevisionKey";
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:revision];
  v39[2] = v25;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:3];
  [v20 setObject:v26 forKey:@"SyncState"];

  v27 = [requestCopy responseWithError:0 parameters:v20];

  [v27 setDataStream:v31];
  [v27 setOptions:3];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __124__ATDeviceSyncSessionSyncTask__sendSyncResponseToRequest_withParams_withNewRevision_withSyncType_inputStream_onMessageLink___block_invoke;
  v34[3] = &unk_2784E5230;
  v34[4] = self;
  v35 = v19;
  v36 = linkCopy;
  revisionCopy = revision;
  v28 = linkCopy;
  v29 = v19;
  [v28 sendResponse:v27 withCompletion:v34];
}

void __124__ATDeviceSyncSessionSyncTask__sendSyncResponseToRequest_withParams_withNewRevision_withSyncType_inputStream_onMessageLink___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v17 = 138543618;
      v18 = v5;
      v19 = 2114;
      v20 = v3;
      _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_ERROR, "%{public}@: failed to send sync response data. err=%{public}@", &v17, 0x16u);
    }

    [*(a1 + 32) _finishSyncWithError:v3];
  }

  else
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = [v6 mutableCopy];
    }

    else
    {
      v7 = [MEMORY[0x277CBEB38] dictionary];
    }

    v8 = v7;
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 176));
    v10 = [WeakRetained revisionVersionToken];
    [v8 setVersionToken:v10];

    [v8 setLastServerRevision:*(a1 + 56)];
    v11 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = [*(a1 + 48) identifier];
      v17 = 138543874;
      v18 = v12;
      v19 = 2114;
      v20 = v13;
      v21 = 2114;
      v22 = v8;
      _os_log_impl(&dword_223819000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: saving new sync state for %{public}@, %{public}@", &v17, 0x20u);
    }

    v14 = *(*(a1 + 32) + 184);
    v15 = [*(a1 + 48) identifier];
    v16 = [*(a1 + 32) dataClass];
    [v14 setSyncState:v8 forLibrary:v15 dataClass:v16];
  }
}

- (void)_sendSyncResponseToRequest:(id)request withChangesAfterRevision:(unint64_t)revision toRevision:(unint64_t)toRevision withNewRevision:(unint64_t)newRevision withSyncType:(unsigned int)type onMessageLink:(id)link
{
  requestCopy = request;
  linkCopy = link;
  queue = [(ATDeviceSyncSessionTask *)self queue];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __137__ATDeviceSyncSessionSyncTask__sendSyncResponseToRequest_withChangesAfterRevision_toRevision_withNewRevision_withSyncType_onMessageLink___block_invoke;
  v20[3] = &unk_2784E5370;
  typeCopy = type;
  v20[4] = self;
  v21 = linkCopy;
  v22 = requestCopy;
  revisionCopy = revision;
  toRevisionCopy = toRevision;
  newRevisionCopy = newRevision;
  v26 = a2;
  v18 = requestCopy;
  v19 = linkCopy;
  dispatch_async(queue, v20);
}

void __137__ATDeviceSyncSessionSyncTask__sendSyncResponseToRequest_withChangesAfterRevision_toRevision_withNewRevision_withSyncType_onMessageLink___block_invoke(uint64_t a1)
{
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x2020000000;
  v50 = 0;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2020000000;
  v48 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__3549;
  v45 = __Block_byref_object_dispose__3550;
  v46 = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = __Block_byref_object_copy__3549;
  v39[4] = __Block_byref_object_dispose__3550;
  v40 = 0;
  v37 = 0;
  obj = 0;
  [MEMORY[0x277CBEBA0] getBoundStreamsWithBufferSize:0x2000 inputStream:&obj outputStream:&v37];
  objc_storeStrong(&v40, obj);
  objc_storeStrong(&v46, v37);
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v36[3] = 0;
  [*(a1 + 32) setCurrentItemDescriptions:&unk_2836F53B0];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 176));
  v18 = *(a1 + 88);
  v3 = [*(a1 + 40) endpointType];
  v5 = *(a1 + 56);
  v4 = *(a1 + 64);
  v6 = [*(a1 + 48) parameters];
  v7 = v42[5];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __137__ATDeviceSyncSessionSyncTask__sendSyncResponseToRequest_withChangesAfterRevision_toRevision_withNewRevision_withSyncType_onMessageLink___block_invoke_2;
  v28[3] = &unk_2784E52F8;
  v8 = *(a1 + 32);
  v31 = v49;
  v28[4] = v8;
  v9 = *(a1 + 48);
  v10 = *(a1 + 72);
  v35 = *(a1 + 88);
  v29 = v9;
  v32 = v39;
  v33 = v10;
  v11 = *(a1 + 40);
  v12 = *(a1 + 80);
  v30 = v11;
  v34 = v12;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __137__ATDeviceSyncSessionSyncTask__sendSyncResponseToRequest_withChangesAfterRevision_toRevision_withNewRevision_withSyncType_onMessageLink___block_invoke_3;
  v25[3] = &unk_2784E5320;
  v13 = *(a1 + 40);
  v25[4] = *(a1 + 32);
  v26 = v13;
  v27 = v36;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __137__ATDeviceSyncSessionSyncTask__sendSyncResponseToRequest_withChangesAfterRevision_toRevision_withNewRevision_withSyncType_onMessageLink___block_invoke_157;
  v19[3] = &unk_2784E5348;
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v21 = v47;
  v22 = v36;
  v19[4] = v14;
  v23 = &v41;
  v16 = v15;
  v17 = *(a1 + 80);
  v20 = v16;
  v24 = v17;
  [WeakRetained getChangesForSyncType:v18 endpointType:v3 afterRevision:v5 upToRevision:v4 withSyncParams:v6 intoOutputStream:v7 withStartHandler:v28 withProgressHandler:v25 withCompletionHandler:v19];

  _Block_object_dispose(v36, 8);
  _Block_object_dispose(v39, 8);

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(v47, 8);
  _Block_object_dispose(v49, 8);
}

void __137__ATDeviceSyncSessionSyncTask__sendSyncResponseToRequest_withChangesAfterRevision_toRevision_withNewRevision_withSyncType_onMessageLink___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 56) + 8);
  if (*(v3 + 24))
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    v4 = *(a1 + 80);
    v5 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((v5 + 176));
    v7 = [WeakRetained description];
    [v14 handleFailureInMethod:v4 object:v5 file:@"ATDeviceSyncSessionSyncTask.m" lineNumber:564 description:{@"start handler already invoked for client %@", v7}];
  }

  else
  {
    *(v3 + 24) = 1;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 88);
    v11 = *(a1 + 72);
    v12 = *(*(*(a1 + 64) + 8) + 40);
    v13 = *(a1 + 48);

    [v8 _sendSyncResponseToRequest:v9 withParams:a2 withNewRevision:v11 withSyncType:v10 inputStream:v12 onMessageLink:v13];
  }
}

uint64_t __137__ATDeviceSyncSessionSyncTask__sendSyncResponseToRequest_withChangesAfterRevision_toRevision_withNewRevision_withSyncType_onMessageLink___block_invoke_3(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a3 >> 4 >= 0x271 && (*(*(a1 + 32) + 200) & 1) == 0)
  {
    v6 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = a3;
      _os_log_impl(&dword_223819000, v6, OS_LOG_TYPE_DEFAULT, "adding transport upgrade exception for %lld changes total", &v9, 0xCu);
    }

    v7 = [*(a1 + 40) socket];
    [v7 addTransportUpgradeException];

    *(*(a1 + 32) + 200) = 1;
  }

  *(*(*(a1 + 48) + 8) + 24) = a3;
  return [*(a1 + 32) _updateProgressWithCount:a2 totalItemCount:a3 forEndpointType:1];
}

void __137__ATDeviceSyncSessionSyncTask__sendSyncResponseToRequest_withChangesAfterRevision_toRevision_withNewRevision_withSyncType_onMessageLink___block_invoke_157(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 48) + 8);
  if (*(v4 + 24))
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    v6 = *(a1 + 72);
    v7 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((v7 + 176));
    v9 = [WeakRetained description];
    [v5 handleFailureInMethod:v6 object:v7 file:@"ATDeviceSyncSessionSyncTask.m" lineNumber:606 description:{@"end handler already invoked for client %@", v9}];
  }

  else
  {
    *(v4 + 24) = 1;
    *(*(a1 + 32) + 224) += *(*(*(a1 + 56) + 8) + 24);
    v10 = *(*(*(a1 + 56) + 8) + 24);
    [*(a1 + 32) _updateProgressWithCount:v10 totalItemCount:v10 forEndpointType:1];
    if (![*(*(*(a1 + 64) + 8) + 40) streamStatus])
    {
      [*(*(*(a1 + 64) + 8) + 40) open];
      [*(*(*(a1 + 64) + 8) + 40) close];
    }

    v11 = _ATLogCategoryDeviceSync();
    v12 = v11;
    if (v3)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 32);
        *buf = 138543618;
        v20 = v13;
        v21 = 2114;
        v22 = v3;
        _os_log_impl(&dword_223819000, v12, OS_LOG_TYPE_ERROR, "%{public}@: failed to read sync response data. err=%{public}@", buf, 0x16u);
      }

      [*(a1 + 32) _finishSyncWithError:v3];
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        v15 = [*(a1 + 40) identifier];
        *buf = 138543618;
        v20 = v14;
        v21 = 2114;
        v22 = v15;
        _os_log_impl(&dword_223819000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: finished reading sync response data for library=%{public}@", buf, 0x16u);
      }

      [*(a1 + 32) setCurrentItemDescriptions:&unk_2836F53C8];
    }

    v16 = *(a1 + 32);
    if (v16[200] == 1)
    {
      v17 = [v16 messageLink];
      v18 = [v17 socket];
      [v18 removeTransportUpgradeException];

      *(*(a1 + 32) + 200) = 0;
    }
  }
}

- (void)_processSyncRequest:(id)request onMessageLink:(id)link
{
  v79 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  linkCopy = link;
  ++self->_syncIterationCount;
  parameters = [requestCopy parameters];
  v9 = [parameters objectForKey:@"SyncState"];

  settings = self->_settings;
  identifier = [linkCopy identifier];
  dataClass = [(ATSessionTask *)self dataClass];
  v13 = [(ATDeviceSettings *)settings syncStateForLibrary:identifier dataClass:dataClass];

  WeakRetained = objc_loadWeakRetained(&self->_pluginClient);
  currentRevision = [WeakRetained currentRevision];
  v16 = _ATLogCategoryDeviceSync();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    parameters2 = [requestCopy parameters];
    *buf = 138543618;
    selfCopy7 = self;
    v73 = 2114;
    v74 = parameters2;
    _os_log_impl(&dword_223819000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: received sync request. params=%{public}@", buf, 0x16u);
  }

  v18 = _ATLogCategoryDeviceSync();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    selfCopy7 = self;
    v73 = 2114;
    v74 = v13;
    v75 = 2114;
    v76 = v9;
    v77 = 2048;
    v78 = currentRevision;
    _os_log_impl(&dword_223819000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: syncState=%{public}@, requestSyncState=%{public}@, currentRevision=%llu", buf, 0x2Au);
  }

  v43 = currentRevision;

  revisionVersionToken = [WeakRetained revisionVersionToken];
  versionToken = [v13 versionToken];
  v45 = v9;
  if (versionToken && (v21 = versionToken, [v13 versionToken], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "isEqualToString:", revisionVersionToken), v22, v9 = v45, v21, (v23 & 1) == 0))
  {
    v35 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      versionToken2 = [v13 versionToken];
      *buf = 138543874;
      selfCopy7 = self;
      v73 = 2114;
      v74 = versionToken2;
      v75 = 2114;
      v76 = revisionVersionToken;
      _os_log_impl(&dword_223819000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@: library version token has changed from %{public}@ to %{public}@ - forcing reset", buf, 0x20u);
    }

    dataStream = [requestCopy dataStream];
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __65__ATDeviceSyncSessionSyncTask__processSyncRequest_onMessageLink___block_invoke;
    v68[3] = &unk_2784E5230;
    v68[4] = self;
    v28 = &v69;
    v69 = requestCopy;
    v70[1] = v43;
    v29 = v70;
    v70[0] = linkCopy;
    v30 = v68;
  }

  else
  {
    lastServerRevision = [v9 lastServerRevision];
    if (lastServerRevision <= [v13 lastServerRevision])
    {
      parameters3 = [requestCopy parameters];
      v32 = [parameters3 objectForKey:@"SyncType"];
      integerValue = [v32 integerValue];

      if (integerValue == 2)
      {
        lastServerRevision2 = 0;
        v34 = v45;
      }

      else
      {
        v34 = v45;
        lastServerRevision2 = [v45 lastServerRevision];
      }

      newRevision = [v34 newRevision];
      if (newRevision == [v13 lastClientRevision])
      {
        v38 = _ATLogCategoryDeviceSync();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy7 = self;
          _os_log_impl(&dword_223819000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@: ignoring request data we've already applied", buf, 0xCu);
        }

        dataStream = [requestCopy dataStream];
        v61[0] = MEMORY[0x277D85DD0];
        v61[1] = 3221225472;
        v61[2] = __65__ATDeviceSyncSessionSyncTask__processSyncRequest_onMessageLink___block_invoke_144;
        v61[3] = &unk_2784E5258;
        v61[4] = self;
        v28 = &v62;
        v62 = requestCopy;
        v63[1] = lastServerRevision2;
        v63[2] = v43;
        v64 = integerValue;
        v29 = v63;
        v63[0] = linkCopy;
        v30 = v61;
      }

      else
      {
        lastClientRevision = [v34 lastClientRevision];
        if (lastClientRevision <= [v13 lastClientRevision])
        {
          if ([v34 lastServerRevision] <= v43)
          {
            queue = [(ATDeviceSyncSessionTask *)self queue];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __65__ATDeviceSyncSessionSyncTask__processSyncRequest_onMessageLink___block_invoke_2;
            block[3] = &unk_2784E52D0;
            block[4] = self;
            v53 = integerValue;
            v28 = &v47;
            v47 = linkCopy;
            v29 = &v48;
            v48 = requestCopy;
            v49 = v13;
            v50 = v34;
            v51 = revisionVersionToken;
            v52 = lastServerRevision2;
            dispatch_async(queue, block);

            dataStream = v49;
            goto LABEL_30;
          }

          v41 = _ATLogCategoryDeviceSync();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            selfCopy7 = self;
            _os_log_impl(&dword_223819000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@: client has a newer revision than the server - forcing reset sync", buf, 0xCu);
          }

          dataStream = [requestCopy dataStream];
          v54[0] = MEMORY[0x277D85DD0];
          v54[1] = 3221225472;
          v54[2] = __65__ATDeviceSyncSessionSyncTask__processSyncRequest_onMessageLink___block_invoke_146;
          v54[3] = &unk_2784E5230;
          v54[4] = self;
          v28 = &v55;
          v55 = requestCopy;
          v56[1] = v43;
          v29 = v56;
          v56[0] = linkCopy;
          v30 = v54;
        }

        else
        {
          v40 = _ATLogCategoryDeviceSync();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            selfCopy7 = self;
            _os_log_impl(&dword_223819000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@: ignoring request data because we are out of sync - draining request stream and respond with our current state", buf, 0xCu);
          }

          dataStream = [requestCopy dataStream];
          v57[0] = MEMORY[0x277D85DD0];
          v57[1] = 3221225472;
          v57[2] = __65__ATDeviceSyncSessionSyncTask__processSyncRequest_onMessageLink___block_invoke_145;
          v57[3] = &unk_2784E5258;
          v57[4] = self;
          v28 = &v58;
          v58 = requestCopy;
          v59[1] = lastServerRevision2;
          v59[2] = v43;
          v60 = integerValue;
          v29 = v59;
          v59[0] = linkCopy;
          v30 = v57;
        }
      }
    }

    else
    {
      v25 = _ATLogCategoryDeviceSync();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        identifier2 = [linkCopy identifier];
        *buf = 138543618;
        selfCopy7 = self;
        v73 = 2114;
        v74 = identifier2;
        _os_log_impl(&dword_223819000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: server revision for %{public}@ has been reset - forcing reset", buf, 0x16u);
      }

      dataStream = [requestCopy dataStream];
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = __65__ATDeviceSyncSessionSyncTask__processSyncRequest_onMessageLink___block_invoke_143;
      v65[3] = &unk_2784E5230;
      v65[4] = self;
      v28 = &v66;
      v66 = requestCopy;
      v67[1] = v43;
      v29 = v67;
      v67[0] = linkCopy;
      v30 = v65;
    }
  }

  [(ATDeviceSyncSessionSyncTask *)self _drainInputStream:dataStream withCompletion:v30];
LABEL_30:
}

void __65__ATDeviceSyncSessionSyncTask__processSyncRequest_onMessageLink___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setCurrentItemDescriptions:&unk_2836F5398];
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v19[3] = 0;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 176));
  v3 = *(a1 + 88);
  v4 = [*(a1 + 40) endpointType];
  v5 = [*(a1 + 48) dataStream];
  v6 = [*(a1 + 48) parameters];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __65__ATDeviceSyncSessionSyncTask__processSyncRequest_onMessageLink___block_invoke_3;
  v18[3] = &unk_2784E5280;
  v18[4] = v19;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__ATDeviceSyncSessionSyncTask__processSyncRequest_onMessageLink___block_invoke_4;
  v9[3] = &unk_2784E52A8;
  v9[4] = *(a1 + 32);
  v15 = v19;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v7 = *(a1 + 40);
  v8 = *(a1 + 80);
  v14 = v7;
  v16 = v8;
  v17 = *(a1 + 88);
  [WeakRetained applyChangesForSyncType:v3 endpointType:v4 fromStream:v5 withSyncParams:v6 withProgressHandler:v18 withCompletionHandler:v9];

  _Block_object_dispose(v19, 8);
}

void __65__ATDeviceSyncSessionSyncTask__processSyncRequest_onMessageLink___block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a2;
  *(*(a1 + 32) + 224) += *(*(*(a1 + 80) + 8) + 24);
  v8 = [*(a1 + 40) dataStream];
  v9 = [v8 streamStatus];

  if (!v9)
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) dataStream];
    [v10 _drainInputStream:v11 withCompletion:0];
  }

  v12 = _ATLogCategoryDeviceSync();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v13)
    {
      v14 = *(a1 + 32);
      *buf = 138543618;
      v29 = v14;
      v30 = 2114;
      v31 = v7;
      _os_log_impl(&dword_223819000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: failed to process sync request changes. err=%{public}@", buf, 0x16u);
    }

    v15 = [*(a1 + 40) responseWithError:v7 parameters:0];
    v16 = *(a1 + 72);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __65__ATDeviceSyncSessionSyncTask__processSyncRequest_onMessageLink___block_invoke_150;
    v27[3] = &unk_2784E58E8;
    v27[4] = *(a1 + 32);
    [v16 sendResponse:v15 withCompletion:v27];
    [*(a1 + 32) _finishSyncWithError:v7];
  }

  else
  {
    if (v13)
    {
      v17 = *(a1 + 32);
      v18 = *(a1 + 48);
      *buf = 138544130;
      v29 = v17;
      v30 = 2048;
      v31 = a3;
      v32 = 2048;
      v33 = a4;
      v34 = 2114;
      v35 = v18;
      _os_log_impl(&dword_223819000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: sync request processed successfully. beforeRevision=%llu, afterRevision=%llu, oldSyncState=%{public}@", buf, 0x2Au);
    }

    v19 = *(a1 + 48);
    if (v19)
    {
      v20 = [v19 mutableCopy];
    }

    else
    {
      v20 = [MEMORY[0x277CBEB38] dictionary];
    }

    v15 = v20;
    [v20 setLastServerRevision:{objc_msgSend(*(a1 + 56), "lastServerRevision")}];
    [v15 setLastClientRevision:{objc_msgSend(*(a1 + 56), "newRevision")}];
    [v15 setVersionToken:*(a1 + 64)];
    v21 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 32);
      v23 = [*(a1 + 72) identifier];
      *buf = 138543874;
      v29 = v22;
      v30 = 2114;
      v31 = v23;
      v32 = 2114;
      v33 = v15;
      _os_log_impl(&dword_223819000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: saving new sync state for %{public}@, %{public}@", buf, 0x20u);
    }

    v24 = *(*(a1 + 32) + 184);
    v25 = [*(a1 + 72) identifier];
    v26 = [*(a1 + 32) dataClass];
    [v24 setSyncState:v15 forLibrary:v25 dataClass:v26];

    [*(a1 + 32) _sendSyncResponseToRequest:*(a1 + 40) withChangesAfterRevision:*(a1 + 88) toRevision:a3 withNewRevision:a4 withSyncType:*(a1 + 96) onMessageLink:*(a1 + 72)];
  }
}

void __65__ATDeviceSyncSessionSyncTask__processSyncRequest_onMessageLink___block_invoke_150(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 138543618;
      v7 = v5;
      v8 = 2114;
      v9 = v3;
      _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_ERROR, "%{public}@: failed to send error response. err=%{public}@", &v6, 0x16u);
    }
  }
}

- (void)_applyChangesForSyncResponse:(id)response toCurrentRevision:(unint64_t)revision versionToken:(id)token onMessageLink:(id)link
{
  responseCopy = response;
  tokenCopy = token;
  linkCopy = link;
  settings = self->_settings;
  identifier = [linkCopy identifier];
  dataClass = [(ATSessionTask *)self dataClass];
  v15 = [(ATDeviceSettings *)settings syncStateForLibrary:identifier dataClass:dataClass];

  parameters = [responseCopy parameters];
  v17 = [parameters objectForKey:@"SyncState"];

  parameters2 = [responseCopy parameters];
  v19 = [parameters2 objectForKey:@"SyncType"];
  integerValue = [v19 integerValue];

  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2020000000;
  v42[3] = 0;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v41 = 0;
  queue = [(ATDeviceSyncSessionTask *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __105__ATDeviceSyncSessionSyncTask__applyChangesForSyncResponse_toCurrentRevision_versionToken_onMessageLink___block_invoke;
  block[3] = &unk_2784E5208;
  v39 = integerValue;
  block[4] = self;
  v30 = linkCopy;
  v35 = v42;
  v36 = v40;
  v31 = responseCopy;
  v32 = v15;
  v33 = v17;
  v34 = tokenCopy;
  revisionCopy = revision;
  v38 = a2;
  v22 = tokenCopy;
  v23 = v17;
  v24 = v15;
  v25 = responseCopy;
  v26 = linkCopy;
  dispatch_async(queue, block);

  _Block_object_dispose(v40, 8);
  _Block_object_dispose(v42, 8);
}

void __105__ATDeviceSyncSessionSyncTask__applyChangesForSyncResponse_toCurrentRevision_versionToken_onMessageLink___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCurrentItemDescriptions:&unk_2836F5380];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 176));
  v3 = *(a1 + 112);
  v4 = [*(a1 + 40) endpointType];
  v5 = [*(a1 + 48) dataStream];
  v6 = [*(a1 + 48) parameters];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __105__ATDeviceSyncSessionSyncTask__applyChangesForSyncResponse_toCurrentRevision_versionToken_onMessageLink___block_invoke_2;
  v20[3] = &unk_2784E51B8;
  v21 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __105__ATDeviceSyncSessionSyncTask__applyChangesForSyncResponse_toCurrentRevision_versionToken_onMessageLink___block_invoke_3;
  v11[3] = &unk_2784E51E0;
  v11[4] = v21;
  v7 = *(a1 + 80);
  v22 = *(a1 + 80);
  v17 = vextq_s8(v7, v7, 8uLL);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  v8 = *(a1 + 40);
  v9 = *(a1 + 96);
  v10 = *(a1 + 104);
  v16 = v8;
  v18 = v9;
  v19 = v10;
  [WeakRetained applyChangesForSyncType:v3 endpointType:v4 fromStream:v5 withSyncParams:v6 withProgressHandler:v20 withCompletionHandler:v11];
}

void __105__ATDeviceSyncSessionSyncTask__applyChangesForSyncResponse_toCurrentRevision_versionToken_onMessageLink___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[2] = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 40) + 8) + 24) = a3;
  [*(a1 + 32) _updateProgressWithCount:a2 totalItemCount:a3 forEndpointType:0];
  v12[0] = @"_CompletedItemCount";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
  v12[1] = @"_TotalItemCount";
  v13[0] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v9 = objc_alloc(MEMORY[0x277CEA458]);
  v10 = [*(a1 + 32) dataClass];
  v11 = [v9 initWithCommand:@"UpdateSyncSessionTask" dataClass:v10 parameters:v8];

  [*(a1 + 32) sendRequest:v11 withCompletion:0];
}

void __105__ATDeviceSyncSessionSyncTask__applyChangesForSyncResponse_toCurrentRevision_versionToken_onMessageLink___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = *(*(a1 + 80) + 8);
  if (*(v8 + 24))
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = *(a1 + 104);
    v11 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((v11 + 176));
    v13 = [WeakRetained description];
    [v9 handleFailureInMethod:v10 object:v11 file:@"ATDeviceSyncSessionSyncTask.m" lineNumber:443 description:{@"end handler already invoked by client %@", v13}];
  }

  else
  {
    *(v8 + 24) = 1;
    *(*(a1 + 32) + 224) += *(*(*(a1 + 88) + 8) + 24);
    v14 = *(*(*(a1 + 88) + 8) + 24);
    [*(a1 + 32) _updateProgressWithCount:v14 totalItemCount:v14 forEndpointType:0];
    v15 = [*(a1 + 40) dataStream];
    v16 = [v15 streamStatus];

    if (!v16)
    {
      v17 = *(a1 + 32);
      v18 = [*(a1 + 40) dataStream];
      [v17 _drainInputStream:v18 withCompletion:0];
    }

    v19 = _ATLogCategoryDeviceSync();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v20)
      {
        v21 = *(a1 + 32);
        *buf = 138543618;
        v37 = v21;
        v38 = 2114;
        v39 = v7;
        _os_log_impl(&dword_223819000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: failed to process incoming server changes. err=%{public}@", buf, 0x16u);
      }

      [*(a1 + 32) _finishSyncWithError:v7];
    }

    else
    {
      if (v20)
      {
        v22 = *(a1 + 32);
        *buf = 138543618;
        v37 = v22;
        v38 = 2048;
        v39 = a4;
        _os_log_impl(&dword_223819000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: sync response applied successfully. afterRevision=%llu", buf, 0x16u);
      }

      v23 = *(a1 + 48);
      if (v23)
      {
        v24 = [v23 mutableCopy];
      }

      else
      {
        v24 = [MEMORY[0x277CBEB38] dictionary];
      }

      v25 = v24;
      [v24 setLastServerRevision:{objc_msgSend(*(a1 + 56), "newRevision")}];
      [v25 setLastClientRevision:{objc_msgSend(*(a1 + 56), "lastClientRevision")}];
      [v25 setVersionToken:*(a1 + 64)];
      v26 = _ATLogCategoryDeviceSync();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = *(a1 + 32);
        v28 = [*(a1 + 72) identifier];
        *buf = 138543874;
        v37 = v27;
        v38 = 2114;
        v39 = v28;
        v40 = 2114;
        v41 = v25;
        _os_log_impl(&dword_223819000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: saving new sync state for %{public}@, %{public}@", buf, 0x20u);
      }

      v29 = *(*(a1 + 32) + 184);
      v30 = [*(a1 + 72) identifier];
      v31 = [*(a1 + 32) dataClass];
      [v29 setSyncState:v25 forLibrary:v30 dataClass:v31];

      v32 = _ATLogCategoryDeviceSync();
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
      if (a3 == a4)
      {
        if (v33)
        {
          v34 = *(a1 + 32);
          *buf = 138543362;
          v37 = v34;
          _os_log_impl(&dword_223819000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@: no new revisions after response - we're in sync!", buf, 0xCu);
        }

        [*(a1 + 32) _finishSyncWithError:0];
      }

      else
      {
        if (v33)
        {
          v35 = *(a1 + 32);
          *buf = 138543874;
          v37 = v35;
          v38 = 2048;
          v39 = a3;
          v40 = 2048;
          v41 = a4;
          _os_log_impl(&dword_223819000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@: revision changed from %lld to %lld - syncing again", buf, 0x20u);
        }

        [*(a1 + 32) _sendSyncRequestWithChangesAfterRevision:objc_msgSend(*(a1 + 56) toRevision:"lastClientRevision") withNewRevision:*(a1 + 96) withSyncType:a4 onMessageLink:{1, *(a1 + 72)}];
      }
    }
  }
}

- (void)_processSyncResponse:(id)response onMessageLink:(id)link
{
  v56 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  linkCopy = link;
  if (([responseCopy isPartial] & 1) == 0)
  {
    settings = self->_settings;
    identifier = [linkCopy identifier];
    dataClass = [(ATSessionTask *)self dataClass];
    v11 = [(ATDeviceSettings *)settings syncStateForLibrary:identifier dataClass:dataClass];

    parameters = [responseCopy parameters];
    v43 = [parameters objectForKey:@"SyncState"];

    parameters2 = [responseCopy parameters];
    v14 = [parameters2 objectForKey:@"SyncType"];
    integerValue = [v14 integerValue];

    WeakRetained = objc_loadWeakRetained(&self->_pluginClient);
    revisionVersionToken = [WeakRetained revisionVersionToken];
    currentRevision = [WeakRetained currentRevision];
    v18 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [linkCopy identifier];
      *buf = 138544130;
      selfCopy5 = self;
      v50 = 2114;
      v51 = identifier2;
      v52 = 2048;
      v53 = currentRevision;
      v54 = 2114;
      v55 = v11;
      _os_log_impl(&dword_223819000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: processing sync response. library=%{public}@, currentRevision=%llu, syncState=%{public}@", buf, 0x2Au);
    }

    versionToken = [v11 versionToken];
    if (versionToken)
    {
      v21 = versionToken;
      versionToken2 = [v11 versionToken];
      v23 = [versionToken2 isEqualToString:revisionVersionToken];

      if ((v23 & 1) == 0)
      {
        v36 = _ATLogCategoryDeviceSync();
        v35 = revisionVersionToken;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          versionToken3 = [v11 versionToken];
          *buf = 138543874;
          selfCopy5 = self;
          v50 = 2114;
          v51 = versionToken3;
          v52 = 2114;
          v53 = revisionVersionToken;
          _os_log_impl(&dword_223819000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@: ignoring sync response because the revision token has changed (%{public}@ -> %{public}@)", buf, 0x20u);
        }

        v38 = self->_settings;
        identifier3 = [linkCopy identifier];
        dataClass2 = [(ATSessionTask *)self dataClass];
        [(ATDeviceSettings *)v38 setSyncState:0 forLibrary:identifier3 dataClass:dataClass2];

        dataStream = [responseCopy dataStream];
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __66__ATDeviceSyncSessionSyncTask__processSyncResponse_onMessageLink___block_invoke;
        v46[3] = &unk_2784E59D8;
        v46[4] = self;
        v47 = linkCopy;
        [(ATDeviceSyncSessionSyncTask *)self _drainInputStream:dataStream withCompletion:v46];

        v24 = v43;
        goto LABEL_21;
      }
    }

    if (integerValue == 2)
    {
      v42 = _ATLogCategoryDeviceSync();
      v24 = v43;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy5 = self;
        _os_log_impl(&dword_223819000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@: the server is requesting a reset sync - prepare for a full update", buf, 0xCu);
      }
    }

    else
    {
      v24 = v43;
      if (integerValue == 1)
      {
        newRevision = [v43 newRevision];
        if (newRevision == [v11 lastServerRevision])
        {
          v26 = _ATLogCategoryDeviceSync();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            identifier4 = [linkCopy identifier];
            *buf = 138543618;
            selfCopy5 = self;
            v50 = 2114;
            v51 = identifier4;
            _os_log_impl(&dword_223819000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: sync complete for library %{public}@", buf, 0x16u);
          }

          v28 = [v11 mutableCopy];
          [v28 setLastClientRevision:{objc_msgSend(v43, "lastClientRevision")}];
          [v28 setVersionToken:revisionVersionToken];
          v29 = _ATLogCategoryDeviceSync();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            identifier5 = [linkCopy identifier];
            *buf = 138543874;
            selfCopy5 = self;
            v50 = 2114;
            v51 = identifier5;
            v52 = 2114;
            v53 = v28;
            _os_log_impl(&dword_223819000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: saving new sync state for %{public}@, %{public}@", buf, 0x20u);
          }

          v31 = self->_settings;
          identifier6 = [linkCopy identifier];
          dataClass3 = [(ATSessionTask *)self dataClass];
          [(ATDeviceSettings *)v31 setSyncState:v28 forLibrary:identifier6 dataClass:dataClass3];

          dataStream2 = [responseCopy dataStream];
          v45[0] = MEMORY[0x277D85DD0];
          v45[1] = 3221225472;
          v45[2] = __66__ATDeviceSyncSessionSyncTask__processSyncResponse_onMessageLink___block_invoke_135;
          v45[3] = &unk_2784E58E8;
          v45[4] = self;
          [(ATDeviceSyncSessionSyncTask *)self _drainInputStream:dataStream2 withCompletion:v45];

          v35 = revisionVersionToken;
          goto LABEL_21;
        }
      }
    }

    v35 = revisionVersionToken;
    [(ATDeviceSyncSessionSyncTask *)self _applyChangesForSyncResponse:responseCopy toCurrentRevision:currentRevision versionToken:revisionVersionToken onMessageLink:linkCopy];
LABEL_21:
  }
}

- (void)_sendSyncRequestWithParams:(id)params withSyncType:(unsigned int)type syncState:(id)state newRevision:(unint64_t)revision versionToken:(id)token inputStream:(id)stream onMessageLink:(id)link
{
  v12 = *&type;
  v41[3] = *MEMORY[0x277D85DE8];
  stateCopy = state;
  tokenCopy = token;
  linkCopy = link;
  v17 = MEMORY[0x277CBEB38];
  streamCopy = stream;
  if (params)
  {
    [v17 dictionaryWithDictionary:params];
  }

  else
  {
    [v17 dictionary];
  }
  v19 = ;
  identifier = [linkCopy identifier];
  [v19 setObject:identifier forKey:@"LibraryID"];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v12];
  [v19 setObject:v21 forKey:@"SyncType"];

  v40[0] = @"LastServerRevision";
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(stateCopy, "lastServerRevision")}];
  v41[0] = v22;
  v40[1] = @"LastClientRevision";
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(stateCopy, "lastClientRevision")}];
  v41[1] = v23;
  v40[2] = @"NewRevisionKey";
  [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:revision];
  v25 = v24 = revision;
  v41[2] = v25;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:3];
  [v19 setObject:v26 forKey:@"SyncState"];

  v27 = objc_alloc(MEMORY[0x277CEA458]);
  dataClass = [(ATSessionTask *)self dataClass];
  v29 = [v27 initWithCommand:@"Sync" dataClass:dataClass parameters:v19];

  [v29 setDataStream:streamCopy];
  [v29 setOptions:3];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __132__ATDeviceSyncSessionSyncTask__sendSyncRequestWithParams_withSyncType_syncState_newRevision_versionToken_inputStream_onMessageLink___block_invoke;
  v34[3] = &unk_2784E5190;
  v38 = linkCopy;
  v39 = v24;
  v35 = stateCopy;
  v36 = tokenCopy;
  selfCopy = self;
  v30 = linkCopy;
  v31 = tokenCopy;
  v32 = stateCopy;
  [(ATDeviceSyncSessionTask *)self sendRequest:v29 withCompletion:v34];
}

void __132__ATDeviceSyncSessionSyncTask__sendSyncRequestWithParams_withSyncType_syncState_newRevision_versionToken_inputStream_onMessageLink___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = [v11 mutableCopy];
    }

    else
    {
      v12 = [MEMORY[0x277CBEB38] dictionary];
    }

    v9 = v12;
    -[NSObject setLastServerRevision:](v12, "setLastServerRevision:", [*(a1 + 32) lastServerRevision]);
    [v9 setLastClientRevision:*(a1 + 64)];
    [v9 setVersionToken:*(a1 + 40)];
    v14 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 48);
      v16 = [*(a1 + 56) identifier];
      v17 = [*(a1 + 48) dataClass];
      v21 = 138544130;
      v22 = v15;
      v23 = 2114;
      v24 = v16;
      v25 = 2114;
      v26 = v17;
      v27 = 2114;
      v28 = v9;
      _os_log_impl(&dword_223819000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: saving new sync state for %{public}@:%{public}@, %{public}@", &v21, 0x2Au);
    }

    v18 = *(*(a1 + 48) + 184);
    v19 = [*(a1 + 56) identifier];
    v20 = [*(a1 + 48) dataClass];
    [v18 setSyncState:v9 forLibrary:v19 dataClass:v20];

    [*(a1 + 48) _processSyncResponse:v5 onMessageLink:*(a1 + 56)];
    goto LABEL_14;
  }

  v7 = [*(a1 + 48) isRunning];
  v8 = _ATLogCategoryDeviceSync();
  v9 = v8;
  if ((v7 & 1) == 0)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 48);
      v21 = 138543618;
      v22 = v13;
      v23 = 1024;
      LODWORD(v24) = [v5 messageID];
      _os_log_impl(&dword_223819000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: ignoring sync response with id %u because that sync was canceled", &v21, 0x12u);
    }

LABEL_14:

    goto LABEL_15;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v10 = *(a1 + 48);
    v21 = 138543618;
    v22 = v10;
    v23 = 2114;
    v24 = v6;
    _os_log_impl(&dword_223819000, v9, OS_LOG_TYPE_ERROR, "%{public}@: failed to send sync changes. err=%{public}@", &v21, 0x16u);
  }

  [*(a1 + 48) _finishSyncWithError:v6];
LABEL_15:
}

- (void)_sendSyncRequestWithChangesAfterRevision:(unint64_t)revision toRevision:(unint64_t)toRevision withNewRevision:(unint64_t)newRevision withSyncType:(unsigned int)type onMessageLink:(id)link
{
  v58 = *MEMORY[0x277D85DE8];
  linkCopy = link;
  settings = self->_settings;
  identifier = [linkCopy identifier];
  dataClass = [(ATSessionTask *)self dataClass];
  v14 = [(ATDeviceSettings *)settings syncStateForLibrary:identifier dataClass:dataClass];

  WeakRetained = objc_loadWeakRetained(&self->_pluginClient);
  revisionVersionToken = [WeakRetained revisionVersionToken];

  if (!revision)
  {
    goto LABEL_9;
  }

  versionToken = [v14 versionToken];
  v18 = versionToken;
  if (versionToken)
  {
    v19 = revisionVersionToken == 0;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
  }

  else
  {
    versionToken2 = [v14 versionToken];
    v21 = [revisionVersionToken isEqualToString:versionToken2];

    if (v21)
    {
LABEL_9:
      v22 = _ATLogCategoryDeviceSync();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        identifier2 = [linkCopy identifier];
        dataClass2 = [(ATSessionTask *)self dataClass];
        *buf = 138544642;
        selfCopy2 = self;
        v48 = 2114;
        v49 = identifier2;
        v50 = 2114;
        v51 = dataClass2;
        v52 = 2048;
        revisionCopy = revision;
        v54 = 2048;
        toRevisionCopy = toRevision;
        v56 = 2114;
        v57 = v14;
        _os_log_impl(&dword_223819000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: building sync request. library=%{public}@, dataclass=%{public}@, fromRevision=%lld, toRevision=%lld. current sync state=%{public}@", buf, 0x3Eu);
      }

      ++self->_syncIterationCount;
      queue = [(ATDeviceSyncSessionTask *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __126__ATDeviceSyncSessionSyncTask__sendSyncRequestWithChangesAfterRevision_toRevision_withNewRevision_withSyncType_onMessageLink___block_invoke_104;
      block[3] = &unk_2784E5150;
      typeCopy = type;
      v26 = &v36;
      block[4] = self;
      v36 = linkCopy;
      revisionCopy2 = revision;
      toRevisionCopy2 = toRevision;
      v37 = v14;
      newRevisionCopy = newRevision;
      v38 = revisionVersionToken;
      v42 = a2;
      v27 = linkCopy;
      dispatch_async(queue, block);

      identifier3 = v37;
      goto LABEL_15;
    }
  }

  v29 = _ATLogCategoryDeviceSync();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    versionToken3 = [v14 versionToken];
    *buf = 138543874;
    selfCopy2 = self;
    v48 = 2114;
    v49 = versionToken3;
    v50 = 2114;
    v51 = revisionVersionToken;
    _os_log_impl(&dword_223819000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: library version token has changed from %{public}@ to %{public}@ - forcing reset", buf, 0x20u);
  }

  identifier3 = [linkCopy identifier];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __126__ATDeviceSyncSessionSyncTask__sendSyncRequestWithChangesAfterRevision_toRevision_withNewRevision_withSyncType_onMessageLink___block_invoke;
  v44[3] = &unk_2784E59D8;
  v26 = &v45;
  v44[4] = self;
  v45 = linkCopy;
  v31 = linkCopy;
  [(ATDeviceSyncSessionSyncTask *)self _resetSyncDataForLibrary:identifier3 withCompletionHandler:v44];
LABEL_15:
}

uint64_t __126__ATDeviceSyncSessionSyncTask__sendSyncRequestWithChangesAfterRevision_toRevision_withNewRevision_withSyncType_onMessageLink___block_invoke(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    v3 = result;
    WeakRetained = objc_loadWeakRetained((*(result + 32) + 176));
    v5 = [WeakRetained currentRevision];

    v6 = *(v3 + 32);
    v7 = *(v3 + 40);

    return [v6 _sendSyncRequestWithChangesAfterRevision:0 toRevision:v5 withNewRevision:v5 withSyncType:2 onMessageLink:v7];
  }

  return result;
}

void __126__ATDeviceSyncSessionSyncTask__sendSyncRequestWithChangesAfterRevision_toRevision_withNewRevision_withSyncType_onMessageLink___block_invoke_104(uint64_t a1)
{
  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x2020000000;
  v50[3] = 0;
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x2020000000;
  v49 = 0;
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2020000000;
  v47 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__3549;
  v44 = __Block_byref_object_dispose__3550;
  v45 = 0;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = __Block_byref_object_copy__3549;
  v38[4] = __Block_byref_object_dispose__3550;
  v39 = 0;
  v36 = 0;
  obj = 0;
  [MEMORY[0x277CBEBA0] getBoundStreamsWithBufferSize:0x2000 inputStream:&obj outputStream:&v36];
  objc_storeStrong(&v39, obj);
  objc_storeStrong(&v45, v36);
  [*(a1 + 32) setCurrentItemDescriptions:&unk_2836F5350];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 176));
  v18 = *(a1 + 96);
  v3 = [*(a1 + 40) endpointType];
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v6 = v41[5];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __126__ATDeviceSyncSessionSyncTask__sendSyncRequestWithChangesAfterRevision_toRevision_withNewRevision_withSyncType_onMessageLink___block_invoke_109;
  v28[3] = &unk_2784E5128;
  v31 = v48;
  v35 = *(a1 + 96);
  v17 = *(a1 + 32);
  v7 = *(a1 + 48);
  v33 = *(a1 + 80);
  v8 = *(a1 + 56);
  v32 = v38;
  v9 = *(a1 + 40);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  *&v11 = v17;
  *(&v11 + 1) = v7;
  v29 = v11;
  v30 = v10;
  v34 = *(a1 + 88);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __126__ATDeviceSyncSessionSyncTask__sendSyncRequestWithChangesAfterRevision_toRevision_withNewRevision_withSyncType_onMessageLink___block_invoke_2;
  v25[3] = &unk_2784E5320;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v27 = v50;
  v25[4] = v12;
  v26 = v13;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __126__ATDeviceSyncSessionSyncTask__sendSyncRequestWithChangesAfterRevision_toRevision_withNewRevision_withSyncType_onMessageLink___block_invoke_115;
  v19[3] = &unk_2784E5348;
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v21 = v46;
  v19[4] = v14;
  v20 = v15;
  v16 = *(a1 + 88);
  v22 = v50;
  v23 = &v40;
  v24 = v16;
  [WeakRetained getChangesForSyncType:v18 endpointType:v3 afterRevision:v4 upToRevision:v5 withSyncParams:0 intoOutputStream:v6 withStartHandler:v28 withProgressHandler:v25 withCompletionHandler:v19];

  _Block_object_dispose(v38, 8);
  _Block_object_dispose(&v40, 8);

  _Block_object_dispose(v46, 8);
  _Block_object_dispose(v48, 8);
  _Block_object_dispose(v50, 8);
}

void __126__ATDeviceSyncSessionSyncTask__sendSyncRequestWithChangesAfterRevision_toRevision_withNewRevision_withSyncType_onMessageLink___block_invoke_109(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 64) + 8);
  if (*(v3 + 24))
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    v4 = *(a1 + 88);
    v5 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((v5 + 176));
    v7 = [WeakRetained description];
    [v8 handleFailureInMethod:v4 object:v5 file:@"ATDeviceSyncSessionSyncTask.m" lineNumber:271 description:{@"start handler already invoked by client %@", v7}];
  }

  else
  {
    *(v3 + 24) = 1;
    [*(a1 + 32) _sendSyncRequestWithParams:a2 withSyncType:*(a1 + 96) syncState:*(a1 + 40) newRevision:*(a1 + 80) versionToken:*(a1 + 48) inputStream:*(*(*(a1 + 72) + 8) + 40) onMessageLink:*(a1 + 56)];
  }
}

void __126__ATDeviceSyncSessionSyncTask__sendSyncRequestWithChangesAfterRevision_toRevision_withNewRevision_withSyncType_onMessageLink___block_invoke_2(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 48) + 8) + 24) = a3;
  if (a3 >> 4 >= 0x271 && (*(*(a1 + 32) + 200) & 1) == 0)
  {
    v5 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      v8 = a3;
      _os_log_impl(&dword_223819000, v5, OS_LOG_TYPE_DEFAULT, "adding transport upgrade exception for %lld changes total", &v7, 0xCu);
    }

    v6 = [*(a1 + 40) socket];
    [v6 addTransportUpgradeException];

    *(*(a1 + 32) + 200) = 1;
  }
}

void __126__ATDeviceSyncSessionSyncTask__sendSyncRequestWithChangesAfterRevision_toRevision_withNewRevision_withSyncType_onMessageLink___block_invoke_115(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 48) + 8);
  if (*(v4 + 24))
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    v6 = *(a1 + 72);
    v7 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((v7 + 176));
    v9 = [WeakRetained description];
    [v5 handleFailureInMethod:v6 object:v7 file:@"ATDeviceSyncSessionSyncTask.m" lineNumber:303 description:{@"end handler already invoked by client %@", v9}];

    goto LABEL_14;
  }

  *(v4 + 24) = 1;
  v10 = _ATLogCategoryDeviceSync();
  v11 = v10;
  if (v3)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v13 = [*(a1 + 40) identifier];
      v14 = [*(a1 + 32) dataClass];
      v15 = [v3 msv_description];
      *buf = 138544130;
      v20 = v12;
      v21 = 2114;
      v22 = v13;
      v23 = 2114;
      v24 = v14;
      v25 = 2114;
      v26 = v15;
      _os_log_impl(&dword_223819000, v11, OS_LOG_TYPE_ERROR, "%{public}@: finished writing sync request data for library=%{public}@, dataclass=%{public}@ error=%{public}@", buf, 0x2Au);

LABEL_8:
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    v17 = [*(a1 + 40) identifier];
    v14 = [*(a1 + 32) dataClass];
    *buf = 138543874;
    v20 = v16;
    v21 = 2114;
    v22 = v17;
    v23 = 2114;
    v24 = v14;
    _os_log_impl(&dword_223819000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: finished writing sync request data for library=%{public}@, dataclass=%{public}@", buf, 0x20u);

    goto LABEL_8;
  }

  *(*(a1 + 32) + 224) += *(*(*(a1 + 56) + 8) + 24);
  if (![*(*(*(a1 + 64) + 8) + 40) streamStatus])
  {
    [*(*(*(a1 + 64) + 8) + 40) open];
    [*(*(*(a1 + 64) + 8) + 40) close];
  }

  v18 = *(a1 + 32);
  if (v3)
  {
    [v18 _finishSyncWithError:v3];
  }

  else
  {
    [v18 setCurrentItemDescriptions:&unk_2836F5368];
  }

LABEL_14:
}

- (void)_sendSyncRequestOnMessageLink:(id)link
{
  v18 = *MEMORY[0x277D85DE8];
  linkCopy = link;
  settings = self->_settings;
  identifier = [linkCopy identifier];
  dataClass = [(ATSessionTask *)self dataClass];
  v8 = [(ATDeviceSettings *)settings syncStateForLibrary:identifier dataClass:dataClass];

  v9 = _ATLogCategoryDeviceSync();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543618;
    selfCopy = self;
    v16 = 2114;
    v17 = v8;
    _os_log_impl(&dword_223819000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: sending sync request. syncState=%{public}@", &v14, 0x16u);
  }

  if (v8)
  {
    if ([v8 lastServerRevision])
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    lastClientRevision = [v8 lastClientRevision];
    WeakRetained = objc_loadWeakRetained(&self->_pluginClient);
    currentRevision = [WeakRetained currentRevision];
  }

  else
  {
    currentRevision = 0;
    lastClientRevision = 0;
    v10 = 2;
  }

  [(ATDeviceSyncSessionSyncTask *)self _sendSyncRequestWithChangesAfterRevision:lastClientRevision toRevision:currentRevision withNewRevision:currentRevision withSyncType:v10 onMessageLink:linkCopy];
}

- (void)_finishTaskWithError:(id)error
{
  v38[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  messageLink = [(ATDeviceSyncSessionTask *)self messageLink];
  session = [(ATSessionTask *)self session];
  v7 = session;
  if (!errorCopy && self->_startAssetTaskWhenFinished)
  {
    if (([session isCancelled] & 1) == 0 && (objc_msgSend(v7, "isFinished") & 1) == 0 && objc_msgSend(messageLink, "isOpen"))
    {
      v8 = [ATDeviceSyncSessionAssetTask alloc];
      dataClass = [(ATSessionTask *)self dataClass];
      v10 = [(ATDeviceSyncSessionAssetTask *)v8 initWithDataClass:dataClass onMessageLink:messageLink];

      v38[0] = v10;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
      [v7 addSessionTasks:v11];

      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (!errorCopy)
  {
LABEL_10:
    v10 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      startAssetTaskWhenFinished = self->_startAssetTaskWhenFinished;
      *buf = 138544386;
      selfCopy2 = self;
      v28 = 1024;
      v29 = startAssetTaskWhenFinished;
      v30 = 1024;
      isCancelled = [v7 isCancelled];
      v32 = 1024;
      isFinished = [v7 isFinished];
      v34 = 1024;
      isOpen = [messageLink isOpen];
      _os_log_impl(&dword_223819000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: not starting asset task. syncAssets=%d, cancelled=%d, finished=%d, messageLinkOpen=%d", buf, 0x24u);
    }

    goto LABEL_12;
  }

  v10 = _ATLogCategoryDeviceSync();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v12 = self->_startAssetTaskWhenFinished;
    isCancelled2 = [v7 isCancelled];
    isFinished2 = [v7 isFinished];
    isOpen2 = [messageLink isOpen];
    msv_description = [errorCopy msv_description];
    *buf = 138544642;
    selfCopy2 = self;
    v28 = 1024;
    v29 = v12;
    v30 = 1024;
    isCancelled = isCancelled2;
    v32 = 1024;
    isFinished = isFinished2;
    v34 = 1024;
    isOpen = isOpen2;
    v36 = 2114;
    v37 = msv_description;
    _os_log_impl(&dword_223819000, v10, OS_LOG_TYPE_ERROR, "%{public}@: not starting asset task. syncAssets=%d, cancelled=%d, finished=%d, messageLinkOpen=%d error=%{public}@", buf, 0x2Eu);
  }

LABEL_12:

  queue = [(ATDeviceSyncSessionTask *)self queue];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __52__ATDeviceSyncSessionSyncTask__finishTaskWithError___block_invoke;
  v22[3] = &unk_2784E5100;
  v22[4] = self;
  v23 = errorCopy;
  v24 = messageLink;
  v25 = v7;
  v19 = v7;
  v20 = messageLink;
  v21 = errorCopy;
  dispatch_async(queue, v22);
}

void __52__ATDeviceSyncSessionSyncTask__finishTaskWithError___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 201) = 1;
  v2 = *(a1 + 32);
  if (*(v2 + 200) == 1)
  {
    v3 = [v2 messageLink];
    v4 = [v3 socket];
    [v4 removeTransportUpgradeException];

    *(*(a1 + 32) + 200) = 0;
    v2 = *(a1 + 32);
  }

  WeakRetained = objc_loadWeakRetained((v2 + 176));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained syncCompletedWithError:*(a1 + 40)];
  }

  v27 = v6;
  v7 = dispatch_group_create();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = *(*(a1 + 32) + 192);
  v9 = [v8 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v35;
    do
    {
      v12 = 0;
      do
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v34 + 1) + 8 * v12);
        dispatch_group_enter(v7);
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __52__ATDeviceSyncSessionSyncTask__finishTaskWithError___block_invoke_2;
        v30[3] = &unk_2784E59B0;
        v14 = v7;
        v15 = *(a1 + 32);
        v31 = v14;
        v32 = v15;
        v33 = v13;
        [v13 stopWithCompletion:v30];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v10);
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v17 = v16 - *(*(a1 + 32) + 208);
  v18 = _ATLogCategoryDeviceSync();
  v19 = v27;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1 + 32);
    v21 = [v27 syncDataClass];
    *buf = 138543874;
    v39 = v20;
    v40 = 2114;
    v41 = *&v21;
    v42 = 2048;
    v43 = v17;
    _os_log_impl(&dword_223819000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: Sync Task finished for %{public}@ in %.2f seconds", buf, 0x20u);
  }

  v22 = *(*(a1 + 32) + 224) / v17;
  v23 = _ATLogCategoryDeviceSync();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(*(a1 + 32) + 224);
    *buf = 134218240;
    v39 = v24;
    v40 = 2048;
    v41 = v22;
    _os_log_impl(&dword_223819000, v23, OS_LOG_TYPE_DEFAULT, "==> synced %lld total items (%.2f items/s)", buf, 0x16u);
  }

  if (*(*(a1 + 32) + 224) && ![*(a1 + 48) endpointType] && !*(a1 + 40) && (objc_msgSend(*(a1 + 56), "isCancelled") & 1) == 0 && (objc_msgSend(*(a1 + 56), "isFinished") & 1) == 0)
  {
    ATReportEventAddDoubleToScalarKey();
  }

  v25 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__ATDeviceSyncSessionSyncTask__finishTaskWithError___block_invoke_103;
  block[3] = &unk_2784E5960;
  v26 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v29 = v26;
  dispatch_group_notify(v7, v25, block);
}

uint64_t __52__ATDeviceSyncSessionSyncTask__finishTaskWithError___block_invoke_2(uint64_t a1)
{
  dispatch_group_leave(*(a1 + 32));
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 40) + 192);

  return [v3 removeObject:v2];
}

uint64_t __52__ATDeviceSyncSessionSyncTask__finishTaskWithError___block_invoke_103(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _ATLogCategoryDeviceSync();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_223819000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: All readers stopped. wrapping up task ..", &v5, 0xCu);
  }

  [*(a1 + 32) setError:*(a1 + 40)];
  return [*(a1 + 32) setFinished:1];
}

- (void)_finishSyncWithError:(id)error
{
  v23 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  settings = self->_settings;
  messageLink = [(ATDeviceSyncSessionTask *)self messageLink];
  identifier = [messageLink identifier];
  dataClass = [(ATSessionTask *)self dataClass];
  [(ATDeviceSettings *)settings updateLastSyncTimeForLibrary:identifier dataClass:dataClass];

  v9 = _ATLogCategoryDeviceSync();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v21 = 2114;
    v22 = errorCopy;
    _os_log_impl(&dword_223819000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: finishSyncWithError. err=%{public}@", buf, 0x16u);
  }

  messageLink2 = [(ATDeviceSyncSessionTask *)self messageLink];
  endpointType = [messageLink2 endpointType];

  if (endpointType)
  {
    [(ATDeviceSyncSessionSyncTask *)self _finishTaskWithError:errorCopy];
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    if (errorCopy)
    {
      v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
      [dictionary setObject:v13 forKey:@"_SyncTaskFinishedResult"];
    }

    if (![(ATDeviceSyncSessionSyncTask *)self startAssetTaskWhenFinished])
    {
      [dictionary setObject:MEMORY[0x277CBEC28] forKey:@"_SyncTaskFinishedSyncAssets"];
    }

    v14 = objc_alloc(MEMORY[0x277CEA458]);
    dataClass2 = [(ATSessionTask *)self dataClass];
    v16 = [v14 initWithCommand:@"SyncTaskFinished" dataClass:dataClass2 parameters:dictionary];

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __52__ATDeviceSyncSessionSyncTask__finishSyncWithError___block_invoke;
    v17[3] = &unk_2784E50D8;
    v17[4] = self;
    v18 = errorCopy;
    [(ATDeviceSyncSessionTask *)self sendRequest:v16 withCompletion:v17];
  }
}

void __52__ATDeviceSyncSessionSyncTask__finishSyncWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _ATLogCategoryDeviceSync();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [v5 parameters];
    v23 = 138543618;
    v24 = v8;
    v25 = 2114;
    v26 = v9;
    _os_log_impl(&dword_223819000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: received response. params=%{public}@", &v23, 0x16u);
  }

  if (v6 || ([v5 error], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    v11 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v13 = [v12 messageLink];
      v14 = v6;
      if (!v6)
      {
        v14 = [v5 error];
      }

      v23 = 138543874;
      v24 = v12;
      v25 = 2114;
      v26 = v13;
      v27 = 2114;
      v28 = v14;
      _os_log_impl(&dword_223819000, v11, OS_LOG_TYPE_ERROR, "%{public}@: failed to send sync request on %{public}@. err=%{public}@", &v23, 0x20u);
      if (!v6)
      {
      }
    }
  }

  v15 = [v5 parameters];
  v16 = [v15 objectForKey:@"_SyncTaskFinishedSyncAssets"];

  if (v16)
  {
    v17 = [v15 objectForKey:@"_SyncTaskFinishedSyncAssets"];
    [*(a1 + 32) setStartAssetTaskWhenFinished:{objc_msgSend(v17, "BOOLValue")}];
  }

  v20 = a1 + 32;
  v19 = *(a1 + 32);
  v18 = *(v20 + 8);
  if (v6 | v18)
  {
    if (v18)
    {
      v21 = v18;
    }

    else
    {
      v21 = v6;
    }

    [v19 _finishTaskWithError:v21];
  }

  else
  {
    v22 = [v5 error];
    [v19 _finishTaskWithError:v22];
  }
}

- (void)messageLink:(id)link didReceiveRequest:(id)request
{
  v42 = *MEMORY[0x277D85DE8];
  linkCopy = link;
  requestCopy = request;
  v8 = _ATLogCategoryDeviceSync();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    command = [requestCopy command];
    parameters = [requestCopy parameters];
    *buf = 138543874;
    selfCopy = self;
    v38 = 2114;
    v39 = command;
    v40 = 2114;
    v41 = parameters;
    _os_log_impl(&dword_223819000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: received request %{public}@. params=%{public}@", buf, 0x20u);
  }

  command2 = [requestCopy command];
  v12 = [command2 isEqualToString:@"Sync"];

  if (v12)
  {
    [(ATDeviceSyncSessionSyncTask *)self _processSyncRequest:requestCopy onMessageLink:linkCopy];
  }

  else
  {
    command3 = [requestCopy command];
    v14 = [command3 isEqualToString:@"UpdateSyncSessionTask"];

    if (v14)
    {
      parameters2 = [requestCopy parameters];
      v16 = [parameters2 valueForKey:@"_CompletedItemCount"];
      unsignedLongLongValue = [v16 unsignedLongLongValue];

      parameters3 = [requestCopy parameters];
      v19 = [parameters3 valueForKey:@"_TotalItemCount"];
      unsignedLongLongValue2 = [v19 unsignedLongLongValue];

      [(ATDeviceSyncSessionSyncTask *)self _updateProgressWithCount:unsignedLongLongValue totalItemCount:unsignedLongLongValue2 forEndpointType:0];
      v21 = [requestCopy responseWithError:0 parameters:0];
      [linkCopy sendResponse:v21 withCompletion:0];
    }

    else
    {
      command4 = [requestCopy command];
      v23 = [command4 isEqualToString:@"SyncTaskFinished"];

      if (v23)
      {
        parameters4 = [requestCopy parameters];
        v25 = [parameters4 objectForKey:@"_SyncTaskFinishedResult"];

        if (v25)
        {
          v26 = MEMORY[0x277CCA9B8];
          v27 = [parameters4 objectForKey:@"_SyncTaskFinishedResult"];
          v25 = [v26 errorWithDomain:@"ATError" code:objc_msgSend(v27 userInfo:{"integerValue"), 0}];
        }

        v28 = [parameters4 objectForKey:@"_SyncTaskFinishedSyncAssets"];

        if (v28)
        {
          v29 = [parameters4 objectForKey:@"_SyncTaskFinishedSyncAssets"];
          -[ATDeviceSyncSessionSyncTask setStartAssetTaskWhenFinished:](self, "setStartAssetTaskWhenFinished:", [v29 BOOLValue]);
        }

        dictionary = [MEMORY[0x277CBEB38] dictionary];
        if (![(ATDeviceSyncSessionSyncTask *)self startAssetTaskWhenFinished])
        {
          [dictionary setObject:MEMORY[0x277CBEC28] forKey:@"_SyncTaskFinishedSyncAssets"];
        }

        v31 = [requestCopy responseWithError:0 parameters:dictionary];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __61__ATDeviceSyncSessionSyncTask_messageLink_didReceiveRequest___block_invoke;
        v33[3] = &unk_2784E50B0;
        v33[4] = self;
        v34 = linkCopy;
        v35 = v25;
        v32 = v25;
        [v34 sendResponse:v31 withCompletion:v33];
      }
    }
  }
}

void __61__ATDeviceSyncSessionSyncTask_messageLink_didReceiveRequest___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v8 = 138543874;
      v9 = v5;
      v10 = 2114;
      v11 = v6;
      v12 = 2114;
      v13 = v3;
      _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_ERROR, "%{public}@: failed to send response on %{public}@. err=%{public}@", &v8, 0x20u);
    }
  }

  if (*(a1 + 48))
  {
    v7 = *(a1 + 48);
  }

  else
  {
    v7 = v3;
  }

  [*(a1 + 32) _finishSyncWithError:v7];
}

- (void)cancel
{
  queue = [(ATDeviceSyncSessionTask *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__ATDeviceSyncSessionSyncTask_cancel__block_invoke;
  block[3] = &unk_2784E5938;
  block[4] = self;
  dispatch_async(queue, block);
}

void __37__ATDeviceSyncSessionSyncTask_cancel__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCancelled:1];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:2 userInfo:0];
  [v2 _finishSyncWithError:v3];
}

- (void)start
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_pluginClient);
  v4 = _ATLogCategoryDeviceSync();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    syncDataClass = [WeakRetained syncDataClass];
    v10 = 138543618;
    selfCopy = self;
    v12 = 2114;
    v13 = syncDataClass;
    _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Sync Task starting for %{public}@", &v10, 0x16u);
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  self->_taskStartTime = v6;
  messageLink = [(ATDeviceSyncSessionTask *)self messageLink];
  endpointType = [messageLink endpointType];

  if (!endpointType)
  {
    messageLink2 = [(ATDeviceSyncSessionTask *)self messageLink];
    [(ATDeviceSyncSessionSyncTask *)self _sendSyncRequestOnMessageLink:messageLink2];
  }
}

- (ATDeviceSyncSessionSyncTask)initWithDataClass:(id)class onMessageLink:(id)link
{
  classCopy = class;
  v17.receiver = self;
  v17.super_class = ATDeviceSyncSessionSyncTask;
  v8 = [(ATDeviceSyncSessionTask *)&v17 initWithDataClass:classCopy onMessageLink:link];
  if (v8)
  {
    v9 = +[ATClientController sharedInstance];
    v10 = [v9 clientForDataclass:classCopy];

    if (([v10 conformsToProtocol:&unk_2837092A8] & 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v8 file:@"ATDeviceSyncSessionSyncTask.m" lineNumber:49 description:{@"client for data class '%@' is not an ATSyncClient", classCopy}];
    }

    objc_storeWeak(&v8->_pluginClient, v10);
    v11 = +[ATDeviceSettings sharedInstance];
    settings = v8->_settings;
    v8->_settings = v11;

    array = [MEMORY[0x277CBEB18] array];
    streamReaders = v8->_streamReaders;
    v8->_streamReaders = array;

    v8->_startAssetTaskWhenFinished = 1;
    v8->_isFinishing = 0;
    v8->_addedTransportUpgradeException = 0;
    v8->_syncIterationCount = 0;
    v8->_totalItemsSyncedCount = 0;
  }

  return v8;
}

@end