@interface GuidesHomeAPIController
- (BOOL)isCuratedGuidesHome;
- (BOOL)isFilteredGuidesHome;
- (GuidesHomeAPIController)initWithGuideLocation:(id)location onStateChangeHandler:(id)handler traits:(id)traits;
- (id)guideHomeSingleCollectionIdentifier;
- (id)guideLocationName;
- (void)cancelFetchingGuideHome;
- (void)clearFilteredData;
- (void)fetchGuidesHomeViewFilteredBy:(id)by onCompletion:(id)completion;
- (void)fetchGuidesWithIdentifiers:(id)identifiers completion:(id)completion;
- (void)initializeSingleCollectionFromResponseIfApplicable;
- (void)refreshWithGuideLocation:(id)location;
@end

@implementation GuidesHomeAPIController

- (id)guideHomeSingleCollectionIdentifier
{
  singlePlaceCollection = [(GuidesHomeAPIController *)self singlePlaceCollection];

  if (singlePlaceCollection)
  {
    v4 = [MKMapItemIdentifier alloc];
    singlePlaceCollection2 = [(GuidesHomeAPIController *)self singlePlaceCollection];
    collectionIdentifier = [singlePlaceCollection2 collectionIdentifier];
    v7 = [v4 initWithGEOMapItemIdentifier:collectionIdentifier];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isFilteredGuidesHome
{
  filter = [(GuidesHomeAPIController *)self filter];
  v3 = filter != 0;

  return v3;
}

- (BOOL)isCuratedGuidesHome
{
  guideHomeResult = [(GuidesHomeAPIController *)self guideHomeResult];
  featuredGuidesSection = [guideHomeResult featuredGuidesSection];
  featuredGuides = [featuredGuidesSection featuredGuides];
  firstObject = [featuredGuides firstObject];
  v6 = firstObject != 0;

  return v6;
}

- (id)guideLocationName
{
  guideLocation = [(GuidesHomeAPIController *)self guideLocation];
  title = [guideLocation title];

  if (title)
  {
    v5 = title;
  }

  else
  {
    guideHomeViewResult = [(GuidesHomeAPIController *)self guideHomeViewResult];
    guideLocation2 = [(GuidesHomeAPIController *)self guideLocation];
    v5 = [guideHomeViewResult guideLocationName:guideLocation2];
  }

  return v5;
}

- (void)initializeSingleCollectionFromResponseIfApplicable
{
  guideHomeResult = [(GuidesHomeAPIController *)self guideHomeResult];
  repeatableSections = [guideHomeResult repeatableSections];
  v5 = [repeatableSections count];

  if (v5 <= 1)
  {
    v6 = objc_alloc_init(NSMutableArray);
    guideHomeResult2 = [(GuidesHomeAPIController *)self guideHomeResult];
    repeatableSections2 = [guideHomeResult2 repeatableSections];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1005B44A0;
    v14[3] = &unk_101622CC0;
    v9 = v6;
    v15 = v9;
    [repeatableSections2 enumerateObjectsUsingBlock:v14];

    firstObject = [v9 firstObject];
    if ([v9 count] == 1)
    {
      collection = [firstObject collection];

      if (collection)
      {
        collection2 = [firstObject collection];
        singlePlaceCollection = self->_singlePlaceCollection;
        self->_singlePlaceCollection = collection2;
      }
    }
  }
}

- (void)clearFilteredData
{
  [(GuidesHomeAPIController *)self setFilteredCollections:0];

  [(GuidesHomeAPIController *)self setFilteredCollectionsIds:0];
}

- (void)fetchGuidesWithIdentifiers:(id)identifiers completion:(id)completion
{
  identifiersCopy = identifiers;
  completionCopy = completion;
  v8 = +[MKMapService sharedService];
  traits = [(GuidesHomeAPIController *)self traits];
  v10 = [v8 ticketForCuratedCollections:identifiersCopy isBatchLookup:1 traits:traits];
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

  batchTicket = [(GuidesHomeAPIController *)self batchTicket];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1005B47B0;
  v17[3] = &unk_10163C080;
  v19[1] = v12;
  objc_copyWeak(v19, &location);
  v16 = completionCopy;
  v18 = v16;
  [batchTicket submitWithHandler:v17 networkActivity:&stru_101622C98];

  objc_destroyWeak(v19);
  objc_destroyWeak(&location);
}

- (void)fetchGuidesHomeViewFilteredBy:(id)by onCompletion:(id)completion
{
  byCopy = by;
  completionCopy = completion;
  [(GuidesHomeAPIController *)self setFilter:byCopy];
  if (byCopy || ([(GuidesHomeAPIController *)self guideHomeResult], v18 = objc_claimAutoreleasedReturnValue(), v18, !v18))
  {
    stateHandler = [(GuidesHomeAPIController *)self stateHandler];
    stateHandler[2](stateHandler, [(GuidesHomeAPIController *)self state], 1);

    [(GuidesHomeAPIController *)self setState:1];
    v9 = +[MKMapService sharedService];
    guideLocation = [(GuidesHomeAPIController *)self guideLocation];
    traits = [(GuidesHomeAPIController *)self traits];
    v12 = [v9 ticketForGuideHomeWithFilter:byCopy guideLocation:guideLocation withTraits:traits];
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

    ticket = [(GuidesHomeAPIController *)self ticket];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1005B4BE8;
    v20[3] = &unk_101622C78;
    v23[1] = v14;
    objc_copyWeak(v23, &location);
    v21 = byCopy;
    v22 = completionCopy;
    [ticket submitWithHandler:v20 networkActivity:0];

    objc_destroyWeak(v23);
    objc_destroyWeak(&location);
  }

  else
  {
    [(GuidesHomeAPIController *)self clearFilteredData];
    stateHandler2 = [(GuidesHomeAPIController *)self stateHandler];
    stateHandler2[2](stateHandler2, [(GuidesHomeAPIController *)self state], 2);

    [(GuidesHomeAPIController *)self setState:2];
    completionCopy[2](completionCopy);
  }
}

- (void)refreshWithGuideLocation:(id)location
{
  objc_storeStrong(&self->_guideLocation, location);
  locationCopy = location;
  guideHomeResult = self->_guideHomeResult;
  self->_guideHomeResult = 0;

  [(GuidesHomeAPIController *)self cancelFetchingGuideHome];
}

- (void)cancelFetchingGuideHome
{
  [(GuidesHomeAPIController *)self clearFilteredData];
  batchTicket = [(GuidesHomeAPIController *)self batchTicket];
  [batchTicket cancel];

  ticket = [(GuidesHomeAPIController *)self ticket];
  [ticket cancel];
}

- (GuidesHomeAPIController)initWithGuideLocation:(id)location onStateChangeHandler:(id)handler traits:(id)traits
{
  locationCopy = location;
  handlerCopy = handler;
  traitsCopy = traits;
  v17.receiver = self;
  v17.super_class = GuidesHomeAPIController;
  v12 = [(GuidesHomeAPIController *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_guideLocation, location);
    v14 = objc_retainBlock(handlerCopy);
    stateHandler = v13->_stateHandler;
    v13->_stateHandler = v14;

    objc_storeStrong(&v13->_traits, traits);
    v13->_state = 0;
  }

  return v13;
}

@end