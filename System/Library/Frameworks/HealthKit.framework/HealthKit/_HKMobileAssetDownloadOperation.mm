@interface _HKMobileAssetDownloadOperation
- (_HKMobileAssetDownloadOperation)initWithAsset:(id)a3 queue:(id)a4 downloadOptions:(id)a5 maxNumberOfRetriesAllowed:(int64_t)a6 completion:(id)a7;
- (id)description;
- (void)_queue_downloadAsset;
- (void)_queue_run;
- (void)_queue_transitionToCompleted;
- (void)_queue_transitionToDownloadingAsset;
- (void)_queue_transitionToFailureWithDownloadResult:(int64_t)a3;
- (void)_queue_transitionToState:(int64_t)a3;
- (void)run;
@end

@implementation _HKMobileAssetDownloadOperation

- (void)run
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38___HKMobileAssetDownloadOperation_run__block_invoke;
  block[3] = &unk_1E7376780;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_queue_run
{
  v10 = *MEMORY[0x1E69E9840];
  if (!self->_state)
  {
    [(_HKMobileAssetDownloadOperation *)self _queue_transitionToDownloadingAsset];
    v3 = [(MAAsset *)self->_asset state];
    _HKInitializeLogging();
    v4 = HKLogMobileAsset;
    if (os_log_type_enabled(HKLogMobileAsset, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543618;
      v7 = self;
      v8 = 2048;
      v9 = v3;
      _os_log_impl(&dword_19197B000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Asset is in asset state %ld", &v6, 0x16u);
    }

    if (v3 <= 6)
    {
      if (((1 << v3) & 0x6C) != 0)
      {
        [(_HKMobileAssetDownloadOperation *)self _queue_transitionToCompleted];
      }

      else if (((1 << v3) & 0x12) != 0)
      {
        [(_HKMobileAssetDownloadOperation *)self _queue_downloadAsset];
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_queue_transitionToDownloadingAsset
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"_state == _HKMobileAssetDownloadOperationStateInitialized" object:? file:? lineNumber:? description:?];
}

- (void)_queue_transitionToCompleted
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"_state == _HKMobileAssetDownloadOperationStateDownloadingAsset" object:? file:? lineNumber:? description:?];
}

- (_HKMobileAssetDownloadOperation)initWithAsset:(id)a3 queue:(id)a4 downloadOptions:(id)a5 maxNumberOfRetriesAllowed:(int64_t)a6 completion:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  if (v13)
  {
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [_HKMobileAssetDownloadOperation initWithAsset:queue:downloadOptions:maxNumberOfRetriesAllowed:completion:];
    if (v14)
    {
      goto LABEL_3;
    }
  }

  [_HKMobileAssetDownloadOperation initWithAsset:queue:downloadOptions:maxNumberOfRetriesAllowed:completion:];
LABEL_3:
  v22.receiver = self;
  v22.super_class = _HKMobileAssetDownloadOperation;
  v17 = [(_HKMobileAssetDownloadOperation *)&v22 init];
  v18 = v17;
  if (v17)
  {
    v17->_retryCount = 0;
    objc_storeStrong(&v17->_asset, a3);
    v19 = _Block_copy(v16);
    completion = v18->_completion;
    v18->_completion = v19;

    objc_storeStrong(&v18->_queue, a4);
    objc_storeStrong(&v18->_downloadOptions, a5);
    v18->_maxNumberOfRetriesAllowed = a6;
    [(_HKMobileAssetDownloadOperation *)v18 _queue_transitionToInitialized];
  }

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MAAsset *)self->_asset assetType];
  v6 = [v3 stringWithFormat:@"<%@:%p assetType:%@>", v4, self, v5];

  return v6;
}

- (void)_queue_transitionToFailureWithDownloadResult:(int64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  [(_HKMobileAssetDownloadOperation *)self _queue_transitionToState:2];
  if (self->_retryCount >= self->_maxNumberOfRetriesAllowed)
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MADownloadResult" code:a3 userInfo:0];
    [(_HKMobileAssetDownloadOperation *)self _queue_callCompletionWithSuccess:0 error:?];
    v7 = *MEMORY[0x1E69E9840];
  }

  else
  {
    _HKInitializeLogging();
    v5 = HKLogMobileAsset;
    if (os_log_type_enabled(HKLogMobileAsset, OS_LOG_TYPE_DEBUG))
    {
      retryCount = self->_retryCount;
      maxNumberOfRetriesAllowed = self->_maxNumberOfRetriesAllowed;
      *buf = 138543874;
      v12 = self;
      v13 = 2048;
      v14 = retryCount;
      v15 = 2048;
      v16 = maxNumberOfRetriesAllowed;
      _os_log_debug_impl(&dword_19197B000, v5, OS_LOG_TYPE_DEBUG, "%{public}@: Retry count (%ld) less than max number of retries allowed (%ld), retrying.", buf, 0x20u);
    }

    ++self->_retryCount;
    [(_HKMobileAssetDownloadOperation *)self _queue_transitionToInitialized];
    [(_HKMobileAssetDownloadOperation *)self run];
    v6 = *MEMORY[0x1E69E9840];
  }
}

- (void)_queue_transitionToState:(int64_t)a3
{
  v14 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  v5 = HKLogMobileAsset;
  if (os_log_type_enabled(HKLogMobileAsset, OS_LOG_TYPE_DEFAULT))
  {
    state = self->_state;
    v8 = 138543874;
    v9 = self;
    v10 = 2048;
    v11 = state;
    v12 = 2048;
    v13 = a3;
    _os_log_impl(&dword_19197B000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Transitioning from state %ld to state %ld", &v8, 0x20u);
  }

  self->_state = a3;
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_queue_downloadAsset
{
  dispatch_assert_queue_V2(self->_queue);
  asset = self->_asset;
  downloadOptions = self->_downloadOptions;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55___HKMobileAssetDownloadOperation__queue_downloadAsset__block_invoke;
  v5[3] = &unk_1E7380460;
  v5[4] = self;
  [(MAAsset *)asset startDownload:downloadOptions then:v5];
}

- (void)initWithAsset:queue:downloadOptions:maxNumberOfRetriesAllowed:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"asset != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithAsset:queue:downloadOptions:maxNumberOfRetriesAllowed:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"queue != NULL" object:? file:? lineNumber:? description:?];
}

@end