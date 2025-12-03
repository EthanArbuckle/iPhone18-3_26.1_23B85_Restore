@interface GuidanceSearchResultsCategoryDataProvider
- (GEOFeatureStyleAttributes)styleAttributes;
- (GuidanceSearchResultsCategoryDataProvider)initWithSearchItem:(id)item mapService:(id)service chromeViewController:(id)controller;
- (NSString)subtitle;
- (NSString)title;
- (void)_handleResponseForTicket:(id)ticket mapItems:(id)items error:(id)error completion:(id)completion;
- (void)_submitTicket:(id)ticket completion:(id)completion;
- (void)dealloc;
- (void)loadSearchResultsWithRouteInfo:(id)info completion:(id)completion;
@end

@implementation GuidanceSearchResultsCategoryDataProvider

- (void)loadSearchResultsWithRouteInfo:(id)info completion:(id)completion
{
  completionCopy = completion;
  infoCopy = info;
  chromeViewController = [(GuidanceSearchResultsCategoryDataProvider *)self chromeViewController];
  currentTraits = [chromeViewController currentTraits];

  [currentTraits setNavigating:1];
  v9 = +[MNNavigationService sharedService];
  v28 = v9;
  if ([v9 isInNavigatingState])
  {
    navigationTransportType = [v9 navigationTransportType];
  }

  else
  {
    navigationTransportType = [v9 desiredTransportType];
  }

  [currentTraits setNavigationTransportType:navigationTransportType];
  v11 = +[SearchVirtualGarageManager sharedSearchVirtualGarageManager];
  v26 = [v11 updatedTraitsForCurrentGarageState:currentTraits];

  mapService = [(GuidanceSearchResultsCategoryDataProvider *)self mapService];
  searchItem = [(GuidanceSearchResultsCategoryDataProvider *)self searchItem];
  searchCategory = [searchItem searchCategory];
  originalWaypointRouteRepresentation = [infoCopy originalWaypointRouteRepresentation];
  legacyRouteRepresentation = [infoCopy legacyRouteRepresentation];
  [infoCopy sessionState];
  v17 = v25 = self;
  routeId = [infoCopy routeId];
  routeAttributes = [infoCopy routeAttributes];

  LODWORD(v24) = 10;
  v20 = [mapService ticketForSearchAlongRouteWithCategory:searchCategory searchQuery:0 completionItem:0 originalWaypointRouteData:originalWaypointRouteRepresentation zilchData:legacyRouteRepresentation sessionState:v17 routeId:routeId routeAttributes:routeAttributes maxResults:v24 traits:v26 searchSessionData:0];

  workerQueue = [(GuidanceSearchResultsCategoryDataProvider *)v25 workerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1008A0BE0;
  block[3] = &unk_1016605F8;
  block[4] = v25;
  v30 = v20;
  v31 = completionCopy;
  v22 = completionCopy;
  v23 = v20;
  dispatch_async(workerQueue, block);
}

- (GEOFeatureStyleAttributes)styleAttributes
{
  searchItem = [(GuidanceSearchResultsCategoryDataProvider *)self searchItem];
  searchCategory = [searchItem searchCategory];
  styleAttributes = [searchCategory styleAttributes];

  return styleAttributes;
}

- (NSString)subtitle
{
  categorySearchResultSection = [(GuidanceSearchResultsCategoryDataProvider *)self categorySearchResultSection];
  subHeaderDisplayName = [categorySearchResultSection subHeaderDisplayName];

  return subHeaderDisplayName;
}

- (NSString)title
{
  searchItem = [(GuidanceSearchResultsCategoryDataProvider *)self searchItem];
  title = [searchItem title];

  return title;
}

- (void)_handleResponseForTicket:(id)ticket mapItems:(id)items error:(id)error completion:(id)completion
{
  itemsCopy = items;
  errorCopy = error;
  completionCopy = completion;
  ticketCopy = ticket;
  searchTicket = [(GuidanceSearchResultsCategoryDataProvider *)self searchTicket];

  if (searchTicket == ticketCopy)
  {
    searchTicket2 = [(GuidanceSearchResultsCategoryDataProvider *)self searchTicket];
    categorySearchResultSection = [searchTicket2 categorySearchResultSection];
    [(GuidanceSearchResultsCategoryDataProvider *)self setCategorySearchResultSection:categorySearchResultSection];

    [(GuidanceSearchResultsCategoryDataProvider *)self setSearchTicket:0];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1008A0E3C;
    block[3] = &unk_1016605F8;
    v20 = completionCopy;
    v18 = itemsCopy;
    v19 = errorCopy;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)_submitTicket:(id)ticket completion:(id)completion
{
  ticketCopy = ticket;
  completionCopy = completion;
  searchTicket = [(GuidanceSearchResultsCategoryDataProvider *)self searchTicket];
  [searchTicket cancel];

  [(GuidanceSearchResultsCategoryDataProvider *)self setSearchTicket:ticketCopy];
  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1008A0F84;
  v11[3] = &unk_10165DCA0;
  objc_copyWeak(&v14, &location);
  v9 = ticketCopy;
  v12 = v9;
  v10 = completionCopy;
  v13 = v10;
  [v9 submitWithHandler:v11 networkActivity:0];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)dealloc
{
  [(MKMapServiceTicket *)self->_searchTicket cancel];
  v3.receiver = self;
  v3.super_class = GuidanceSearchResultsCategoryDataProvider;
  [(GuidanceSearchResultsCategoryDataProvider *)&v3 dealloc];
}

- (GuidanceSearchResultsCategoryDataProvider)initWithSearchItem:(id)item mapService:(id)service chromeViewController:(id)controller
{
  itemCopy = item;
  serviceCopy = service;
  controllerCopy = controller;
  v17.receiver = self;
  v17.super_class = GuidanceSearchResultsCategoryDataProvider;
  v12 = [(GuidanceSearchResultsCategoryDataProvider *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_searchItem, item);
    objc_storeStrong(&v13->_mapService, service);
    objc_storeStrong(&v13->_chromeViewController, controller);
    v14 = dispatch_queue_create("GuidanceSearchResultsCategoryDataProvider.workerQueue", 0);
    workerQueue = v13->_workerQueue;
    v13->_workerQueue = v14;
  }

  return v13;
}

@end