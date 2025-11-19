@interface AVTResourceCacheSupport
+ (id)resourceFromCache:(id)a3 forItem:(id)a4 scope:(id)a5 preflightCacheMissHandler:(id)a6 cacheMissHandler:(id)a7 cacheMissQueue:(id)a8 taskScheduler:(id)a9 callbackQueue:(id)a10 resourceHandler:(id)a11;
+ (id)resourceFromCache:(id)a3 forItem:(id)a4 scope:(id)a5 preflightCacheMissHandler:(id)a6 cacheMissWithCompletionHandler:(id)a7 cacheMissQueue:(id)a8 taskScheduler:(id)a9 callbackQueue:(id)a10 resourceHandler:(id)a11;
@end

@implementation AVTResourceCacheSupport

+ (id)resourceFromCache:(id)a3 forItem:(id)a4 scope:(id)a5 preflightCacheMissHandler:(id)a6 cacheMissHandler:(id)a7 cacheMissQueue:(id)a8 taskScheduler:(id)a9 callbackQueue:(id)a10 resourceHandler:(id)a11
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v37 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v24 = [v16 resourceForItem:v17 scope:v18];
  if (v24)
  {
    v23[2](v23, v24);
    v25 = 0;
  }

  else
  {
    v36 = v21;
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __161__AVTResourceCacheSupport_resourceFromCache_forItem_scope_preflightCacheMissHandler_cacheMissHandler_cacheMissQueue_taskScheduler_callbackQueue_resourceHandler___block_invoke;
    v41[3] = &unk_1E7F3D628;
    v42 = v16;
    v26 = v17;
    v43 = v26;
    v27 = v18;
    v44 = v27;
    v35 = v19;
    v46 = v19;
    v34 = v22;
    v45 = v22;
    v28 = v23;
    v47 = v28;
    v29 = MEMORY[0x1BFB0DE80](v41);
    v30 = v29;
    if (v20)
    {
      if (v37)
      {
        v31 = v37[2](v37, v26, v27);
        if (v31)
        {
          v28[2](v28, v31);
        }
      }

      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __161__AVTResourceCacheSupport_resourceFromCache_forItem_scope_preflightCacheMissHandler_cacheMissHandler_cacheMissQueue_taskScheduler_callbackQueue_resourceHandler___block_invoke_3;
      v38[3] = &unk_1E7F3D678;
      v39 = v20;
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

    v19 = v35;
    v21 = v36;
    v22 = v34;
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

+ (id)resourceFromCache:(id)a3 forItem:(id)a4 scope:(id)a5 preflightCacheMissHandler:(id)a6 cacheMissWithCompletionHandler:(id)a7 cacheMissQueue:(id)a8 taskScheduler:(id)a9 callbackQueue:(id)a10 resourceHandler:(id)a11
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v42 = a9;
  v22 = v16;
  v23 = a10;
  v24 = a11;
  v25 = [v16 resourceForItem:v17 scope:v18];
  v41 = v23;
  if (v25)
  {
    v24[2](v24, v25);
    v26 = 0;
    v27 = v42;
  }

  else
  {
    v40 = v19;
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __175__AVTResourceCacheSupport_resourceFromCache_forItem_scope_preflightCacheMissHandler_cacheMissWithCompletionHandler_cacheMissQueue_taskScheduler_callbackQueue_resourceHandler___block_invoke;
    v46[3] = &unk_1E7F3D6F0;
    v39 = v20;
    v52 = v20;
    v28 = v21;
    v29 = v17;
    v47 = v29;
    v30 = v18;
    v48 = v30;
    v37 = v22;
    v49 = v22;
    v50 = v23;
    v31 = v24;
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
      v27 = v42;
      [v42 scheduleTask:v35];
      v26 = MEMORY[0x1BFB0DE80](v35);
    }

    else
    {
      (*(v32 + 16))(v32);
      v27 = v42;
    }

    v20 = v39;
    v19 = v40;
    v22 = v37;
    v21 = v38;
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