@interface CXCallObserver
- (CXCallObserver)init;
- (CXCallObserver)initWithDataSource:(id)source concurrentQueue:(id)queue;
- (CXCallObserverDelegate)delegate;
- (NSArray)calls;
- (void)_performDelegateCallback:(id)callback;
- (void)dataSource:(id)source callChanged:(id)changed;
- (void)dealloc;
- (void)setDelegate:(id)delegate queue:(dispatch_queue_t)queue;
@end

@implementation CXCallObserver

- (CXCallObserver)init
{
  v3 = objc_alloc_init(CXCallObserverXPCClient);
  concurrentQueue = [(CXCallObserverXPCClient *)v3 concurrentQueue];
  v5 = [(CXCallObserver *)self initWithDataSource:v3 concurrentQueue:concurrentQueue];

  return v5;
}

- (NSArray)calls
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__5;
  v11 = __Block_byref_object_dispose__5;
  v12 = 0;
  concurrentQueue = [(CXCallObserver *)self concurrentQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __23__CXCallObserver_calls__block_invoke;
  v6[3] = &unk_1E7C06E28;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(concurrentQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __23__CXCallObserver_calls__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) dataSource];
  v2 = [v6 callUUIDToCallMap];
  v3 = [v2 allValues];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)dealloc
{
  v3 = self->_dataSource;
  concurrentQueue = [(CXCallObserver *)self concurrentQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__CXCallObserver_dealloc__block_invoke;
  block[3] = &unk_1E7C06CA8;
  v8 = v3;
  v5 = v3;
  dispatch_barrier_async(concurrentQueue, block);

  v6.receiver = self;
  v6.super_class = CXCallObserver;
  [(CXCallObserver *)&v6 dealloc];
}

- (CXCallObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CXCallObserver)initWithDataSource:(id)source concurrentQueue:(id)queue
{
  sourceCopy = source;
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = CXCallObserver;
  v9 = [(CXCallObserver *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_concurrentQueue, queue);
    objc_storeStrong(&v10->_dataSource, source);
    concurrentQueue = v10->_concurrentQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__CXCallObserver_initWithDataSource_concurrentQueue___block_invoke;
    block[3] = &unk_1E7C06CA8;
    v14 = v10;
    dispatch_barrier_async(concurrentQueue, block);
  }

  return v10;
}

- (void)setDelegate:(id)delegate queue:(dispatch_queue_t)queue
{
  v6 = delegate;
  v7 = queue;
  concurrentQueue = [(CXCallObserver *)self concurrentQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__CXCallObserver_setDelegate_queue___block_invoke;
  block[3] = &unk_1E7C06C80;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_barrier_async(concurrentQueue, block);
}

uint64_t __36__CXCallObserver_setDelegate_queue___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDelegate:*(a1 + 40)];
  if (*(a1 + 48))
  {
    v2 = *(a1 + 48);
  }

  else
  {
    v2 = MEMORY[0x1E69E96A0];
  }

  v3 = *(a1 + 32);

  return [v3 setDelegateQueue:v2];
}

- (void)_performDelegateCallback:(id)callback
{
  block = callback;
  concurrentQueue = [(CXCallObserver *)self concurrentQueue];
  dispatch_assert_queue_V2(concurrentQueue);

  delegate = [(CXCallObserver *)self delegate];
  if (delegate)
  {
    v6 = delegate;
    delegateQueue = [(CXCallObserver *)self delegateQueue];

    if (delegateQueue)
    {
      delegateQueue2 = [(CXCallObserver *)self delegateQueue];
      dispatch_async(delegateQueue2, block);
    }
  }
}

- (void)dataSource:(id)source callChanged:(id)changed
{
  changedCopy = changed;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__CXCallObserver_dataSource_callChanged___block_invoke;
  v7[3] = &unk_1E7C06BE0;
  v7[4] = self;
  v8 = changedCopy;
  v6 = changedCopy;
  [(CXCallObserver *)self _performDelegateCallback:v7];
}

void __41__CXCallObserver_dataSource_callChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callObserver:*(a1 + 32) callChanged:*(a1 + 40)];
}

@end