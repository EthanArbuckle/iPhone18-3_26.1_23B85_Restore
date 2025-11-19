@interface LineCardViewController
- (BOOL)lineItemIsLoading;
- (LineCardViewController)init;
- (LineCardViewControllerDelegate)lineCardDelegate;
- (MUTransitLineItemViewController)lineItemViewController;
- (void)insertInHistory;
- (void)lineItemViewController:(id)a3 didSelectDetailsForIncidents:(id)a4;
- (void)lineItemViewController:(id)a3 didSelectDirectionsToNearestStation:(id)a4 withTransportTypePreference:(id)a5;
- (void)lineItemViewController:(id)a3 didSelectNearestStation:(id)a4;
- (void)lineItemViewController:(id)a3 openURL:(id)a4;
- (void)lineItemViewControllerDidAppear:(id)a3;
- (void)lineItemViewControllerDidSelectReportAProblem:(id)a3;
- (void)lineItemViewControllerDidSelectViewOnMap:(id)a3;
- (void)resetNearestStation;
- (void)setLineItem:(id)a3 labelMarker:(id)a4 loading:(BOOL)a5 preferredLayout:(unint64_t)a6;
- (void)viewDidLoad;
- (void)willChangeContainerStyle:(unint64_t)a3;
@end

@implementation LineCardViewController

- (LineCardViewControllerDelegate)lineCardDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_lineCardDelegate);

  return WeakRetained;
}

- (void)lineItemViewController:(id)a3 openURL:(id)a4
{
  v5 = a4;
  v6 = [(LineCardViewController *)self lineCardDelegate];
  [v6 lineCardViewController:self openURL:v5];
}

- (void)lineItemViewControllerDidAppear:(id)a3
{
  v4 = [(LineCardViewController *)self lineCardDelegate];
  [v4 lineCardViewControllerDidAppear:self];
}

- (void)lineItemViewControllerDidSelectViewOnMap:(id)a3
{
  v11 = a3;
  v4 = [v11 transitLineItem];
  v5 = [v4 mapRegion];

  if (v5)
  {
    if ([v11 conformsToProtocol:&OBJC_PROTOCOL____MKInfoCardAnalyticsDelegate])
    {
      v6 = v11;
      [v6 infoCardAnalyticsDidSelectAction:7004 target:-[LineCardViewController currentUITargetForAnalytics](self eventValue:"currentUITargetForAnalytics") feedbackDelegateSelector:0 actionRichProviderId:0 classification:{0, 0}];
    }

    v7 = [(ContaineeViewController *)self cardPresentationController];
    [v7 wantsLayout:1];

    v8 = [(LineCardViewController *)self lineCardDelegate];
    v9 = [v11 transitLineItem];
    v10 = [v9 mapRegion];
    [v8 lineCardViewController:self displayMapRegion:v10];
  }
}

- (void)lineItemViewController:(id)a3 didSelectDetailsForIncidents:(id)a4
{
  v5 = a4;
  v6 = [(LineCardViewController *)self lineCardDelegate];
  [v6 lineCardViewController:self showIncidents:v5];
}

- (void)lineItemViewController:(id)a3 didSelectNearestStation:(id)a4
{
  if (a4)
  {
    v5 = a4;
    v6 = [(LineCardViewController *)self lineCardDelegate];
    [v6 lineCardViewController:self selectMapItem:v5];
  }
}

- (void)lineItemViewController:(id)a3 didSelectDirectionsToNearestStation:(id)a4 withTransportTypePreference:(id)a5
{
  v7 = a5;
  if (a4)
  {
    v8 = a4;
    v9 = objc_alloc_init(SearchFieldItem);
    v10 = +[SearchResult currentLocationSearchResult];
    [(SearchFieldItem *)v9 setSearchResult:v10];

    v11 = objc_alloc_init(SearchFieldItem);
    v12 = [[SearchResult alloc] initWithMapItem:v8];

    [(SearchFieldItem *)v11 setSearchResult:v12];
    if (v7)
    {
      v13 = [v7 integerValue];
      if ((v13 - 1) < 4)
      {
        v14 = (v13 + 1);
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

    v18 = [(LineCardViewController *)self lineCardDelegate];
    [v18 lineCardViewController:self doDirectionItem:v17];
  }
}

- (void)lineItemViewControllerDidSelectReportAProblem:(id)a3
{
  v4 = [(LineCardViewController *)self _maps_mapsSceneDelegate];
  v5 = [v4 rapPresenter];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10097B65C;
  v6[3] = &unk_10163BCB0;
  v6[4] = self;
  [v5 presentReportAProblemFromTransitLineCardWithEditingContext:v6 completion:0];
}

- (void)insertInHistory
{
  if (!self->_didInsertInHistory)
  {
    v3 = [(LineCardViewController *)self lineItem];

    if (v3)
    {
      v4 = [(LineCardViewController *)self lineItem];
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_10097B7E4;
      v5[3] = &unk_10165F7B8;
      v5[4] = self;
      [HistoryEntryRecentsItem saveLineItem:v4 completion:v5];
    }
  }
}

- (void)willChangeContainerStyle:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = LineCardViewController;
  [(ContaineeViewController *)&v7 willChangeContainerStyle:?];
  if (a3 == 6)
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

  v6 = [(ContaineeViewController *)self cardPresentationController];
  [v6 setDefaultContaineeLayout:preferredLayout];
}

- (MUTransitLineItemViewController)lineItemViewController
{
  lineItemViewController = self->_lineItemViewController;
  if (!lineItemViewController)
  {
    v4 = [MUTransitLineItemViewController alloc];
    v5 = [(LineCardViewController *)self lineItem];
    v6 = [v4 initWithTransitLineItem:v5];
    v7 = self->_lineItemViewController;
    self->_lineItemViewController = v6;

    [(MUTransitLineItemViewController *)self->_lineItemViewController setDelegate:self];
    v8 = +[UIColor clearColor];
    v9 = [(MUTransitLineItemViewController *)self->_lineItemViewController view];
    [v9 setBackgroundColor:v8];

    [(InfoCardViewController *)self setContentViewController:self->_lineItemViewController];
    lineItemViewController = self->_lineItemViewController;
  }

  return lineItemViewController;
}

- (void)resetNearestStation
{
  v2 = [(LineCardViewController *)self lineItemViewController];
  [v2 resetNearestStation];
}

- (void)setLineItem:(id)a3 labelMarker:(id)a4 loading:(BOOL)a5 preferredLayout:(unint64_t)a6
{
  v7 = a5;
  v18 = a3;
  v11 = a4;
  if (self->_lineItem != v18 || [(LineCardViewController *)self lineItemIsLoading]!= v7)
  {
    objc_storeStrong(&self->_lineItem, a3);
    objc_storeStrong(&self->_labelMarker, a4);
    v12 = [(LineCardViewController *)self lineItemViewController];
    [v12 setTransitLineItem:v18 loading:v7];

    v13 = self->_lineItem;
    v14 = [(GEOTransitLineItem *)v13 name];
    v15 = [v14 length];

    if (!v15)
    {
      v16 = [(GEOTransitLineItem *)v13 system];

      v13 = v16;
    }

    v17 = [(GEOTransitLineItem *)v13 name];

    [(InfoCardViewController *)self setHeaderTitle:v17];
    [(InfoCardViewController *)self rebuildHeaderMenu];
    self->_didInsertInHistory = 0;
    self->_preferredLayout = a6;
    if ((sub_1005B1B14(v18) & 1) == 0)
    {
      [(LineCardViewController *)self insertInHistory];
    }
  }
}

- (BOOL)lineItemIsLoading
{
  v2 = [(LineCardViewController *)self lineItemViewController];
  v3 = [v2 isLoading];

  return v3;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = LineCardViewController;
  [(InfoCardViewController *)&v8 viewDidLoad];
  v3 = self->_lineItem;
  v4 = [(GEOTransitLineItem *)v3 name];
  v5 = [v4 length];

  if (!v5)
  {
    v6 = [(GEOTransitLineItem *)v3 system];

    v3 = v6;
  }

  v7 = [(GEOTransitLineItem *)v3 name];

  [(InfoCardViewController *)self setHeaderTitle:v7];
}

- (LineCardViewController)init
{
  v6.receiver = self;
  v6.super_class = LineCardViewController;
  v2 = [(LineCardViewController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(ContaineeViewController *)v2 cardPresentationController];
    [v4 setAlwaysUseDefaultContaineeLayout:1];
  }

  return v3;
}

@end