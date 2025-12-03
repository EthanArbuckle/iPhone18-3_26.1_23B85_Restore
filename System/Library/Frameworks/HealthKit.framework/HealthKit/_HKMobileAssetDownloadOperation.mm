@interface _HKMobileAssetDownloadOperation
- (_HKMobileAssetDownloadOperation)initWithAsset:(id)asset queue:(id)queue downloadOptions:(id)options maxNumberOfRetriesAllowed:(int64_t)allowed completion:(id)completion;
- (id)description;
- (void)_queue_downloadAsset;
- (void)_queue_run;
- (void)_queue_transitionToCompleted;
- (void)_queue_transitionToDownloadingAsset;
- (void)_queue_transitionToFailureWithDownloadResult:(int64_t)result;
- (void)_queue_transitionToState:(int64_t)state;
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
    state = [(MAAsset *)self->_asset state];
    _HKInitializeLogging();
    v4 = HKLogMobileAsset;
    if (os_log_type_enabled(HKLogMobileAsset, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543618;
      selfCopy = self;
      v8 = 2048;
      v9 = state;
      _os_log_impl(&dword_19197B000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Asset is in asset state %ld", &v6, 0x16u);
    }

    if (state <= 6)
    {
      if (((1 << state) & 0x6C) != 0)
      {
        [(_HKMobileAssetDownloadOperation *)self _queue_transitionToCompleted];
      }

      else if (((1 << state) & 0x12) != 0)
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"_state == _HKMobileAssetDownloadOperationStateInitialized" object:? file:? lineNumber:? description:?];
}

- (void)_queue_transitionToCompleted
{
  OUTLINED_FUNCTION_0_0();
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"_state == _HKMobileAssetDownloadOperationStateDownloadingAsset" object:? file:? lineNumber:? description:?];
}

- (_HKMobileAssetDownloadOperation)initWithAsset:(id)asset queue:(id)queue downloadOptions:(id)options maxNumberOfRetriesAllowed:(int64_t)allowed completion:(id)completion
{
  assetCopy = asset;
  queueCopy = queue;
  optionsCopy = options;
  completionCopy = completion;
  if (assetCopy)
  {
    if (queueCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [_HKMobileAssetDownloadOperation initWithAsset:queue:downloadOptions:maxNumberOfRetriesAllowed:completion:];
    if (queueCopy)
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
    objc_storeStrong(&v17->_asset, asset);
    v19 = _Block_copy(completionCopy);
    completion = v18->_completion;
    v18->_completion = v19;

    objc_storeStrong(&v18->_queue, queue);
    objc_storeStrong(&v18->_downloadOptions, options);
    v18->_maxNumberOfRetriesAllowed = allowed;
    [(_HKMobileAssetDownloadOperation *)v18 _queue_transitionToInitialized];
  }

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  assetType = [(MAAsset *)self->_asset assetType];
  v6 = [v3 stringWithFormat:@"<%@:%p assetType:%@>", v4, self, assetType];

  return v6;
}

- (void)_queue_transitionToFailureWithDownloadResult:(int64_t)result
{
  v17 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  [(_HKMobileAssetDownloadOperation *)self _queue_transitionToState:2];
  if (self->_retryCount >= self->_maxNumberOfRetriesAllowed)
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MADownloadResult" code:result userInfo:0];
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
      selfCopy = self;
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

- (void)_queue_transitionToState:(int64_t)state
{
  v14 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  v5 = HKLogMobileAsset;
  if (os_log_type_enabled(HKLogMobileAsset, OS_LOG_TYPE_DEFAULT))
  {
    state = self->_state;
    v8 = 138543874;
    selfCopy = self;
    v10 = 2048;
    stateCopy = state;
    v12 = 2048;
    stateCopy2 = state;
    _os_log_impl(&dword_19197B000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Transitioning from state %ld to state %ld", &v8, 0x20u);
  }

  self->_state = state;
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