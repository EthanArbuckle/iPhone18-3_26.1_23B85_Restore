@interface LSByURLPluginUnregistrant
- (LSByURLPluginUnregistrant)initWithStrategy:(id)strategy operationUUID:(id)d URL:(id)l;
- (void)runWithCompletion:(id)completion;
@end

@implementation LSByURLPluginUnregistrant

- (LSByURLPluginUnregistrant)initWithStrategy:(id)strategy operationUUID:(id)d URL:(id)l
{
  strategyCopy = strategy;
  dCopy = d;
  lCopy = l;
  v15.receiver = self;
  v15.super_class = LSByURLPluginUnregistrant;
  v12 = [(LSByURLPluginUnregistrant *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_strategy, strategy);
    objc_storeStrong(&v13->_uuid, d);
    objc_storeStrong(&v13->_url, l);
  }

  return v13;
}

- (void)runWithCompletion:(id)completion
{
  completionCopy = completion;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__49;
  v25 = __Block_byref_object_dispose__49;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__49;
  v19 = __Block_byref_object_dispose__49;
  v20 = 0;
  v5 = [FSNode alloc];
  url = self->_url;
  v7 = v22;
  obj = v22[5];
  v8 = [(FSNode *)v5 initWithURL:url flags:0 error:&obj];
  objc_storeStrong(v7 + 5, obj);
  if (v8)
  {
    [(LSRegistrantStrategy *)self->_strategy beginModificationOperation];
    strategy = self->_strategy;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __47__LSByURLPluginUnregistrant_runWithCompletion___block_invoke;
    v10[3] = &unk_1E6A1E3A0;
    v10[4] = self;
    v12 = &v21;
    v11 = v8;
    v13 = &v15;
    [(LSRegistrantStrategy *)strategy runSyncBlockInWriteContext:v10];
    [(LSRegistrantStrategy *)self->_strategy endModificationOperation];
    if (!v16[5])
    {
      [(LSRegistrantStrategy *)self->_strategy flushModificationState];
    }
  }

  completionCopy[2](completionCopy, v16[5], v22[5]);
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
}

void __47__LSByURLPluginUnregistrant_runWithCompletion___block_invoke(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _LSDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1[4] + 24);
    *buf = 138412290;
    v25 = v5;
    _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEFAULT, "Unregister plugin by URL start: %@", buf, 0xCu);
  }

  v6 = *(a1[6] + 8);
  obj = *(v6 + 40);
  v7 = [v3 databaseContextWithError:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (v7)
  {
    v8 = a1[5];
    v9 = *(a1[6] + 8);
    v22 = *(v9 + 40);
    v10 = [v7 findPluginAtNode:v8 error:&v22];
    objc_storeStrong((v9 + 40), v22);
    if (v10)
    {
      v11 = *(a1[6] + 8);
      v21 = *(v11 + 40);
      v12 = [v7 unregisterPluginBundleByUnit:v10 error:&v21];
      objc_storeStrong((v11 + 40), v21);
      if (v12)
      {
        v13 = [[_LSDModificationPendingSaveToken alloc] initWithUUID:*(a1[4] + 16)];
        v14 = *(a1[7] + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = v13;

        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __47__LSByURLPluginUnregistrant_runWithCompletion___block_invoke_177;
        v19[3] = &unk_1E6A1E350;
        v16 = a1[4];
        v20 = v10;
        v17 = a1[7];
        v19[4] = v16;
        v19[5] = v17;
        [v3 armSaveTimerIfNecessary:v19];
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __47__LSByURLPluginUnregistrant_runWithCompletion___block_invoke_177(uint64_t a1, int a2, uint64_t a3, void *a4)
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
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "Save after unregistration for plugin url %@ (unit %llx) attempted: %d save error: %@", &v14, 0x26u);
  }

  v10 = v6;
  v11 = v10;
  if ((a2 & 1) == 0)
  {
    v12 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 89, 0, "[LSByURLPluginUnregistrant runWithCompletion:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistrants.mm", 477);

    v11 = v12;
  }

  [*(*(*(a1 + 40) + 8) + 40) saveDidHappen:v11 == 0 error:v11];

  v13 = *MEMORY[0x1E69E9840];
}

@end