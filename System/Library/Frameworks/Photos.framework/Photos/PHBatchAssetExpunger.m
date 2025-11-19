@interface PHBatchAssetExpunger
+ (id)batchAssetExpungerWithAssets:(id)a3 deleteOptions:(id)a4 library:(id)a5 topLevelSelector:(SEL)a6;
- (BOOL)performChangesAndWait:(id *)a3;
- (PHBatchAssetExpunger)initWithAssets:(id)a3 deleteOptions:(id)a4 library:(id)a5 batchSize:(unint64_t)a6;
- (void)_batchExpungeInRange:(_NSRange)a3;
- (void)performChangesWithCompletionHandler:(id)a3;
@end

@implementation PHBatchAssetExpunger

- (void)_batchExpungeInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v13 = *MEMORY[0x1E69E9840];
  v6 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14.location = location;
    v14.length = length;
    v7 = NSStringFromRange(v14);
    v9 = 134218242;
    v10 = self;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_DEFAULT, "Batch Expunge: %p Batch expunging assets in range: %@", &v9, 0x16u);
  }

  v8 = [(NSArray *)self->_assets subarrayWithRange:location, length];
  [PHAssetChangeRequest internalExpungeAssets:v8 deleteOptions:self->_deleteOptions];
}

- (void)performChangesWithCompletionHandler:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NSArray *)self->_assets count];
    *buf = 134218240;
    v12 = self;
    v13 = 2048;
    v14 = v6;
    _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_DEFAULT, "Batch Expunge: %p Start asynchronous expunge of %tu assets", buf, 0x16u);
  }

  batchPerformChanges = self->_batchPerformChanges;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__PHBatchAssetExpunger_performChangesWithCompletionHandler___block_invoke;
  v9[3] = &unk_1E75A84A0;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [(PHBatchPerformChanges *)batchPerformChanges performChangesWithCompletionHandler:v9];
}

void __60__PHBatchAssetExpunger_performChangesWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = @"NO";
    if (a2)
    {
      v8 = @"YES";
    }

    v9 = v8;
    v11 = 134218498;
    v12 = v7;
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_DEFAULT, "Batch Expunge: %p Finished asynchronous expunge: %@ %@", &v11, 0x20u);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, a2, v5);
  }
}

- (BOOL)performChangesAndWait:(id *)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NSArray *)self->_assets count];
    *buf = 134218240;
    v17 = self;
    v18 = 2048;
    v19 = v6;
    _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_DEFAULT, "Batch Expunge: %p Start synchronous expunge of %tu assets", buf, 0x16u);
  }

  batchPerformChanges = self->_batchPerformChanges;
  v15 = 0;
  v8 = [(PHBatchPerformChanges *)batchPerformChanges performChangesAndWait:&v15];
  v9 = v15;
  v10 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    *buf = 134218498;
    v17 = self;
    v18 = 2112;
    if (v8)
    {
      v11 = @"YES";
    }

    v19 = v11;
    v20 = 2112;
    v21 = v9;
    v12 = v11;
    _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_DEFAULT, "Batch Expunge: %p Finished synchronous expunge: %@ %@", buf, 0x20u);
  }

  if (a3)
  {
    v13 = v9;
    *a3 = v9;
  }

  return v8;
}

- (PHBatchAssetExpunger)initWithAssets:(id)a3 deleteOptions:(id)a4 library:(id)a5 batchSize:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v25.receiver = self;
  v25.super_class = PHBatchAssetExpunger;
  v13 = [(PHBatchAssetExpunger *)&v25 init];
  if (v13)
  {
    v14 = [v10 copy];
    assets = v13->_assets;
    v13->_assets = v14;

    objc_storeStrong(&v13->_deleteOptions, a4);
    objc_initWeak(&location, v13);
    v16 = [PHBatchPerformChanges alloc];
    v17 = [(NSArray *)v13->_assets count];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __71__PHBatchAssetExpunger_initWithAssets_deleteOptions_library_batchSize___block_invoke;
    v22[3] = &unk_1E75A7560;
    objc_copyWeak(&v23, &location);
    v18 = [(PHBatchPerformChanges *)v16 initWithPhotoLibrary:v12 itemCount:v17 batchSize:a6 batchBlock:v22];
    batchPerformChanges = v13->_batchPerformChanges;
    v13->_batchPerformChanges = v18;

    v20 = v13;
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v13;
}

void __71__PHBatchAssetExpunger_initWithAssets_deleteOptions_library_batchSize___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _batchExpungeInRange:{a2, a3}];
}

+ (id)batchAssetExpungerWithAssets:(id)a3 deleteOptions:(id)a4 library:(id)a5 topLevelSelector:(SEL)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  [PHObject assertAllObjects:v11 forSelector:a6 areOfType:objc_opt_class()];
  v12 = PLArrayFromEnumeration();

  v13 = [[PHBatchAssetExpunger alloc] initWithAssets:v12 deleteOptions:v10 library:v9 batchSize:200];

  return v13;
}

@end