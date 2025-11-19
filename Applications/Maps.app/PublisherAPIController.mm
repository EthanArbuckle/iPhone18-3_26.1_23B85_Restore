@interface PublisherAPIController
- (PublisherAPIController)initWithPublisherId:(id)a3 usingOnStateChangeHandler:(id)a4 usingTraits:(id)a5;
- (id)placeCollectionsFromLastBatch;
- (void)cancelFetchingPublisher;
- (void)fetchGuidesWithIdentifiers:(id)a3 completion:(id)a4;
- (void)fetchPublisherViewForKeywordFilter:(id)a3 addressFilter:(id)a4 onCompletion:(id)a5;
@end

@implementation PublisherAPIController

- (void)fetchGuidesWithIdentifiers:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[MKMapService sharedService];
  v9 = [(PublisherAPIController *)self traits];
  v10 = [v8 ticketForCuratedCollections:v6 isBatchLookup:1 traits:v9];
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

  v15 = [(PublisherAPIController *)self batchTicket];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100B9F9D4;
  v17[3] = &unk_10163C080;
  objc_copyWeak(v19, &location);
  v16 = v7;
  v18 = v16;
  v19[1] = v12;
  [v15 submitWithHandler:v17 networkActivity:&stru_10163C0A0];

  objc_destroyWeak(v19);
  objc_destroyWeak(&location);
}

- (id)placeCollectionsFromLastBatch
{
  v2 = [(PublisherAPIController *)self placeCollections];
  v3 = [v2 copy];

  return v3;
}

- (void)cancelFetchingPublisher
{
  v3 = [(PublisherAPIController *)self ticket];
  [v3 cancel];

  v4 = [(PublisherAPIController *)self batchTicket];
  [v4 cancel];
}

- (void)fetchPublisherViewForKeywordFilter:(id)a3 addressFilter:(id)a4 onCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PublisherAPIController *)self filters];
  v12 = [v11 count];

  if (!v12 || v8 | v9 || [(PublisherAPIController *)self state]== 3)
  {
    v13 = [(PublisherAPIController *)self stateHandler];
    v13[2](v13, [(PublisherAPIController *)self state], 1);

    [(PublisherAPIController *)self setState:1];
    v14 = +[MKMapService sharedService];
    v15 = [(PublisherAPIController *)self publisherId];
    v16 = [(PublisherAPIController *)self batchSize];
    v17 = [(PublisherAPIController *)self traits];
    v18 = [v14 ticketForPublisherViewPublisherIdentifier:v15 keywordFilter:v8 addressFilter:v9 batchSize:v16 withTraits:v17];
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

    v23 = [(PublisherAPIController *)self ticket];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100B9FF10;
    v24[3] = &unk_10163C038;
    objc_copyWeak(v26, &location);
    v26[1] = v20;
    v25 = v10;
    [v23 submitWithHandler:v24 networkActivity:&stru_10163C058];

    objc_destroyWeak(v26);
    objc_destroyWeak(&location);
  }
}

- (PublisherAPIController)initWithPublisherId:(id)a3 usingOnStateChangeHandler:(id)a4 usingTraits:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = PublisherAPIController;
  v12 = [(PublisherAPIController *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_publisherId, a3);
    v14 = objc_retainBlock(v10);
    stateHandler = v13->_stateHandler;
    v13->_stateHandler = v14;

    objc_storeStrong(&v13->_traits, a5);
    v13->_state = 0;
  }

  return v13;
}

@end