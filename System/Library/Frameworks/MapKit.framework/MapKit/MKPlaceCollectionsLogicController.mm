@interface MKPlaceCollectionsLogicController
- (BOOL)isCollectionSavedAtIndex:(int64_t)a3;
- (MKPlaceCollectionsLogicController)initWithCollectionView:(id)a3 withPlaceCollections:(id)a4 usingCollectionIds:(id)a5 usingCollectionFetcher:(id)a6 usingGuideConsumer:(id)a7 usingSyncCoordinator:(id)a8 inContext:(int64_t)a9 usingBatchSize:(unint64_t)a10;
- (UICollectionView)collectionView;
- (id)buildCuratedCollectionsFrom:(id)a3 shouldCancelImageDownloads:(BOOL)a4;
- (id)collectionAtIndex:(int64_t)a3;
- (id)geoCollectionAtIndex:(int64_t)a3;
- (id)identifierForCollectionAtIndex:(int64_t)a3;
- (id)removeIdentifiers:(id)a3 collidingWithPlaceCollections:(id)a4;
- (int64_t)numberOfCollections;
- (int64_t)sectionKindAtIndex:(int64_t)a3;
- (void)_dispatchOnManThread:(id)a3;
- (void)appendBatchOfCollections:(id)a3;
- (void)applySnapShot:(id)a3 animated:(BOOL)a4;
- (void)clearPreviousModelImageDownloads;
- (void)clearSnapshotData;
- (void)createBatchControllerIfNeededUsingIdentifiers:(id)a3 andPlaceCollections:(id)a4 usingCollectionFetcher:(id)a5 usingGuideConsumer:(id)a6 usingBatchSize:(unint64_t)a7;
- (void)didStartFetchingBatch;
- (void)displayCollections;
- (void)getCollections:(id)a3;
- (void)getCollectionsUsingDataSource:(id)a3 onCompletion:(id)a4;
- (void)prepareSnapshot;
- (void)refreshCollections;
- (void)shouldConsumeBatch:(BOOL)a3 fetchedBatch:(id)a4;
- (void)updateCollections:(id)a3 usingBatchedIdentifiers:(id)a4 usingCollectionFetcher:(id)a5 usingBatchSize:(unint64_t)a6;
- (void)updateCollectionsWithoutPreparingSnapshot:(id)a3 usingBatchedIdentifiers:(id)a4 usingCollectionFetcher:(id)a5 usingGuideConsumer:(id)a6 usingBatchSize:(unint64_t)a7;
- (void)updateUsingBatchedIdentifiers:(id)a3 usingCollectionFetcher:(id)a4 usingBatchSize:(unint64_t)a5;
- (void)willDisplayCellAtIndexpath:(id)a3;
@end

@implementation MKPlaceCollectionsLogicController

- (UICollectionView)collectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);

  return WeakRetained;
}

- (void)didStartFetchingBatch
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = [(MKPlaceCollectionsLogicController *)self snapshot];
  v4 = [v3 itemIdentifiersInSectionWithIdentifier:@"LoadingSection"];
  v5 = [v4 count];

  v6 = MKGetCuratedCollectionsLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v7)
    {
      *v11 = 0;
      _os_log_impl(&dword_1A2EA0000, v6, OS_LOG_TYPE_DEBUG, "[􀉟] Logic controller informed about batch load started when there is already one happening.", v11, 2u);
    }
  }

  else
  {
    if (v7)
    {
      *v11 = 0;
      _os_log_impl(&dword_1A2EA0000, v6, OS_LOG_TYPE_DEBUG, "[􀉟] Logic controller informed about batch load started. Showing loading cell.", v11, 2u);
    }

    v8 = [(MKPlaceCollectionsLogicController *)self snapshot];
    v9 = +[MKCollectionBatchCell reuseIdentifier];
    v12[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [v8 appendItemsWithIdentifiers:v10 intoSectionWithIdentifier:@"LoadingSection"];

    [(MKPlaceCollectionsLogicController *)self displayCollections];
  }
}

- (void)shouldConsumeBatch:(BOOL)a3 fetchedBatch:(id)a4
{
  v4 = a3;
  v17 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = MKGetCuratedCollectionsLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&dword_1A2EA0000, v7, OS_LOG_TYPE_DEBUG, "[􀉟] Logic controller informed to consume a batch. Removing loading cell.", &v15, 2u);
  }

  v8 = [(MKPlaceCollectionsLogicController *)self snapshot];
  v9 = [(MKPlaceCollectionsLogicController *)self snapshot];
  v10 = [v9 itemIdentifiersInSectionWithIdentifier:@"LoadingSection"];
  [v8 deleteItemsWithIdentifiers:v10];

  if (v4 && [v6 count])
  {
    v11 = MKGetCuratedCollectionsLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = [v6 count];
      v15 = 134217984;
      v16 = v12;
      _os_log_impl(&dword_1A2EA0000, v11, OS_LOG_TYPE_DEBUG, "[􀉟] Logic controller showing %ld more collections.", &v15, 0xCu);
    }

    [(MKPlaceCollectionsLogicController *)self appendBatchOfCollections:v6];
    v13 = [(MKPlaceCollectionsLogicController *)self snapshot];
    [v13 appendItemsWithIdentifiers:v6 intoSectionWithIdentifier:@"CarouselSection"];
  }

  else
  {
    if (![v6 count])
    {
      v14 = MKGetCuratedCollectionsLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_1A2EA0000, v14, OS_LOG_TYPE_ERROR, "[􀉟] placeCollections shouldn't be empty when we were sure to load a batch.", &v15, 2u);
      }
    }

    v13 = MKGetCuratedCollectionsLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_1A2EA0000, v13, OS_LOG_TYPE_DEBUG, "[􀉟] Logic controller was informed about batch load failure.", &v15, 2u);
    }
  }

  [(MKPlaceCollectionsLogicController *)self displayCollections];
}

- (void)applySnapShot:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__MKPlaceCollectionsLogicController_applySnapShot_animated___block_invoke;
  v8[3] = &unk_1E76CD198;
  objc_copyWeak(&v10, &location);
  v7 = v6;
  v9 = v7;
  v11 = a4;
  [(MKPlaceCollectionsLogicController *)self _dispatchOnManThread:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __60__MKPlaceCollectionsLogicController_applySnapShot_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained dataSource];
  [v2 applySnapshot:*(a1 + 32) animatingDifferences:*(a1 + 48)];
}

- (void)_dispatchOnManThread:(id)a3
{
  v3 = a3;
  if (v3)
  {
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v3[2](v3);
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __58__MKPlaceCollectionsLogicController__dispatchOnManThread___block_invoke;
      block[3] = &unk_1E76CD4D0;
      v5 = v3;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_1A2EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: block", buf, 2u);
  }
}

- (void)createBatchControllerIfNeededUsingIdentifiers:(id)a3 andPlaceCollections:(id)a4 usingCollectionFetcher:(id)a5 usingGuideConsumer:(id)a6 usingBatchSize:(unint64_t)a7
{
  v18 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  [(MKPlaceCollectionsLogicController *)self setBatchController:0];
  if (v18)
  {
    v15 = [(MKPlaceCollectionsLogicController *)self removeIdentifiers:v18 collidingWithPlaceCollections:v12];
    v16 = [v15 count];
    if (v14 && v13 && v16)
    {
      v17 = -[MKPlaceBatchController initWithItemIdentifiers:withBatchSize:minimumNumberOfItemBeforeFetching:shouldLoadFirstBatchImmediately:usingBatchFetcher:usingBatchConsumer:displayedItemCount:]([MKPlaceBatchController alloc], "initWithItemIdentifiers:withBatchSize:minimumNumberOfItemBeforeFetching:shouldLoadFirstBatchImmediately:usingBatchFetcher:usingBatchConsumer:displayedItemCount:", v15, a7, 2, 0, v13, v14, [v12 count]);
      [(MKPlaceCollectionsLogicController *)self setBatchController:v17];
    }
  }
}

- (id)removeIdentifiers:(id)a3 collidingWithPlaceCollections:(id)a4
{
  v5 = MEMORY[0x1E695DF70];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __85__MKPlaceCollectionsLogicController_removeIdentifiers_collidingWithPlaceCollections___block_invoke;
  v20[3] = &unk_1E76CD120;
  v21 = v8;
  v9 = v8;
  [v6 enumerateObjectsUsingBlock:v20];

  v10 = [v7 mutableCopy];
  [v10 removeObjectsInArray:v9];
  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __85__MKPlaceCollectionsLogicController_removeIdentifiers_collidingWithPlaceCollections___block_invoke_2;
  v18 = &unk_1E76CD170;
  v19 = v11;
  v12 = v11;
  [v10 enumerateObjectsUsingBlock:&v15];
  v13 = [v12 copy];

  return v13;
}

void __85__MKPlaceCollectionsLogicController_removeIdentifiers_collidingWithPlaceCollections___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 collectionIdentifier];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
    v3 = v4;
  }
}

void __85__MKPlaceCollectionsLogicController_removeIdentifiers_collidingWithPlaceCollections___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [[MKMapItemIdentifier alloc] initWithGEOMapItemIdentifier:v3];

  v4 = v5;
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
    v4 = v5;
  }
}

- (void)clearPreviousModelImageDownloads
{
  v3 = +[MKPlaceCollectionImageProvider sharedInstance];
  v4 = self->_context - 1;
  if (v4 > 9)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_1A30F7CE8[v4];
  }

  v6 = v3;
  [v3 cancelAllOperationsForImageSource:v5];
}

- (id)buildCuratedCollectionsFrom:(id)a3 shouldCancelImageDownloads:(BOOL)a4
{
  v4 = a4;
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v4)
  {
    [(MKPlaceCollectionsLogicController *)self clearPreviousModelImageDownloads];
  }

  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [MKPlaceCollectionViewModel alloc];
        v15 = [(MKPlaceCollectionsLogicController *)self syncCoordinator];
        v16 = [(MKPlaceCollectionViewModel *)v14 initWithGEOPlaceCollection:v13 usingSyncCoordinator:v15 inContext:self->_context usingTitleFont:0];

        [v7 addObject:v16];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  return v7;
}

- (void)prepareSnapshot
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69955A0]);
  [(MKPlaceCollectionsLogicController *)self setSnapshot:v3];

  v4 = [(MKPlaceCollectionsLogicController *)self snapshot];
  v9[0] = @"CarouselSection";
  v9[1] = @"LoadingSection";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  [v4 appendSectionsWithIdentifiers:v5];

  v6 = [(MKPlaceCollectionsLogicController *)self snapshot];
  v7 = [(MKPlaceCollectionsLogicController *)self geoCollections];
  [v6 appendItemsWithIdentifiers:v7 intoSectionWithIdentifier:@"CarouselSection"];

  v8 = [(MKPlaceCollectionsLogicController *)self snapshot];
  [v8 appendItemsWithIdentifiers:MEMORY[0x1E695E0F0] intoSectionWithIdentifier:@"LoadingSection"];
}

- (BOOL)isCollectionSavedAtIndex:(int64_t)a3
{
  v3 = [(MKPlaceCollectionsLogicController *)self collectionAtIndex:a3];
  v4 = [v3 isSaved];

  return v4;
}

- (id)identifierForCollectionAtIndex:(int64_t)a3
{
  v3 = [(MKPlaceCollectionsLogicController *)self geoCollectionAtIndex:a3];
  v4 = [v3 collectionIdentifier];

  return v4;
}

- (void)appendBatchOfCollections:(id)a3
{
  v4 = a3;
  v5 = [(MKPlaceCollectionsLogicController *)self geoCollections];
  v6 = [v5 mutableCopy];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __62__MKPlaceCollectionsLogicController_appendBatchOfCollections___block_invoke;
  v18[3] = &unk_1E76CD120;
  v19 = v6;
  v7 = v6;
  [v4 enumerateObjectsUsingBlock:v18];
  [(MKPlaceCollectionsLogicController *)self setGeoCollections:v7];
  v8 = [(MKPlaceCollectionsLogicController *)self buildCuratedCollectionsFrom:v4 shouldCancelImageDownloads:0];

  v9 = [(MKPlaceCollectionsLogicController *)self collections];
  v10 = [v9 mutableCopy];

  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __62__MKPlaceCollectionsLogicController_appendBatchOfCollections___block_invoke_2;
  v16 = &unk_1E76CD148;
  v17 = v10;
  v11 = v10;
  [v8 enumerateObjectsUsingBlock:&v13];
  v12 = [v11 copy];
  [(MKPlaceCollectionsLogicController *)self setCollections:v12];
}

- (void)updateUsingBatchedIdentifiers:(id)a3 usingCollectionFetcher:(id)a4 usingBatchSize:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(MKPlaceCollectionsLogicController *)self geoCollections];
  [(MKPlaceCollectionsLogicController *)self createBatchControllerIfNeededUsingIdentifiers:v9 andPlaceCollections:v10 usingCollectionFetcher:v8 usingGuideConsumer:self usingBatchSize:a5];
}

- (void)updateCollectionsWithoutPreparingSnapshot:(id)a3 usingBatchedIdentifiers:(id)a4 usingCollectionFetcher:(id)a5 usingGuideConsumer:(id)a6 usingBatchSize:(unint64_t)a7
{
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v17 = a3;
  [(MKPlaceCollectionsLogicController *)self setGeoCollections:v17];
  v15 = [(MKPlaceCollectionsLogicController *)self geoCollections];
  v16 = [(MKPlaceCollectionsLogicController *)self buildCuratedCollectionsFrom:v15 shouldCancelImageDownloads:1];
  [(MKPlaceCollectionsLogicController *)self setCollections:v16];

  [(MKPlaceCollectionsLogicController *)self createBatchControllerIfNeededUsingIdentifiers:v14 andPlaceCollections:v17 usingCollectionFetcher:v13 usingGuideConsumer:v12 usingBatchSize:a7];
}

- (void)updateCollections:(id)a3 usingBatchedIdentifiers:(id)a4 usingCollectionFetcher:(id)a5 usingBatchSize:(unint64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  [(MKPlaceCollectionsLogicController *)self setGeoCollections:v12];
  v13 = [(MKPlaceCollectionsLogicController *)self geoCollections];
  v14 = [(MKPlaceCollectionsLogicController *)self buildCuratedCollectionsFrom:v13 shouldCancelImageDownloads:1];
  [(MKPlaceCollectionsLogicController *)self setCollections:v14];

  [(MKPlaceCollectionsLogicController *)self createBatchControllerIfNeededUsingIdentifiers:v11 andPlaceCollections:v12 usingCollectionFetcher:v10 usingGuideConsumer:self usingBatchSize:a6];

  [(MKPlaceCollectionsLogicController *)self prepareSnapshot];
}

- (id)geoCollectionAtIndex:(int64_t)a3
{
  v4 = [(MKPlaceCollectionsLogicController *)self geoCollections];
  v5 = [v4 objectAtIndex:a3];

  return v5;
}

- (id)collectionAtIndex:(int64_t)a3
{
  v4 = [(MKPlaceCollectionsLogicController *)self collections];
  v5 = [v4 objectAtIndex:a3];

  return v5;
}

- (int64_t)numberOfCollections
{
  v2 = [(MKPlaceCollectionsLogicController *)self collections];
  v3 = [v2 count];

  return v3;
}

- (int64_t)sectionKindAtIndex:(int64_t)a3
{
  v4 = [(MKPlaceCollectionsLogicController *)self numberOfSections];
  if (a3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = -1;
  }

  if (!a3)
  {
    v5 = 0;
  }

  if (v4 <= a3)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

- (void)refreshCollections
{
  v8[1] = *MEMORY[0x1E69E9840];
  if ([(MKPlaceCollectionsLogicController *)self numberOfCollections])
  {
    v3 = MKGetCuratedCollectionsLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A2EA0000, v3, OS_LOG_TYPE_DEBUG, "Logic controller is refreshing collections", v7, 2u);
    }

    v4 = [(MKPlaceCollectionsLogicController *)self dataSource];
    v5 = [v4 snapshot];

    v8[0] = @"CarouselSection";
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [v5 reloadSectionsWithIdentifiers:v6];

    [(MKPlaceCollectionsLogicController *)self applySnapShot:v5 animated:0];
  }
}

- (void)displayCollections
{
  v3 = [(MKPlaceCollectionsLogicController *)self snapshot];
  [(MKPlaceCollectionsLogicController *)self applySnapShot:v3 animated:0];
}

- (void)getCollections:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x1E69DC820]);
  v6 = [(MKPlaceCollectionsLogicController *)self collectionView];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __52__MKPlaceCollectionsLogicController_getCollections___block_invoke;
  v11 = &unk_1E76CD0F8;
  objc_copyWeak(&v12, &location);
  v7 = [v5 initWithCollectionView:v6 cellProvider:&v8];
  [(MKPlaceCollectionsLogicController *)self setDataSource:v7, v8, v9, v10, v11];

  [(MKPlaceCollectionsLogicController *)self prepareSnapshot];
  if (v4)
  {
    v4[2](v4);
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

id __52__MKPlaceCollectionsLogicController_getCollections___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = +[MKPlaceCollectionCell reuseIdentifier];
    v12 = [v7 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:v8];

    v13 = [WeakRetained collectionAtIndex:{objc_msgSend(v8, "item")}];
    [v12 configureWithModel:v13];

    goto LABEL_7;
  }

  v14 = +[MKCollectionBatchCell reuseIdentifier];
  v15 = [v9 isEqualToString:v14];

  if (v15)
  {
    v16 = +[MKCollectionBatchCell reuseIdentifier];
    v12 = [v7 dequeueReusableCellWithReuseIdentifier:v16 forIndexPath:v8];

    [v12 startedLoadingBatch];
  }

  else
  {
LABEL_6:
    v12 = 0;
  }

LABEL_7:

  return v12;
}

- (void)getCollectionsUsingDataSource:(id)a3 onCompletion:(id)a4
{
  v7 = a4;
  [(MKPlaceCollectionsLogicController *)self setDataSource:a3];
  [(MKPlaceCollectionsLogicController *)self prepareSnapshot];
  v6 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7);
    v6 = v7;
  }
}

- (void)clearSnapshotData
{
  v3 = [(MKPlaceCollectionsLogicController *)self dataSource];
  v6 = [v3 snapshot];

  v4 = [v6 itemIdentifiersInSectionWithIdentifier:@"CarouselSection"];
  v5 = [v6 itemIdentifiersInSectionWithIdentifier:@"LoadingSection"];
  [v6 deleteItemsWithIdentifiers:v4];
  [v6 deleteItemsWithIdentifiers:v5];
  [(MKPlaceCollectionsLogicController *)self applySnapShot:v6 animated:0];
}

- (void)willDisplayCellAtIndexpath:(id)a3
{
  v4 = a3;
  v6 = [(MKPlaceCollectionsLogicController *)self batchController];
  v5 = [v4 item];

  [v6 didDisplayItemAtIndex:v5];
}

- (MKPlaceCollectionsLogicController)initWithCollectionView:(id)a3 withPlaceCollections:(id)a4 usingCollectionIds:(id)a5 usingCollectionFetcher:(id)a6 usingGuideConsumer:(id)a7 usingSyncCoordinator:(id)a8 inContext:(int64_t)a9 usingBatchSize:(unint64_t)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v40.receiver = self;
  v40.super_class = MKPlaceCollectionsLogicController;
  v22 = [(MKPlaceCollectionsLogicController *)&v40 init];
  v23 = v22;
  if (v22)
  {
    v39 = v20;
    v24 = v18;
    [(MKPlaceCollectionsLogicController *)v22 setCollectionView:v16];
    v25 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:v17];
    v26 = [v25 array];
    v27 = [v26 copy];
    [(MKPlaceCollectionsLogicController *)v23 setGeoCollections:v27];

    objc_storeStrong(&v23->_syncCoordinator, a8);
    v23->_context = a9;
    v28 = [(MKPlaceCollectionsLogicController *)v23 buildCuratedCollectionsFrom:v17 shouldCancelImageDownloads:0];
    [(MKPlaceCollectionsLogicController *)v23 setCollections:v28];

    if (a9 == 9)
    {
      v29 = v23;
      v18 = v24;
      v30 = v24;
    }

    else
    {
      v18 = v24;
      if (a9 != 5)
      {
        v20 = v39;
        if (a9 != 2)
        {
LABEL_10:
          v34 = objc_opt_class();
          v35 = +[MKPlaceCollectionCell reuseIdentifier];
          [v16 registerClass:v34 forCellWithReuseIdentifier:v35];

          v36 = objc_opt_class();
          v37 = +[MKCollectionBatchCell reuseIdentifier];
          [v16 registerClass:v36 forCellWithReuseIdentifier:v37];

          goto LABEL_11;
        }

        v29 = v23;
        v30 = v18;
        v31 = v17;
        v32 = v19;
        v33 = v23;
LABEL_9:
        [(MKPlaceCollectionsLogicController *)v29 createBatchControllerIfNeededUsingIdentifiers:v30 andPlaceCollections:v31 usingCollectionFetcher:v32 usingGuideConsumer:v33 usingBatchSize:a10];
        goto LABEL_10;
      }

      v29 = v23;
      v30 = v24;
    }

    v31 = v17;
    v32 = v19;
    v20 = v39;
    v33 = v39;
    goto LABEL_9;
  }

LABEL_11:

  return v23;
}

@end