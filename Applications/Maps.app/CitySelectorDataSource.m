@interface CitySelectorDataSource
- (CitySelectorDataSource)initWithCollectionView:(id)a3 result:(id)a4 sections:(id)a5 routingDelegate:(id)a6 usingCollectionFetcher:(id)a7 usingBatchSize:(unint64_t)a8 selectedGuideLocation:(id)a9;
- (GuidesLocationRoutingDelegate)routingDelegate;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)dismissedCitySelector;
- (void)displayCitySelectorData;
- (void)initializeDataSource;
- (void)prepareSnapshot;
- (void)shouldConsumeBatch:(BOOL)a3 fetchedBatch:(id)a4;
@end

@implementation CitySelectorDataSource

- (GuidesLocationRoutingDelegate)routingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);

  return WeakRetained;
}

- (void)shouldConsumeBatch:(BOOL)a3 fetchedBatch:(id)a4
{
  [(CitySelectorDataSource *)self prepareSnapshot:a3];
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
  v2 = [(CitySelectorDataSource *)self logicController];
  [v2 dismissedCompactCollections];
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v10 = a5;
  v7 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v9 = [(CitySelectorDataSource *)self logicController];
    [v9 willDisplayCellAtIndexpath:v10];
  }
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(CitySelectorDataSource *)self logicController];
  v17 = [v6 compactCollectionsInSection:{objc_msgSend(v5, "section")}];

  v7 = [v17 objectAtIndex:{objc_msgSend(v5, "item")}];
  v8 = [v7 guideLocation];

  v9 = [(CitySelectorDataSource *)self routingDelegate];
  [v9 routeToGuideLocation:v8];

  v10 = [v8 guideLocationIdentifier];
  v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", [v10 muid]);
  v12 = [NSNumber numberWithInt:14];
  v13 = [v8 guideLocationIdentifier];
  v14 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v13 resultProviderID]);
  v15 = [v5 section];

  v16 = [NSNumber numberWithInteger:v15];
  [GEOAPPortal captureCuratedCollectionUserAction:177 target:27 value:v11 publisherId:0 following:0 collectionId:0 collectionCategory:0 collectionCurrentlySaved:0 verticalIndex:0 horizontalIndex:0 placeCardType:v12 possibleActions:0 impossibleActions:0 providerId:v14 repeatableSectionIndex:v16 modules:0];
}

- (void)prepareSnapshot
{
  v3 = objc_alloc_init(NSDiffableDataSourceSnapshot);
  v4 = [(CitySelectorDataSource *)self sections];
  [v3 appendSectionsWithIdentifiers:v4];

  v5 = [(CitySelectorDataSource *)self sections];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100AB7C70;
  v10 = &unk_101636E28;
  v11 = self;
  v12 = v3;
  v6 = v3;
  [v5 enumerateObjectsUsingBlock:&v7];

  [(CitySelectorDataSource *)self setSnapshot:v6, v7, v8, v9, v10, v11];
}

- (void)initializeDataSource
{
  objc_initWeak(&location, self);
  v3 = [UICollectionViewDiffableDataSource alloc];
  v4 = [(DataSource *)self collectionView];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100AB7F10;
  v9[3] = &unk_101636E00;
  objc_copyWeak(&v10, &location);
  v5 = [v3 initWithCollectionView:v4 cellProvider:v9];
  [(CitySelectorDataSource *)self setDataSource:v5];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100AB80C8;
  v7[3] = &unk_10165D680;
  objc_copyWeak(&v8, &location);
  v6 = [(CitySelectorDataSource *)self dataSource];
  [v6 setSupplementaryViewProvider:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)displayCitySelectorData
{
  v3 = [(CitySelectorDataSource *)self snapshot];

  if (v3)
  {
    v4 = [(CitySelectorDataSource *)self dataSource];
    v5 = [(CitySelectorDataSource *)self snapshot];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100AB8374;
    v6[3] = &unk_101661B18;
    v6[4] = self;
    [v4 applySnapshot:v5 animatingDifferences:0 completion:v6];
  }
}

- (CitySelectorDataSource)initWithCollectionView:(id)a3 result:(id)a4 sections:(id)a5 routingDelegate:(id)a6 usingCollectionFetcher:(id)a7 usingBatchSize:(unint64_t)a8 selectedGuideLocation:(id)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a9;
  v36.receiver = self;
  v36.super_class = CitySelectorDataSource;
  v20 = [(DataSource *)&v36 initWithCollectionView:v14 updateLocation:0];
  v21 = v20;
  if (v20)
  {
    [(DataSource *)v20 collectionView];
    v22 = v34 = v16;
    [v22 setDelegate:v21];

    objc_storeStrong(&v21->_result, a4);
    objc_storeStrong(&v21->_sections, a5);
    objc_storeWeak(&v21->_routingDelegate, v17);
    v23 = [(DataSource *)v21 collectionView];
    v24 = objc_opt_class();
    v25 = +[MKPlaceCompactCollectionCell reuseIdentifier];
    [v23 registerClass:v24 forCellWithReuseIdentifier:v25];

    v26 = objc_opt_class();
    v27 = +[MKCollectionBatchCell reuseIdentifier];
    [v14 registerClass:v26 forCellWithReuseIdentifier:v27];

    v28 = [(DataSource *)v21 collectionView];
    v29 = objc_opt_class();
    v30 = +[GuidesGenericSectionHeader reuseIdentifier];
    v31 = +[GuidesGenericSectionHeader reuseIdentifier];
    [v28 registerClass:v29 forSupplementaryViewOfKind:v30 withReuseIdentifier:v31];

    v16 = v34;
    v32 = [[MKPlaceCompactCollectionsLogicController alloc] initWithGuideLocationsResult:v15 context:0 usingCollectionFetcher:v18 usingGuideConsumer:v21 usingBatchSize:a8 selectedGuideLocation:v19];
    [(CitySelectorDataSource *)v21 setLogicController:v32];

    [(CitySelectorDataSource *)v21 initializeDataSource];
    [(CitySelectorDataSource *)v21 prepareSnapshot];
  }

  return v21;
}

@end