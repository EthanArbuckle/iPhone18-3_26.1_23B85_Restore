@interface GuidesHomeAPIController
- (BOOL)isCuratedGuidesHome;
- (BOOL)isFilteredGuidesHome;
- (GuidesHomeAPIController)initWithGuideLocation:(id)a3 onStateChangeHandler:(id)a4 traits:(id)a5;
- (id)guideHomeSingleCollectionIdentifier;
- (id)guideLocationName;
- (void)cancelFetchingGuideHome;
- (void)clearFilteredData;
- (void)fetchGuidesHomeViewFilteredBy:(id)a3 onCompletion:(id)a4;
- (void)fetchGuidesWithIdentifiers:(id)a3 completion:(id)a4;
- (void)initializeSingleCollectionFromResponseIfApplicable;
- (void)refreshWithGuideLocation:(id)a3;
@end

@implementation GuidesHomeAPIController

- (id)guideHomeSingleCollectionIdentifier
{
  v3 = [(GuidesHomeAPIController *)self singlePlaceCollection];

  if (v3)
  {
    v4 = [MKMapItemIdentifier alloc];
    v5 = [(GuidesHomeAPIController *)self singlePlaceCollection];
    v6 = [v5 collectionIdentifier];
    v7 = [v4 initWithGEOMapItemIdentifier:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isFilteredGuidesHome
{
  v2 = [(GuidesHomeAPIController *)self filter];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isCuratedGuidesHome
{
  v2 = [(GuidesHomeAPIController *)self guideHomeResult];
  v3 = [v2 featuredGuidesSection];
  v4 = [v3 featuredGuides];
  v5 = [v4 firstObject];
  v6 = v5 != 0;

  return v6;
}

- (id)guideLocationName
{
  v3 = [(GuidesHomeAPIController *)self guideLocation];
  v4 = [v3 title];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = [(GuidesHomeAPIController *)self guideHomeViewResult];
    v7 = [(GuidesHomeAPIController *)self guideLocation];
    v5 = [v6 guideLocationName:v7];
  }

  return v5;
}

- (void)initializeSingleCollectionFromResponseIfApplicable
{
  v3 = [(GuidesHomeAPIController *)self guideHomeResult];
  v4 = [v3 repeatableSections];
  v5 = [v4 count];

  if (v5 <= 1)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = [(GuidesHomeAPIController *)self guideHomeResult];
    v8 = [v7 repeatableSections];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1005B44A0;
    v14[3] = &unk_101622CC0;
    v9 = v6;
    v15 = v9;
    [v8 enumerateObjectsUsingBlock:v14];

    v10 = [v9 firstObject];
    if ([v9 count] == 1)
    {
      v11 = [v10 collection];

      if (v11)
      {
        v12 = [v10 collection];
        singlePlaceCollection = self->_singlePlaceCollection;
        self->_singlePlaceCollection = v12;
      }
    }
  }
}

- (void)clearFilteredData
{
  [(GuidesHomeAPIController *)self setFilteredCollections:0];

  [(GuidesHomeAPIController *)self setFilteredCollectionsIds:0];
}

- (void)fetchGuidesWithIdentifiers:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[MKMapService sharedService];
  v9 = [(GuidesHomeAPIController *)self traits];
  v10 = [v8 ticketForCuratedCollections:v6 isBatchLookup:1 traits:v9];
  [(GuidesHomeAPIController *)self setBatchTicket:v10];

  objc_initWeak(&location, self);
  v11 = sub_1005B475C();
  v12 = os_signpost_id_generate(v11);

  v13 = sub_1005B475C();
  v14 = v13;
  if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "FetchingGuidesHomeViewBatch", "", buf, 2u);
  }

  v15 = [(GuidesHomeAPIController *)self batchTicket];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1005B47B0;
  v17[3] = &unk_10163C080;
  v19[1] = v12;
  objc_copyWeak(v19, &location);
  v16 = v7;
  v18 = v16;
  [v15 submitWithHandler:v17 networkActivity:&stru_101622C98];

  objc_destroyWeak(v19);
  objc_destroyWeak(&location);
}

- (void)fetchGuidesHomeViewFilteredBy:(id)a3 onCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(GuidesHomeAPIController *)self setFilter:v6];
  if (v6 || ([(GuidesHomeAPIController *)self guideHomeResult], v18 = objc_claimAutoreleasedReturnValue(), v18, !v18))
  {
    v8 = [(GuidesHomeAPIController *)self stateHandler];
    v8[2](v8, [(GuidesHomeAPIController *)self state], 1);

    [(GuidesHomeAPIController *)self setState:1];
    v9 = +[MKMapService sharedService];
    v10 = [(GuidesHomeAPIController *)self guideLocation];
    v11 = [(GuidesHomeAPIController *)self traits];
    v12 = [v9 ticketForGuideHomeWithFilter:v6 guideLocation:v10 withTraits:v11];
    [(GuidesHomeAPIController *)self setTicket:v12];

    objc_initWeak(&location, self);
    v13 = sub_1005B475C();
    v14 = os_signpost_id_generate(v13);

    v15 = sub_1005B475C();
    v16 = v15;
    if ((v14 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "FetchingGuidesHomeView", "", buf, 2u);
    }

    v17 = [(GuidesHomeAPIController *)self ticket];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1005B4BE8;
    v20[3] = &unk_101622C78;
    v23[1] = v14;
    objc_copyWeak(v23, &location);
    v21 = v6;
    v22 = v7;
    [v17 submitWithHandler:v20 networkActivity:0];

    objc_destroyWeak(v23);
    objc_destroyWeak(&location);
  }

  else
  {
    [(GuidesHomeAPIController *)self clearFilteredData];
    v19 = [(GuidesHomeAPIController *)self stateHandler];
    v19[2](v19, [(GuidesHomeAPIController *)self state], 2);

    [(GuidesHomeAPIController *)self setState:2];
    v7[2](v7);
  }
}

- (void)refreshWithGuideLocation:(id)a3
{
  objc_storeStrong(&self->_guideLocation, a3);
  v5 = a3;
  guideHomeResult = self->_guideHomeResult;
  self->_guideHomeResult = 0;

  [(GuidesHomeAPIController *)self cancelFetchingGuideHome];
}

- (void)cancelFetchingGuideHome
{
  [(GuidesHomeAPIController *)self clearFilteredData];
  v3 = [(GuidesHomeAPIController *)self batchTicket];
  [v3 cancel];

  v4 = [(GuidesHomeAPIController *)self ticket];
  [v4 cancel];
}

- (GuidesHomeAPIController)initWithGuideLocation:(id)a3 onStateChangeHandler:(id)a4 traits:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = GuidesHomeAPIController;
  v12 = [(GuidesHomeAPIController *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_guideLocation, a3);
    v14 = objc_retainBlock(v10);
    stateHandler = v13->_stateHandler;
    v13->_stateHandler = v14;

    objc_storeStrong(&v13->_traits, a5);
    v13->_state = 0;
  }

  return v13;
}

@end