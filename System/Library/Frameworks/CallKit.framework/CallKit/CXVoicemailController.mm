@interface CXVoicemailController
- (CXVoicemailController)init;
- (CXVoicemailController)initWithQueue:(id)queue;
- (void)_requestTransaction:(id)transaction completion:(id)completion;
- (void)requestTransaction:(id)transaction completion:(id)completion;
- (void)requestTransactionWithAction:(id)action completion:(id)completion;
- (void)requestTransactionWithActions:(id)actions completion:(id)completion;
@end

@implementation CXVoicemailController

- (CXVoicemailController)init
{
  v3 = dispatch_queue_create("com.apple.callkit.voicemailcontroller.completion", 0);
  v4 = [(CXVoicemailController *)self initWithQueue:v3];

  return v4;
}

- (CXVoicemailController)initWithQueue:(id)queue
{
  queueCopy = queue;
  v10.receiver = self;
  v10.super_class = CXVoicemailController;
  v6 = [(CXVoicemailController *)&v10 init];
  if (v6)
  {
    if (!queueCopy)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXVoicemailController initWithQueue:]", @"queue"}];
    }

    objc_storeStrong(&v6->_completionQueue, queue);
    v7 = objc_alloc_init(CXVoicemailObserver);
    voicemailObserver = v6->_voicemailObserver;
    v6->_voicemailObserver = v7;
  }

  return v6;
}

- (void)requestTransaction:(id)transaction completion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  completionCopy = completion;
  v8 = CXDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = transactionCopy;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "transaction: %@", buf, 0xCu);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__CXVoicemailController_requestTransaction_completion___block_invoke;
  v11[3] = &unk_1E7C073D8;
  v11[4] = self;
  v12 = completionCopy;
  v9 = completionCopy;
  [(CXVoicemailController *)self _requestTransaction:transactionCopy completion:v11];

  v10 = *MEMORY[0x1E69E9840];
}

void __55__CXVoicemailController_requestTransaction_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) completionQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__CXVoicemailController_requestTransaction_completion___block_invoke_2;
  v7[3] = &unk_1E7C073B0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)requestTransactionWithActions:(id)actions completion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  completionCopy = completion;
  v8 = CXDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = actionsCopy;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "actions: %@", &v11, 0xCu);
  }

  v9 = [[CXTransaction alloc] initWithActions:actionsCopy];
  [(CXVoicemailController *)self requestTransaction:v9 completion:completionCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)requestTransactionWithAction:(id)action completion:(id)completion
{
  v12 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  v6 = MEMORY[0x1E695DEC8];
  completionCopy = completion;
  actionCopy2 = action;
  v9 = [v6 arrayWithObjects:&actionCopy count:1];

  [(CXVoicemailController *)self requestTransactionWithActions:v9 completion:completionCopy, actionCopy, v12];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)_requestTransaction:(id)transaction completion:(id)completion
{
  transactionCopy = transaction;
  completionCopy = completion;
  voicemailObserver = [(CXVoicemailController *)self voicemailObserver];
  queue = [voicemailObserver queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__CXVoicemailController__requestTransaction_completion___block_invoke;
  block[3] = &unk_1E7C06D20;
  block[4] = self;
  v13 = transactionCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = transactionCopy;
  dispatch_async(queue, block);
}

void __56__CXVoicemailController__requestTransaction_completion___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) voicemailObserver];
  v2 = [v3 dataSource];
  [v2 requestTransaction:*(a1 + 40) completion:*(a1 + 48)];
}

@end