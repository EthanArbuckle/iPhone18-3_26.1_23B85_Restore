@interface HKRetryableOperation
- (HKRetryableOperation)initWithQueue:(id)a3 retryCount:(int)a4;
- (NSMutableArray)pendingOperations;
- (void)_queue_performPendingOperation:(id)a3;
- (void)_queue_performRetryableOperation:(id)a3 completion:(id)a4;
@end

@implementation HKRetryableOperation

- (HKRetryableOperation)initWithQueue:(id)a3 retryCount:(int)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = HKRetryableOperation;
  v8 = [(HKRetryableOperation *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_queue, a3);
    v9->_retryCount = a4;
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingOperations = v9->_pendingOperations;
    v9->_pendingOperations = v10;
  }

  return v9;
}

- (void)_queue_performRetryableOperation:(id)a3 completion:(id)a4
{
  queue = self->_queue;
  v7 = a4;
  v8 = a3;
  dispatch_assert_queue_V2(queue);
  v10 = [HKPendingOperationRecord pendingOperation:v8 completion:v7];

  v9 = [(NSMutableArray *)self->_pendingOperations count];
  [(NSMutableArray *)self->_pendingOperations addObject:v10];
  if (!v9)
  {
    [(HKRetryableOperation *)self _queue_performPendingOperation:v10];
  }
}

- (void)_queue_performPendingOperation:(id)a3
{
  v4 = a3;
  v5 = [v4 operationHandler];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__HKRetryableOperation__queue_performPendingOperation___block_invoke;
  v8[3] = &unk_1E7379FE8;
  v9 = v4;
  v10 = self;
  v6 = v5[2];
  v7 = v4;
  v6(v5, v8);
}

void __55__HKRetryableOperation__queue_performPendingOperation___block_invoke(uint64_t a1, char a2, char a3, void *a4)
{
  v7 = a4;
  v8 = [*(a1 + 32) errorCount];
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(v10 + 8);
  if (v8 >= *(v10 + 16))
  {
    a3 = 0;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__HKRetryableOperation__queue_performPendingOperation___block_invoke_2;
  v13[3] = &unk_1E7379FC0;
  v16 = a2;
  v13[4] = v10;
  v14 = v9;
  v15 = v7;
  v17 = a3;
  v12 = v7;
  dispatch_async(v11, v13);
}

void __55__HKRetryableOperation__queue_performPendingOperation___block_invoke_2(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(a1 + 56) == 1)
  {
    _HKInitializeLogging();
    v2 = HKLogDataCollection;
    if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      *buf = 138543362;
      v25 = v3;
      _os_log_impl(&dword_19197B000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Retryable operation finished successfully.", buf, 0xCu);
    }

    [*(*(a1 + 32) + 24) removeObject:*(a1 + 40)];
    v4 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__HKRetryableOperation__queue_performPendingOperation___block_invoke_27;
    block[3] = &unk_1E7379F98;
    v21 = *(a1 + 40);
    v23 = *(a1 + 56);
    v22 = *(a1 + 48);
    dispatch_async(v4, block);

    v5 = v21;
LABEL_12:

    goto LABEL_13;
  }

  v6 = *(a1 + 57);
  _HKInitializeLogging();
  v7 = HKLogDataCollection;
  if ((v6 & 1) == 0)
  {
    if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(v8 + 16);
      *buf = 138543618;
      v25 = v8;
      v26 = 2048;
      v27 = v9;
      _os_log_impl(&dword_19197B000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Retryable operation reached maximum retry count of %lu.", buf, 0x16u);
    }

    [*(*(a1 + 32) + 24) removeObject:*(a1 + 40)];
    v10 = *(*(a1 + 32) + 8);
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __55__HKRetryableOperation__queue_performPendingOperation___block_invoke_29;
    v16 = &unk_1E7379F98;
    v17 = *(a1 + 40);
    v19 = *(a1 + 56);
    v18 = *(a1 + 48);
    dispatch_async(v10, &v13);

    v5 = v17;
    goto LABEL_12;
  }

  if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_ERROR))
  {
    __55__HKRetryableOperation__queue_performPendingOperation___block_invoke_2_cold_1(a1, v7);
  }

  [*(a1 + 40) setErrorCount:{objc_msgSend(*(a1 + 40), "errorCount") + 1}];
LABEL_13:
  v11 = [*(*(a1 + 32) + 24) firstObject];
  if (v11)
  {
    [*(a1 + 32) _queue_performPendingOperation:v11];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __55__HKRetryableOperation__queue_performPendingOperation___block_invoke_27(uint64_t a1)
{
  v2 = [*(a1 + 32) completionHandler];
  (*(v2 + 2))(v2, *(a1 + 48), *(a1 + 40));
}

void __55__HKRetryableOperation__queue_performPendingOperation___block_invoke_29(uint64_t a1)
{
  v2 = [*(a1 + 32) completionHandler];
  (*(v2 + 2))(v2, *(a1 + 48), *(a1 + 40));
}

- (NSMutableArray)pendingOperations
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__HKRetryableOperation_pendingOperations__block_invoke;
  v5[3] = &unk_1E7378528;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __55__HKRetryableOperation__queue_performPendingOperation___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v5 = 138543618;
  v6 = v2;
  v7 = 2114;
  v8 = v3;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "%{public}@: Retryable operation failed but will be retried: %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end