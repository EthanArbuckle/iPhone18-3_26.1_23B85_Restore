@interface GuidesHomeDataSource
- (BOOL)isFetchingData;
- (GuidesHomeAnalytics)analyticsManager;
- (GuidesHomeDataSource)initWithCollectionView:(id)view result:(id)result routingDelegate:(id)delegate apiController:(id)controller analyticsManager:(id)manager;
- (GuidesHomeRoutingDelegate)routingDelegate;
- (UIEdgeInsets)actualContentInsets;
- (id)featuredGuideViewModel;
- (id)filterViewModels;
- (id)sectionAtIndex:(unint64_t)index;
- (int64_t)filterSectionIndex;
- (unint64_t)guidesListCountAtIndex:(unint64_t)index;
- (unint64_t)publishersListCountAtIndex:(unint64_t)index;
- (void)cleanupGuidesHomeData;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)curatedCollectionSyncManagerDidUpdateSyncedCollections:(id)collections;
- (void)dealloc;
- (void)didChangeContentYOffset:(double)offset;
- (void)didRouteToConceptFilter:(id)filter atIndexPath:(id)path;
- (void)displayGuidesHomeByReloadingData;
- (void)displayGuidesHomeData;
- (void)filterDataFetchFinished;
- (void)filterDataFetchStarted;
- (void)initializeDataSource;
- (void)initializeSupplementaryViewProvider;
- (void)prepareSnapshot;
- (void)routeToCuratedCollectionAtIndex:(id)index inSection:(id)section;
- (void)shouldConsumeBatch:(BOOL)batch fetchedBatch:(id)fetchedBatch;
- (void)updateContentInset;
@end

@implementation GuidesHomeDataSource

- (UIEdgeInsets)actualContentInsets
{
  top = self->_actualContentInsets.top;
  left = self->_actualContentInsets.left;
  bottom = self->_actualContentInsets.bottom;
  right = self->_actualContentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (GuidesHomeAnalytics)analyticsManager
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsManager);

  return WeakRetained;
}

- (GuidesHomeRoutingDelegate)routingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);

  return WeakRetained;
}

- (void)shouldConsumeBatch:(BOOL)batch fetchedBatch:(id)fetchedBatch
{
  fetchedBatchCopy = fetchedBatch;
  dataSource = [(GuidesHomeDataSource *)self dataSource];
  snapshot = [dataSource snapshot];

  logicController = [(GuidesHomeDataSource *)self logicController];
  [logicController appendBatchOfCollections:fetchedBatchCopy];

  logicController2 = [(GuidesHomeDataSource *)self logicController];
  allSections = [logicController2 allSections];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10077F6C8;
  v13[3] = &unk_101628BD8;
  v14 = snapshot;
  selfCopy = self;
  v16 = fetchedBatchCopy;
  v11 = fetchedBatchCopy;
  v12 = snapshot;
  [allSections enumerateObjectsUsingBlock:v13];
}

- (void)curatedCollectionSyncManagerDidUpdateSyncedCollections:(id)collections
{
  v4 = objc_alloc_init(NSMutableArray);
  logicController = [(GuidesHomeDataSource *)self logicController];
  allSections = [logicController allSections];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10077F944;
  v12 = &unk_101628B60;
  v7 = v4;
  v13 = v7;
  selfCopy = self;
  [allSections enumerateObjectsUsingBlock:&v9];

  if ([v7 count])
  {
    snapshot = [(GuidesHomeDataSource *)self snapshot];
    [snapshot reconfigureItemsWithIdentifiers:v7];
    [(GuidesHomeDataSource *)self setSnapshot:snapshot];
    [(GuidesHomeDataSource *)self displayGuidesHomeData];
  }
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  pathCopy = path;
  logicController = [(GuidesHomeDataSource *)self logicController];
  [logicController willDisplayCellAtIndexpath:pathCopy];
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectItemAtIndexPath:pathCopy animated:0];
  logicController = [(GuidesHomeDataSource *)self logicController];
  v8 = [logicController sectionAtIndex:{objc_msgSend(pathCopy, "section")}];

  if (!v8)
  {
    goto LABEL_15;
  }

  [v8 configuration];

  if (v29 <= 2)
  {
    if (v29 == 1)
    {
      logicController2 = [(GuidesHomeDataSource *)self logicController];
      selectedFilterIndexPath = [logicController2 selectedFilterIndexPath];
      v18 = [selectedFilterIndexPath isEqual:pathCopy];

      logicController3 = [(GuidesHomeDataSource *)self logicController];
      v20 = logicController3;
      if (v18)
      {
        v21 = [logicController3 routeToSelectedGuidesHomeFilterAtIndexPath:0];

        [(GuidesHomeDataSource *)self didRouteToConceptFilter:0 atIndexPath:0];
      }

      else
      {
        v26 = [logicController3 routeToSelectedGuidesHomeFilterAtIndexPath:pathCopy];

        conceptFilter = [v26 conceptFilter];
        [(GuidesHomeDataSource *)self didRouteToConceptFilter:conceptFilter atIndexPath:pathCopy];
      }

      goto LABEL_15;
    }

    if (v29 != 2)
    {
      goto LABEL_15;
    }

    logicController4 = [(GuidesHomeDataSource *)self logicController];
    v10 = [logicController4 itemsForSectionAtIndex:{objc_msgSend(pathCopy, "section")}];

    v11 = [v10 objectAtIndex:{objc_msgSend(pathCopy, "item")}];
    guideLocation = [v11 guideLocation];

    analyticsManager = [(GuidesHomeDataSource *)self analyticsManager];
    guideLocationIdentifier = [guideLocation guideLocationIdentifier];
    [analyticsManager guidesHomeTappedCityGuide:guideLocationIdentifier atIndex:objc_msgSend(pathCopy carouselIndex:{"item"), objc_msgSend(pathCopy, "section")}];

    routingDelegate = [(GuidesHomeDataSource *)self routingDelegate];
    [routingDelegate routeToGuideLocation:guideLocation];
LABEL_14:

    goto LABEL_15;
  }

  if ((v29 - 3) < 2)
  {
LABEL_6:
    [(GuidesHomeDataSource *)self routeToCuratedCollectionAtIndex:pathCopy inSection:v8];
    goto LABEL_15;
  }

  if (v29 == 5)
  {
    logicController5 = [(GuidesHomeDataSource *)self logicController];
    v10 = [logicController5 itemsForSectionAtIndex:{objc_msgSend(pathCopy, "section")}];

    v23 = [v10 objectAtIndex:{objc_msgSend(pathCopy, "item")}];
    guideLocation = [v23 publisher];

    analyticsManager2 = [(GuidesHomeDataSource *)self analyticsManager];
    identifier = [guideLocation identifier];
    [analyticsManager2 guidesHomeTappedPublisher:identifier atIndex:objc_msgSend(pathCopy carouselIndex:{"item"), objc_msgSend(pathCopy, "section")}];

    routingDelegate = [(GuidesHomeDataSource *)self routingDelegate];
    [routingDelegate routeToPublisher:guideLocation];
    goto LABEL_14;
  }

  if (v29 == 6)
  {
    goto LABEL_6;
  }

LABEL_15:
}

- (void)didRouteToConceptFilter:(id)filter atIndexPath:(id)path
{
  filterCopy = filter;
  pathCopy = path;
  if ([(GuidesHomeDataSource *)self isFetchingData])
  {
    apiController = [(GuidesHomeDataSource *)self apiController];
    [apiController cancelFetchingGuideHome];
  }

  objc_initWeak(&location, self);
  apiController2 = [(GuidesHomeDataSource *)self apiController];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10077FF3C;
  v16 = &unk_101661B98;
  objc_copyWeak(&v17, &location);
  [apiController2 fetchGuidesHomeViewFilteredBy:filterCopy onCompletion:&v13];

  [(GuidesHomeDataSource *)self filterDataFetchStarted:v13];
  if (pathCopy)
  {
    analyticsManager = [(GuidesHomeDataSource *)self analyticsManager];
    logicController = [(GuidesHomeDataSource *)self logicController];
    v12 = [logicController filterValueAtIndex:{objc_msgSend(pathCopy, "item")}];
    [analyticsManager guideHomeTappedFilter:v12 atIndex:objc_msgSend(pathCopy carouselIndex:{"item"), objc_msgSend(pathCopy, "section")}];
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (unint64_t)publishersListCountAtIndex:(unint64_t)index
{
  logicController = [(GuidesHomeDataSource *)self logicController];
  v5 = [logicController itemsForSectionAtIndex:index];
  v6 = [v5 count];

  return v6;
}

- (unint64_t)guidesListCountAtIndex:(unint64_t)index
{
  logicController = [(GuidesHomeDataSource *)self logicController];
  v5 = [logicController itemsForSectionAtIndex:index];
  v6 = [v5 count];

  return v6;
}

- (id)featuredGuideViewModel
{
  logicController = [(GuidesHomeDataSource *)self logicController];
  v3 = [logicController itemsForSectionAtIndex:0];
  firstObject = [v3 firstObject];

  return firstObject;
}

- (id)filterViewModels
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1007801C8;
  v12 = sub_1007801D8;
  v13 = 0;
  logicController = [(GuidesHomeDataSource *)self logicController];
  allSections = [logicController allSections];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1007801E0;
  v7[3] = &unk_101628BB0;
  v7[4] = self;
  v7[5] = &v8;
  [allSections enumerateObjectsUsingBlock:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)sectionAtIndex:(unint64_t)index
{
  logicController = [(GuidesHomeDataSource *)self logicController];
  v5 = [logicController sectionAtIndex:index];

  return v5;
}

- (void)cleanupGuidesHomeData
{
  v3 = +[CuratedCollectionSyncManager sharedManager];
  [v3 removeObserver:self];

  [(GuidesHomeDataSource *)self setLogicController:0];
  [(GuidesHomeDataSource *)self setResult:0];
  [(GuidesHomeDataSource *)self setDataSource:0];
  [(GuidesHomeDataSource *)self setSnapshot:0];
  [(GuidesHomeDataSource *)self setRoutingDelegate:0];
  [(GuidesHomeDataSource *)self setApiController:0];

  [(GuidesHomeDataSource *)self setHeaderCell:0];
}

- (void)routeToCuratedCollectionAtIndex:(id)index inSection:(id)section
{
  indexCopy = index;
  sectionCopy = section;
  logicController = [(GuidesHomeDataSource *)self logicController];
  v8 = [logicController itemsForSectionAtIndex:{objc_msgSend(indexCopy, "section")}];

  v9 = [v8 objectAtIndex:{objc_msgSend(indexCopy, "item")}];
  placeCollection = [v9 placeCollection];

  v11 = +[CuratedCollectionSyncManager sharedManager];
  v12 = [v11 collectionIsSaved:placeCollection];

  if ([sectionCopy contentType] == 1)
  {
    analyticsManager = [(GuidesHomeDataSource *)self analyticsManager];
    collectionIdentifier = [placeCollection collectionIdentifier];
    publisher = [placeCollection publisher];
    identifier = [publisher identifier];
    [analyticsManager guidesHomeTappedEditorPickedGuide:collectionIdentifier publisherId:identifier isCurrentlySaved:v12 atIndex:objc_msgSend(indexCopy carouselIndex:{"item"), objc_msgSend(indexCopy, "section")}];
  }

  else if ([sectionCopy contentType] == 2)
  {
    analyticsManager = [(GuidesHomeDataSource *)self analyticsManager];
    collectionIdentifier = [placeCollection collectionIdentifier];
    publisher = [placeCollection publisher];
    identifier = [publisher identifier];
    [analyticsManager guidesHomeTappedTemporalGuide:collectionIdentifier publisherId:identifier isCurrentlySaved:v12 atIndex:objc_msgSend(indexCopy carouselIndex:{"item"), objc_msgSend(indexCopy, "section")}];
  }

  else if ([sectionCopy kind] == 4)
  {
    analyticsManager = [(GuidesHomeDataSource *)self analyticsManager];
    collectionIdentifier = [placeCollection collectionIdentifier];
    publisher = [placeCollection publisher];
    identifier = [publisher identifier];
    [analyticsManager guidesHomeTappedLatestGuide:collectionIdentifier publisherId:identifier isCurrentlySaved:v12 atIndex:objc_msgSend(indexCopy carouselIndex:{"item"), objc_msgSend(indexCopy, "section")}];
  }

  else
  {
    if ([sectionCopy kind] != 6)
    {
      goto LABEL_10;
    }

    logicController2 = [(GuidesHomeDataSource *)self logicController];
    logicController3 = [(GuidesHomeDataSource *)self logicController];
    selectedFilterIndexPath = [logicController3 selectedFilterIndexPath];
    analyticsManager = [logicController2 filterValueAtIndex:{objc_msgSend(selectedFilterIndexPath, "item")}];

    collectionIdentifier = [(GuidesHomeDataSource *)self analyticsManager];
    publisher = [placeCollection collectionIdentifier];
    identifier = [placeCollection publisher];
    v16Identifier = [identifier identifier];
    [collectionIdentifier guidesHomeTappedFilteredGuide:publisher publisherId:v16Identifier isCurrentlySaved:v12 atIndex:objc_msgSend(indexCopy carouselIndex:"item") filterValue:{objc_msgSend(indexCopy, "section"), analyticsManager}];
  }

LABEL_10:
  routingDelegate = [(GuidesHomeDataSource *)self routingDelegate];
  [routingDelegate routeToCuratedCollection:placeCollection];
}

- (int64_t)filterSectionIndex
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  logicController = [(GuidesHomeDataSource *)self logicController];
  allSections = [logicController allSections];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1007807E8;
  v6[3] = &unk_101628B88;
  v6[4] = &v7;
  [allSections enumerateObjectsUsingBlock:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)updateContentInset
{
  if ([(GuidesHomeDataSource *)self isFetchingData])
  {
    collectionView = [(DataSource *)self collectionView];
    [collectionView contentInset];
    [(GuidesHomeDataSource *)self setActualContentInsets:?];

    if ([(GuidesHomeDataSource *)self filterSectionIndex]== 0x7FFFFFFFFFFFFFFFLL)
    {
      return;
    }

    collectionView2 = [(DataSource *)self collectionView];
    collectionViewLayout = [collectionView2 collectionViewLayout];
    [collectionViewLayout _layoutFrameForSection:{-[GuidesHomeDataSource filterSectionIndex](self, "filterSectionIndex")}];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v36.origin.x = v7;
    v36.origin.y = v9;
    v36.size.width = v11;
    v36.size.height = v13;
    MaxY = CGRectGetMaxY(v36);
    +[GuidesHomeSection loadingSectionHeight];
    v16 = v15 + MaxY;
    collectionView3 = [(DataSource *)self collectionView];
    [collectionView3 bounds];
    v18 = CGRectGetMaxY(v37);

    if (v16 >= v18)
    {
      return;
    }

    collectionView4 = [(DataSource *)self collectionView];
    [collectionView4 contentInset];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    collectionView5 = [(DataSource *)self collectionView];
    [collectionView5 bounds];
    v29 = v25 - v16 + CGRectGetMaxY(v38);
  }

  else
  {
    [(GuidesHomeDataSource *)self actualContentInsets];
    v21 = v30;
    v23 = v31;
    v29 = v32;
    v27 = v33;
  }

  collectionView6 = [(DataSource *)self collectionView];
  [collectionView6 setContentInset:{v21, v23, v29, v27}];
}

- (void)filterDataFetchFinished
{
  logicController = [(GuidesHomeDataSource *)self logicController];
  [logicController selectedFilterIndexPath];

  logicController2 = [(GuidesHomeDataSource *)self logicController];
  selectedFilterIndexPath = [logicController2 selectedFilterIndexPath];

  if (!selectedFilterIndexPath)
  {
    apiController = [(GuidesHomeDataSource *)self apiController];
    [apiController cancelFetchingGuideHome];
  }

  logicController3 = [(GuidesHomeDataSource *)self logicController];
  apiController2 = [(GuidesHomeDataSource *)self apiController];
  guideHomeFilteredCollectionResults = [apiController2 guideHomeFilteredCollectionResults];
  apiController3 = [(GuidesHomeDataSource *)self apiController];
  guideHomeFilteredCollectionResultsIds = [apiController3 guideHomeFilteredCollectionResultsIds];
  [logicController3 updateFilteredCollectionsFromResults:guideHomeFilteredCollectionResults collectionIds:guideHomeFilteredCollectionResultsIds];

  [(GuidesHomeDataSource *)self prepareSnapshot];
  [(GuidesHomeDataSource *)self displayGuidesHomeByReloadingData];
  [(GuidesHomeDataSource *)self updateContentInset];
  logicController4 = [(GuidesHomeDataSource *)self logicController];
  selectedFilterIndexPath2 = [logicController4 selectedFilterIndexPath];

  if (selectedFilterIndexPath2)
  {
    analyticsManager = [(GuidesHomeDataSource *)self analyticsManager];
    apiController4 = [(GuidesHomeDataSource *)self apiController];
    guideHomeFilteredCollectionResultsIds2 = [apiController4 guideHomeFilteredCollectionResultsIds];
    [analyticsManager guidesHomeDisplayFilteredGuideList:guideHomeFilteredCollectionResultsIds2];
  }
}

- (void)filterDataFetchStarted
{
  [(GuidesHomeDataSource *)self updateContentInset];
  [(GuidesHomeDataSource *)self prepareSnapshot];

  [(GuidesHomeDataSource *)self displayGuidesHomeByReloadingData];
}

- (BOOL)isFetchingData
{
  apiController = [(GuidesHomeDataSource *)self apiController];
  v3 = [apiController currentState] == 1;

  return v3;
}

- (void)prepareSnapshot
{
  v3 = objc_alloc_init(NSDiffableDataSourceSnapshot);
  logicController = [(GuidesHomeDataSource *)self logicController];
  allSections = [logicController allSections];

  [v3 appendSectionsWithIdentifiers:allSections];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100780D5C;
  v10 = &unk_101628B60;
  v11 = v3;
  selfCopy = self;
  v6 = v3;
  [allSections enumerateObjectsUsingBlock:&v7];
  [(GuidesHomeDataSource *)self setSnapshot:v6, v7, v8, v9, v10];
}

- (void)initializeSupplementaryViewProvider
{
  v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle3];
  v4 = [v3 _mapkit_fontWithWeight:UIFontWeightSemibold];

  v12 = NSFontAttributeName;
  v13 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  objc_initWeak(&location, self);
  objc_copyWeak(&v10, &location);
  v6 = v5;
  v9 = v6;
  v7 = [(GuidesHomeDataSource *)self dataSource:_NSConcreteStackBlock];
  [v7 setSupplementaryViewProvider:&v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)initializeDataSource
{
  self->_currentState = 0;
  objc_initWeak(&location, self);
  v3 = [UICollectionViewDiffableDataSource alloc];
  collectionView = [(DataSource *)self collectionView];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1007813F0;
  v6[3] = &unk_101628B10;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  v5 = [v3 initWithCollectionView:collectionView cellProvider:v6];
  [(GuidesHomeDataSource *)self setDataSource:v5];

  [(GuidesHomeDataSource *)self initializeSupplementaryViewProvider];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)didChangeContentYOffset:(double)offset
{
  headerCell = [(GuidesHomeDataSource *)self headerCell];

  if (headerCell)
  {
    headerCell2 = [(GuidesHomeDataSource *)self headerCell];
    [headerCell2 didChangeContentYOffset:offset];
  }
}

- (void)displayGuidesHomeData
{
  snapshot = [(GuidesHomeDataSource *)self snapshot];

  if (snapshot)
  {
    self->_currentState = 1;
    dataSource = [(GuidesHomeDataSource *)self dataSource];
    snapshot2 = [(GuidesHomeDataSource *)self snapshot];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100781944;
    v6[3] = &unk_101661B18;
    v6[4] = self;
    [dataSource applySnapshot:snapshot2 animatingDifferences:0 completion:v6];
  }
}

- (void)displayGuidesHomeByReloadingData
{
  snapshot = [(GuidesHomeDataSource *)self snapshot];

  if (snapshot)
  {
    self->_currentState = 1;
    dataSource = [(GuidesHomeDataSource *)self dataSource];
    snapshot2 = [(GuidesHomeDataSource *)self snapshot];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100781A34;
    v6[3] = &unk_101661B18;
    v6[4] = self;
    [dataSource applySnapshotUsingReloadData:snapshot2 completion:v6];
  }
}

- (void)dealloc
{
  [(GuidesHomeDataSource *)self cleanupGuidesHomeData];
  v3.receiver = self;
  v3.super_class = GuidesHomeDataSource;
  [(GuidesHomeDataSource *)&v3 dealloc];
}

- (GuidesHomeDataSource)initWithCollectionView:(id)view result:(id)result routingDelegate:(id)delegate apiController:(id)controller analyticsManager:(id)manager
{
  viewCopy = view;
  resultCopy = result;
  delegateCopy = delegate;
  controllerCopy = controller;
  managerCopy = manager;
  v53.receiver = self;
  v53.super_class = GuidesHomeDataSource;
  v17 = [(DataSource *)&v53 initWithCollectionView:viewCopy updateLocation:0];
  v18 = v17;
  if (v17)
  {
    collectionView = [(DataSource *)v17 collectionView];
    [collectionView setDelegate:v18];

    objc_storeStrong(&v18->_result, result);
    objc_storeWeak(&v18->_routingDelegate, delegateCopy);
    objc_storeStrong(&v18->_apiController, controller);
    objc_storeWeak(&v18->_analyticsManager, managerCopy);
    collectionView2 = [(DataSource *)v18 collectionView];
    v21 = objc_opt_class();
    v22 = +[GuidesHomeHeaderCell reuseIdentifier];
    [collectionView2 registerClass:v21 forCellWithReuseIdentifier:v22];

    collectionView3 = [(DataSource *)v18 collectionView];
    v24 = objc_opt_class();
    v25 = +[MKPlaceCompactCollectionCell reuseIdentifier];
    [collectionView3 registerClass:v24 forCellWithReuseIdentifier:v25];

    collectionView4 = [(DataSource *)v18 collectionView];
    v27 = objc_opt_class();
    v28 = +[MKPlaceCollectionCell reuseIdentifier];
    [collectionView4 registerClass:v27 forCellWithReuseIdentifier:v28];

    collectionView5 = [(DataSource *)v18 collectionView];
    v30 = objc_opt_class();
    v31 = +[PlaceCollectionListCell reuseIdentifier];
    [collectionView5 registerClass:v30 forCellWithReuseIdentifier:v31];

    collectionView6 = [(DataSource *)v18 collectionView];
    v33 = objc_opt_class();
    v34 = +[CollectionsFilterCell reuseIdentifier];
    [collectionView6 registerClass:v33 forCellWithReuseIdentifier:v34];

    collectionView7 = [(DataSource *)v18 collectionView];
    v36 = objc_opt_class();
    v37 = +[MKCollectionBatchCell reuseIdentifier];
    [collectionView7 registerClass:v36 forCellWithReuseIdentifier:v37];

    collectionView8 = [(DataSource *)v18 collectionView];
    v39 = objc_opt_class();
    v40 = +[TwoLineCollectionViewListCell identifier];
    [collectionView8 registerClass:v39 forCellWithReuseIdentifier:v40];

    collectionView9 = [(DataSource *)v18 collectionView];
    v42 = objc_opt_class();
    v43 = +[GuidesGenericSectionHeader reuseIdentifier];
    v44 = +[GuidesGenericSectionHeader reuseIdentifier];
    [collectionView9 registerClass:v42 forSupplementaryViewOfKind:v43 withReuseIdentifier:v44];

    v45 = [GuidesHomeLogicController alloc];
    [viewCopy frame];
    v47 = v46;
    apiController = [(GuidesHomeDataSource *)v18 apiController];
    guideLocation = [controllerCopy guideLocation];
    v50 = [(GuidesHomeLogicController *)v45 initWithGuidesHomeResult:resultCopy maxWidth:viewCopy traitEnvironment:apiController guideFetcher:v18 guideConsumer:guideLocation guideLocation:v47];
    [(GuidesHomeDataSource *)v18 setLogicController:v50];

    [(GuidesHomeDataSource *)v18 initializeDataSource];
    [(GuidesHomeDataSource *)v18 prepareSnapshot];
    v51 = +[CuratedCollectionSyncManager sharedManager];
    [v51 addObserver:v18];
  }

  return v18;
}

@end