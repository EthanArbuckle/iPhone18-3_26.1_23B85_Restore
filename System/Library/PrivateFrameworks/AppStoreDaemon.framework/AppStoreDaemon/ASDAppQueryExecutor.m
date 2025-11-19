@interface ASDAppQueryExecutor
+ (void)_executeQueryWithPredicate:(char)a3 isForUpdates:(char)a4 reloadingFromServer:(void *)a5 onPairedDevice:(void *)a6 remoteDeviceID:(void *)a7 usingServiceBroker:(void *)a8 withResultHandler:;
- (ASDAppQueryExecutor)initWithServiceBroker:(id)a3;
- (void)executeQueryWithPredicate:(id)a3 onPairedDevice:(id)a4 remoteDeviceID:(id)a5 withResultHandler:(id)a6;
- (void)executeUpdatesQueryWithPredicateReloadingFromServer:(BOOL)a3 onPairedDevice:(id)a4 remoteDeviceID:(id)a5 withResultHandler:(id)a6;
@end

@implementation ASDAppQueryExecutor

- (ASDAppQueryExecutor)initWithServiceBroker:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = ASDAppQueryExecutor;
  v6 = [(ASDAppQueryExecutor *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serviceBroker, a3);
    v8 = [[ASDDispatchQueue alloc] initWithName:@"com.apple.AppStoreDaemon.ASDAppQuery.executor"];
    dispatchQueue = v7->_dispatchQueue;
    v7->_dispatchQueue = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    queryPromises = v7->_queryPromises;
    v7->_queryPromises = v10;
  }

  return v7;
}

- (void)executeQueryWithPredicate:(id)a3 onPairedDevice:(id)a4 remoteDeviceID:(id)a5 withResultHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  dispatchQueue = self->_dispatchQueue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __97__ASDAppQueryExecutor_executeQueryWithPredicate_onPairedDevice_remoteDeviceID_withResultHandler___block_invoke;
  v19[3] = &unk_1E7CDCA90;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = self;
  v24 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  [(ASDDispatchQueue *)dispatchQueue syncUsingBlock:v19];
}

void __97__ASDAppQueryExecutor_executeQueryWithPredicate_onPairedDevice_remoteDeviceID_withResultHandler___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = MEMORY[0x1E696AEC0];
  v5 = *(a1 + 40);
  v6 = v3;
  v7 = [v2 predicateFormat];
  v8 = [v5 pairingID];

  v9 = [v8 UUIDString];
  v10 = v9;
  v11 = @"LOCAL";
  if (v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = @"LOCAL";
  }

  if (v6)
  {
    v11 = v6;
  }

  v13 = [v4 stringWithFormat:@"<%@>-<%@>-<%@>", v7, v12, v11];

  v14 = [*(*(a1 + 56) + 16) objectForKeyedSubscript:v13];
  v15 = ASDLogHandleForCategory(13);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
  if (v14)
  {
    if (v16)
    {
      *buf = 138412290;
      v37 = v13;
      _os_log_debug_impl(&dword_1B8220000, v15, OS_LOG_TYPE_DEBUG, "(AppQueryExecutor) Joining request: %@", buf, 0xCu);
    }
  }

  else
  {
    if (v16)
    {
      *buf = 138412290;
      v37 = v13;
      _os_log_debug_impl(&dword_1B8220000, v15, OS_LOG_TYPE_DEBUG, "(AppQueryExecutor) Starting request: %@", buf, 0xCu);
    }

    v14 = objc_alloc_init(ASDPromise);
    [*(*(a1 + 56) + 16) setObject:v14 forKeyedSubscript:v13];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __97__ASDAppQueryExecutor_executeQueryWithPredicate_onPairedDevice_remoteDeviceID_withResultHandler___block_invoke_3;
    v33[3] = &unk_1E7CDBA48;
    v17 = v13;
    v18 = *(a1 + 56);
    v34 = v17;
    v35 = v18;
    [(ASDPromise *)v14 alwaysPerform:v33 onScheduler:*(v18 + 8)];
    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    v21 = *(a1 + 48);
    v22 = *(*(a1 + 56) + 24);
    v23 = [(ASDPromise *)v14 completionHandlerAdapter];
    [ASDAppQueryExecutor _executeQueryWithPredicate:v19 isForUpdates:0 reloadingFromServer:0 onPairedDevice:v20 remoteDeviceID:v21 usingServiceBroker:v22 withResultHandler:v23];

    v15 = v34;
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __97__ASDAppQueryExecutor_executeQueryWithPredicate_onPairedDevice_remoteDeviceID_withResultHandler___block_invoke_6;
  v30[3] = &unk_1E7CDCA68;
  v31 = v13;
  v32 = *(a1 + 64);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __97__ASDAppQueryExecutor_executeQueryWithPredicate_onPairedDevice_remoteDeviceID_withResultHandler___block_invoke_8;
  v27[3] = &unk_1E7CDBAB8;
  v28 = v31;
  v29 = *(a1 + 64);
  v24 = v31;
  v25 = +[ASDDispatchQueue defaultQueue];
  [(ASDPromise *)v14 thenPerform:v30 orCatchError:v27 onScheduler:v25];

  v26 = *MEMORY[0x1E69E9840];
}

uint64_t __97__ASDAppQueryExecutor_executeQueryWithPredicate_onPairedDevice_remoteDeviceID_withResultHandler___block_invoke_3(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = 138412290;
    v7 = v5;
    _os_log_debug_impl(&dword_1B8220000, v2, OS_LOG_TYPE_DEBUG, "(AppQueryExecutor) Completing request: %@", &v6, 0xCu);
  }

  result = [*(*(a1 + 40) + 16) setObject:0 forKeyedSubscript:*(a1 + 32)];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

+ (void)_executeQueryWithPredicate:(char)a3 isForUpdates:(char)a4 reloadingFromServer:(void *)a5 onPairedDevice:(void *)a6 remoteDeviceID:(void *)a7 usingServiceBroker:(void *)a8 withResultHandler:
{
  v14 = a2;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = objc_opt_self();
  if (v17)
  {
    v20 = v19;
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x2020000000;
    v33 = 1;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __150__ASDAppQueryExecutor__executeQueryWithPredicate_isForUpdates_reloadingFromServer_onPairedDevice_remoteDeviceID_usingServiceBroker_withResultHandler___block_invoke;
    v22[3] = &unk_1E7CDCB58;
    v23 = v14;
    v28 = v32;
    v29 = v20;
    v30 = a3;
    v31 = a4;
    v24 = v15;
    v25 = v16;
    v26 = v17;
    v27 = v18;
    [v26 getLibraryServiceWithCompletionHandler:v22];

    _Block_object_dispose(v32, 8);
  }

  else
  {
    v21 = __ErrorWithUnderlyingErrorAndPredicate(0, v14);
    (*(v18 + 2))(v18, 0, v21);
  }
}

void __97__ASDAppQueryExecutor_executeQueryWithPredicate_onPairedDevice_remoteDeviceID_withResultHandler___block_invoke_6(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = [v3 count];
    v7 = *(a1 + 32);
    v8 = 134218242;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_debug_impl(&dword_1B8220000, v4, OS_LOG_TYPE_DEBUG, "(AppQueryExecutor) Dispatching %lu results: %@", &v8, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

void __97__ASDAppQueryExecutor_executeQueryWithPredicate_onPairedDevice_remoteDeviceID_withResultHandler___block_invoke_8(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    v7 = 138412290;
    v8 = v6;
    _os_log_debug_impl(&dword_1B8220000, v4, OS_LOG_TYPE_DEBUG, "(AppQueryExecutor) Dispatching error: %@", &v7, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

- (void)executeUpdatesQueryWithPredicateReloadingFromServer:(BOOL)a3 onPairedDevice:(id)a4 remoteDeviceID:(id)a5 withResultHandler:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  dispatchQueue = self->_dispatchQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __123__ASDAppQueryExecutor_executeUpdatesQueryWithPredicateReloadingFromServer_onPairedDevice_remoteDeviceID_withResultHandler___block_invoke;
  v17[3] = &unk_1E7CDCAE0;
  v21 = a3;
  v17[4] = self;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  [(ASDDispatchQueue *)dispatchQueue syncUsingBlock:v17];
}

void __123__ASDAppQueryExecutor_executeUpdatesQueryWithPredicateReloadingFromServer_onPairedDevice_remoteDeviceID_withResultHandler___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:@"Updates"];
  v3 = ASDLogHandleForCategory(13);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1B8220000, v3, OS_LOG_TYPE_DEBUG, "(AppQueryExecutor) Joining updates request", buf, 2u);
    }
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1B8220000, v3, OS_LOG_TYPE_DEBUG, "(AppQueryExecutor) Starting updates request", buf, 2u);
    }

    v2 = objc_alloc_init(ASDPromise);
    [*(*(a1 + 32) + 16) setObject:v2 forKeyedSubscript:@"Updates"];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __123__ASDAppQueryExecutor_executeUpdatesQueryWithPredicateReloadingFromServer_onPairedDevice_remoteDeviceID_withResultHandler___block_invoke_14;
    v15[3] = &unk_1E7CDBA48;
    v16 = *(a1 + 32);
    v17 = @"Updates";
    [(ASDPromise *)v2 alwaysPerform:v15 onScheduler:*(v16 + 8)];
    v5 = *(a1 + 64);
    v7 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8 = *(*(a1 + 32) + 24);
    v9 = [(ASDPromise *)v2 completionHandlerAdapter];
    [ASDAppQueryExecutor _executeQueryWithPredicate:1 isForUpdates:v5 reloadingFromServer:v7 onPairedDevice:v6 remoteDeviceID:v8 usingServiceBroker:v9 withResultHandler:?];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __123__ASDAppQueryExecutor_executeUpdatesQueryWithPredicateReloadingFromServer_onPairedDevice_remoteDeviceID_withResultHandler___block_invoke_15;
  v13[3] = &unk_1E7CDCAB8;
  v14 = *(a1 + 56);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __123__ASDAppQueryExecutor_executeUpdatesQueryWithPredicateReloadingFromServer_onPairedDevice_remoteDeviceID_withResultHandler___block_invoke_16;
  v11[3] = &unk_1E7CDB730;
  v12 = *(a1 + 56);
  v10 = [ASDDispatchQueue defaultQueue:v11[0]];
  [(ASDPromise *)v2 thenPerform:v13 orCatchError:v11 onScheduler:v10];
}

uint64_t __123__ASDAppQueryExecutor_executeUpdatesQueryWithPredicateReloadingFromServer_onPairedDevice_remoteDeviceID_withResultHandler___block_invoke_14(uint64_t a1)
{
  v2 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_1B8220000, v2, OS_LOG_TYPE_DEBUG, "(AppQueryExecutor) Completing updates request", v4, 2u);
  }

  return [*(*(a1 + 32) + 16) setObject:0 forKeyedSubscript:*(a1 + 40)];
}

void __123__ASDAppQueryExecutor_executeUpdatesQueryWithPredicateReloadingFromServer_onPairedDevice_remoteDeviceID_withResultHandler___block_invoke_15(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134217984;
    v7 = [v3 count];
    _os_log_debug_impl(&dword_1B8220000, v4, OS_LOG_TYPE_DEBUG, "(AppQueryExecutor) Dispatching %lu results for updates", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

void __123__ASDAppQueryExecutor_executeUpdatesQueryWithPredicateReloadingFromServer_onPairedDevice_remoteDeviceID_withResultHandler___block_invoke_16(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_debug_impl(&dword_1B8220000, v4, OS_LOG_TYPE_DEBUG, "(AppQueryExecutor) Dispatching error for updates", v5, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __150__ASDAppQueryExecutor__executeQueryWithPredicate_isForUpdates_reloadingFromServer_onPairedDevice_remoteDeviceID_usingServiceBroker_withResultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __150__ASDAppQueryExecutor__executeQueryWithPredicate_isForUpdates_reloadingFromServer_onPairedDevice_remoteDeviceID_usingServiceBroker_withResultHandler___block_invoke_2;
    v49[3] = &unk_1E7CDCB30;
    v7 = *(a1 + 32);
    v53 = *(a1 + 72);
    v54 = *(a1 + 88);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    *&v11 = v9;
    *(&v11 + 1) = v10;
    *&v12 = v7;
    *(&v12 + 1) = v8;
    v50 = v12;
    v51 = v11;
    v52 = *(a1 + 64);
    v13 = [a2 remoteObjectProxyWithErrorHandler:v49];
    v14 = *(a1 + 48);
    if (v14)
    {
      v15 = *(a1 + 32);
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __150__ASDAppQueryExecutor__executeQueryWithPredicate_isForUpdates_reloadingFromServer_onPairedDevice_remoteDeviceID_usingServiceBroker_withResultHandler___block_invoke_17;
      v47[3] = &unk_1E7CDB7A8;
      v16 = &v48;
      v48 = *(a1 + 64);
      [v13 executeQueryWithPredicate:v15 onRemoteDevice:v14 withReplyHandler:v47];
    }

    else
    {
      v25 = *(a1 + 40);
      v26 = *(a1 + 88);
      if (v25)
      {
        if (!*(a1 + 88))
        {
          v29 = *(a1 + 32);
          v30 = [v25 pairingID];
          v39[0] = MEMORY[0x1E69E9820];
          v39[1] = 3221225472;
          v39[2] = __150__ASDAppQueryExecutor__executeQueryWithPredicate_isForUpdates_reloadingFromServer_onPairedDevice_remoteDeviceID_usingServiceBroker_withResultHandler___block_invoke_5;
          v39[3] = &unk_1E7CDB7A8;
          v16 = &v40;
          v40 = *(a1 + 64);
          [v13 executeQueryWithPredicate:v29 onPairedDevice:v30 withReplyHandler:v39];

          goto LABEL_16;
        }

        v27 = *(a1 + 89);
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __150__ASDAppQueryExecutor__executeQueryWithPredicate_isForUpdates_reloadingFromServer_onPairedDevice_remoteDeviceID_usingServiceBroker_withResultHandler___block_invoke_4;
        v41[3] = &unk_1E7CDB7A8;
        v16 = &v42;
        v42 = *(a1 + 64);
        v28 = v41;
      }

      else
      {
        if (!*(a1 + 88))
        {
          v31 = *(a1 + 32);
          v43[0] = MEMORY[0x1E69E9820];
          v43[1] = 3221225472;
          v43[2] = __150__ASDAppQueryExecutor__executeQueryWithPredicate_isForUpdates_reloadingFromServer_onPairedDevice_remoteDeviceID_usingServiceBroker_withResultHandler___block_invoke_3_19;
          v43[3] = &unk_1E7CDB7A8;
          v16 = &v44;
          v44 = *(a1 + 64);
          [v13 executeQueryWithPredicate:v31 withReplyHandler:v43];
          goto LABEL_16;
        }

        v27 = *(a1 + 89);
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __150__ASDAppQueryExecutor__executeQueryWithPredicate_isForUpdates_reloadingFromServer_onPairedDevice_remoteDeviceID_usingServiceBroker_withResultHandler___block_invoke_2_18;
        v45[3] = &unk_1E7CDB7A8;
        v16 = &v46;
        v46 = *(a1 + 64);
        v28 = v45;
      }

      [v13 executeQueryForUpdatesReloadingFromServer:v27 withReplyHandler:v28];
    }

LABEL_16:

    v17 = v50;
    goto LABEL_17;
  }

  v17 = __ErrorWithUnderlyingErrorAndPredicate(v5, *(a1 + 32));
  if (*(*(*(a1 + 72) + 8) + 24) == 1 && ASDErrorIsEqual(v6, *MEMORY[0x1E696A250], 4097))
  {
    *(*(*(a1 + 72) + 8) + 24) = 0;
    v18 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __150__ASDAppQueryExecutor__executeQueryWithPredicate_isForUpdates_reloadingFromServer_onPairedDevice_remoteDeviceID_usingServiceBroker_withResultHandler___block_invoke_6;
    block[3] = &unk_1E7CDCB08;
    v37 = *(a1 + 80);
    v17 = v17;
    v33 = v17;
    v19 = *(a1 + 32);
    v38 = *(a1 + 88);
    v20 = *(a1 + 40);
    v21 = *(a1 + 48);
    v22 = *(a1 + 56);
    *&v23 = v21;
    *(&v23 + 1) = v22;
    *&v24 = v19;
    *(&v24 + 1) = v20;
    v34 = v24;
    v35 = v23;
    v36 = *(a1 + 64);
    dispatch_async(v18, block);
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }

LABEL_17:
}

void __150__ASDAppQueryExecutor__executeQueryWithPredicate_isForUpdates_reloadingFromServer_onPairedDevice_remoteDeviceID_usingServiceBroker_withResultHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __ErrorWithUnderlyingErrorAndPredicate(v3, *(a1 + 32));
  if (*(*(*(a1 + 72) + 8) + 24) == 1 && ASDErrorIsEqual(v3, *MEMORY[0x1E696A250], 4097))
  {
    *(*(*(a1 + 72) + 8) + 24) = 0;
    v5 = dispatch_get_global_queue(21, 0);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __150__ASDAppQueryExecutor__executeQueryWithPredicate_isForUpdates_reloadingFromServer_onPairedDevice_remoteDeviceID_usingServiceBroker_withResultHandler___block_invoke_3;
    v12[3] = &unk_1E7CDCB08;
    v17 = *(a1 + 80);
    v13 = v4;
    v6 = *(a1 + 32);
    v18 = *(a1 + 88);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    *&v10 = v8;
    *(&v10 + 1) = v9;
    *&v11 = v6;
    *(&v11 + 1) = v7;
    v14 = v11;
    v15 = v10;
    v16 = *(a1 + 64);
    dispatch_async(v5, v12);
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

uint64_t __150__ASDAppQueryExecutor__executeQueryWithPredicate_isForUpdates_reloadingFromServer_onPairedDevice_remoteDeviceID_usingServiceBroker_withResultHandler___block_invoke_3(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 80);
    v6 = objc_opt_class();
    v7 = *(a1 + 32);
    *v9 = 138543618;
    *&v9[4] = v6;
    *&v9[12] = 2114;
    *&v9[14] = v7;
    v8 = v6;
    _os_log_error_impl(&dword_1B8220000, v2, OS_LOG_TYPE_ERROR, "[%{public}@]: Making second attempt to execute query after error: %{public}@", v9, 0x16u);
  }

  result = [(ASDAppQueryExecutor *)*(a1 + 80) _executeQueryWithPredicate:*(a1 + 88) isForUpdates:*(a1 + 89) reloadingFromServer:*(a1 + 48) onPairedDevice:*(a1 + 56) remoteDeviceID:*(a1 + 64) usingServiceBroker:*(a1 + 72) withResultHandler:*v9, *&v9[8], *&v9[16], v10];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __150__ASDAppQueryExecutor__executeQueryWithPredicate_isForUpdates_reloadingFromServer_onPairedDevice_remoteDeviceID_usingServiceBroker_withResultHandler___block_invoke_6(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 80);
    v6 = objc_opt_class();
    v7 = *(a1 + 32);
    *v9 = 138543618;
    *&v9[4] = v6;
    *&v9[12] = 2114;
    *&v9[14] = v7;
    v8 = v6;
    _os_log_error_impl(&dword_1B8220000, v2, OS_LOG_TYPE_ERROR, "[%{public}@]: Making second attempt to request service after error: %{public}@", v9, 0x16u);
  }

  result = [(ASDAppQueryExecutor *)*(a1 + 80) _executeQueryWithPredicate:*(a1 + 88) isForUpdates:*(a1 + 89) reloadingFromServer:*(a1 + 48) onPairedDevice:*(a1 + 56) remoteDeviceID:*(a1 + 64) usingServiceBroker:*(a1 + 72) withResultHandler:*v9, *&v9[8], *&v9[16], v10];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

@end