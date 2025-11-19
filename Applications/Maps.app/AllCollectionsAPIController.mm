@interface AllCollectionsAPIController
- (AllCollectionsAPIController)initWithOnStateChangeHandler:(id)a3 usingTraits:(id)a4;
- (id)placeCollectionsFromLastBatch;
- (void)cancelFetchingAllCollections;
- (void)fetchAllCollectionsViewForKeywordFilter:(id)a3 addressFilter:(id)a4 onCompletion:(id)a5;
- (void)fetchGuidesWithIdentifiers:(id)a3 completion:(id)a4;
@end

@implementation AllCollectionsAPIController

- (void)fetchGuidesWithIdentifiers:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[MKMapService sharedService];
  v9 = [(AllCollectionsAPIController *)self traits];
  v10 = [v8 ticketForCuratedCollections:v6 isBatchLookup:1 traits:v9];
  [(AllCollectionsAPIController *)self setBatchTicket:v10];

  objc_initWeak(&location, self);
  v11 = sub_1005D3138();
  v12 = os_signpost_id_generate(v11);

  v13 = sub_1005D3138();
  v14 = v13;
  if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "FetchingAllCollectionsViewBatch", "", buf, 2u);
  }

  v15 = [(AllCollectionsAPIController *)self batchTicket];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1005D318C;
  v17[3] = &unk_10163C080;
  objc_copyWeak(v19, &location);
  v16 = v7;
  v18 = v16;
  v19[1] = v12;
  [v15 submitWithHandler:v17 networkActivity:&stru_101623190];

  objc_destroyWeak(v19);
  objc_destroyWeak(&location);
}

- (void)cancelFetchingAllCollections
{
  v3 = [(AllCollectionsAPIController *)self ticket];
  [v3 cancel];

  v4 = [(AllCollectionsAPIController *)self batchTicket];
  [v4 cancel];
}

- (void)fetchAllCollectionsViewForKeywordFilter:(id)a3 addressFilter:(id)a4 onCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(AllCollectionsAPIController *)self allCollectionViewFilters];
  v12 = [v11 count];

  if (!v12 || v8 | v9 || [(AllCollectionsAPIController *)self state]== 3)
  {
    v13 = [(AllCollectionsAPIController *)self stateHandler];
    v13[2](v13, [(AllCollectionsAPIController *)self state], 1);

    [(AllCollectionsAPIController *)self setState:1];
    v14 = +[MKMapService sharedService];
    v15 = [(AllCollectionsAPIController *)self batchSize];
    v16 = [(AllCollectionsAPIController *)self traits];
    v17 = [v14 ticketForAllCollectionViewWithBatchSize:v15 keywordFilter:v8 addressFilter:v9 withTraits:v16];
    [(AllCollectionsAPIController *)self setTicket:v17];

    objc_initWeak(&location, self);
    v18 = sub_1005D3138();
    v19 = os_signpost_id_generate(v18);

    v20 = sub_1005D3138();
    v21 = v20;
    if ((v19 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_BEGIN, v19, "FetchingAllCollectionsView", "", buf, 2u);
    }

    v22 = [(AllCollectionsAPIController *)self ticket];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1005D3644;
    v23[3] = &unk_101623150;
    objc_copyWeak(v25, &location);
    v25[1] = v19;
    v24 = v10;
    [v22 submitWithHandler:v23 networkActivity:&stru_101623170];

    objc_destroyWeak(v25);
    objc_destroyWeak(&location);
  }
}

- (id)placeCollectionsFromLastBatch
{
  v2 = [(AllCollectionsAPIController *)self placeCollections];
  v3 = [v2 copy];

  return v3;
}

- (AllCollectionsAPIController)initWithOnStateChangeHandler:(id)a3 usingTraits:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = AllCollectionsAPIController;
  v8 = [(AllCollectionsAPIController *)&v12 init];
  if (v8)
  {
    v9 = objc_retainBlock(v6);
    stateHandler = v8->_stateHandler;
    v8->_stateHandler = v9;

    objc_storeStrong(&v8->_traits, a4);
    v8->_state = 0;
  }

  return v8;
}

@end