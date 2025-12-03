@interface PKAutoRefineQuery
- (PKAutoRefineQuery)initWithRecognitionSessionManager:(id)manager;
- (void)dealloc;
- (void)pause;
- (void)queryDidUpdateResult:(id)result;
- (void)start;
- (void)teardown;
@end

@implementation PKAutoRefineQuery

- (PKAutoRefineQuery)initWithRecognitionSessionManager:(id)manager
{
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = PKAutoRefineQuery;
  v5 = [(PKQuery *)&v12 initWithRecognitionSessionManager:managerCopy];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E6997B38]);
    session = [(PKRecognitionSessionManager *)managerCopy session];
    v8 = [v6 initWithRecognitionSession:session];
    query = v5->_query;
    v5->_query = v8;
  }

  query = [(PKAutoRefineQuery *)v5 query];
  [query setDelegate:v5];

  return v5;
}

- (void)start
{
  query = [(PKAutoRefineQuery *)self query];
  [query start];
}

- (void)pause
{
  query = [(PKAutoRefineQuery *)self query];
  [query pause];
}

- (void)teardown
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__PKAutoRefineQuery_teardown__block_invoke;
  block[3] = &unk_1E82D6388;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)dealloc
{
  objc_storeWeak(&self->_autoRefineDelegate, 0);
  [(CHAutoRefineQuery *)self->_query setDelegate:0];
  v3.receiver = self;
  v3.super_class = PKAutoRefineQuery;
  [(PKAutoRefineQuery *)&v3 dealloc];
}

- (void)queryDidUpdateResult:(id)result
{
  v19 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_autoRefineDelegate);
    if (WeakRetained)
    {
      autoRefinedItems = [resultCopy autoRefinedItems];
      v7 = [autoRefinedItems copy];

      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        v10 = *v15;
        do
        {
          v11 = 0;
          do
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = *(*(&v14 + 1) + 8 * v11);
            lastProcessedStrokeProviderVersion = [(CHAutoRefineQuery *)self->_query lastProcessedStrokeProviderVersion];
            [WeakRetained autoRefineQuery:self didUpdateWithQueryItem:v12 validProviderVersion:lastProcessedStrokeProviderVersion];

            ++v11;
          }

          while (v9 != v11);
          v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v9);
      }
    }
  }

  else
  {
    WeakRetained = 0;
  }
}

@end