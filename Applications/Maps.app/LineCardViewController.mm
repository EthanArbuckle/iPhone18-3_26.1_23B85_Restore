@interface LineCardViewController
- (BOOL)lineItemIsLoading;
- (LineCardViewController)init;
- (LineCardViewControllerDelegate)lineCardDelegate;
- (MUTransitLineItemViewController)lineItemViewController;
- (void)insertInHistory;
- (void)lineItemViewController:(id)controller didSelectDetailsForIncidents:(id)incidents;
- (void)lineItemViewController:(id)controller didSelectDirectionsToNearestStation:(id)station withTransportTypePreference:(id)preference;
- (void)lineItemViewController:(id)controller didSelectNearestStation:(id)station;
- (void)lineItemViewController:(id)controller openURL:(id)l;
- (void)lineItemViewControllerDidAppear:(id)appear;
- (void)lineItemViewControllerDidSelectReportAProblem:(id)problem;
- (void)lineItemViewControllerDidSelectViewOnMap:(id)map;
- (void)resetNearestStation;
- (void)setLineItem:(id)item labelMarker:(id)marker loading:(BOOL)loading preferredLayout:(unint64_t)layout;
- (void)viewDidLoad;
- (void)willChangeContainerStyle:(unint64_t)style;
@end

@implementation LineCardViewController

- (LineCardViewControllerDelegate)lineCardDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_lineCardDelegate);

  return WeakRetained;
}

- (void)lineItemViewController:(id)controller openURL:(id)l
{
  lCopy = l;
  lineCardDelegate = [(LineCardViewController *)self lineCardDelegate];
  [lineCardDelegate lineCardViewController:self openURL:lCopy];
}

- (void)lineItemViewControllerDidAppear:(id)appear
{
  lineCardDelegate = [(LineCardViewController *)self lineCardDelegate];
  [lineCardDelegate lineCardViewControllerDidAppear:self];
}

- (void)lineItemViewControllerDidSelectViewOnMap:(id)map
{
  mapCopy = map;
  transitLineItem = [mapCopy transitLineItem];
  mapRegion = [transitLineItem mapRegion];

  if (mapRegion)
  {
    if ([mapCopy conformsToProtocol:&OBJC_PROTOCOL____MKInfoCardAnalyticsDelegate])
    {
      v6 = mapCopy;
      [v6 infoCardAnalyticsDidSelectAction:7004 target:-[LineCardViewController currentUITargetForAnalytics](self eventValue:"currentUITargetForAnalytics") feedbackDelegateSelector:0 actionRichProviderId:0 classification:{0, 0}];
    }

    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController wantsLayout:1];

    lineCardDelegate = [(LineCardViewController *)self lineCardDelegate];
    transitLineItem2 = [mapCopy transitLineItem];
    mapRegion2 = [transitLineItem2 mapRegion];
    [lineCardDelegate lineCardViewController:self displayMapRegion:mapRegion2];
  }
}

- (void)lineItemViewController:(id)controller didSelectDetailsForIncidents:(id)incidents
{
  incidentsCopy = incidents;
  lineCardDelegate = [(LineCardViewController *)self lineCardDelegate];
  [lineCardDelegate lineCardViewController:self showIncidents:incidentsCopy];
}

- (void)lineItemViewController:(id)controller didSelectNearestStation:(id)station
{
  if (station)
  {
    stationCopy = station;
    lineCardDelegate = [(LineCardViewController *)self lineCardDelegate];
    [lineCardDelegate lineCardViewController:self selectMapItem:stationCopy];
  }
}

- (void)lineItemViewController:(id)controller didSelectDirectionsToNearestStation:(id)station withTransportTypePreference:(id)preference
{
  preferenceCopy = preference;
  if (station)
  {
    stationCopy = station;
    v9 = objc_alloc_init(SearchFieldItem);
    v10 = +[SearchResult currentLocationSearchResult];
    [(SearchFieldItem *)v9 setSearchResult:v10];

    v11 = objc_alloc_init(SearchFieldItem);
    v12 = [[SearchResult alloc] initWithMapItem:stationCopy];

    [(SearchFieldItem *)v11 setSearchResult:v12];
    if (preferenceCopy)
    {
      integerValue = [preferenceCopy integerValue];
      if ((integerValue - 1) < 4)
      {
        v14 = (integerValue + 1);
      }

      else
      {
        v14 = 1;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = [DirectionItem alloc];
    v19[0] = v9;
    v19[1] = v11;
    v16 = [NSArray arrayWithObjects:v19 count:2];
    v17 = [(DirectionItem *)v15 initWithItems:v16 transportType:v14];

    lineCardDelegate = [(LineCardViewController *)self lineCardDelegate];
    [lineCardDelegate lineCardViewController:self doDirectionItem:v17];
  }
}

- (void)lineItemViewControllerDidSelectReportAProblem:(id)problem
{
  _maps_mapsSceneDelegate = [(LineCardViewController *)self _maps_mapsSceneDelegate];
  rapPresenter = [_maps_mapsSceneDelegate rapPresenter];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10097B65C;
  v6[3] = &unk_10163BCB0;
  v6[4] = self;
  [rapPresenter presentReportAProblemFromTransitLineCardWithEditingContext:v6 completion:0];
}

- (void)insertInHistory
{
  if (!self->_didInsertInHistory)
  {
    lineItem = [(LineCardViewController *)self lineItem];

    if (lineItem)
    {
      lineItem2 = [(LineCardViewController *)self lineItem];
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_10097B7E4;
      v5[3] = &unk_10165F7B8;
      v5[4] = self;
      [HistoryEntryRecentsItem saveLineItem:lineItem2 completion:v5];
    }
  }
}

- (void)willChangeContainerStyle:(unint64_t)style
{
  v7.receiver = self;
  v7.super_class = LineCardViewController;
  [(ContaineeViewController *)&v7 willChangeContainerStyle:?];
  if (style == 6)
  {
    preferredLayout = 4;
  }

  else if (self->_preferredLayout)
  {
    preferredLayout = self->_preferredLayout;
  }

  else
  {
    preferredLayout = 2;
  }

  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController setDefaultContaineeLayout:preferredLayout];
}

- (MUTransitLineItemViewController)lineItemViewController
{
  lineItemViewController = self->_lineItemViewController;
  if (!lineItemViewController)
  {
    v4 = [MUTransitLineItemViewController alloc];
    lineItem = [(LineCardViewController *)self lineItem];
    v6 = [v4 initWithTransitLineItem:lineItem];
    v7 = self->_lineItemViewController;
    self->_lineItemViewController = v6;

    [(MUTransitLineItemViewController *)self->_lineItemViewController setDelegate:self];
    v8 = +[UIColor clearColor];
    view = [(MUTransitLineItemViewController *)self->_lineItemViewController view];
    [view setBackgroundColor:v8];

    [(InfoCardViewController *)self setContentViewController:self->_lineItemViewController];
    lineItemViewController = self->_lineItemViewController;
  }

  return lineItemViewController;
}

- (void)resetNearestStation
{
  lineItemViewController = [(LineCardViewController *)self lineItemViewController];
  [lineItemViewController resetNearestStation];
}

- (void)setLineItem:(id)item labelMarker:(id)marker loading:(BOOL)loading preferredLayout:(unint64_t)layout
{
  loadingCopy = loading;
  itemCopy = item;
  markerCopy = marker;
  if (self->_lineItem != itemCopy || [(LineCardViewController *)self lineItemIsLoading]!= loadingCopy)
  {
    objc_storeStrong(&self->_lineItem, item);
    objc_storeStrong(&self->_labelMarker, marker);
    lineItemViewController = [(LineCardViewController *)self lineItemViewController];
    [lineItemViewController setTransitLineItem:itemCopy loading:loadingCopy];

    v13 = self->_lineItem;
    name = [(GEOTransitLineItem *)v13 name];
    v15 = [name length];

    if (!v15)
    {
      system = [(GEOTransitLineItem *)v13 system];

      v13 = system;
    }

    name2 = [(GEOTransitLineItem *)v13 name];

    [(InfoCardViewController *)self setHeaderTitle:name2];
    [(InfoCardViewController *)self rebuildHeaderMenu];
    self->_didInsertInHistory = 0;
    self->_preferredLayout = layout;
    if ((sub_1005B1B14(itemCopy) & 1) == 0)
    {
      [(LineCardViewController *)self insertInHistory];
    }
  }
}

- (BOOL)lineItemIsLoading
{
  lineItemViewController = [(LineCardViewController *)self lineItemViewController];
  isLoading = [lineItemViewController isLoading];

  return isLoading;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = LineCardViewController;
  [(InfoCardViewController *)&v8 viewDidLoad];
  v3 = self->_lineItem;
  name = [(GEOTransitLineItem *)v3 name];
  v5 = [name length];

  if (!v5)
  {
    system = [(GEOTransitLineItem *)v3 system];

    v3 = system;
  }

  name2 = [(GEOTransitLineItem *)v3 name];

  [(InfoCardViewController *)self setHeaderTitle:name2];
}

- (LineCardViewController)init
{
  v6.receiver = self;
  v6.super_class = LineCardViewController;
  v2 = [(LineCardViewController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    cardPresentationController = [(ContaineeViewController *)v2 cardPresentationController];
    [cardPresentationController setAlwaysUseDefaultContaineeLayout:1];
  }

  return v3;
}

@end