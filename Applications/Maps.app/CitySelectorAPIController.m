@interface CitySelectorAPIController
- (CitySelectorAPIController)initWithStateChangeHandler:(id)a3 usingTraits:(id)a4;
- (id)citySelectorSections;
- (id)guideLocationsFromLastBatch;
- (void)cancelFetchingCitySelectorView;
- (void)fetchCitySelectorView:(id)a3;
- (void)fetchGuidesWithIdentifiers:(id)a3 completion:(id)a4;
@end

@implementation CitySelectorAPIController

- (void)fetchGuidesWithIdentifiers:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MKMapItemIdentifiersArrayToGEOMapItemIdentifiersArray();
  v9 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  objc_initWeak(&location, self);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100695100;
  v25[3] = &unk_101625D48;
  objc_copyWeak(&v27, &location);
  v10 = v9;
  v26 = v10;
  [v6 enumerateObjectsUsingBlock:v25];
  v11 = [v6 count];
  if (v11 == [v10 count])
  {
    v12 = +[GEOMapService sharedService];
    v13 = [(CitySelectorAPIController *)self traits];
    v14 = [v12 ticketForGuideLocationLookupWithIds:v10 identifiers:v8 traits:v13];
    [(CitySelectorAPIController *)self setBatchTicket:v14];

    v15 = sub_1006951D4();
    v16 = os_signpost_id_generate(v15);

    v17 = sub_1006951D4();
    v18 = v17;
    if ((v16 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "FetchingCitySelectorViewBatch", "", buf, 2u);
    }

    v19 = [(CitySelectorAPIController *)self batchTicket];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100695228;
    v21[3] = &unk_10163C080;
    objc_copyWeak(v23, &location);
    v22 = v7;
    v23[1] = v16;
    [v19 submitWithHandler:v21 networkActivity:0];

    objc_destroyWeak(v23);
  }

  else
  {
    (*(v7 + 2))(v7, 0, 0, 0);
    v20 = sub_1007982D8();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Error fetching a batch for city selector.", buf, 2u);
    }
  }

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

- (void)cancelFetchingCitySelectorView
{
  v2 = [(CitySelectorAPIController *)self ticket];
  [v2 cancel];
}

- (void)fetchCitySelectorView:(id)a3
{
  v4 = a3;
  v5 = [(CitySelectorAPIController *)self stateHandler];
  v5[2](v5, [(CitySelectorAPIController *)self state], 1);

  [(CitySelectorAPIController *)self setState:1];
  v6 = +[MKMapService sharedService];
  v7 = [(CitySelectorAPIController *)self traits];
  v8 = [v6 ticketForCitySelectorViewWithTraits:v7 batchSize:{-[CitySelectorAPIController batchSize](self, "batchSize")}];
  [(CitySelectorAPIController *)self setTicket:v8];

  objc_initWeak(&location, self);
  v9 = sub_1006951D4();
  v10 = os_signpost_id_generate(v9);

  v11 = sub_1006951D4();
  v12 = v11;
  if ((v10 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "FetchingCitySelectorView", "", buf, 2u);
  }

  v13 = [(CitySelectorAPIController *)self ticket];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1006956F0;
  v15[3] = &unk_101625D00;
  v17[1] = v10;
  objc_copyWeak(v17, &location);
  v14 = v4;
  v16 = v14;
  [v13 submitWithHandler:v15 networkActivity:&stru_101625D20];

  objc_destroyWeak(v17);
  objc_destroyWeak(&location);
}

- (id)guideLocationsFromLastBatch
{
  v2 = [(CitySelectorAPIController *)self guideLocations];
  v3 = [v2 copy];

  return v3;
}

- (id)citySelectorSections
{
  v2 = [(CitySelectorAPIController *)self sections];
  v3 = [v2 copy];

  return v3;
}

- (CitySelectorAPIController)initWithStateChangeHandler:(id)a3 usingTraits:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CitySelectorAPIController;
  v8 = [(CitySelectorAPIController *)&v12 init];
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