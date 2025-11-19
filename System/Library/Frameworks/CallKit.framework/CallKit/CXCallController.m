@interface CXCallController
- (CXCallController)init;
- (CXCallController)initWithQueue:(dispatch_queue_t)queue;
- (void)_requestTransaction:(id)a3 completion:(id)a4;
- (void)requestTransaction:(CXTransaction *)transaction completion:(void *)completion;
- (void)requestTransactionWithAction:(CXAction *)action completion:(void *)completion;
- (void)requestTransactionWithActions:(NSArray *)actions completion:(void *)completion;
@end

@implementation CXCallController

- (CXCallController)init
{
  v3 = dispatch_queue_create("com.apple.callkit.callcontroller.completion", 0);
  v4 = [(CXCallController *)self initWithQueue:v3];

  return v4;
}

- (CXCallController)initWithQueue:(dispatch_queue_t)queue
{
  v5 = queue;
  v10.receiver = self;
  v10.super_class = CXCallController;
  v6 = [(CXCallController *)&v10 init];
  if (v6)
  {
    if (!v5)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXCallController initWithQueue:]", @"queue"}];
    }

    objc_storeStrong(&v6->_completionQueue, queue);
    v7 = objc_alloc_init(CXCallObserver);
    callObserver = v6->_callObserver;
    v6->_callObserver = v7;
  }

  return v6;
}

- (void)requestTransaction:(CXTransaction *)transaction completion:(void *)completion
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = transaction;
  v7 = completion;
  v8 = CXDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "transaction: %@", buf, 0xCu);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__CXCallController_requestTransaction_completion___block_invoke;
  v11[3] = &unk_1E7C073D8;
  v11[4] = self;
  v12 = v7;
  v9 = v7;
  [(CXCallController *)self _requestTransaction:v6 completion:v11];

  v10 = *MEMORY[0x1E69E9840];
}

void __50__CXCallController_requestTransaction_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) completionQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__CXCallController_requestTransaction_completion___block_invoke_2;
  v7[3] = &unk_1E7C073B0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)requestTransactionWithActions:(NSArray *)actions completion:(void *)completion
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = actions;
  v7 = completion;
  v8 = CXDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "actions: %@", &v11, 0xCu);
  }

  v9 = [[CXTransaction alloc] initWithActions:v6];
  [(CXCallController *)self requestTransaction:v9 completion:v7];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)requestTransactionWithAction:(CXAction *)action completion:(void *)completion
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = action;
  v6 = MEMORY[0x1E695DEC8];
  v7 = completion;
  v8 = action;
  v9 = [v6 arrayWithObjects:&v11 count:1];

  [(CXCallController *)self requestTransactionWithActions:v9 completion:v7, v11, v12];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)_requestTransaction:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CXCallController *)self callObserver];
  v9 = [v8 concurrentQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__CXCallController__requestTransaction_completion___block_invoke;
  block[3] = &unk_1E7C06D20;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_barrier_async(v9, block);
}

void __51__CXCallController__requestTransaction_completion___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) callObserver];
  v2 = [v3 dataSource];
  [v2 requestTransaction:*(a1 + 40) completion:*(a1 + 48)];
}

@end