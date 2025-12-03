@interface AllCollectionsAPIController
- (AllCollectionsAPIController)initWithOnStateChangeHandler:(id)handler usingTraits:(id)traits;
- (id)placeCollectionsFromLastBatch;
- (void)cancelFetchingAllCollections;
- (void)fetchAllCollectionsViewForKeywordFilter:(id)filter addressFilter:(id)addressFilter onCompletion:(id)completion;
- (void)fetchGuidesWithIdentifiers:(id)identifiers completion:(id)completion;
@end

@implementation AllCollectionsAPIController

- (void)fetchGuidesWithIdentifiers:(id)identifiers completion:(id)completion
{
  identifiersCopy = identifiers;
  completionCopy = completion;
  v8 = +[MKMapService sharedService];
  traits = [(AllCollectionsAPIController *)self traits];
  v10 = [v8 ticketForCuratedCollections:identifiersCopy isBatchLookup:1 traits:traits];
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

  batchTicket = [(AllCollectionsAPIController *)self batchTicket];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1005D318C;
  v17[3] = &unk_10163C080;
  objc_copyWeak(v19, &location);
  v16 = completionCopy;
  v18 = v16;
  v19[1] = v12;
  [batchTicket submitWithHandler:v17 networkActivity:&stru_101623190];

  objc_destroyWeak(v19);
  objc_destroyWeak(&location);
}

- (void)cancelFetchingAllCollections
{
  ticket = [(AllCollectionsAPIController *)self ticket];
  [ticket cancel];

  batchTicket = [(AllCollectionsAPIController *)self batchTicket];
  [batchTicket cancel];
}

- (void)fetchAllCollectionsViewForKeywordFilter:(id)filter addressFilter:(id)addressFilter onCompletion:(id)completion
{
  filterCopy = filter;
  addressFilterCopy = addressFilter;
  completionCopy = completion;
  allCollectionViewFilters = [(AllCollectionsAPIController *)self allCollectionViewFilters];
  v12 = [allCollectionViewFilters count];

  if (!v12 || filterCopy | addressFilterCopy || [(AllCollectionsAPIController *)self state]== 3)
  {
    stateHandler = [(AllCollectionsAPIController *)self stateHandler];
    stateHandler[2](stateHandler, [(AllCollectionsAPIController *)self state], 1);

    [(AllCollectionsAPIController *)self setState:1];
    v14 = +[MKMapService sharedService];
    batchSize = [(AllCollectionsAPIController *)self batchSize];
    traits = [(AllCollectionsAPIController *)self traits];
    v17 = [v14 ticketForAllCollectionViewWithBatchSize:batchSize keywordFilter:filterCopy addressFilter:addressFilterCopy withTraits:traits];
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

    ticket = [(AllCollectionsAPIController *)self ticket];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1005D3644;
    v23[3] = &unk_101623150;
    objc_copyWeak(v25, &location);
    v25[1] = v19;
    v24 = completionCopy;
    [ticket submitWithHandler:v23 networkActivity:&stru_101623170];

    objc_destroyWeak(v25);
    objc_destroyWeak(&location);
  }
}

- (id)placeCollectionsFromLastBatch
{
  placeCollections = [(AllCollectionsAPIController *)self placeCollections];
  v3 = [placeCollections copy];

  return v3;
}

- (AllCollectionsAPIController)initWithOnStateChangeHandler:(id)handler usingTraits:(id)traits
{
  handlerCopy = handler;
  traitsCopy = traits;
  v12.receiver = self;
  v12.super_class = AllCollectionsAPIController;
  v8 = [(AllCollectionsAPIController *)&v12 init];
  if (v8)
  {
    v9 = objc_retainBlock(handlerCopy);
    stateHandler = v8->_stateHandler;
    v8->_stateHandler = v9;

    objc_storeStrong(&v8->_traits, traits);
    v8->_state = 0;
  }

  return v8;
}

@end