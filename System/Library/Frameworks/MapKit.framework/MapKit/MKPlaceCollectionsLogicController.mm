@interface MKPlaceCollectionsLogicController
- (BOOL)isCollectionSavedAtIndex:(int64_t)index;
- (MKPlaceCollectionsLogicController)initWithCollectionView:(id)view withPlaceCollections:(id)collections usingCollectionIds:(id)ids usingCollectionFetcher:(id)fetcher usingGuideConsumer:(id)consumer usingSyncCoordinator:(id)coordinator inContext:(int64_t)context usingBatchSize:(unint64_t)self0;
- (UICollectionView)collectionView;
- (id)buildCuratedCollectionsFrom:(id)from shouldCancelImageDownloads:(BOOL)downloads;
- (id)collectionAtIndex:(int64_t)index;
- (id)geoCollectionAtIndex:(int64_t)index;
- (id)identifierForCollectionAtIndex:(int64_t)index;
- (id)removeIdentifiers:(id)identifiers collidingWithPlaceCollections:(id)collections;
- (int64_t)numberOfCollections;
- (int64_t)sectionKindAtIndex:(int64_t)index;
- (void)_dispatchOnManThread:(id)thread;
- (void)appendBatchOfCollections:(id)collections;
- (void)applySnapShot:(id)shot animated:(BOOL)animated;
- (void)clearPreviousModelImageDownloads;
- (void)clearSnapshotData;
- (void)createBatchControllerIfNeededUsingIdentifiers:(id)identifiers andPlaceCollections:(id)collections usingCollectionFetcher:(id)fetcher usingGuideConsumer:(id)consumer usingBatchSize:(unint64_t)size;
- (void)didStartFetchingBatch;
- (void)displayCollections;
- (void)getCollections:(id)collections;
- (void)getCollectionsUsingDataSource:(id)source onCompletion:(id)completion;
- (void)prepareSnapshot;
- (void)refreshCollections;
- (void)shouldConsumeBatch:(BOOL)batch fetchedBatch:(id)fetchedBatch;
- (void)updateCollections:(id)collections usingBatchedIdentifiers:(id)identifiers usingCollectionFetcher:(id)fetcher usingBatchSize:(unint64_t)size;
- (void)updateCollectionsWithoutPreparingSnapshot:(id)snapshot usingBatchedIdentifiers:(id)identifiers usingCollectionFetcher:(id)fetcher usingGuideConsumer:(id)consumer usingBatchSize:(unint64_t)size;
- (void)updateUsingBatchedIdentifiers:(id)identifiers usingCollectionFetcher:(id)fetcher usingBatchSize:(unint64_t)size;
- (void)willDisplayCellAtIndexpath:(id)indexpath;
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
  snapshot = [(MKPlaceCollectionsLogicController *)self snapshot];
  v4 = [snapshot itemIdentifiersInSectionWithIdentifier:@"LoadingSection"];
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

    snapshot2 = [(MKPlaceCollectionsLogicController *)self snapshot];
    v9 = +[MKCollectionBatchCell reuseIdentifier];
    v12[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [snapshot2 appendItemsWithIdentifiers:v10 intoSectionWithIdentifier:@"LoadingSection"];

    [(MKPlaceCollectionsLogicController *)self displayCollections];
  }
}

- (void)shouldConsumeBatch:(BOOL)batch fetchedBatch:(id)fetchedBatch
{
  batchCopy = batch;
  v17 = *MEMORY[0x1E69E9840];
  fetchedBatchCopy = fetchedBatch;
  v7 = MKGetCuratedCollectionsLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&dword_1A2EA0000, v7, OS_LOG_TYPE_DEBUG, "[􀉟] Logic controller informed to consume a batch. Removing loading cell.", &v15, 2u);
  }

  snapshot = [(MKPlaceCollectionsLogicController *)self snapshot];
  snapshot2 = [(MKPlaceCollectionsLogicController *)self snapshot];
  v10 = [snapshot2 itemIdentifiersInSectionWithIdentifier:@"LoadingSection"];
  [snapshot deleteItemsWithIdentifiers:v10];

  if (batchCopy && [fetchedBatchCopy count])
  {
    v11 = MKGetCuratedCollectionsLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = [fetchedBatchCopy count];
      v15 = 134217984;
      v16 = v12;
      _os_log_impl(&dword_1A2EA0000, v11, OS_LOG_TYPE_DEBUG, "[􀉟] Logic controller showing %ld more collections.", &v15, 0xCu);
    }

    [(MKPlaceCollectionsLogicController *)self appendBatchOfCollections:fetchedBatchCopy];
    snapshot3 = [(MKPlaceCollectionsLogicController *)self snapshot];
    [snapshot3 appendItemsWithIdentifiers:fetchedBatchCopy intoSectionWithIdentifier:@"CarouselSection"];
  }

  else
  {
    if (![fetchedBatchCopy count])
    {
      v14 = MKGetCuratedCollectionsLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_1A2EA0000, v14, OS_LOG_TYPE_ERROR, "[􀉟] placeCollections shouldn't be empty when we were sure to load a batch.", &v15, 2u);
      }
    }

    snapshot3 = MKGetCuratedCollectionsLog();
    if (os_log_type_enabled(snapshot3, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_1A2EA0000, snapshot3, OS_LOG_TYPE_DEBUG, "[􀉟] Logic controller was informed about batch load failure.", &v15, 2u);
    }
  }

  [(MKPlaceCollectionsLogicController *)self displayCollections];
}

- (void)applySnapShot:(id)shot animated:(BOOL)animated
{
  shotCopy = shot;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__MKPlaceCollectionsLogicController_applySnapShot_animated___block_invoke;
  v8[3] = &unk_1E76CD198;
  objc_copyWeak(&v10, &location);
  v7 = shotCopy;
  v9 = v7;
  animatedCopy = animated;
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

- (void)_dispatchOnManThread:(id)thread
{
  threadCopy = thread;
  if (threadCopy)
  {
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      threadCopy[2](threadCopy);
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __58__MKPlaceCollectionsLogicController__dispatchOnManThread___block_invoke;
      block[3] = &unk_1E76CD4D0;
      v5 = threadCopy;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_1A2EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: block", buf, 2u);
  }
}

- (void)createBatchControllerIfNeededUsingIdentifiers:(id)identifiers andPlaceCollections:(id)collections usingCollectionFetcher:(id)fetcher usingGuideConsumer:(id)consumer usingBatchSize:(unint64_t)size
{
  identifiersCopy = identifiers;
  collectionsCopy = collections;
  fetcherCopy = fetcher;
  consumerCopy = consumer;
  [(MKPlaceCollectionsLogicController *)self setBatchController:0];
  if (identifiersCopy)
  {
    v15 = [(MKPlaceCollectionsLogicController *)self removeIdentifiers:identifiersCopy collidingWithPlaceCollections:collectionsCopy];
    v16 = [v15 count];
    if (consumerCopy && fetcherCopy && v16)
    {
      v17 = -[MKPlaceBatchController initWithItemIdentifiers:withBatchSize:minimumNumberOfItemBeforeFetching:shouldLoadFirstBatchImmediately:usingBatchFetcher:usingBatchConsumer:displayedItemCount:]([MKPlaceBatchController alloc], "initWithItemIdentifiers:withBatchSize:minimumNumberOfItemBeforeFetching:shouldLoadFirstBatchImmediately:usingBatchFetcher:usingBatchConsumer:displayedItemCount:", v15, size, 2, 0, fetcherCopy, consumerCopy, [collectionsCopy count]);
      [(MKPlaceCollectionsLogicController *)self setBatchController:v17];
    }
  }
}

- (id)removeIdentifiers:(id)identifiers collidingWithPlaceCollections:(id)collections
{
  v5 = MEMORY[0x1E695DF70];
  collectionsCopy = collections;
  identifiersCopy = identifiers;
  v8 = [[v5 alloc] initWithCapacity:{objc_msgSend(collectionsCopy, "count")}];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __85__MKPlaceCollectionsLogicController_removeIdentifiers_collidingWithPlaceCollections___block_invoke;
  v20[3] = &unk_1E76CD120;
  v21 = v8;
  v9 = v8;
  [collectionsCopy enumerateObjectsUsingBlock:v20];

  v10 = [identifiersCopy mutableCopy];
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

- (id)buildCuratedCollectionsFrom:(id)from shouldCancelImageDownloads:(BOOL)downloads
{
  downloadsCopy = downloads;
  v23 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (downloadsCopy)
  {
    [(MKPlaceCollectionsLogicController *)self clearPreviousModelImageDownloads];
  }

  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(fromCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = fromCopy;
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
        syncCoordinator = [(MKPlaceCollectionsLogicController *)self syncCoordinator];
        v16 = [(MKPlaceCollectionViewModel *)v14 initWithGEOPlaceCollection:v13 usingSyncCoordinator:syncCoordinator inContext:self->_context usingTitleFont:0];

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

  snapshot = [(MKPlaceCollectionsLogicController *)self snapshot];
  v9[0] = @"CarouselSection";
  v9[1] = @"LoadingSection";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  [snapshot appendSectionsWithIdentifiers:v5];

  snapshot2 = [(MKPlaceCollectionsLogicController *)self snapshot];
  geoCollections = [(MKPlaceCollectionsLogicController *)self geoCollections];
  [snapshot2 appendItemsWithIdentifiers:geoCollections intoSectionWithIdentifier:@"CarouselSection"];

  snapshot3 = [(MKPlaceCollectionsLogicController *)self snapshot];
  [snapshot3 appendItemsWithIdentifiers:MEMORY[0x1E695E0F0] intoSectionWithIdentifier:@"LoadingSection"];
}

- (BOOL)isCollectionSavedAtIndex:(int64_t)index
{
  v3 = [(MKPlaceCollectionsLogicController *)self collectionAtIndex:index];
  isSaved = [v3 isSaved];

  return isSaved;
}

- (id)identifierForCollectionAtIndex:(int64_t)index
{
  v3 = [(MKPlaceCollectionsLogicController *)self geoCollectionAtIndex:index];
  collectionIdentifier = [v3 collectionIdentifier];

  return collectionIdentifier;
}

- (void)appendBatchOfCollections:(id)collections
{
  collectionsCopy = collections;
  geoCollections = [(MKPlaceCollectionsLogicController *)self geoCollections];
  v6 = [geoCollections mutableCopy];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __62__MKPlaceCollectionsLogicController_appendBatchOfCollections___block_invoke;
  v18[3] = &unk_1E76CD120;
  v19 = v6;
  v7 = v6;
  [collectionsCopy enumerateObjectsUsingBlock:v18];
  [(MKPlaceCollectionsLogicController *)self setGeoCollections:v7];
  v8 = [(MKPlaceCollectionsLogicController *)self buildCuratedCollectionsFrom:collectionsCopy shouldCancelImageDownloads:0];

  collections = [(MKPlaceCollectionsLogicController *)self collections];
  v10 = [collections mutableCopy];

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

- (void)updateUsingBatchedIdentifiers:(id)identifiers usingCollectionFetcher:(id)fetcher usingBatchSize:(unint64_t)size
{
  fetcherCopy = fetcher;
  identifiersCopy = identifiers;
  geoCollections = [(MKPlaceCollectionsLogicController *)self geoCollections];
  [(MKPlaceCollectionsLogicController *)self createBatchControllerIfNeededUsingIdentifiers:identifiersCopy andPlaceCollections:geoCollections usingCollectionFetcher:fetcherCopy usingGuideConsumer:self usingBatchSize:size];
}

- (void)updateCollectionsWithoutPreparingSnapshot:(id)snapshot usingBatchedIdentifiers:(id)identifiers usingCollectionFetcher:(id)fetcher usingGuideConsumer:(id)consumer usingBatchSize:(unint64_t)size
{
  consumerCopy = consumer;
  fetcherCopy = fetcher;
  identifiersCopy = identifiers;
  snapshotCopy = snapshot;
  [(MKPlaceCollectionsLogicController *)self setGeoCollections:snapshotCopy];
  geoCollections = [(MKPlaceCollectionsLogicController *)self geoCollections];
  v16 = [(MKPlaceCollectionsLogicController *)self buildCuratedCollectionsFrom:geoCollections shouldCancelImageDownloads:1];
  [(MKPlaceCollectionsLogicController *)self setCollections:v16];

  [(MKPlaceCollectionsLogicController *)self createBatchControllerIfNeededUsingIdentifiers:identifiersCopy andPlaceCollections:snapshotCopy usingCollectionFetcher:fetcherCopy usingGuideConsumer:consumerCopy usingBatchSize:size];
}

- (void)updateCollections:(id)collections usingBatchedIdentifiers:(id)identifiers usingCollectionFetcher:(id)fetcher usingBatchSize:(unint64_t)size
{
  fetcherCopy = fetcher;
  identifiersCopy = identifiers;
  collectionsCopy = collections;
  [(MKPlaceCollectionsLogicController *)self setGeoCollections:collectionsCopy];
  geoCollections = [(MKPlaceCollectionsLogicController *)self geoCollections];
  v14 = [(MKPlaceCollectionsLogicController *)self buildCuratedCollectionsFrom:geoCollections shouldCancelImageDownloads:1];
  [(MKPlaceCollectionsLogicController *)self setCollections:v14];

  [(MKPlaceCollectionsLogicController *)self createBatchControllerIfNeededUsingIdentifiers:identifiersCopy andPlaceCollections:collectionsCopy usingCollectionFetcher:fetcherCopy usingGuideConsumer:self usingBatchSize:size];

  [(MKPlaceCollectionsLogicController *)self prepareSnapshot];
}

- (id)geoCollectionAtIndex:(int64_t)index
{
  geoCollections = [(MKPlaceCollectionsLogicController *)self geoCollections];
  v5 = [geoCollections objectAtIndex:index];

  return v5;
}

- (id)collectionAtIndex:(int64_t)index
{
  collections = [(MKPlaceCollectionsLogicController *)self collections];
  v5 = [collections objectAtIndex:index];

  return v5;
}

- (int64_t)numberOfCollections
{
  collections = [(MKPlaceCollectionsLogicController *)self collections];
  v3 = [collections count];

  return v3;
}

- (int64_t)sectionKindAtIndex:(int64_t)index
{
  numberOfSections = [(MKPlaceCollectionsLogicController *)self numberOfSections];
  if (index == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = -1;
  }

  if (!index)
  {
    v5 = 0;
  }

  if (numberOfSections <= index)
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

    dataSource = [(MKPlaceCollectionsLogicController *)self dataSource];
    snapshot = [dataSource snapshot];

    v8[0] = @"CarouselSection";
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [snapshot reloadSectionsWithIdentifiers:v6];

    [(MKPlaceCollectionsLogicController *)self applySnapShot:snapshot animated:0];
  }
}

- (void)displayCollections
{
  snapshot = [(MKPlaceCollectionsLogicController *)self snapshot];
  [(MKPlaceCollectionsLogicController *)self applySnapShot:snapshot animated:0];
}

- (void)getCollections:(id)collections
{
  collectionsCopy = collections;
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x1E69DC820]);
  collectionView = [(MKPlaceCollectionsLogicController *)self collectionView];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __52__MKPlaceCollectionsLogicController_getCollections___block_invoke;
  v11 = &unk_1E76CD0F8;
  objc_copyWeak(&v12, &location);
  v7 = [v5 initWithCollectionView:collectionView cellProvider:&v8];
  [(MKPlaceCollectionsLogicController *)self setDataSource:v7, v8, v9, v10, v11];

  [(MKPlaceCollectionsLogicController *)self prepareSnapshot];
  if (collectionsCopy)
  {
    collectionsCopy[2](collectionsCopy);
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

- (void)getCollectionsUsingDataSource:(id)source onCompletion:(id)completion
{
  completionCopy = completion;
  [(MKPlaceCollectionsLogicController *)self setDataSource:source];
  [(MKPlaceCollectionsLogicController *)self prepareSnapshot];
  v6 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
    v6 = completionCopy;
  }
}

- (void)clearSnapshotData
{
  dataSource = [(MKPlaceCollectionsLogicController *)self dataSource];
  snapshot = [dataSource snapshot];

  v4 = [snapshot itemIdentifiersInSectionWithIdentifier:@"CarouselSection"];
  v5 = [snapshot itemIdentifiersInSectionWithIdentifier:@"LoadingSection"];
  [snapshot deleteItemsWithIdentifiers:v4];
  [snapshot deleteItemsWithIdentifiers:v5];
  [(MKPlaceCollectionsLogicController *)self applySnapShot:snapshot animated:0];
}

- (void)willDisplayCellAtIndexpath:(id)indexpath
{
  indexpathCopy = indexpath;
  batchController = [(MKPlaceCollectionsLogicController *)self batchController];
  item = [indexpathCopy item];

  [batchController didDisplayItemAtIndex:item];
}

- (MKPlaceCollectionsLogicController)initWithCollectionView:(id)view withPlaceCollections:(id)collections usingCollectionIds:(id)ids usingCollectionFetcher:(id)fetcher usingGuideConsumer:(id)consumer usingSyncCoordinator:(id)coordinator inContext:(int64_t)context usingBatchSize:(unint64_t)self0
{
  viewCopy = view;
  collectionsCopy = collections;
  idsCopy = ids;
  fetcherCopy = fetcher;
  consumerCopy = consumer;
  coordinatorCopy = coordinator;
  v40.receiver = self;
  v40.super_class = MKPlaceCollectionsLogicController;
  v22 = [(MKPlaceCollectionsLogicController *)&v40 init];
  v23 = v22;
  if (v22)
  {
    v39 = consumerCopy;
    v24 = idsCopy;
    [(MKPlaceCollectionsLogicController *)v22 setCollectionView:viewCopy];
    v25 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:collectionsCopy];
    array = [v25 array];
    v27 = [array copy];
    [(MKPlaceCollectionsLogicController *)v23 setGeoCollections:v27];

    objc_storeStrong(&v23->_syncCoordinator, coordinator);
    v23->_context = context;
    v28 = [(MKPlaceCollectionsLogicController *)v23 buildCuratedCollectionsFrom:collectionsCopy shouldCancelImageDownloads:0];
    [(MKPlaceCollectionsLogicController *)v23 setCollections:v28];

    if (context == 9)
    {
      v29 = v23;
      idsCopy = v24;
      v30 = v24;
    }

    else
    {
      idsCopy = v24;
      if (context != 5)
      {
        consumerCopy = v39;
        if (context != 2)
        {
LABEL_10:
          v34 = objc_opt_class();
          v35 = +[MKPlaceCollectionCell reuseIdentifier];
          [viewCopy registerClass:v34 forCellWithReuseIdentifier:v35];

          v36 = objc_opt_class();
          v37 = +[MKCollectionBatchCell reuseIdentifier];
          [viewCopy registerClass:v36 forCellWithReuseIdentifier:v37];

          goto LABEL_11;
        }

        v29 = v23;
        v30 = idsCopy;
        v31 = collectionsCopy;
        v32 = fetcherCopy;
        v33 = v23;
LABEL_9:
        [(MKPlaceCollectionsLogicController *)v29 createBatchControllerIfNeededUsingIdentifiers:v30 andPlaceCollections:v31 usingCollectionFetcher:v32 usingGuideConsumer:v33 usingBatchSize:size];
        goto LABEL_10;
      }

      v29 = v23;
      v30 = v24;
    }

    v31 = collectionsCopy;
    v32 = fetcherCopy;
    consumerCopy = v39;
    v33 = v39;
    goto LABEL_9;
  }

LABEL_11:

  return v23;
}

@end