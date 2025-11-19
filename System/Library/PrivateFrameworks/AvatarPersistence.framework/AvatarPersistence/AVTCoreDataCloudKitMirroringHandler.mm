@interface AVTCoreDataCloudKitMirroringHandler
- (AVTCoreDataCloudKitMirroringHandler)initWithLogger:(id)a3 blockScheduler:(id)a4;
- (AVTCoreDataCloudKitMirroringHandlerDelegate)delegate;
- (void)dealloc;
- (void)didResetSync:(id)a3;
- (void)exportChangesWithManagedObjectContext:(id)a3 discretionary:(BOOL)a4 workQueue:(id)a5 completionHandler:(id)a6;
- (void)importChangesWithManagedObjectContext:(id)a3 discretionary:(BOOL)a4 workQueue:(id)a5 completionHandler:(id)a6;
- (void)resetZoneWithManagedObjectContext:(id)a3 completionHandler:(id)a4;
- (void)scheduleExportChangesWithManagedObjectContext:(id)a3 discretionary:(BOOL)a4 workQueue:(id)a5 completionHandler:(id)a6;
- (void)startObservingResetSyncWithNotificationCenter:(id)a3;
- (void)willResetSync:(id)a3;
@end

@implementation AVTCoreDataCloudKitMirroringHandler

- (AVTCoreDataCloudKitMirroringHandler)initWithLogger:(id)a3 blockScheduler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AVTCoreDataCloudKitMirroringHandler;
  v9 = [(AVTCoreDataCloudKitMirroringHandler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_logger, a3);
    objc_storeStrong(&v10->_blockScheduler, a4);
  }

  return v10;
}

- (void)dealloc
{
  v3 = [(AVTCoreDataCloudKitMirroringHandler *)self willResetNotificationToken];

  if (v3)
  {
    v4 = [(AVTCoreDataCloudKitMirroringHandler *)self notificationCenter];
    v5 = [(AVTCoreDataCloudKitMirroringHandler *)self willResetNotificationToken];
    [v4 removeObserver:v5];
  }

  v6 = [(AVTCoreDataCloudKitMirroringHandler *)self didResetNotificationToken];

  if (v6)
  {
    v7 = [(AVTCoreDataCloudKitMirroringHandler *)self notificationCenter];
    v8 = [(AVTCoreDataCloudKitMirroringHandler *)self didResetNotificationToken];
    [v7 removeObserver:v8];
  }

  v9.receiver = self;
  v9.super_class = AVTCoreDataCloudKitMirroringHandler;
  [(AVTCoreDataCloudKitMirroringHandler *)&v9 dealloc];
}

- (void)startObservingResetSyncWithNotificationCenter:(id)a3
{
  v4 = a3;
  v5 = [(AVTCoreDataCloudKitMirroringHandler *)self willResetNotificationToken];
  if (v5)
  {

LABEL_4:
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Already observing notifications"];
    goto LABEL_5;
  }

  v6 = [(AVTCoreDataCloudKitMirroringHandler *)self didResetNotificationToken];

  if (v6)
  {
    goto LABEL_4;
  }

LABEL_5:
  v7 = [(AVTCoreDataCloudKitMirroringHandler *)self logger];
  [v7 logStartObservingResetSync];

  objc_initWeak(&location, self);
  [(AVTCoreDataCloudKitMirroringHandler *)self setNotificationCenter:v4];
  v8 = *MEMORY[0x277CBE140];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __85__AVTCoreDataCloudKitMirroringHandler_startObservingResetSyncWithNotificationCenter___block_invoke;
  v14[3] = &unk_278CFA0D0;
  objc_copyWeak(&v15, &location);
  v9 = [v4 addObserverForName:v8 object:0 queue:0 usingBlock:v14];
  [(AVTCoreDataCloudKitMirroringHandler *)self setWillResetNotificationToken:v9];

  v10 = *MEMORY[0x277CBE130];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __85__AVTCoreDataCloudKitMirroringHandler_startObservingResetSyncWithNotificationCenter___block_invoke_2;
  v12[3] = &unk_278CFA0D0;
  objc_copyWeak(&v13, &location);
  v11 = [v4 addObserverForName:v10 object:0 queue:0 usingBlock:v12];
  [(AVTCoreDataCloudKitMirroringHandler *)self setDidResetNotificationToken:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __85__AVTCoreDataCloudKitMirroringHandler_startObservingResetSyncWithNotificationCenter___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained willResetSync:v3];
}

void __85__AVTCoreDataCloudKitMirroringHandler_startObservingResetSyncWithNotificationCenter___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didResetSync:v3];
}

- (void)willResetSync:(id)a3
{
  v4 = a3;
  v5 = [(AVTCoreDataCloudKitMirroringHandler *)self logger];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__AVTCoreDataCloudKitMirroringHandler_willResetSync___block_invoke;
  v7[3] = &unk_278CFA580;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 processingWillResetSyncNotification:v7];
}

void __53__AVTCoreDataCloudKitMirroringHandler_willResetSync___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v7 = [v2 objectForKeyedSubscript:*MEMORY[0x277CBE138]];

  if (v7)
  {
    v3 = [v7 unsignedIntegerValue];
  }

  else
  {
    v4 = [*(a1 + 40) logger];
    [v4 logMissingResetSyncReasonKey];

    v3 = 0;
  }

  v5 = [*(a1 + 40) logger];
  [v5 logResetSyncReason:v3];

  v6 = [*(a1 + 40) delegate];
  [v6 mirroringHandler:*(a1 + 40) willResetSyncWithReason:v3];
}

- (void)didResetSync:(id)a3
{
  v4 = a3;
  v5 = [(AVTCoreDataCloudKitMirroringHandler *)self logger];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__AVTCoreDataCloudKitMirroringHandler_didResetSync___block_invoke;
  v7[3] = &unk_278CFA580;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 processingDidResetSyncNotification:v7];
}

void __52__AVTCoreDataCloudKitMirroringHandler_didResetSync___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v7 = [v2 objectForKeyedSubscript:*MEMORY[0x277CBE138]];

  if (v7)
  {
    v3 = [v7 unsignedIntegerValue];
  }

  else
  {
    v4 = [*(a1 + 40) logger];
    [v4 logMissingResetSyncReasonKey];

    v3 = 0;
  }

  v5 = [*(a1 + 40) logger];
  [v5 logResetSyncReason:v3];

  v6 = [*(a1 + 40) delegate];
  [v6 mirroringHandler:*(a1 + 40) didResetSyncWithReason:v3];
}

- (void)scheduleExportChangesWithManagedObjectContext:(id)a3 discretionary:(BOOL)a4 workQueue:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(AVTCoreDataCloudKitMirroringHandler *)self blockScheduler];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __127__AVTCoreDataCloudKitMirroringHandler_scheduleExportChangesWithManagedObjectContext_discretionary_workQueue_completionHandler___block_invoke;
  v17[3] = &unk_278CFA5A8;
  v17[4] = self;
  v18 = v10;
  v21 = a4;
  v19 = v11;
  v20 = v12;
  v14 = v11;
  v15 = v10;
  v16 = v12;
  [v13 performBlock:v17 afterDelay:v14 onQueue:0.0];
}

void __127__AVTCoreDataCloudKitMirroringHandler_scheduleExportChangesWithManagedObjectContext_discretionary_workQueue_completionHandler___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) exportInFlight])
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      v8 = *MEMORY[0x277CCA470];
      v9[0] = @"Export already in flight, try again later";
      v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
      v4 = [AVTError errorWithCode:720 userInfo:v3];
      (*(v2 + 16))(v2, 0, v4);
    }
  }

  else
  {
    [*(a1 + 32) setExportInFlight:1];
    [*(a1 + 32) exportChangesWithManagedObjectContext:*(a1 + 40) discretionary:*(a1 + 64) workQueue:*(a1 + 48) completionHandler:*(a1 + 56)];
    v5 = [*(a1 + 32) blockScheduler];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __127__AVTCoreDataCloudKitMirroringHandler_scheduleExportChangesWithManagedObjectContext_discretionary_workQueue_completionHandler___block_invoke_2;
    v7[3] = &unk_278CFA4E8;
    v7[4] = *(a1 + 32);
    [v5 performBlock:v7 afterDelay:*(a1 + 48) onQueue:3.0];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)importChangesWithManagedObjectContext:(id)a3 discretionary:(BOOL)a4 workQueue:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __119__AVTCoreDataCloudKitMirroringHandler_importChangesWithManagedObjectContext_discretionary_workQueue_completionHandler___block_invoke;
  v16[3] = &unk_278CFA670;
  v16[4] = self;
  v17 = v11;
  v18 = v10;
  v19 = v12;
  v20 = a4;
  v13 = v12;
  v14 = v10;
  v15 = v11;
  [v14 performBlockAndWait:v16];
}

void __119__AVTCoreDataCloudKitMirroringHandler_importChangesWithManagedObjectContext_discretionary_workQueue_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) logger];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __119__AVTCoreDataCloudKitMirroringHandler_importChangesWithManagedObjectContext_discretionary_workQueue_completionHandler___block_invoke_2;
  v4[3] = &unk_278CFA648;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = v2;
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v3 = v2;
  [v3 importingRecords:v4];
}

void __119__AVTCoreDataCloudKitMirroringHandler_importChangesWithManagedObjectContext_discretionary_workQueue_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CBE3C8]);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __119__AVTCoreDataCloudKitMirroringHandler_importChangesWithManagedObjectContext_discretionary_workQueue_completionHandler___block_invoke_3;
  v19[3] = &unk_278CFA620;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v20 = v8;
  v21 = v7;
  v9 = [v2 initWithOptions:0 completionBlock:v19];
  v10 = [v9 options];
  [AVTCoreDataCloudKitMirroringConfiguration configureMirroringRequestOptions:v10 discretionary:*(a1 + 64)];

  v11 = *(a1 + 40);
  v18 = 0;
  v12 = [v11 executeRequest:v9 error:&v18];
  v13 = v18;

  if (!v12)
  {
    v14 = *(a1 + 48);
    v15 = [v13 code];
    v16 = [v13 description];
    [v14 logMirroringRequestErrorWithCode:v15 description:v16];

    v17 = *(a1 + 56);
    if (v17)
    {
      (*(v17 + 16))(v17, 0, v13);
    }
  }
}

void __119__AVTCoreDataCloudKitMirroringHandler_importChangesWithManagedObjectContext_discretionary_workQueue_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __119__AVTCoreDataCloudKitMirroringHandler_importChangesWithManagedObjectContext_discretionary_workQueue_completionHandler___block_invoke_4;
  v6[3] = &unk_278CFA5F8;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = v3;
  v10 = *(a1 + 56);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __119__AVTCoreDataCloudKitMirroringHandler_importChangesWithManagedObjectContext_discretionary_workQueue_completionHandler___block_invoke_4(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __119__AVTCoreDataCloudKitMirroringHandler_importChangesWithManagedObjectContext_discretionary_workQueue_completionHandler___block_invoke_5;
  v3[3] = &unk_278CFA5D0;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 performBlockAndWait:v3];
}

void __119__AVTCoreDataCloudKitMirroringHandler_importChangesWithManagedObjectContext_discretionary_workQueue_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) success];
  v4 = [*(a1 + 40) error];
  v5 = [v4 description];
  [v2 logImportRequestResult:v3 error:v5];

  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = [*(a1 + 40) success];
    v8 = [*(a1 + 40) error];
    (*(v6 + 16))(v6, v7, v8);
  }
}

- (void)exportChangesWithManagedObjectContext:(id)a3 discretionary:(BOOL)a4 workQueue:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __119__AVTCoreDataCloudKitMirroringHandler_exportChangesWithManagedObjectContext_discretionary_workQueue_completionHandler___block_invoke;
  v16[3] = &unk_278CFA670;
  v16[4] = self;
  v17 = v11;
  v18 = v10;
  v19 = v12;
  v20 = a4;
  v13 = v12;
  v14 = v10;
  v15 = v11;
  [v14 performBlockAndWait:v16];
}

void __119__AVTCoreDataCloudKitMirroringHandler_exportChangesWithManagedObjectContext_discretionary_workQueue_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) logger];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __119__AVTCoreDataCloudKitMirroringHandler_exportChangesWithManagedObjectContext_discretionary_workQueue_completionHandler___block_invoke_2;
  v4[3] = &unk_278CFA648;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = v2;
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v3 = v2;
  [v3 exportingRecords:v4];
}

void __119__AVTCoreDataCloudKitMirroringHandler_exportChangesWithManagedObjectContext_discretionary_workQueue_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CBE3B8]);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __119__AVTCoreDataCloudKitMirroringHandler_exportChangesWithManagedObjectContext_discretionary_workQueue_completionHandler___block_invoke_3;
  v19[3] = &unk_278CFA620;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v20 = v8;
  v21 = v7;
  v9 = [v2 initWithOptions:0 completionBlock:v19];
  v10 = [v9 options];
  [AVTCoreDataCloudKitMirroringConfiguration configureMirroringRequestOptions:v10 discretionary:*(a1 + 64)];

  v11 = *(a1 + 40);
  v18 = 0;
  v12 = [v11 executeRequest:v9 error:&v18];
  v13 = v18;

  if (!v12)
  {
    v14 = *(a1 + 48);
    v15 = [v13 code];
    v16 = [v13 description];
    [v14 logMirroringRequestErrorWithCode:v15 description:v16];

    v17 = *(a1 + 56);
    if (v17)
    {
      (*(v17 + 16))(v17, 0, v13);
    }
  }
}

void __119__AVTCoreDataCloudKitMirroringHandler_exportChangesWithManagedObjectContext_discretionary_workQueue_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __119__AVTCoreDataCloudKitMirroringHandler_exportChangesWithManagedObjectContext_discretionary_workQueue_completionHandler___block_invoke_4;
  v6[3] = &unk_278CFA5F8;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = v3;
  v10 = *(a1 + 56);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __119__AVTCoreDataCloudKitMirroringHandler_exportChangesWithManagedObjectContext_discretionary_workQueue_completionHandler___block_invoke_4(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __119__AVTCoreDataCloudKitMirroringHandler_exportChangesWithManagedObjectContext_discretionary_workQueue_completionHandler___block_invoke_5;
  v3[3] = &unk_278CFA5D0;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 performBlockAndWait:v3];
}

void __119__AVTCoreDataCloudKitMirroringHandler_exportChangesWithManagedObjectContext_discretionary_workQueue_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) success];
  v4 = [*(a1 + 40) error];
  v5 = [v4 description];
  [v2 logExportRequestResult:v3 error:v5];

  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = [*(a1 + 40) success];
    v8 = [*(a1 + 40) error];
    (*(v6 + 16))(v6, v7, v8);
  }
}

- (void)resetZoneWithManagedObjectContext:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __91__AVTCoreDataCloudKitMirroringHandler_resetZoneWithManagedObjectContext_completionHandler___block_invoke;
  v9[3] = &unk_278CF9F50;
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  [v8 performBlockAndWait:v9];
}

void __91__AVTCoreDataCloudKitMirroringHandler_resetZoneWithManagedObjectContext_completionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CBE3E8]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __91__AVTCoreDataCloudKitMirroringHandler_resetZoneWithManagedObjectContext_completionHandler___block_invoke_2;
  v10[3] = &unk_278CFA698;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v3 = [v2 initWithOptions:0 completionBlock:v10];
  v4 = [v3 options];
  [AVTCoreDataCloudKitMirroringConfiguration configureMirroringRequestOptions:v4];

  v5 = *(a1 + 32);
  v9 = 0;
  v6 = [v5 executeRequest:v3 error:&v9];
  v7 = v9;
  if (!v6)
  {
    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))(v8, 0, v7);
    }
  }
}

void __91__AVTCoreDataCloudKitMirroringHandler_resetZoneWithManagedObjectContext_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __91__AVTCoreDataCloudKitMirroringHandler_resetZoneWithManagedObjectContext_completionHandler___block_invoke_3;
  v7[3] = &unk_278CF9F78;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 performBlockAndWait:v7];
}

void __91__AVTCoreDataCloudKitMirroringHandler_resetZoneWithManagedObjectContext_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) success];
  v4 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v3, v4);
}

- (AVTCoreDataCloudKitMirroringHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end