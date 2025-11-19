@interface CXVoicemailObserver
- (CXVoicemailObserver)init;
- (CXVoicemailObserver)initWithDataSource:(id)a3 queue:(id)a4;
- (CXVoicemailObserverDelegate)delegate;
- (NSArray)voicemails;
- (void)_performDelegateCallback:(id)a3;
- (void)dataSourceVoicemailsChanged:(id)a3;
- (void)dealloc;
- (void)setDelegate:(id)a3 queue:(id)a4;
@end

@implementation CXVoicemailObserver

- (CXVoicemailObserver)init
{
  v3 = objc_alloc_init(CXVoicemailObserverXPCClient);
  v4 = [(CXVoicemailObserverXPCClient *)v3 queue];
  v5 = [(CXVoicemailObserver *)self initWithDataSource:v3 queue:v4];

  return v5;
}

- (CXVoicemailObserver)initWithDataSource:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = CXVoicemailObserver;
  v9 = [(CXVoicemailObserver *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a4);
    objc_storeStrong(&v10->_dataSource, a3);
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
  v4 = [(CXVoicemailObserver *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__CXVoicemailObserver_dealloc__block_invoke;
  block[3] = &unk_1E7C06CA8;
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, block);

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
  v3 = [(CXVoicemailObserver *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __33__CXVoicemailObserver_voicemails__block_invoke;
  v6[3] = &unk_1E7C06E28;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

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

- (void)setDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CXVoicemailObserver *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CXVoicemailObserver_setDelegate_queue___block_invoke;
  block[3] = &unk_1E7C06C80;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
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

- (void)_performDelegateCallback:(id)a3
{
  block = a3;
  v4 = [(CXVoicemailObserver *)self queue];
  dispatch_assert_queue_V2(v4);

  v5 = [(CXVoicemailObserver *)self delegate];
  if (v5)
  {
    v6 = v5;
    v7 = [(CXVoicemailObserver *)self delegateQueue];

    if (v7)
    {
      v8 = [(CXVoicemailObserver *)self delegateQueue];
      dispatch_async(v8, block);
    }
  }
}

- (void)dataSourceVoicemailsChanged:(id)a3
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