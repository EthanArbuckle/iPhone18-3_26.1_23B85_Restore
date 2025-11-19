@interface ASAsyncTransactionQueue
- (ASAsyncTransactionQueue)initWithDescription:(id)a3 targetSerialQueue:(id)a4;
- (void)performTransaction:(id)a3;
@end

@implementation ASAsyncTransactionQueue

- (ASAsyncTransactionQueue)initWithDescription:(id)a3 targetSerialQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = ASAsyncTransactionQueue;
  v9 = [(ASAsyncTransactionQueue *)&v13 init];
  if (v9)
  {
    v10 = HDCreateSerialUtilityDispatchQueue();
    lockingQueue = v9->_lockingQueue;
    v9->_lockingQueue = v10;

    objc_storeStrong(&v9->_targetQueue, a4);
    objc_storeStrong(&v9->_description, a3);
  }

  return v9;
}

- (void)performTransaction:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAD78] UUID];
  v6 = [v5 UUIDString];

  ASLoggingInitialize();
  v7 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT))
  {
    description = self->_description;
    *buf = 138543618;
    v17 = description;
    v18 = 2114;
    v19 = v6;
    _os_log_impl(&dword_23E5E3000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Transaction created with identifier: %{public}@", buf, 0x16u);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __46__ASAsyncTransactionQueue_performTransaction___block_invoke;
  v13[3] = &unk_278C4BA30;
  v13[4] = self;
  v14 = v6;
  v15 = v4;
  v9 = v4;
  v10 = v6;
  v11 = MEMORY[0x23EF0EB00](v13);
  dispatch_async(self->_lockingQueue, v11);

  v12 = *MEMORY[0x277D85DE8];
}

void __46__ASAsyncTransactionQueue_performTransaction___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  ASLoggingInitialize();
  v2 = MEMORY[0x277CE8FE8];
  v3 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 24);
    *buf = 138543618;
    v23 = v5;
    v24 = 2114;
    v25 = v4;
    _os_log_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Transaction starting, identifier: %{public}@", buf, 0x16u);
  }

  v6 = dispatch_semaphore_create(0);
  v7 = [MEMORY[0x277D10678] transactionWithOwner:*(a1 + 32) activityName:*(*(a1 + 32) + 24)];
  v8 = *(*(a1 + 32) + 16);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __46__ASAsyncTransactionQueue_performTransaction___block_invoke_296;
  v19 = &unk_278C4BDC8;
  v21 = *(a1 + 48);
  v9 = v6;
  v20 = v9;
  dispatch_async(v8, &v16);
  v10 = dispatch_time(0, 600000000000);
  if (dispatch_semaphore_wait(v9, v10))
  {
    ASLoggingInitialize();
    v11 = *MEMORY[0x277CE9008];
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_ERROR))
    {
      __46__ASAsyncTransactionQueue_performTransaction___block_invoke_cold_1(a1 + 32, a1, v11);
    }
  }

  [v7 invalidate];
  ASLoggingInitialize();
  v12 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 40);
    v14 = *(*(a1 + 32) + 24);
    *buf = 138543618;
    v23 = v14;
    v24 = 2114;
    v25 = v13;
    _os_log_impl(&dword_23E5E3000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Transaction finished, identifier: %{public}@", buf, 0x16u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __46__ASAsyncTransactionQueue_performTransaction___block_invoke_296(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __46__ASAsyncTransactionQueue_performTransaction___block_invoke_2;
  v2[3] = &unk_278C4B278;
  v1 = *(a1 + 40);
  v3 = *(a1 + 32);
  (*(v1 + 16))(v1, v2);
}

void __46__ASAsyncTransactionQueue_performTransaction___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(*a1 + 24);
  v4 = *(a2 + 40);
  v6 = 138543618;
  v7 = v3;
  v8 = 2114;
  v9 = v4;
  _os_log_error_impl(&dword_23E5E3000, log, OS_LOG_TYPE_ERROR, "[%{public}@] Transaction lock operation timed out! identifier: %{public}@", &v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end