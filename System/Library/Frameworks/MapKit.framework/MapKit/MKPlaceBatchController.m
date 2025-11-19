@interface MKPlaceBatchController
- (MKPlaceBatchConsumer)batchConsumer;
- (MKPlaceBatchController)initWithItemIdentifiers:(id)a3 withBatchSize:(unint64_t)a4 minimumNumberOfItemBeforeFetching:(unint64_t)a5 shouldLoadFirstBatchImmediately:(BOOL)a6 usingBatchFetcher:(id)a7 usingBatchConsumer:(id)a8 displayedItemCount:(unint64_t)a9;
- (MKPlaceBatchFetcher)batchFetcher;
- (id)batchesForTesting;
- (int64_t)lastDisplayedIndexForTesting;
- (int64_t)lastFetchedBatchForTesting;
- (int64_t)stateForTesting;
- (void)buildBatchesFromIdentifiers:(id)a3;
- (void)didDisplayItemAtIndex:(unint64_t)a3;
- (void)fetchBatchItemsWithIdentifiers:(id)a3;
- (void)handleFetchGuidesCompleted:(BOOL)a3 error:(id)a4 usingGuides:(id)a5;
@end

@implementation MKPlaceBatchController

- (MKPlaceBatchConsumer)batchConsumer
{
  WeakRetained = objc_loadWeakRetained(&self->_batchConsumer);

  return WeakRetained;
}

- (MKPlaceBatchFetcher)batchFetcher
{
  WeakRetained = objc_loadWeakRetained(&self->_batchFetcher);

  return WeakRetained;
}

- (int64_t)stateForTesting
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  batchControllerQueue = self->_batchControllerQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__MKPlaceBatchController_stateForTesting__block_invoke;
  v5[3] = &unk_1E76CD7E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(batchControllerQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)lastFetchedBatchForTesting
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  batchControllerQueue = self->_batchControllerQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__MKPlaceBatchController_lastFetchedBatchForTesting__block_invoke;
  v5[3] = &unk_1E76CD7E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(batchControllerQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)lastDisplayedIndexForTesting
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  batchControllerQueue = self->_batchControllerQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__MKPlaceBatchController_lastDisplayedIndexForTesting__block_invoke;
  v5[3] = &unk_1E76CD7E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(batchControllerQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)batchesForTesting
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__98;
  v10 = __Block_byref_object_dispose__99;
  v11 = 0;
  batchControllerQueue = self->_batchControllerQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__MKPlaceBatchController_batchesForTesting__block_invoke;
  v5[3] = &unk_1E76CD7E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(batchControllerQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)buildBatchesFromIdentifiers:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  self->_totalIdentifiers = [v4 count];
  v5 = [(MKPlaceBatchController *)self batchSize];
  v6 = [v4 count] / v5;
  if ([v4 count] % v5)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = v6;
  }

  self->_numberOfBatches = v7;
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:self->_numberOfBatches];
  if (self->_totalIdentifiers)
  {
    v10 = 0;
    v11 = 0;
    v12 = v5;
    do
    {
      v13 = v11 + v5;
      v14 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:?];
      v15 = [v4 objectsAtIndexes:v14];
      [v8 addObject:v15];

      v10 -= v5;
      v12 += v5;
      v11 = v13;
    }

    while (v13 < self->_totalIdentifiers);
  }

  v16 = [v8 copy];
  batches = self->_batches;
  self->_batches = v16;

  v18 = MKGetCuratedCollectionsBatchControllerLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v19 = [(NSArray *)self->_batches count];
    v20 = 134218496;
    v21 = v19;
    v22 = 2048;
    v23 = [v4 count];
    v24 = 2048;
    v25 = v5;
    _os_log_impl(&dword_1A2EA0000, v18, OS_LOG_TYPE_DEBUG, "[<-->] Built %ld batches from %ld identifiers. Maximum batch size: %ld", &v20, 0x20u);
  }
}

- (void)handleFetchGuidesCompleted:(BOOL)a3 error:(id)a4 usingGuides:(id)a5
{
  v6 = a3;
  v24 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v8)
  {
    --self->_lastFetchedBatch;
    self->_state = 3;
    v11 = MKGetCuratedCollectionsBatchControllerLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      lastFetchedBatch = self->_lastFetchedBatch;
      v20 = 134218242;
      v21 = lastFetchedBatch;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_1A2EA0000, v11, OS_LOG_TYPE_INFO, "[<-->] Failed Fetching Batch: %ld. Informing cosumer. Error: %@", &v20, 0x16u);
    }

    v13 = [(MKPlaceBatchController *)self batchConsumer];
    v14 = v13;
    v15 = 0;
    v16 = 0;
LABEL_9:
    [v13 shouldConsumeBatch:v15 fetchedBatch:v16];

    goto LABEL_10;
  }

  if (v6)
  {
    self->_state = 2;
    self->_totalIdentifiersFetched += [v9 count];
    v17 = MKGetCuratedCollectionsBatchControllerLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = self->_lastFetchedBatch;
      totalIdentifiersFetched = self->_totalIdentifiersFetched;
      v20 = 134218240;
      v21 = v18;
      v22 = 2048;
      v23 = totalIdentifiersFetched;
      _os_log_impl(&dword_1A2EA0000, v17, OS_LOG_TYPE_INFO, "[<-->] Finished Fetching Batch: %ld. Informing cosumer.. Total Identifiers fetched: %ld", &v20, 0x16u);
    }

    v13 = [(MKPlaceBatchController *)self batchConsumer];
    v14 = v13;
    v15 = 1;
    v16 = v10;
    goto LABEL_9;
  }

LABEL_10:
}

- (void)fetchBatchItemsWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(MKPlaceBatchController *)self batchConsumer];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MKPlaceBatchController *)self batchConsumer];
    [v7 didStartFetchingBatch];
  }

  objc_initWeak(&location, self);
  v8 = [(MKPlaceBatchController *)self batchFetcher];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__MKPlaceBatchController_fetchBatchItemsWithIdentifiers___block_invoke;
  v9[3] = &unk_1E76C6240;
  objc_copyWeak(&v10, &location);
  [v8 fetchGuidesWithIdentifiers:v4 completion:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __57__MKPlaceBatchController_fetchBatchItemsWithIdentifiers___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v10 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleFetchGuidesCompleted:a2 error:v10 usingGuides:v7];
  }
}

- (void)didDisplayItemAtIndex:(unint64_t)a3
{
  batchControllerQueue = self->_batchControllerQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__MKPlaceBatchController_didDisplayItemAtIndex___block_invoke;
  v4[3] = &unk_1E76C9AD0;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(batchControllerQueue, v4);
}

void __48__MKPlaceBatchController_didDisplayItemAtIndex___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v1 <= v2[6] + v2[7] && v2[1] <= v1)
  {
    v2[1] = v1;
    v4 = MKGetCuratedCollectionsBatchControllerLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(*(a1 + 32) + 8);
      v20 = 134217984;
      v21 = v5;
      _os_log_impl(&dword_1A2EA0000, v4, OS_LOG_TYPE_DEBUG, "[<-->] Last displayed cell : %ld", &v20, 0xCu);
    }

    v6 = *(a1 + 32);
    if (v6[4] != 1)
    {
      v6[4] = 2;
      v6 = *(a1 + 32);
    }

    v7 = v6[1];
    v8 = v6[7];
    v9 = [v6 minNumberOfItems];
    v10 = v8 - v9;
    if (v8 - v9 < 0)
    {
      v10 = v9 - v8;
    }

    if (v7 >= v10)
    {
      v11 = *(a1 + 32);
      v12 = *(v11 + 24);
      if (v12 < [*(v11 + 40) count] - 1)
      {
        v13 = *(a1 + 32);
        if (*(v13 + 32) != 1)
        {
          ++*(v13 + 24);
          v14 = *(a1 + 32);
          v15 = *(v14 + 24);
          if (v15 < [*(v14 + 40) count])
          {
            v16 = [*(*(a1 + 32) + 40) objectAtIndex:*(*(a1 + 32) + 24)];
            *(*(a1 + 32) + 32) = 1;
            v17 = MKGetCuratedCollectionsBatchControllerLog();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              v18 = *(*(a1 + 32) + 24);
              v19 = [v16 count];
              v20 = 134218240;
              v21 = v18;
              v22 = 2048;
              v23 = v19;
              _os_log_impl(&dword_1A2EA0000, v17, OS_LOG_TYPE_INFO, "[<-->] Started Fetching Batch: %ld of %ld Items", &v20, 0x16u);
            }

            [*(a1 + 32) fetchBatchItemsWithIdentifiers:v16];
          }
        }
      }
    }
  }
}

- (MKPlaceBatchController)initWithItemIdentifiers:(id)a3 withBatchSize:(unint64_t)a4 minimumNumberOfItemBeforeFetching:(unint64_t)a5 shouldLoadFirstBatchImmediately:(BOOL)a6 usingBatchFetcher:(id)a7 usingBatchConsumer:(id)a8 displayedItemCount:(unint64_t)a9
{
  v11 = a6;
  v15 = a3;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = MKPlaceBatchController;
  v18 = [(MKPlaceBatchController *)&v24 init];
  if (!v18)
  {
    goto LABEL_8;
  }

  v19 = [v15 count];
  v20 = 0;
  if (a5 <= a4 && a4 && v19)
  {
    *(v18 + 9) = a4;
    *(v18 + 10) = a5;
    objc_storeWeak(v18 + 11, v16);
    objc_storeWeak(v18 + 12, v17);
    v21 = geo_dispatch_queue_create_with_qos();
    v22 = *(v18 + 8);
    *(v18 + 8) = v21;

    [v18 buildBatchesFromIdentifiers:v15];
    *(v18 + 24) = xmmword_1A30F6E20;
    *(v18 + 1) = 0;
    if (v11)
    {
      *(v18 + 7) = 0;
      [v18 didDisplayItemAtIndex:a5];
    }

    else
    {
      *(v18 + 7) = a9;
    }

LABEL_8:
    v20 = v18;
  }

  return v20;
}

@end