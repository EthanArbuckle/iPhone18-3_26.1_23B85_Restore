@interface PKAutoRefineQuery
- (PKAutoRefineQuery)initWithRecognitionSessionManager:(id)a3;
- (void)dealloc;
- (void)pause;
- (void)queryDidUpdateResult:(id)a3;
- (void)start;
- (void)teardown;
@end

@implementation PKAutoRefineQuery

- (PKAutoRefineQuery)initWithRecognitionSessionManager:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PKAutoRefineQuery;
  v5 = [(PKQuery *)&v12 initWithRecognitionSessionManager:v4];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E6997B38]);
    v7 = [(PKRecognitionSessionManager *)v4 session];
    v8 = [v6 initWithRecognitionSession:v7];
    query = v5->_query;
    v5->_query = v8;
  }

  v10 = [(PKAutoRefineQuery *)v5 query];
  [v10 setDelegate:v5];

  return v5;
}

- (void)start
{
  v2 = [(PKAutoRefineQuery *)self query];
  [v2 start];
}

- (void)pause
{
  v2 = [(PKAutoRefineQuery *)self query];
  [v2 pause];
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

- (void)queryDidUpdateResult:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_autoRefineDelegate);
    if (WeakRetained)
    {
      v6 = [v4 autoRefinedItems];
      v7 = [v6 copy];

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
            v13 = [(CHAutoRefineQuery *)self->_query lastProcessedStrokeProviderVersion];
            [WeakRetained autoRefineQuery:self didUpdateWithQueryItem:v12 validProviderVersion:v13];

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