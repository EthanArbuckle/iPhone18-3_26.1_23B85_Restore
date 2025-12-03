@interface AVTResourceCacheSupport
+ (id)resourceFromCache:(id)cache forItem:(id)item scope:(id)scope preflightCacheMissHandler:(id)handler cacheMissHandler:(id)missHandler cacheMissQueue:(id)queue taskScheduler:(id)scheduler callbackQueue:(id)self0 resourceHandler:(id)self1;
+ (id)resourceFromCache:(id)cache forItem:(id)item scope:(id)scope preflightCacheMissHandler:(id)handler cacheMissWithCompletionHandler:(id)completionHandler cacheMissQueue:(id)queue taskScheduler:(id)scheduler callbackQueue:(id)self0 resourceHandler:(id)self1;
@end

@implementation AVTResourceCacheSupport

+ (id)resourceFromCache:(id)cache forItem:(id)item scope:(id)scope preflightCacheMissHandler:(id)handler cacheMissHandler:(id)missHandler cacheMissQueue:(id)queue taskScheduler:(id)scheduler callbackQueue:(id)self0 resourceHandler:(id)self1
{
  cacheCopy = cache;
  itemCopy = item;
  scopeCopy = scope;
  handlerCopy = handler;
  missHandlerCopy = missHandler;
  queueCopy = queue;
  schedulerCopy = scheduler;
  callbackQueueCopy = callbackQueue;
  resourceHandlerCopy = resourceHandler;
  v24 = [cacheCopy resourceForItem:itemCopy scope:scopeCopy];
  if (v24)
  {
    resourceHandlerCopy[2](resourceHandlerCopy, v24);
    v25 = 0;
  }

  else
  {
    v36 = schedulerCopy;
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __161__AVTResourceCacheSupport_resourceFromCache_forItem_scope_preflightCacheMissHandler_cacheMissHandler_cacheMissQueue_taskScheduler_callbackQueue_resourceHandler___block_invoke;
    v41[3] = &unk_1E7F3D628;
    v42 = cacheCopy;
    v26 = itemCopy;
    v43 = v26;
    v27 = scopeCopy;
    v44 = v27;
    v35 = missHandlerCopy;
    v46 = missHandlerCopy;
    v34 = callbackQueueCopy;
    v45 = callbackQueueCopy;
    v28 = resourceHandlerCopy;
    v47 = v28;
    v29 = MEMORY[0x1BFB0DE80](v41);
    v30 = v29;
    if (queueCopy)
    {
      if (handlerCopy)
      {
        v31 = handlerCopy[2](handlerCopy, v26, v27);
        if (v31)
        {
          v28[2](v28, v31);
        }
      }

      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __161__AVTResourceCacheSupport_resourceFromCache_forItem_scope_preflightCacheMissHandler_cacheMissHandler_cacheMissQueue_taskScheduler_callbackQueue_resourceHandler___block_invoke_3;
      v38[3] = &unk_1E7F3D678;
      v39 = queueCopy;
      v40 = v30;
      v32 = [v38 copy];
      [v36 scheduleTask:v32];
      v25 = MEMORY[0x1BFB0DE80](v32);
    }

    else
    {
      (*(v29 + 16))(v29);
      v25 = 0;
    }

    missHandlerCopy = v35;
    schedulerCopy = v36;
    callbackQueueCopy = v34;
  }

  return v25;
}

void __161__AVTResourceCacheSupport_resourceFromCache_forItem_scope_preflightCacheMissHandler_cacheMissHandler_cacheMissQueue_taskScheduler_callbackQueue_resourceHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) resourceForItem:*(a1 + 40) scope:*(a1 + 48) cacheMissHandler:*(a1 + 64)];
  v3 = *(a1 + 56);
  if (v3)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __161__AVTResourceCacheSupport_resourceFromCache_forItem_scope_preflightCacheMissHandler_cacheMissHandler_cacheMissQueue_taskScheduler_callbackQueue_resourceHandler___block_invoke_2;
    v4[3] = &unk_1E7F3A8A8;
    v6 = *(a1 + 72);
    v5 = v2;
    dispatch_async(v3, v4);
  }

  else
  {
    (*(*(a1 + 72) + 16))();
  }
}

void __161__AVTResourceCacheSupport_resourceFromCache_forItem_scope_preflightCacheMissHandler_cacheMissHandler_cacheMissQueue_taskScheduler_callbackQueue_resourceHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __161__AVTResourceCacheSupport_resourceFromCache_forItem_scope_preflightCacheMissHandler_cacheMissHandler_cacheMissQueue_taskScheduler_callbackQueue_resourceHandler___block_invoke_4;
  v6[3] = &unk_1E7F3D650;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __161__AVTResourceCacheSupport_resourceFromCache_forItem_scope_preflightCacheMissHandler_cacheMissHandler_cacheMissQueue_taskScheduler_callbackQueue_resourceHandler___block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

+ (id)resourceFromCache:(id)cache forItem:(id)item scope:(id)scope preflightCacheMissHandler:(id)handler cacheMissWithCompletionHandler:(id)completionHandler cacheMissQueue:(id)queue taskScheduler:(id)scheduler callbackQueue:(id)self0 resourceHandler:(id)self1
{
  cacheCopy = cache;
  itemCopy = item;
  scopeCopy = scope;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  queueCopy = queue;
  schedulerCopy = scheduler;
  v22 = cacheCopy;
  callbackQueueCopy = callbackQueue;
  resourceHandlerCopy = resourceHandler;
  v25 = [cacheCopy resourceForItem:itemCopy scope:scopeCopy];
  v41 = callbackQueueCopy;
  if (v25)
  {
    resourceHandlerCopy[2](resourceHandlerCopy, v25);
    v26 = 0;
    v27 = schedulerCopy;
  }

  else
  {
    v40 = handlerCopy;
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __175__AVTResourceCacheSupport_resourceFromCache_forItem_scope_preflightCacheMissHandler_cacheMissWithCompletionHandler_cacheMissQueue_taskScheduler_callbackQueue_resourceHandler___block_invoke;
    v46[3] = &unk_1E7F3D6F0;
    v39 = completionHandlerCopy;
    v52 = completionHandlerCopy;
    v28 = queueCopy;
    v29 = itemCopy;
    v47 = v29;
    v30 = scopeCopy;
    v48 = v30;
    v37 = v22;
    v49 = v22;
    v50 = callbackQueueCopy;
    v31 = resourceHandlerCopy;
    v53 = v31;
    v38 = v28;
    v26 = v28;
    v51 = v26;
    v32 = MEMORY[0x1BFB0DE80](v46);
    v33 = v32;
    if (v26)
    {
      if (v40)
      {
        v34 = v40[2](v40, v29, v30);
        if (v34)
        {
          v31[2](v31, v34);
        }
      }

      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __175__AVTResourceCacheSupport_resourceFromCache_forItem_scope_preflightCacheMissHandler_cacheMissWithCompletionHandler_cacheMissQueue_taskScheduler_callbackQueue_resourceHandler___block_invoke_7;
      v43[3] = &unk_1E7F3D678;
      v44 = v26;
      v45 = v33;
      v35 = [v43 copy];
      v27 = schedulerCopy;
      [schedulerCopy scheduleTask:v35];
      v26 = MEMORY[0x1BFB0DE80](v35);
    }

    else
    {
      (*(v32 + 16))(v32);
      v27 = schedulerCopy;
    }

    completionHandlerCopy = v39;
    handlerCopy = v40;
    v22 = v37;
    queueCopy = v38;
  }

  return v26;
}

void __175__AVTResourceCacheSupport_resourceFromCache_forItem_scope_preflightCacheMissHandler_cacheMissWithCompletionHandler_cacheMissQueue_taskScheduler_callbackQueue_resourceHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __175__AVTResourceCacheSupport_resourceFromCache_forItem_scope_preflightCacheMissHandler_cacheMissWithCompletionHandler_cacheMissQueue_taskScheduler_callbackQueue_resourceHandler___block_invoke_2;
  v11[3] = &unk_1E7F3D6C8;
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v12 = v10;
  v13 = v9;
  v15 = *(a1 + 80);
  v14 = *(a1 + 64);
  (*(v2 + 16))(v2, v3, v4, v11);
}

void __175__AVTResourceCacheSupport_resourceFromCache_forItem_scope_preflightCacheMissHandler_cacheMissWithCompletionHandler_cacheMissQueue_taskScheduler_callbackQueue_resourceHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __175__AVTResourceCacheSupport_resourceFromCache_forItem_scope_preflightCacheMissHandler_cacheMissWithCompletionHandler_cacheMissQueue_taskScheduler_callbackQueue_resourceHandler___block_invoke_3;
  v16[3] = &unk_1E7F3CDB8;
  v4 = v3;
  v17 = v4;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v18 = v10;
  v19 = v9;
  v20 = *(a1 + 72);
  v11 = MEMORY[0x1BFB0DE80](v16);
  v12 = v11;
  v13 = *(a1 + 64);
  if (v13)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __175__AVTResourceCacheSupport_resourceFromCache_forItem_scope_preflightCacheMissHandler_cacheMissWithCompletionHandler_cacheMissQueue_taskScheduler_callbackQueue_resourceHandler___block_invoke_6;
    block[3] = &unk_1E7F3AFF8;
    v15 = v11;
    dispatch_async(v13, block);
  }

  else
  {
    v11[2](v11);
  }
}

void __175__AVTResourceCacheSupport_resourceFromCache_forItem_scope_preflightCacheMissHandler_cacheMissWithCompletionHandler_cacheMissQueue_taskScheduler_callbackQueue_resourceHandler___block_invoke_3(uint64_t a1)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __175__AVTResourceCacheSupport_resourceFromCache_forItem_scope_preflightCacheMissHandler_cacheMissWithCompletionHandler_cacheMissQueue_taskScheduler_callbackQueue_resourceHandler___block_invoke_4;
  v8[3] = &unk_1E7F3D6A0;
  v9 = *(a1 + 32);
  v2 = MEMORY[0x1BFB0DE80](v8);
  v3 = [*(a1 + 40) resourceForItem:*(a1 + 48) scope:*(a1 + 56) cacheMissHandler:v2];
  v4 = *(a1 + 64);
  if (v4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __175__AVTResourceCacheSupport_resourceFromCache_forItem_scope_preflightCacheMissHandler_cacheMissWithCompletionHandler_cacheMissQueue_taskScheduler_callbackQueue_resourceHandler___block_invoke_5;
    block[3] = &unk_1E7F3A8A8;
    v7 = *(a1 + 72);
    v6 = *(a1 + 32);
    dispatch_async(v4, block);
  }

  else
  {
    (*(*(a1 + 72) + 16))();
  }
}

void __175__AVTResourceCacheSupport_resourceFromCache_forItem_scope_preflightCacheMissHandler_cacheMissWithCompletionHandler_cacheMissQueue_taskScheduler_callbackQueue_resourceHandler___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __175__AVTResourceCacheSupport_resourceFromCache_forItem_scope_preflightCacheMissHandler_cacheMissWithCompletionHandler_cacheMissQueue_taskScheduler_callbackQueue_resourceHandler___block_invoke_8;
  v6[3] = &unk_1E7F3D650;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __175__AVTResourceCacheSupport_resourceFromCache_forItem_scope_preflightCacheMissHandler_cacheMissWithCompletionHandler_cacheMissQueue_taskScheduler_callbackQueue_resourceHandler___block_invoke_8(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

@end