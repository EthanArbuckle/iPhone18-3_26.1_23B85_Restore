@interface NavSARAPIController
- (id)fetchCategoriesTicket;
- (void)cancelFetchingSARCategories;
- (void)fetchSARCategoriesOnCompletionHandler:(id)handler;
@end

@implementation NavSARAPIController

- (id)fetchCategoriesTicket
{
  v2 = +[MKMapService sharedService];
  defaultTraits = [v2 defaultTraits];

  [defaultTraits setNavigating:1];
  v4 = +[MNNavigationService sharedService];
  if ([v4 isInNavigatingState])
  {
    navigationTransportType = [v4 navigationTransportType];
  }

  else
  {
    navigationTransportType = [v4 desiredTransportType];
  }

  [defaultTraits setNavigationTransportType:navigationTransportType];
  v6 = +[SearchVirtualGarageManager sharedSearchVirtualGarageManager];
  v7 = [v6 updatedTraitsForCurrentGarageState:defaultTraits];

  v8 = +[MKMapService sharedService];
  v9 = [v8 ticketForCategoryListWithTraits:v7 isFromNoQueryState:0];

  return v9;
}

- (void)cancelFetchingSARCategories
{
  ticket = [(NavSARAPIController *)self ticket];
  [ticket cancel];
}

- (void)fetchSARCategoriesOnCompletionHandler:(id)handler
{
  handlerCopy = handler;
  fetchCategoriesTicket = [(NavSARAPIController *)self fetchCategoriesTicket];
  [(NavSARAPIController *)self setTicket:fetchCategoriesTicket];

  objc_initWeak(&location, self);
  v6 = sub_100758C38();
  v7 = os_signpost_id_generate(v6);

  v8 = sub_100758C38();
  v9 = v8;
  if ((v7 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "FetchingSARCategories", "", buf, 2u);
  }

  ticket = [(NavSARAPIController *)self ticket];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100758C8C;
  v12[3] = &unk_10163C080;
  objc_copyWeak(v14, &location);
  v14[1] = v7;
  v11 = handlerCopy;
  v13 = v11;
  [ticket submitWithHandler:v12 networkActivity:0];

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

@end