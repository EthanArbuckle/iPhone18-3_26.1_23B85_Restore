@interface PublisherAPIController
- (PublisherAPIController)initWithPublisherId:(id)id usingOnStateChangeHandler:(id)handler usingTraits:(id)traits;
- (id)placeCollectionsFromLastBatch;
- (void)cancelFetchingPublisher;
- (void)fetchGuidesWithIdentifiers:(id)identifiers completion:(id)completion;
- (void)fetchPublisherViewForKeywordFilter:(id)filter addressFilter:(id)addressFilter onCompletion:(id)completion;
@end

@implementation PublisherAPIController

- (void)fetchGuidesWithIdentifiers:(id)identifiers completion:(id)completion
{
  identifiersCopy = identifiers;
  completionCopy = completion;
  v8 = +[MKMapService sharedService];
  traits = [(PublisherAPIController *)self traits];
  v10 = [v8 ticketForCuratedCollections:identifiersCopy isBatchLookup:1 traits:traits];
  [(PublisherAPIController *)self setBatchTicket:v10];

  objc_initWeak(&location, self);
  v11 = sub_100B9F980();
  v12 = os_signpost_id_generate(v11);

  v13 = sub_100B9F980();
  v14 = v13;
  if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "FetchingPublisherViewBatch", "", buf, 2u);
  }

  batchTicket = [(PublisherAPIController *)self batchTicket];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100B9F9D4;
  v17[3] = &unk_10163C080;
  objc_copyWeak(v19, &location);
  v16 = completionCopy;
  v18 = v16;
  v19[1] = v12;
  [batchTicket submitWithHandler:v17 networkActivity:&stru_10163C0A0];

  objc_destroyWeak(v19);
  objc_destroyWeak(&location);
}

- (id)placeCollectionsFromLastBatch
{
  placeCollections = [(PublisherAPIController *)self placeCollections];
  v3 = [placeCollections copy];

  return v3;
}

- (void)cancelFetchingPublisher
{
  ticket = [(PublisherAPIController *)self ticket];
  [ticket cancel];

  batchTicket = [(PublisherAPIController *)self batchTicket];
  [batchTicket cancel];
}

- (void)fetchPublisherViewForKeywordFilter:(id)filter addressFilter:(id)addressFilter onCompletion:(id)completion
{
  filterCopy = filter;
  addressFilterCopy = addressFilter;
  completionCopy = completion;
  filters = [(PublisherAPIController *)self filters];
  v12 = [filters count];

  if (!v12 || filterCopy | addressFilterCopy || [(PublisherAPIController *)self state]== 3)
  {
    stateHandler = [(PublisherAPIController *)self stateHandler];
    stateHandler[2](stateHandler, [(PublisherAPIController *)self state], 1);

    [(PublisherAPIController *)self setState:1];
    v14 = +[MKMapService sharedService];
    publisherId = [(PublisherAPIController *)self publisherId];
    batchSize = [(PublisherAPIController *)self batchSize];
    traits = [(PublisherAPIController *)self traits];
    v18 = [v14 ticketForPublisherViewPublisherIdentifier:publisherId keywordFilter:filterCopy addressFilter:addressFilterCopy batchSize:batchSize withTraits:traits];
    [(PublisherAPIController *)self setTicket:v18];

    objc_initWeak(&location, self);
    v19 = sub_100B9F980();
    v20 = os_signpost_id_generate(v19);

    v21 = sub_100B9F980();
    v22 = v21;
    if ((v20 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_BEGIN, v20, "FetchingPublisherView", "", buf, 2u);
    }

    ticket = [(PublisherAPIController *)self ticket];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100B9FF10;
    v24[3] = &unk_10163C038;
    objc_copyWeak(v26, &location);
    v26[1] = v20;
    v25 = completionCopy;
    [ticket submitWithHandler:v24 networkActivity:&stru_10163C058];

    objc_destroyWeak(v26);
    objc_destroyWeak(&location);
  }
}

- (PublisherAPIController)initWithPublisherId:(id)id usingOnStateChangeHandler:(id)handler usingTraits:(id)traits
{
  idCopy = id;
  handlerCopy = handler;
  traitsCopy = traits;
  v17.receiver = self;
  v17.super_class = PublisherAPIController;
  v12 = [(PublisherAPIController *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_publisherId, id);
    v14 = objc_retainBlock(handlerCopy);
    stateHandler = v13->_stateHandler;
    v13->_stateHandler = v14;

    objc_storeStrong(&v13->_traits, traits);
    v13->_state = 0;
  }

  return v13;
}

@end