@interface PHBatchAssetExpunger
+ (id)batchAssetExpungerWithAssets:(id)assets deleteOptions:(id)options library:(id)library topLevelSelector:(SEL)selector;
- (BOOL)performChangesAndWait:(id *)wait;
- (PHBatchAssetExpunger)initWithAssets:(id)assets deleteOptions:(id)options library:(id)library batchSize:(unint64_t)size;
- (void)_batchExpungeInRange:(_NSRange)range;
- (void)performChangesWithCompletionHandler:(id)handler;
@end

@implementation PHBatchAssetExpunger

- (void)_batchExpungeInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v13 = *MEMORY[0x1E69E9840];
  v6 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14.location = location;
    v14.length = length;
    v7 = NSStringFromRange(v14);
    v9 = 134218242;
    selfCopy = self;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_DEFAULT, "Batch Expunge: %p Batch expunging assets in range: %@", &v9, 0x16u);
  }

  v8 = [(NSArray *)self->_assets subarrayWithRange:location, length];
  [PHAssetChangeRequest internalExpungeAssets:v8 deleteOptions:self->_deleteOptions];
}

- (void)performChangesWithCompletionHandler:(id)handler
{
  v15 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NSArray *)self->_assets count];
    *buf = 134218240;
    selfCopy = self;
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
  v10 = handlerCopy;
  v8 = handlerCopy;
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

- (BOOL)performChangesAndWait:(id *)wait
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NSArray *)self->_assets count];
    *buf = 134218240;
    selfCopy2 = self;
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
    selfCopy2 = self;
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

  if (wait)
  {
    v13 = v9;
    *wait = v9;
  }

  return v8;
}

- (PHBatchAssetExpunger)initWithAssets:(id)assets deleteOptions:(id)options library:(id)library batchSize:(unint64_t)size
{
  assetsCopy = assets;
  optionsCopy = options;
  libraryCopy = library;
  v25.receiver = self;
  v25.super_class = PHBatchAssetExpunger;
  v13 = [(PHBatchAssetExpunger *)&v25 init];
  if (v13)
  {
    v14 = [assetsCopy copy];
    assets = v13->_assets;
    v13->_assets = v14;

    objc_storeStrong(&v13->_deleteOptions, options);
    objc_initWeak(&location, v13);
    v16 = [PHBatchPerformChanges alloc];
    v17 = [(NSArray *)v13->_assets count];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __71__PHBatchAssetExpunger_initWithAssets_deleteOptions_library_batchSize___block_invoke;
    v22[3] = &unk_1E75A7560;
    objc_copyWeak(&v23, &location);
    v18 = [(PHBatchPerformChanges *)v16 initWithPhotoLibrary:libraryCopy itemCount:v17 batchSize:size batchBlock:v22];
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

+ (id)batchAssetExpungerWithAssets:(id)assets deleteOptions:(id)options library:(id)library topLevelSelector:(SEL)selector
{
  libraryCopy = library;
  optionsCopy = options;
  assetsCopy = assets;
  [PHObject assertAllObjects:assetsCopy forSelector:selector areOfType:objc_opt_class()];
  v12 = PLArrayFromEnumeration();

  v13 = [[PHBatchAssetExpunger alloc] initWithAssets:v12 deleteOptions:optionsCopy library:libraryCopy batchSize:200];

  return v13;
}

@end