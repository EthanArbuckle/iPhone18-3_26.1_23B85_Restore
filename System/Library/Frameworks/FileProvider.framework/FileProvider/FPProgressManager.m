@interface FPProgressManager
+ (id)defaultManager;
- (FPProgressManager)init;
- (id)_progressForItem:(id)a3 usingProgressMap:(id)a4;
- (id)copyProgressForItem:(id)a3;
- (id)downloadProgressForItem:(id)a3;
- (id)removeCopyProgress:(id)a3;
- (id)uploadProgressForItem:(id)a3;
- (void)_resolveURLForItem:(id)a3 completionHandler:(id)a4;
- (void)attachProgressToItemsIfNeeded:(id)a3;
- (void)registerCopyProgress:(id)a3 forItemID:(id)a4;
- (void)removeCopyProgressForItemID:(id)a3;
- (void)removeDownloadProgressForItemID:(id)a3;
@end

@implementation FPProgressManager

+ (id)defaultManager
{
  if (defaultManager_onceToken != -1)
  {
    +[FPProgressManager defaultManager];
  }

  v3 = defaultManager_defaultManager;

  return v3;
}

uint64_t __35__FPProgressManager_defaultManager__block_invoke()
{
  defaultManager_defaultManager = objc_alloc_init(FPProgressManager);

  return MEMORY[0x1EEE66BB8]();
}

- (FPProgressManager)init
{
  v13.receiver = self;
  v13.super_class = FPProgressManager;
  v2 = [(FPProgressManager *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.FileProvider.item-progress-manager", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    downloadProgressPerItemIDs = v2->_downloadProgressPerItemIDs;
    v2->_downloadProgressPerItemIDs = v6;

    v8 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    uploadProgressPerItemIDs = v2->_uploadProgressPerItemIDs;
    v2->_uploadProgressPerItemIDs = v8;

    v10 = objc_alloc_init(FPOneToManyWeakMap);
    copyProgressPerItemIDs = v2->_copyProgressPerItemIDs;
    v2->_copyProgressPerItemIDs = v10;
  }

  return v2;
}

- (void)attachProgressToItemsIfNeeded:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v25 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v16;
    *&v5 = 138412802;
    v14 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if (([v9 isDownloading] & 1) != 0 || objc_msgSend(v9, "isUploading"))
        {
          v10 = [v9 progress];
          if (v10)
          {
            v11 = fp_current_or_default_log();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              v12 = objc_opt_class();
              *buf = v14;
              v20 = v12;
              v21 = 2048;
              v22 = v10;
              v23 = 2112;
              v24 = v9;
              _os_log_debug_impl(&dword_1AAAE1000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] progress <%@:%p> attached to %@", buf, 0x20u);
            }
          }
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v15 objects:v25 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)registerCopyProgress:(id)a3 forItemID:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__FPProgressManager_registerCopyProgress_forItemID___block_invoke;
  block[3] = &unk_1E7939090;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, block);
}

- (void)removeCopyProgressForItemID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __49__FPProgressManager_removeCopyProgressForItemID___block_invoke;
    v7[3] = &unk_1E79390B8;
    v7[4] = self;
    v8 = v4;
    dispatch_sync(queue, v7);
  }
}

- (void)removeDownloadProgressForItemID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__FPProgressManager_removeDownloadProgressForItemID___block_invoke;
    v7[3] = &unk_1E79390B8;
    v7[4] = self;
    v8 = v4;
    dispatch_sync(queue, v7);
  }
}

- (id)removeCopyProgress:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__FPProgressManager_removeCopyProgress___block_invoke;
  block[3] = &unk_1E793A190;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  v10 = v6;
  dispatch_sync(queue, block);
  v7 = [v13[5] firstObject];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __40__FPProgressManager_removeCopyProgress___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 32) removeObject:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)copyProgressForItem:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__FPProgressManager_copyProgressForItem___block_invoke;
  block[3] = &unk_1E793A190;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __41__FPProgressManager_copyProgressForItem___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v6 = [*(a1 + 40) itemID];
  v3 = [v2 anyObjectForKey:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)downloadProgressForItem:(id)a3
{
  v3 = [(FPProgressManager *)self _progressForItem:a3 usingProgressMap:self->_downloadProgressPerItemIDs];
  v4 = v3;
  if (v3)
  {
    v5 = *MEMORY[0x1E696A848];
    if (([v3 fp_isOfFileOperationKind:*MEMORY[0x1E696A848]] & 1) == 0)
    {
      v15 = [v4 fp_fileOperationKind];
      fp_simulate_crash(@"[Progress] Progress kind %@ should be downloading but instead it's %@", v6, v7, v8, v9, v10, v11, v12, v4);

      v13 = fp_current_or_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [FPProgressManager downloadProgressForItem:v4];
      }

      [v4 fp_setFileOperationKind:v5];
    }
  }

  return v4;
}

- (id)uploadProgressForItem:(id)a3
{
  v3 = [(FPProgressManager *)self _progressForItem:a3 usingProgressMap:self->_uploadProgressPerItemIDs];
  v4 = v3;
  if (v3)
  {
    v5 = *MEMORY[0x1E696A870];
    if (([v3 fp_isOfFileOperationKind:*MEMORY[0x1E696A870]] & 1) == 0)
    {
      v15 = [v4 fp_fileOperationKind];
      fp_simulate_crash(@"[Progress] Progress kind %@ should be uploading but instead it's %@", v6, v7, v8, v9, v10, v11, v12, v4);

      v13 = fp_current_or_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [FPProgressManager uploadProgressForItem:v4];
      }

      [v4 fp_setFileOperationKind:v5];
    }
  }

  return v4;
}

- (void)_resolveURLForItem:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = [v6 fileURL];

  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = [v6 fileURL];
  v10 = [v9 startAccessingSecurityScopedResource];
  v11 = [v9 fp_checkSandboxFileMetadataRead];
  if (v10)
  {
    [v9 stopAccessingSecurityScopedResource];
  }

  if (!v11)
  {

LABEL_7:
    v9 = +[FPItemManager defaultManager];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __58__FPProgressManager__resolveURLForItem_completionHandler___block_invoke;
    v12[3] = &unk_1E793A1E0;
    v12[4] = self;
    v13 = v7;
    [v9 fetchURLForItem:v6 creatingPlaceholderIfMissing:1 completionHandler:v12];

    goto LABEL_8;
  }

  (*(v7 + 2))(v7, v9, 0);
LABEL_8:
}

void __58__FPProgressManager__resolveURLForItem_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__FPProgressManager__resolveURLForItem_completionHandler___block_invoke_2;
  block[3] = &unk_1E793A1B8;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (id)_progressForItem:(id)a3 usingProgressMap:(id)a4
{
  v7 = a3;
  v8 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__0;
  v24 = __Block_byref_object_dispose__0;
  v25 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__FPProgressManager__progressForItem_usingProgressMap___block_invoke;
  block[3] = &unk_1E793A280;
  v15 = v8;
  v16 = self;
  v17 = v7;
  v18 = &v20;
  v19 = a2;
  v10 = v7;
  v11 = v8;
  dispatch_sync(queue, block);
  v12 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v12;
}

void __55__FPProgressManager__progressForItem_usingProgressMap___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 24);
  v4 = v2 == v3;
  section = __fp_create_section();
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v29 = @"download";
    v30 = *(a1 + 48);
    *buf = 134218498;
    if (v2 == v3)
    {
      v29 = @"upload";
    }

    v40 = section;
    v41 = 2112;
    v42 = v29;
    v43 = 2112;
    v44 = v30;
    _os_log_debug_impl(&dword_1AAAE1000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx [Progress] looking up for %@ progress of %@", buf, 0x20u);
  }

  v7 = *(a1 + 32);
  v8 = [*(a1 + 48) itemID];
  v9 = [v7 objectForKey:v8];
  v10 = a1 + 56;
  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v9;

  v13 = *(*(*(a1 + 56) + 8) + 40);
  if (v13 && ([v13 isCancelled] & 1) == 0)
  {
    v27 = fp_current_or_default_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      __55__FPProgressManager__progressForItem_usingProgressMap___block_invoke_cold_1(v10, v27);
    }
  }

  else
  {
    v14 = MEMORY[0x1E696A870];
    if (v2 != v3)
    {
      v14 = MEMORY[0x1E696A848];
    }

    v15 = *v14;
    v16 = objc_alloc_init(_FPParentProgress);
    v17 = *(*(a1 + 56) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    [*(*(*(a1 + 56) + 8) + 40) setTotalUnitCount:-1];
    [*(*(*(a1 + 56) + 8) + 40) fp_setFileOperationKind:v15];
    v19 = *(a1 + 32);
    v20 = *(*(*(a1 + 56) + 8) + 40);
    v21 = [*(a1 + 48) itemID];
    [v19 setObject:v20 forKey:v21];

    v23 = *(a1 + 40);
    v22 = *(a1 + 48);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __55__FPProgressManager__progressForItem_usingProgressMap___block_invoke_48;
    v31[3] = &unk_1E793A258;
    v31[4] = v23;
    v36 = section;
    v24 = v22;
    v25 = *(a1 + 56);
    v37 = *(a1 + 64);
    v32 = v24;
    v35 = v25;
    v26 = *(a1 + 32);
    v38 = v4;
    v33 = v26;
    v34 = v15;
    v27 = v15;
    [v23 _resolveURLForItem:v24 completionHandler:v31];
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __55__FPProgressManager__progressForItem_usingProgressMap___block_invoke_48(uint64_t a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 8));
  v37 = *(a1 + 72);
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v19 = [v5 fp_shortDescription];
    v20 = *(a1 + 40);
    *buf = 134218498;
    *&buf[4] = v37;
    *&buf[12] = 2112;
    *&buf[14] = v19;
    *&buf[22] = 2112;
    v47 = v20;
    _os_log_debug_impl(&dword_1AAAE1000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx [Progress] got url %@, creating child progress for %@", buf, 0x20u);
  }

  if (v6)
  {
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 40);
      v10 = [v6 fp_prettyDescription];
      __55__FPProgressManager__progressForItem_usingProgressMap___block_invoke_48_cold_1(v9, v10, buf, v8);
    }
  }

  else if (v5)
  {
    v11 = *(*(*(a1 + 64) + 8) + 40);
    v12 = *(a1 + 48);
    v13 = [*(a1 + 40) itemID];
    v14 = [v12 objectForKey:v13];
    LOBYTE(v11) = [v11 isEqual:v14];

    if (v11)
    {
      v8 = objc_opt_new();
      objc_initWeak(&location, *(a1 + 32));
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v47 = __Block_byref_object_copy__0;
      v48 = __Block_byref_object_dispose__0;
      v49 = 0;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __55__FPProgressManager__progressForItem_usingProgressMap___block_invoke_57;
      v31[3] = &unk_1E793A230;
      objc_copyWeak(v35, &location);
      v15 = *(a1 + 64);
      v33 = buf;
      v34 = v15;
      v16 = *(a1 + 40);
      v17 = *(a1 + 72);
      v32 = v16;
      v35[1] = v17;
      [v8 setProgressDidSetupHandler:v31];
      if (*(a1 + 88))
      {
        v18 = 0;
      }

      else
      {
        v18 = [*(a1 + 40) isExternalDownloadPlaceholder];
      }

      [v8 startTrackingFileURL:v5 kind:*(a1 + 56) allowReadPausedProgressFromDisk:v18];
      [*(*(*(a1 + 64) + 8) + 40) setProgressProxy:v8];
      v21 = *(*&buf[8] + 40);
      if (v21)
      {
        v22 = *(*(*(a1 + 64) + 8) + 40);
        v23 = [*(a1 + 40) documentSize];
        [v22 fp_addChildProgress:v21 withUnitCount:v23];

        v24 = *(a1 + 72);
        v30 = v24;
        v25 = fp_current_or_default_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          v27 = *(a1 + 40);
          v28 = *(*(*(a1 + 64) + 8) + 40);
          v29 = *(*&buf[8] + 40);
          *v38 = 134218754;
          v39 = v24;
          v40 = 2112;
          v41 = v27;
          v42 = 2112;
          v43 = v28;
          v44 = 2112;
          v45 = v29;
          _os_log_debug_impl(&dword_1AAAE1000, v25, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx [Progress] Added child progress for %@: %@, child %@", v38, 0x2Au);
        }

        __fp_leave_section_Debug(&v30);
      }

      objc_destroyWeak(v35);
      _Block_object_dispose(buf, 8);

      objc_destroyWeak(&location);
    }

    else
    {
      v8 = fp_current_or_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        __55__FPProgressManager__progressForItem_usingProgressMap___block_invoke_48_cold_2(v8);
      }
    }
  }

  else
  {
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __55__FPProgressManager__progressForItem_usingProgressMap___block_invoke_48_cold_3(v8);
    }
  }

  __fp_leave_section_Debug(&v37);
  v26 = *MEMORY[0x1E69E9840];
}

void __55__FPProgressManager__progressForItem_usingProgressMap___block_invoke_57(uint64_t a1, void *a2, int a3)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[1];
    if (a3)
    {
      dispatch_assert_queue_V2(WeakRetained[1]);
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    }

    else
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __55__FPProgressManager__progressForItem_usingProgressMap___block_invoke_2;
      v12[3] = &unk_1E793A208;
      v15 = *(a1 + 48);
      v13 = v6;
      v10 = *(a1 + 32);
      v11 = *(a1 + 64);
      v14 = v10;
      v16 = v11;
      dispatch_async(v9, v12);
    }
  }
}

void __55__FPProgressManager__progressForItem_usingProgressMap___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) documentSize];
  [v2 fp_addChildProgress:v3 withUnitCount:v4];

  v5 = *(a1 + 56);
  v11 = v5;
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 40);
    v9 = *(*(*(a1 + 48) + 8) + 40);
    v10 = *(a1 + 32);
    *buf = 134218754;
    v13 = v5;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    _os_log_debug_impl(&dword_1AAAE1000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx [Progress] Added child progress for %@: %@, child %@", buf, 0x2Au);
  }

  __fp_leave_section_Debug(&v11);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)downloadProgressForItem:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_fileOperationKind];
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_1_4(&dword_1AAAE1000, v2, v3, "[SIMCRASH] [Progress] Progress kind %@ should be downloading but instead it's %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)uploadProgressForItem:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_fileOperationKind];
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_1_4(&dword_1AAAE1000, v2, v3, "[SIMCRASH] [Progress] Progress kind %@ should be uploading but instead it's %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __55__FPProgressManager__progressForItem_usingProgressMap___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*(*a1 + 8) + 40);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] [Progress] found existing progress %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __55__FPProgressManager__progressForItem_usingProgressMap___block_invoke_48_cold_1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1AAAE1000, log, OS_LOG_TYPE_ERROR, "[ERROR] [Progress] can't retrieve URL for %@; %@", buf, 0x16u);
}

@end