@interface GuidanceSearchResultsCategoryDataProvider
- (GEOFeatureStyleAttributes)styleAttributes;
- (GuidanceSearchResultsCategoryDataProvider)initWithSearchItem:(id)a3 mapService:(id)a4 chromeViewController:(id)a5;
- (NSString)subtitle;
- (NSString)title;
- (void)_handleResponseForTicket:(id)a3 mapItems:(id)a4 error:(id)a5 completion:(id)a6;
- (void)_submitTicket:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)loadSearchResultsWithRouteInfo:(id)a3 completion:(id)a4;
@end

@implementation GuidanceSearchResultsCategoryDataProvider

- (void)loadSearchResultsWithRouteInfo:(id)a3 completion:(id)a4
{
  v27 = a4;
  v6 = a3;
  v7 = [(GuidanceSearchResultsCategoryDataProvider *)self chromeViewController];
  v8 = [v7 currentTraits];

  [v8 setNavigating:1];
  v9 = +[MNNavigationService sharedService];
  v28 = v9;
  if ([v9 isInNavigatingState])
  {
    v10 = [v9 navigationTransportType];
  }

  else
  {
    v10 = [v9 desiredTransportType];
  }

  [v8 setNavigationTransportType:v10];
  v11 = +[SearchVirtualGarageManager sharedSearchVirtualGarageManager];
  v26 = [v11 updatedTraitsForCurrentGarageState:v8];

  v12 = [(GuidanceSearchResultsCategoryDataProvider *)self mapService];
  v13 = [(GuidanceSearchResultsCategoryDataProvider *)self searchItem];
  v14 = [v13 searchCategory];
  v15 = [v6 originalWaypointRouteRepresentation];
  v16 = [v6 legacyRouteRepresentation];
  [v6 sessionState];
  v17 = v25 = self;
  v18 = [v6 routeId];
  v19 = [v6 routeAttributes];

  LODWORD(v24) = 10;
  v20 = [v12 ticketForSearchAlongRouteWithCategory:v14 searchQuery:0 completionItem:0 originalWaypointRouteData:v15 zilchData:v16 sessionState:v17 routeId:v18 routeAttributes:v19 maxResults:v24 traits:v26 searchSessionData:0];

  v21 = [(GuidanceSearchResultsCategoryDataProvider *)v25 workerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1008A0BE0;
  block[3] = &unk_1016605F8;
  block[4] = v25;
  v30 = v20;
  v31 = v27;
  v22 = v27;
  v23 = v20;
  dispatch_async(v21, block);
}

- (GEOFeatureStyleAttributes)styleAttributes
{
  v2 = [(GuidanceSearchResultsCategoryDataProvider *)self searchItem];
  v3 = [v2 searchCategory];
  v4 = [v3 styleAttributes];

  return v4;
}

- (NSString)subtitle
{
  v2 = [(GuidanceSearchResultsCategoryDataProvider *)self categorySearchResultSection];
  v3 = [v2 subHeaderDisplayName];

  return v3;
}

- (NSString)title
{
  v2 = [(GuidanceSearchResultsCategoryDataProvider *)self searchItem];
  v3 = [v2 title];

  return v3;
}

- (void)_handleResponseForTicket:(id)a3 mapItems:(id)a4 error:(id)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v14 = [(GuidanceSearchResultsCategoryDataProvider *)self searchTicket];

  if (v14 == v13)
  {
    v15 = [(GuidanceSearchResultsCategoryDataProvider *)self searchTicket];
    v16 = [v15 categorySearchResultSection];
    [(GuidanceSearchResultsCategoryDataProvider *)self setCategorySearchResultSection:v16];

    [(GuidanceSearchResultsCategoryDataProvider *)self setSearchTicket:0];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1008A0E3C;
    block[3] = &unk_1016605F8;
    v20 = v12;
    v18 = v10;
    v19 = v11;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)_submitTicket:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(GuidanceSearchResultsCategoryDataProvider *)self searchTicket];
  [v8 cancel];

  [(GuidanceSearchResultsCategoryDataProvider *)self setSearchTicket:v6];
  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1008A0F84;
  v11[3] = &unk_10165DCA0;
  objc_copyWeak(&v14, &location);
  v9 = v6;
  v12 = v9;
  v10 = v7;
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

- (GuidanceSearchResultsCategoryDataProvider)initWithSearchItem:(id)a3 mapService:(id)a4 chromeViewController:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = GuidanceSearchResultsCategoryDataProvider;
  v12 = [(GuidanceSearchResultsCategoryDataProvider *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_searchItem, a3);
    objc_storeStrong(&v13->_mapService, a4);
    objc_storeStrong(&v13->_chromeViewController, a5);
    v14 = dispatch_queue_create("GuidanceSearchResultsCategoryDataProvider.workerQueue", 0);
    workerQueue = v13->_workerQueue;
    v13->_workerQueue = v14;
  }

  return v13;
}

@end