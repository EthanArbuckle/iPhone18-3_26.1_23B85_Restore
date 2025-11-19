@interface GuidesHomeDataSource
- (BOOL)isFetchingData;
- (GuidesHomeAnalytics)analyticsManager;
- (GuidesHomeDataSource)initWithCollectionView:(id)a3 result:(id)a4 routingDelegate:(id)a5 apiController:(id)a6 analyticsManager:(id)a7;
- (GuidesHomeRoutingDelegate)routingDelegate;
- (UIEdgeInsets)actualContentInsets;
- (id)featuredGuideViewModel;
- (id)filterViewModels;
- (id)sectionAtIndex:(unint64_t)a3;
- (int64_t)filterSectionIndex;
- (unint64_t)guidesListCountAtIndex:(unint64_t)a3;
- (unint64_t)publishersListCountAtIndex:(unint64_t)a3;
- (void)cleanupGuidesHomeData;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)curatedCollectionSyncManagerDidUpdateSyncedCollections:(id)a3;
- (void)dealloc;
- (void)didChangeContentYOffset:(double)a3;
- (void)didRouteToConceptFilter:(id)a3 atIndexPath:(id)a4;
- (void)displayGuidesHomeByReloadingData;
- (void)displayGuidesHomeData;
- (void)filterDataFetchFinished;
- (void)filterDataFetchStarted;
- (void)initializeDataSource;
- (void)initializeSupplementaryViewProvider;
- (void)prepareSnapshot;
- (void)routeToCuratedCollectionAtIndex:(id)a3 inSection:(id)a4;
- (void)shouldConsumeBatch:(BOOL)a3 fetchedBatch:(id)a4;
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

- (void)shouldConsumeBatch:(BOOL)a3 fetchedBatch:(id)a4
{
  v5 = a4;
  v6 = [(GuidesHomeDataSource *)self dataSource];
  v7 = [v6 snapshot];

  v8 = [(GuidesHomeDataSource *)self logicController];
  [v8 appendBatchOfCollections:v5];

  v9 = [(GuidesHomeDataSource *)self logicController];
  v10 = [v9 allSections];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10077F6C8;
  v13[3] = &unk_101628BD8;
  v14 = v7;
  v15 = self;
  v16 = v5;
  v11 = v5;
  v12 = v7;
  [v10 enumerateObjectsUsingBlock:v13];
}

- (void)curatedCollectionSyncManagerDidUpdateSyncedCollections:(id)a3
{
  v4 = objc_alloc_init(NSMutableArray);
  v5 = [(GuidesHomeDataSource *)self logicController];
  v6 = [v5 allSections];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10077F944;
  v12 = &unk_101628B60;
  v7 = v4;
  v13 = v7;
  v14 = self;
  [v6 enumerateObjectsUsingBlock:&v9];

  if ([v7 count])
  {
    v8 = [(GuidesHomeDataSource *)self snapshot];
    [v8 reconfigureItemsWithIdentifiers:v7];
    [(GuidesHomeDataSource *)self setSnapshot:v8];
    [(GuidesHomeDataSource *)self displayGuidesHomeData];
  }
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v6 = a5;
  v7 = [(GuidesHomeDataSource *)self logicController];
  [v7 willDisplayCellAtIndexpath:v6];
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectItemAtIndexPath:v6 animated:0];
  v7 = [(GuidesHomeDataSource *)self logicController];
  v8 = [v7 sectionAtIndex:{objc_msgSend(v6, "section")}];

  if (!v8)
  {
    goto LABEL_15;
  }

  [v8 configuration];

  if (v29 <= 2)
  {
    if (v29 == 1)
    {
      v16 = [(GuidesHomeDataSource *)self logicController];
      v17 = [v16 selectedFilterIndexPath];
      v18 = [v17 isEqual:v6];

      v19 = [(GuidesHomeDataSource *)self logicController];
      v20 = v19;
      if (v18)
      {
        v21 = [v19 routeToSelectedGuidesHomeFilterAtIndexPath:0];

        [(GuidesHomeDataSource *)self didRouteToConceptFilter:0 atIndexPath:0];
      }

      else
      {
        v26 = [v19 routeToSelectedGuidesHomeFilterAtIndexPath:v6];

        v27 = [v26 conceptFilter];
        [(GuidesHomeDataSource *)self didRouteToConceptFilter:v27 atIndexPath:v6];
      }

      goto LABEL_15;
    }

    if (v29 != 2)
    {
      goto LABEL_15;
    }

    v9 = [(GuidesHomeDataSource *)self logicController];
    v10 = [v9 itemsForSectionAtIndex:{objc_msgSend(v6, "section")}];

    v11 = [v10 objectAtIndex:{objc_msgSend(v6, "item")}];
    v12 = [v11 guideLocation];

    v13 = [(GuidesHomeDataSource *)self analyticsManager];
    v14 = [v12 guideLocationIdentifier];
    [v13 guidesHomeTappedCityGuide:v14 atIndex:objc_msgSend(v6 carouselIndex:{"item"), objc_msgSend(v6, "section")}];

    v15 = [(GuidesHomeDataSource *)self routingDelegate];
    [v15 routeToGuideLocation:v12];
LABEL_14:

    goto LABEL_15;
  }

  if ((v29 - 3) < 2)
  {
LABEL_6:
    [(GuidesHomeDataSource *)self routeToCuratedCollectionAtIndex:v6 inSection:v8];
    goto LABEL_15;
  }

  if (v29 == 5)
  {
    v22 = [(GuidesHomeDataSource *)self logicController];
    v10 = [v22 itemsForSectionAtIndex:{objc_msgSend(v6, "section")}];

    v23 = [v10 objectAtIndex:{objc_msgSend(v6, "item")}];
    v12 = [v23 publisher];

    v24 = [(GuidesHomeDataSource *)self analyticsManager];
    v25 = [v12 identifier];
    [v24 guidesHomeTappedPublisher:v25 atIndex:objc_msgSend(v6 carouselIndex:{"item"), objc_msgSend(v6, "section")}];

    v15 = [(GuidesHomeDataSource *)self routingDelegate];
    [v15 routeToPublisher:v12];
    goto LABEL_14;
  }

  if (v29 == 6)
  {
    goto LABEL_6;
  }

LABEL_15:
}

- (void)didRouteToConceptFilter:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(GuidesHomeDataSource *)self isFetchingData])
  {
    v8 = [(GuidesHomeDataSource *)self apiController];
    [v8 cancelFetchingGuideHome];
  }

  objc_initWeak(&location, self);
  v9 = [(GuidesHomeDataSource *)self apiController];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10077FF3C;
  v16 = &unk_101661B98;
  objc_copyWeak(&v17, &location);
  [v9 fetchGuidesHomeViewFilteredBy:v6 onCompletion:&v13];

  [(GuidesHomeDataSource *)self filterDataFetchStarted:v13];
  if (v7)
  {
    v10 = [(GuidesHomeDataSource *)self analyticsManager];
    v11 = [(GuidesHomeDataSource *)self logicController];
    v12 = [v11 filterValueAtIndex:{objc_msgSend(v7, "item")}];
    [v10 guideHomeTappedFilter:v12 atIndex:objc_msgSend(v7 carouselIndex:{"item"), objc_msgSend(v7, "section")}];
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (unint64_t)publishersListCountAtIndex:(unint64_t)a3
{
  v4 = [(GuidesHomeDataSource *)self logicController];
  v5 = [v4 itemsForSectionAtIndex:a3];
  v6 = [v5 count];

  return v6;
}

- (unint64_t)guidesListCountAtIndex:(unint64_t)a3
{
  v4 = [(GuidesHomeDataSource *)self logicController];
  v5 = [v4 itemsForSectionAtIndex:a3];
  v6 = [v5 count];

  return v6;
}

- (id)featuredGuideViewModel
{
  v2 = [(GuidesHomeDataSource *)self logicController];
  v3 = [v2 itemsForSectionAtIndex:0];
  v4 = [v3 firstObject];

  return v4;
}

- (id)filterViewModels
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1007801C8;
  v12 = sub_1007801D8;
  v13 = 0;
  v3 = [(GuidesHomeDataSource *)self logicController];
  v4 = [v3 allSections];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1007801E0;
  v7[3] = &unk_101628BB0;
  v7[4] = self;
  v7[5] = &v8;
  [v4 enumerateObjectsUsingBlock:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)sectionAtIndex:(unint64_t)a3
{
  v4 = [(GuidesHomeDataSource *)self logicController];
  v5 = [v4 sectionAtIndex:a3];

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

- (void)routeToCuratedCollectionAtIndex:(id)a3 inSection:(id)a4
{
  v22 = a3;
  v6 = a4;
  v7 = [(GuidesHomeDataSource *)self logicController];
  v8 = [v7 itemsForSectionAtIndex:{objc_msgSend(v22, "section")}];

  v9 = [v8 objectAtIndex:{objc_msgSend(v22, "item")}];
  v10 = [v9 placeCollection];

  v11 = +[CuratedCollectionSyncManager sharedManager];
  v12 = [v11 collectionIsSaved:v10];

  if ([v6 contentType] == 1)
  {
    v13 = [(GuidesHomeDataSource *)self analyticsManager];
    v14 = [v10 collectionIdentifier];
    v15 = [v10 publisher];
    v16 = [v15 identifier];
    [v13 guidesHomeTappedEditorPickedGuide:v14 publisherId:v16 isCurrentlySaved:v12 atIndex:objc_msgSend(v22 carouselIndex:{"item"), objc_msgSend(v22, "section")}];
  }

  else if ([v6 contentType] == 2)
  {
    v13 = [(GuidesHomeDataSource *)self analyticsManager];
    v14 = [v10 collectionIdentifier];
    v15 = [v10 publisher];
    v16 = [v15 identifier];
    [v13 guidesHomeTappedTemporalGuide:v14 publisherId:v16 isCurrentlySaved:v12 atIndex:objc_msgSend(v22 carouselIndex:{"item"), objc_msgSend(v22, "section")}];
  }

  else if ([v6 kind] == 4)
  {
    v13 = [(GuidesHomeDataSource *)self analyticsManager];
    v14 = [v10 collectionIdentifier];
    v15 = [v10 publisher];
    v16 = [v15 identifier];
    [v13 guidesHomeTappedLatestGuide:v14 publisherId:v16 isCurrentlySaved:v12 atIndex:objc_msgSend(v22 carouselIndex:{"item"), objc_msgSend(v22, "section")}];
  }

  else
  {
    if ([v6 kind] != 6)
    {
      goto LABEL_10;
    }

    v17 = [(GuidesHomeDataSource *)self logicController];
    v18 = [(GuidesHomeDataSource *)self logicController];
    v19 = [v18 selectedFilterIndexPath];
    v13 = [v17 filterValueAtIndex:{objc_msgSend(v19, "item")}];

    v14 = [(GuidesHomeDataSource *)self analyticsManager];
    v15 = [v10 collectionIdentifier];
    v16 = [v10 publisher];
    v20 = [v16 identifier];
    [v14 guidesHomeTappedFilteredGuide:v15 publisherId:v20 isCurrentlySaved:v12 atIndex:objc_msgSend(v22 carouselIndex:"item") filterValue:{objc_msgSend(v22, "section"), v13}];
  }

LABEL_10:
  v21 = [(GuidesHomeDataSource *)self routingDelegate];
  [v21 routeToCuratedCollection:v10];
}

- (int64_t)filterSectionIndex
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  v2 = [(GuidesHomeDataSource *)self logicController];
  v3 = [v2 allSections];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1007807E8;
  v6[3] = &unk_101628B88;
  v6[4] = &v7;
  [v3 enumerateObjectsUsingBlock:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)updateContentInset
{
  if ([(GuidesHomeDataSource *)self isFetchingData])
  {
    v3 = [(DataSource *)self collectionView];
    [v3 contentInset];
    [(GuidesHomeDataSource *)self setActualContentInsets:?];

    if ([(GuidesHomeDataSource *)self filterSectionIndex]== 0x7FFFFFFFFFFFFFFFLL)
    {
      return;
    }

    v4 = [(DataSource *)self collectionView];
    v5 = [v4 collectionViewLayout];
    [v5 _layoutFrameForSection:{-[GuidesHomeDataSource filterSectionIndex](self, "filterSectionIndex")}];
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
    v17 = [(DataSource *)self collectionView];
    [v17 bounds];
    v18 = CGRectGetMaxY(v37);

    if (v16 >= v18)
    {
      return;
    }

    v19 = [(DataSource *)self collectionView];
    [v19 contentInset];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v28 = [(DataSource *)self collectionView];
    [v28 bounds];
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

  v34 = [(DataSource *)self collectionView];
  [v34 setContentInset:{v21, v23, v29, v27}];
}

- (void)filterDataFetchFinished
{
  v3 = [(GuidesHomeDataSource *)self logicController];
  [v3 selectedFilterIndexPath];

  v4 = [(GuidesHomeDataSource *)self logicController];
  v5 = [v4 selectedFilterIndexPath];

  if (!v5)
  {
    v6 = [(GuidesHomeDataSource *)self apiController];
    [v6 cancelFetchingGuideHome];
  }

  v7 = [(GuidesHomeDataSource *)self logicController];
  v8 = [(GuidesHomeDataSource *)self apiController];
  v9 = [v8 guideHomeFilteredCollectionResults];
  v10 = [(GuidesHomeDataSource *)self apiController];
  v11 = [v10 guideHomeFilteredCollectionResultsIds];
  [v7 updateFilteredCollectionsFromResults:v9 collectionIds:v11];

  [(GuidesHomeDataSource *)self prepareSnapshot];
  [(GuidesHomeDataSource *)self displayGuidesHomeByReloadingData];
  [(GuidesHomeDataSource *)self updateContentInset];
  v12 = [(GuidesHomeDataSource *)self logicController];
  v13 = [v12 selectedFilterIndexPath];

  if (v13)
  {
    v16 = [(GuidesHomeDataSource *)self analyticsManager];
    v14 = [(GuidesHomeDataSource *)self apiController];
    v15 = [v14 guideHomeFilteredCollectionResultsIds];
    [v16 guidesHomeDisplayFilteredGuideList:v15];
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
  v2 = [(GuidesHomeDataSource *)self apiController];
  v3 = [v2 currentState] == 1;

  return v3;
}

- (void)prepareSnapshot
{
  v3 = objc_alloc_init(NSDiffableDataSourceSnapshot);
  v4 = [(GuidesHomeDataSource *)self logicController];
  v5 = [v4 allSections];

  [v3 appendSectionsWithIdentifiers:v5];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100780D5C;
  v10 = &unk_101628B60;
  v11 = v3;
  v12 = self;
  v6 = v3;
  [v5 enumerateObjectsUsingBlock:&v7];
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
  v4 = [(DataSource *)self collectionView];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1007813F0;
  v6[3] = &unk_101628B10;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  v5 = [v3 initWithCollectionView:v4 cellProvider:v6];
  [(GuidesHomeDataSource *)self setDataSource:v5];

  [(GuidesHomeDataSource *)self initializeSupplementaryViewProvider];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)didChangeContentYOffset:(double)a3
{
  v5 = [(GuidesHomeDataSource *)self headerCell];

  if (v5)
  {
    v6 = [(GuidesHomeDataSource *)self headerCell];
    [v6 didChangeContentYOffset:a3];
  }
}

- (void)displayGuidesHomeData
{
  v3 = [(GuidesHomeDataSource *)self snapshot];

  if (v3)
  {
    self->_currentState = 1;
    v4 = [(GuidesHomeDataSource *)self dataSource];
    v5 = [(GuidesHomeDataSource *)self snapshot];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100781944;
    v6[3] = &unk_101661B18;
    v6[4] = self;
    [v4 applySnapshot:v5 animatingDifferences:0 completion:v6];
  }
}

- (void)displayGuidesHomeByReloadingData
{
  v3 = [(GuidesHomeDataSource *)self snapshot];

  if (v3)
  {
    self->_currentState = 1;
    v4 = [(GuidesHomeDataSource *)self dataSource];
    v5 = [(GuidesHomeDataSource *)self snapshot];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100781A34;
    v6[3] = &unk_101661B18;
    v6[4] = self;
    [v4 applySnapshotUsingReloadData:v5 completion:v6];
  }
}

- (void)dealloc
{
  [(GuidesHomeDataSource *)self cleanupGuidesHomeData];
  v3.receiver = self;
  v3.super_class = GuidesHomeDataSource;
  [(GuidesHomeDataSource *)&v3 dealloc];
}

- (GuidesHomeDataSource)initWithCollectionView:(id)a3 result:(id)a4 routingDelegate:(id)a5 apiController:(id)a6 analyticsManager:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v53.receiver = self;
  v53.super_class = GuidesHomeDataSource;
  v17 = [(DataSource *)&v53 initWithCollectionView:v12 updateLocation:0];
  v18 = v17;
  if (v17)
  {
    v19 = [(DataSource *)v17 collectionView];
    [v19 setDelegate:v18];

    objc_storeStrong(&v18->_result, a4);
    objc_storeWeak(&v18->_routingDelegate, v14);
    objc_storeStrong(&v18->_apiController, a6);
    objc_storeWeak(&v18->_analyticsManager, v16);
    v20 = [(DataSource *)v18 collectionView];
    v21 = objc_opt_class();
    v22 = +[GuidesHomeHeaderCell reuseIdentifier];
    [v20 registerClass:v21 forCellWithReuseIdentifier:v22];

    v23 = [(DataSource *)v18 collectionView];
    v24 = objc_opt_class();
    v25 = +[MKPlaceCompactCollectionCell reuseIdentifier];
    [v23 registerClass:v24 forCellWithReuseIdentifier:v25];

    v26 = [(DataSource *)v18 collectionView];
    v27 = objc_opt_class();
    v28 = +[MKPlaceCollectionCell reuseIdentifier];
    [v26 registerClass:v27 forCellWithReuseIdentifier:v28];

    v29 = [(DataSource *)v18 collectionView];
    v30 = objc_opt_class();
    v31 = +[PlaceCollectionListCell reuseIdentifier];
    [v29 registerClass:v30 forCellWithReuseIdentifier:v31];

    v32 = [(DataSource *)v18 collectionView];
    v33 = objc_opt_class();
    v34 = +[CollectionsFilterCell reuseIdentifier];
    [v32 registerClass:v33 forCellWithReuseIdentifier:v34];

    v35 = [(DataSource *)v18 collectionView];
    v36 = objc_opt_class();
    v37 = +[MKCollectionBatchCell reuseIdentifier];
    [v35 registerClass:v36 forCellWithReuseIdentifier:v37];

    v38 = [(DataSource *)v18 collectionView];
    v39 = objc_opt_class();
    v40 = +[TwoLineCollectionViewListCell identifier];
    [v38 registerClass:v39 forCellWithReuseIdentifier:v40];

    v41 = [(DataSource *)v18 collectionView];
    v42 = objc_opt_class();
    v43 = +[GuidesGenericSectionHeader reuseIdentifier];
    v44 = +[GuidesGenericSectionHeader reuseIdentifier];
    [v41 registerClass:v42 forSupplementaryViewOfKind:v43 withReuseIdentifier:v44];

    v45 = [GuidesHomeLogicController alloc];
    [v12 frame];
    v47 = v46;
    v48 = [(GuidesHomeDataSource *)v18 apiController];
    v49 = [v15 guideLocation];
    v50 = [(GuidesHomeLogicController *)v45 initWithGuidesHomeResult:v13 maxWidth:v12 traitEnvironment:v48 guideFetcher:v18 guideConsumer:v49 guideLocation:v47];
    [(GuidesHomeDataSource *)v18 setLogicController:v50];

    [(GuidesHomeDataSource *)v18 initializeDataSource];
    [(GuidesHomeDataSource *)v18 prepareSnapshot];
    v51 = +[CuratedCollectionSyncManager sharedManager];
    [v51 addObserver:v18];
  }

  return v18;
}

@end