@interface LSByURLBundleUnregistrant
- (LSByURLBundleUnregistrant)initWithStrategy:(id)a3 operationUUID:(id)a4 URL:(id)a5;
- (void)runWithCompletion:(id)a3;
@end

@implementation LSByURLBundleUnregistrant

- (LSByURLBundleUnregistrant)initWithStrategy:(id)a3 operationUUID:(id)a4 URL:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = LSByURLBundleUnregistrant;
  v12 = [(LSByURLBundleUnregistrant *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_strategy, a3);
    objc_storeStrong(&v13->_uuid, a4);
    objc_storeStrong(&v13->_url, a5);
  }

  return v13;
}

- (void)runWithCompletion:(id)a3
{
  v5 = a3;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__49;
  v42 = __Block_byref_object_dispose__49;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__49;
  v36 = __Block_byref_object_dispose__49;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__136;
  v30 = __Block_byref_object_dispose__137;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__49;
  v24 = __Block_byref_object_dispose__49;
  v25 = 0;
  v6 = [FSNode alloc];
  url = self->_url;
  v8 = v39;
  obj = v39[5];
  v9 = [(FSNode *)v6 initWithURL:url flags:0 error:&obj];
  objc_storeStrong(v8 + 5, obj);
  if (v9)
  {
    [(LSRegistrantStrategy *)self->_strategy beginModificationOperation];
    strategy = self->_strategy;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __47__LSByURLBundleUnregistrant_runWithCompletion___block_invoke;
    v13[3] = &unk_1E6A1E378;
    v13[4] = self;
    v15 = &v38;
    v14 = v9;
    v16 = &v32;
    v17 = &v26;
    v18 = &v20;
    [(LSRegistrantStrategy *)strategy runSyncBlockInWriteContext:v13];
    [(LSRegistrantStrategy *)self->_strategy endModificationOperation];
    if (!v27[5])
    {
      [(LSRegistrantStrategy *)self->_strategy flushModificationState];
    }
  }

  v11 = v27[5];
  if (v11)
  {
    if (v39[5])
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"LSRegistrants.mm" lineNumber:434 description:{@"have error even though we succeeded!? %@", v39[5]}];

      v11 = v27[5];
    }

    (*(v11 + 16))(v11, v33[5]);
  }

  v5[2](v5, v21[5], v39[5]);
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  _Block_object_dispose(&v38, 8);
}

void __47__LSByURLBundleUnregistrant_runWithCompletion___block_invoke(void *a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _LSDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1[4] + 24);
    *buf = 138412290;
    v30 = v5;
    _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEFAULT, "Unregister bundle by URL start: %@", buf, 0xCu);
  }

  v6 = *(a1[6] + 8);
  obj = *(v6 + 40);
  v7 = [v3 databaseContextWithError:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (v7)
  {
    v8 = a1[5];
    v9 = *(a1[6] + 8);
    v27 = *(v9 + 40);
    v10 = [v7 findApplicationBundleAtNode:v8 error:&v27];
    objc_storeStrong((v9 + 40), v27);
    if (v10)
    {
      v11 = [*(a1[4] + 8) preUnregistrationContextForBundleUnit:v10 context:v7];
      v12 = *(a1[7] + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      v14 = *(a1[6] + 8);
      v26 = *(v14 + 40);
      v15 = [v7 unregisterApplicationBundleByUnit:v10 error:&v26];
      objc_storeStrong((v14 + 40), v26);
      v16 = *(a1[8] + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;

      if (*(*(a1[8] + 8) + 40))
      {
        v18 = [[_LSDModificationPendingSaveToken alloc] initWithUUID:*(a1[4] + 16)];
        v19 = *(a1[9] + 8);
        v20 = *(v19 + 40);
        *(v19 + 40) = v18;

        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __47__LSByURLBundleUnregistrant_runWithCompletion___block_invoke_159;
        v24[3] = &unk_1E6A1E350;
        v21 = a1[4];
        v25 = v10;
        v22 = a1[9];
        v24[4] = v21;
        v24[5] = v22;
        [v3 armSaveTimerIfNecessary:v24];
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __47__LSByURLBundleUnregistrant_runWithCompletion___block_invoke_159(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = _LSInstallLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(*(a1 + 32) + 24);
    v9 = *(a1 + 48);
    v14 = 138413058;
    v15 = v8;
    v16 = 2048;
    v17 = v9;
    v18 = 1024;
    v19 = a2;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "Save after unregistration for url %@ (unit %llx) attempted: %d save error: %@", &v14, 0x26u);
  }

  v10 = v6;
  v11 = v10;
  if ((a2 & 1) == 0)
  {
    v12 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 89, 0, "[LSByURLBundleUnregistrant runWithCompletion:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistrants.mm", 418);

    v11 = v12;
  }

  [*(*(*(a1 + 40) + 8) + 40) saveDidHappen:v11 == 0 error:v11];

  v13 = *MEMORY[0x1E69E9840];
}

@end