@interface ASKFamilyPurchases
+ (ASKFamilyPurchases)shared;
- (ASKFamilyPurchases)init;
- (void)reloadDataWithBag:(id)a3 completion:(id)a4;
@end

@implementation ASKFamilyPurchases

+ (ASKFamilyPurchases)shared
{
  if (shared_sOnce != -1)
  {
    +[ASKFamilyPurchases shared];
  }

  v3 = shared_sInstance;

  return v3;
}

void __28__ASKFamilyPurchases_shared__block_invoke()
{
  v0 = objc_alloc_init(ASKFamilyPurchases);
  v1 = shared_sInstance;
  shared_sInstance = v0;
}

- (ASKFamilyPurchases)init
{
  v3.receiver = self;
  v3.super_class = ASKFamilyPurchases;
  return [(ASKFamilyPurchases *)&v3 init];
}

- (void)reloadDataWithBag:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = dispatch_get_global_queue(0, 0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__ASKFamilyPurchases_reloadDataWithBag_completion___block_invoke;
  v10[3] = &unk_1E870C5A8;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

void __51__ASKFamilyPurchases_reloadDataWithBag_completion___block_invoke(uint64_t a1)
{
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy_;
  v27[4] = __Block_byref_object_dispose_;
  v28 = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy_;
  v25[4] = __Block_byref_object_dispose_;
  v26 = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy_;
  v23[4] = __Block_byref_object_dispose_;
  v24 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy_;
  v21[4] = __Block_byref_object_dispose_;
  v22 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = dispatch_semaphore_create(0);
  v4 = [objc_alloc(MEMORY[0x1E698C920]) initWithBag:*(a1 + 32)];
  v5 = [v4 performFamilyInfoLookup];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __51__ASKFamilyPurchases_reloadDataWithBag_completion___block_invoke_18;
  v17[3] = &unk_1E870C530;
  v19 = v27;
  v20 = v25;
  v6 = v2;
  v18 = v6;
  [v5 addFinishBlock:v17];
  v7 = objc_alloc_init(MEMORY[0x1E699C070]);
  [v7 setQualityOfService:17];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__ASKFamilyPurchases_reloadDataWithBag_completion___block_invoke_2;
  v13[3] = &unk_1E870C558;
  v15 = v23;
  v16 = v21;
  v8 = v3;
  v14 = v8;
  [v7 startRequestWithCompletionHandler:v13];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__ASKFamilyPurchases_reloadDataWithBag_completion___block_invoke_3;
  block[3] = &unk_1E870C580;
  v11 = v23;
  v12 = v27;
  v10 = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], block);

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v23, 8);

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v27, 8);
}

void __51__ASKFamilyPurchases_reloadDataWithBag_completion___block_invoke_18(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __51__ASKFamilyPurchases_reloadDataWithBag_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __51__ASKFamilyPurchases_reloadDataWithBag_completion___block_invoke_3(void *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  v3 = [v2 ams_activeiTunesAccount];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = [*(*(a1[5] + 8) + 40) members];
  v5 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v27;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        if ([v10 isMe])
        {
          v11 = v10;

          v7 = v11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  if (*(*(a1[6] + 8) + 40))
  {
LABEL_13:
    if (*(*(a1[5] + 8) + 40))
    {
      v12 = v7 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      v19 = [v7 iTunesAccountDSID];

      if (v19)
      {
        v20 = [v7 iTunesAccountDSID];
        v21 = [v3 ams_DSID];
        v22 = [v20 isEqual:v21];

        if (v22)
        {
          v13 = 0;
        }

        else
        {
          v13 = 2;
        }
      }

      else
      {
        v13 = 3;
      }

      goto LABEL_30;
    }

LABEL_18:
    v13 = 0;
    goto LABEL_30;
  }

  v14 = [*(*(a1[5] + 8) + 40) members];
  v15 = [v14 count];

  if (!v15)
  {
    if (!*(*(a1[6] + 8) + 40))
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v16 = [v7 iTunesAccountDSID];
  v17 = [v3 ams_DSID];
  v18 = [v16 isEqual:v17];

  if (v18)
  {
    v13 = 3;
  }

  else
  {
    v13 = 1;
  }

LABEL_30:
  v23 = a1[4];
  v24 = *(*(a1[6] + 8) + 40);
  v25 = [v7 appleID];
  (*(v23 + 16))(v23, v24, v13, v25);
}

@end