@interface CitySelectorDataSource
- (CitySelectorDataSource)initWithCollectionView:(id)view result:(id)result sections:(id)sections routingDelegate:(id)delegate usingCollectionFetcher:(id)fetcher usingBatchSize:(unint64_t)size selectedGuideLocation:(id)location;
- (GuidesLocationRoutingDelegate)routingDelegate;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)dismissedCitySelector;
- (void)displayCitySelectorData;
- (void)initializeDataSource;
- (void)prepareSnapshot;
- (void)shouldConsumeBatch:(BOOL)batch fetchedBatch:(id)fetchedBatch;
@end

@implementation CitySelectorDataSource

- (GuidesLocationRoutingDelegate)routingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);

  return WeakRetained;
}

- (void)shouldConsumeBatch:(BOOL)batch fetchedBatch:(id)fetchedBatch
{
  [(CitySelectorDataSource *)self prepareSnapshot:batch];
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100AB788C;
  v5[3] = &unk_101661B98;
  objc_copyWeak(&v6, &location);
  dispatch_async(&_dispatch_main_q, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)dismissedCitySelector
{
  logicController = [(CitySelectorDataSource *)self logicController];
  [logicController dismissedCompactCollections];
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  pathCopy = path;
  cellCopy = cell;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    logicController = [(CitySelectorDataSource *)self logicController];
    [logicController willDisplayCellAtIndexpath:pathCopy];
  }
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  logicController = [(CitySelectorDataSource *)self logicController];
  v17 = [logicController compactCollectionsInSection:{objc_msgSend(pathCopy, "section")}];

  v7 = [v17 objectAtIndex:{objc_msgSend(pathCopy, "item")}];
  guideLocation = [v7 guideLocation];

  routingDelegate = [(CitySelectorDataSource *)self routingDelegate];
  [routingDelegate routeToGuideLocation:guideLocation];

  guideLocationIdentifier = [guideLocation guideLocationIdentifier];
  v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", [guideLocationIdentifier muid]);
  v12 = [NSNumber numberWithInt:14];
  guideLocationIdentifier2 = [guideLocation guideLocationIdentifier];
  v14 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [guideLocationIdentifier2 resultProviderID]);
  section = [pathCopy section];

  v16 = [NSNumber numberWithInteger:section];
  [GEOAPPortal captureCuratedCollectionUserAction:177 target:27 value:v11 publisherId:0 following:0 collectionId:0 collectionCategory:0 collectionCurrentlySaved:0 verticalIndex:0 horizontalIndex:0 placeCardType:v12 possibleActions:0 impossibleActions:0 providerId:v14 repeatableSectionIndex:v16 modules:0];
}

- (void)prepareSnapshot
{
  v3 = objc_alloc_init(NSDiffableDataSourceSnapshot);
  sections = [(CitySelectorDataSource *)self sections];
  [v3 appendSectionsWithIdentifiers:sections];

  sections2 = [(CitySelectorDataSource *)self sections];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100AB7C70;
  v10 = &unk_101636E28;
  selfCopy = self;
  v12 = v3;
  v6 = v3;
  [sections2 enumerateObjectsUsingBlock:&v7];

  [(CitySelectorDataSource *)self setSnapshot:v6, v7, v8, v9, v10, selfCopy];
}

- (void)initializeDataSource
{
  objc_initWeak(&location, self);
  v3 = [UICollectionViewDiffableDataSource alloc];
  collectionView = [(DataSource *)self collectionView];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100AB7F10;
  v9[3] = &unk_101636E00;
  objc_copyWeak(&v10, &location);
  v5 = [v3 initWithCollectionView:collectionView cellProvider:v9];
  [(CitySelectorDataSource *)self setDataSource:v5];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100AB80C8;
  v7[3] = &unk_10165D680;
  objc_copyWeak(&v8, &location);
  dataSource = [(CitySelectorDataSource *)self dataSource];
  [dataSource setSupplementaryViewProvider:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)displayCitySelectorData
{
  snapshot = [(CitySelectorDataSource *)self snapshot];

  if (snapshot)
  {
    dataSource = [(CitySelectorDataSource *)self dataSource];
    snapshot2 = [(CitySelectorDataSource *)self snapshot];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100AB8374;
    v6[3] = &unk_101661B18;
    v6[4] = self;
    [dataSource applySnapshot:snapshot2 animatingDifferences:0 completion:v6];
  }
}

- (CitySelectorDataSource)initWithCollectionView:(id)view result:(id)result sections:(id)sections routingDelegate:(id)delegate usingCollectionFetcher:(id)fetcher usingBatchSize:(unint64_t)size selectedGuideLocation:(id)location
{
  viewCopy = view;
  resultCopy = result;
  sectionsCopy = sections;
  delegateCopy = delegate;
  fetcherCopy = fetcher;
  locationCopy = location;
  v36.receiver = self;
  v36.super_class = CitySelectorDataSource;
  v20 = [(DataSource *)&v36 initWithCollectionView:viewCopy updateLocation:0];
  v21 = v20;
  if (v20)
  {
    [(DataSource *)v20 collectionView];
    v22 = v34 = sectionsCopy;
    [v22 setDelegate:v21];

    objc_storeStrong(&v21->_result, result);
    objc_storeStrong(&v21->_sections, sections);
    objc_storeWeak(&v21->_routingDelegate, delegateCopy);
    collectionView = [(DataSource *)v21 collectionView];
    v24 = objc_opt_class();
    v25 = +[MKPlaceCompactCollectionCell reuseIdentifier];
    [collectionView registerClass:v24 forCellWithReuseIdentifier:v25];

    v26 = objc_opt_class();
    v27 = +[MKCollectionBatchCell reuseIdentifier];
    [viewCopy registerClass:v26 forCellWithReuseIdentifier:v27];

    collectionView2 = [(DataSource *)v21 collectionView];
    v29 = objc_opt_class();
    v30 = +[GuidesGenericSectionHeader reuseIdentifier];
    v31 = +[GuidesGenericSectionHeader reuseIdentifier];
    [collectionView2 registerClass:v29 forSupplementaryViewOfKind:v30 withReuseIdentifier:v31];

    sectionsCopy = v34;
    v32 = [[MKPlaceCompactCollectionsLogicController alloc] initWithGuideLocationsResult:resultCopy context:0 usingCollectionFetcher:fetcherCopy usingGuideConsumer:v21 usingBatchSize:size selectedGuideLocation:locationCopy];
    [(CitySelectorDataSource *)v21 setLogicController:v32];

    [(CitySelectorDataSource *)v21 initializeDataSource];
    [(CitySelectorDataSource *)v21 prepareSnapshot];
  }

  return v21;
}

@end