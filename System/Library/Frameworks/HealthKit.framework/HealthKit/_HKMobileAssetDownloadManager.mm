@interface _HKMobileAssetDownloadManager
- (_HKMobileAssetDownloadManager)initWithMobileAssetTypeName:(id)a3 queue:(id)a4;
- (id)_errorWithDomain:(id)a3 code:(int64_t)a4;
- (id)_generateAssetQueryFromQueryParams:(id)a3 returnTypes:(int64_t)a4;
- (void)_callDownloadCompletionHandlerWithAssets:(id)a3 queryParams:(id)a4;
- (void)_callErrorHandlerWithError:(id)a3;
- (void)_queue_downloadAssets:(id)a3 completion:(id)a4;
- (void)_queue_fetchAssetsWithLocalInformation:(BOOL)a3 shouldRequery:(BOOL)a4 queryParams:(id)a5 returnTypes:(int64_t)a6;
- (void)_queue_fetchAssetsWithQuery:(id)a3 onlyLocal:(BOOL)a4 completion:(id)a5;
- (void)downloadAssetsWithQueryParams:(id)a3;
- (void)downloadMobileAssets:(id)a3 completion:(id)a4;
- (void)fetchAssetsWithQueryParams:(id)a3 onlyLocal:(BOOL)a4 returnTypes:(int64_t)a5 completion:(id)a6;
- (void)removeMobileAssets:(id)a3 completion:(id)a4;
@end

@implementation _HKMobileAssetDownloadManager

- (_HKMobileAssetDownloadManager)initWithMobileAssetTypeName:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = _HKMobileAssetDownloadManager;
  v8 = [(_HKMobileAssetDownloadManager *)&v18 init];
  if (v8)
  {
    v9 = [v6 copy];
    mobileAssetTypeName = v8->_mobileAssetTypeName;
    v8->_mobileAssetTypeName = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingOperations = v8->_pendingOperations;
    v8->_pendingOperations = v11;

    *&v8->_shouldQueryLocalAssetsFirst = 256;
    v8->_maxNumberOfRetriesAllowed = 1;
    objc_storeStrong(&v8->_queue, a4);
    v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    downloadingQueryParams = v8->_downloadingQueryParams;
    v8->_downloadingQueryParams = v13;

    v15 = objc_opt_new();
    mobileAssetDownloadOptions = v8->_mobileAssetDownloadOptions;
    v8->_mobileAssetDownloadOptions = v15;

    v8->_mobileAssetQueryReturnTypes = 0;
  }

  return v8;
}

- (void)downloadAssetsWithQueryParams:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63___HKMobileAssetDownloadManager_downloadAssetsWithQueryParams___block_invoke;
  v7[3] = &unk_1E7378400;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)fetchAssetsWithQueryParams:(id)a3 onlyLocal:(BOOL)a4 returnTypes:(int64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a6;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93___HKMobileAssetDownloadManager_fetchAssetsWithQueryParams_onlyLocal_returnTypes_completion___block_invoke;
  block[3] = &unk_1E7384A68;
  block[4] = self;
  v16 = v10;
  v19 = a4;
  v17 = v11;
  v18 = a5;
  v13 = v11;
  v14 = v10;
  dispatch_async(queue, block);
}

- (void)downloadMobileAssets:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65___HKMobileAssetDownloadManager_downloadMobileAssets_completion___block_invoke;
  block[3] = &unk_1E73766C8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)removeMobileAssets:(id)a3 completion:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = 1;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v26[3] = [v6 count];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63___HKMobileAssetDownloadManager_removeMobileAssets_completion___block_invoke;
  aBlock[3] = &unk_1E7384A90;
  aBlock[4] = self;
  v24 = v26;
  v8 = v7;
  v23 = v8;
  v25 = v27;
  v9 = _Block_copy(aBlock);
  _HKInitializeLogging();
  v10 = HKLogMobileAsset;
  if (os_log_type_enabled(HKLogMobileAsset, OS_LOG_TYPE_DEBUG))
  {
    v11 = v10;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      -[_HKMobileAssetDownloadManager removeMobileAssets:completion:].cold.1(buf, [v6 count], v11);
    }
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63___HKMobileAssetDownloadManager_removeMobileAssets_completion___block_invoke_303;
  block[3] = &unk_1E7384AE0;
  v19 = v9;
  v20 = v26;
  v17 = v6;
  v18 = self;
  v21 = v27;
  v13 = v9;
  v14 = v6;
  dispatch_async(queue, block);

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(v27, 8);

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_queue_fetchAssetsWithQuery:(id)a3 onlyLocal:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__54;
  v24[4] = __Block_byref_object_dispose__54;
  v25 = 0;
  v10 = dispatch_group_create();
  dispatch_group_enter(v10);
  if (v6)
  {
    dispatch_group_leave(v10);
  }

  else
  {
    v11 = MEMORY[0x1E69B18D8];
    mobileAssetTypeName = self->_mobileAssetTypeName;
    mobileAssetDownloadOptions = self->_mobileAssetDownloadOptions;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __82___HKMobileAssetDownloadManager__queue_fetchAssetsWithQuery_onlyLocal_completion___block_invoke;
    v21[3] = &unk_1E7384B08;
    v23 = v24;
    v21[4] = self;
    v22 = v10;
    [v11 startCatalogDownload:mobileAssetTypeName options:mobileAssetDownloadOptions then:v21];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82___HKMobileAssetDownloadManager__queue_fetchAssetsWithQuery_onlyLocal_completion___block_invoke_2;
  block[3] = &unk_1E7384B80;
  block[4] = self;
  v18 = v8;
  v19 = v9;
  v20 = v24;
  v15 = v9;
  v16 = v8;
  dispatch_group_notify(v10, queue, block);

  _Block_object_dispose(v24, 8);
}

- (void)_queue_fetchAssetsWithLocalInformation:(BOOL)a3 shouldRequery:(BOOL)a4 queryParams:(id)a5 returnTypes:(int64_t)a6
{
  v8 = a3;
  v10 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__54;
  v28[4] = __Block_byref_object_dispose__54;
  v29 = 0;
  v11 = dispatch_group_create();
  dispatch_group_enter(v11);
  if (v8)
  {
    dispatch_group_leave(v11);
  }

  else
  {
    v18 = a4;
    v12 = a6;
    v13 = MEMORY[0x1E69B18D8];
    mobileAssetTypeName = self->_mobileAssetTypeName;
    mobileAssetDownloadOptions = self->_mobileAssetDownloadOptions;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __110___HKMobileAssetDownloadManager__queue_fetchAssetsWithLocalInformation_shouldRequery_queryParams_returnTypes___block_invoke;
    v25[3] = &unk_1E7384B08;
    v27 = v28;
    v25[4] = self;
    v26 = v11;
    [v13 startCatalogDownload:mobileAssetTypeName options:mobileAssetDownloadOptions then:v25];

    a6 = v12;
    a4 = v18;
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __110___HKMobileAssetDownloadManager__queue_fetchAssetsWithLocalInformation_shouldRequery_queryParams_returnTypes___block_invoke_2;
  block[3] = &unk_1E7384C20;
  block[4] = self;
  v20 = v10;
  v21 = v28;
  v22 = a6;
  v23 = a4;
  v24 = v8;
  v17 = v10;
  dispatch_group_notify(v11, queue, block);

  _Block_object_dispose(v28, 8);
}

- (void)_queue_downloadAssets:(id)a3 completion:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = __Block_byref_object_copy__54;
  v38[4] = __Block_byref_object_dispose__54;
  v39 = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy__54;
  v36[4] = __Block_byref_object_dispose__54;
  v37 = 0;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v35[3] = [v6 count];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66___HKMobileAssetDownloadManager__queue_downloadAssets_completion___block_invoke;
  aBlock[3] = &unk_1E7384C48;
  v32 = v35;
  v18 = v7;
  v31 = v18;
  v33 = v38;
  v34 = v36;
  v20 = _Block_copy(aBlock);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v26 objects:v40 count:16];
  if (v8)
  {
    v9 = *v27;
    do
    {
      v10 = 0;
      do
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * v10);
        v12 = [_HKMobileAssetDownloadOperation alloc];
        queue = self->_queue;
        mobileAssetDownloadOptions = self->_mobileAssetDownloadOptions;
        v15 = [(_HKMobileAssetDownloadManager *)self maxNumberOfRetriesAllowed];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __66___HKMobileAssetDownloadManager__queue_downloadAssets_completion___block_invoke_2;
        v21[3] = &unk_1E7384C70;
        v21[4] = self;
        v21[5] = v11;
        v23 = v38;
        v24 = v35;
        v25 = v36;
        v22 = v20;
        v16 = [(_HKMobileAssetDownloadOperation *)v12 initWithAsset:v11 queue:queue downloadOptions:mobileAssetDownloadOptions maxNumberOfRetriesAllowed:v15 completion:v21];
        [(NSMutableArray *)self->_pendingOperations addObject:v16];
        [(_HKMobileAssetDownloadOperation *)v16 run];

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v26 objects:v40 count:16];
    }

    while (v8);
  }

  v20[2](v20);
  _Block_object_dispose(v35, 8);
  _Block_object_dispose(v36, 8);

  _Block_object_dispose(v38, 8);
  v17 = *MEMORY[0x1E69E9840];
}

- (id)_generateAssetQueryFromQueryParams:(id)a3 returnTypes:(int64_t)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E69B18E8]) initWithType:self->_mobileAssetTypeName];
  [v7 setDoNotBlockBeforeFirstUnlock:1];
  [v7 returnTypes:a4];
  if (a4 == 1)
  {
    [v7 setDoNotBlockOnNetworkStatus:1];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = [v8 objectForKeyedSubscript:v13];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        v16 = [v8 objectForKeyedSubscript:v13];
        objc_opt_class();
        v17 = objc_opt_isKindOfClass();

        if (isKindOfClass & 1) != 0 || (v17)
        {
          if (isKindOfClass)
          {
            goto LABEL_11;
          }
        }

        else
        {
          [_HKMobileAssetDownloadManager _generateAssetQueryFromQueryParams:returnTypes:];
          if (isKindOfClass)
          {
LABEL_11:
            v18 = [v8 objectForKeyedSubscript:v13];
            [v7 addKeyValuePair:v13 with:v18];
            goto LABEL_14;
          }
        }

        v19 = MEMORY[0x1E695DF70];
        v18 = [v8 objectForKeyedSubscript:v13];
        v20 = [v19 arrayWithArray:v18];
        [v7 addKeyValueArray:v13 with:v20];

LABEL_14:
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  v21 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)_callDownloadCompletionHandlerWithAssets:(id)a3 queryParams:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86___HKMobileAssetDownloadManager__callDownloadCompletionHandlerWithAssets_queryParams___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

- (void)_callErrorHandlerWithError:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60___HKMobileAssetDownloadManager__callErrorHandlerWithError___block_invoke;
  v7[3] = &unk_1E7378400;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (id)_errorWithDomain:(id)a3 code:(int64_t)a4
{
  v14[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ABC0];
  v13[0] = @"Asset Type";
  v13[1] = @"Download Options";
  mobileAssetDownloadOptions = self->_mobileAssetDownloadOptions;
  v14[0] = self->_mobileAssetTypeName;
  v14[1] = mobileAssetDownloadOptions;
  v7 = MEMORY[0x1E695DF20];
  v8 = a3;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:v13 count:2];
  v10 = [v5 errorWithDomain:v8 code:a4 userInfo:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)removeMobileAssets:(os_log_t)log completion:.cold.1(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_debug_impl(&dword_19197B000, log, OS_LOG_TYPE_DEBUG, "Beginning purge of %ld assets", buf, 0xCu);
}

- (void)_generateAssetQueryFromQueryParams:returnTypes:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v1 handleFailureInMethod:@"isString || isArray" object:? file:? lineNumber:? description:?];
}

@end