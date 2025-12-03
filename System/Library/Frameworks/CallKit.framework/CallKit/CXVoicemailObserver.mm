@interface CXVoicemailObserver
- (CXVoicemailObserver)init;
- (CXVoicemailObserver)initWithDataSource:(id)source queue:(id)queue;
- (CXVoicemailObserverDelegate)delegate;
- (NSArray)voicemails;
- (void)_performDelegateCallback:(id)callback;
- (void)dataSourceVoicemailsChanged:(id)changed;
- (void)dealloc;
- (void)setDelegate:(id)delegate queue:(id)queue;
@end

@implementation CXVoicemailObserver

- (CXVoicemailObserver)init
{
  v3 = objc_alloc_init(CXVoicemailObserverXPCClient);
  queue = [(CXVoicemailObserverXPCClient *)v3 queue];
  v5 = [(CXVoicemailObserver *)self initWithDataSource:v3 queue:queue];

  return v5;
}

- (CXVoicemailObserver)initWithDataSource:(id)source queue:(id)queue
{
  sourceCopy = source;
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = CXVoicemailObserver;
  v9 = [(CXVoicemailObserver *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    objc_storeStrong(&v10->_dataSource, source);
    queue = v10->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__CXVoicemailObserver_initWithDataSource_queue___block_invoke;
    block[3] = &unk_1E7C06CA8;
    v14 = v10;
    dispatch_async(queue, block);
  }

  return v10;
}

- (void)dealloc
{
  v3 = self->_dataSource;
  queue = [(CXVoicemailObserver *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__CXVoicemailObserver_dealloc__block_invoke;
  block[3] = &unk_1E7C06CA8;
  v8 = v3;
  v5 = v3;
  dispatch_async(queue, block);

  v6.receiver = self;
  v6.super_class = CXVoicemailObserver;
  [(CXVoicemailObserver *)&v6 dealloc];
}

- (NSArray)voicemails
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  queue = [(CXVoicemailObserver *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __33__CXVoicemailObserver_voicemails__block_invoke;
  v6[3] = &unk_1E7C06E28;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __33__CXVoicemailObserver_voicemails__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) dataSource];
  v2 = [v6 voicemailUUIDToVoicemailMap];
  v3 = [v2 allValues];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)setDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  queue = [(CXVoicemailObserver *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CXVoicemailObserver_setDelegate_queue___block_invoke;
  block[3] = &unk_1E7C06C80;
  block[4] = self;
  v12 = delegateCopy;
  v13 = queueCopy;
  v9 = queueCopy;
  v10 = delegateCopy;
  dispatch_async(queue, block);
}

uint64_t __41__CXVoicemailObserver_setDelegate_queue___block_invoke(uint64_t a1)
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
  queue = [(CXVoicemailObserver *)self queue];
  dispatch_assert_queue_V2(queue);

  delegate = [(CXVoicemailObserver *)self delegate];
  if (delegate)
  {
    v6 = delegate;
    delegateQueue = [(CXVoicemailObserver *)self delegateQueue];

    if (delegateQueue)
    {
      delegateQueue2 = [(CXVoicemailObserver *)self delegateQueue];
      dispatch_async(delegateQueue2, block);
    }
  }
}

- (void)dataSourceVoicemailsChanged:(id)changed
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__CXVoicemailObserver_dataSourceVoicemailsChanged___block_invoke;
  v3[3] = &unk_1E7C06CA8;
  v3[4] = self;
  [(CXVoicemailObserver *)self _performDelegateCallback:v3];
}

void __51__CXVoicemailObserver_dataSourceVoicemailsChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 voicemailObserverVoicemailsChanged:*(a1 + 32)];
}

- (CXVoicemailObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end