@interface RAPWebBundleEditLocationViewController
- (NSString)promptText;
- (RAPWebBundleEditLocationViewController)initWithInitialCoordinates:(CLLocationCoordinate2D)coordinates inMapRect:(id)rect mapType:(unint64_t)type isShowingTraffic:(BOOL)traffic analyticsTarget:(int)target markerViewAttributes:(id)attributes showAnnotationTitle:(BOOL)title searchResultTypes:(unint64_t)self0 selectionHandler:(id)self1 cancelSelectionHandler:(id)self2;
- (void)_setupFloatingConrols;
- (void)_setupFloatingControlsAfterMapInitialized;
- (void)_setupSearch;
- (void)_updateWithInputText:(id)text;
- (void)dataSource:(id)source itemTapped:(id)tapped;
- (void)editLocationMapView:(id)view didChangeCenterCoordinate:(CLLocationCoordinate2D)coordinate;
- (void)editLocationMapView:(id)view didChangeViewMode:(int64_t)mode;
- (void)editLocationMapViewFinishedRenderingMap:(id)map;
- (void)setPromptText:(id)text;
- (void)setupConstraints;
- (void)viewControllerOpenSettings:(id)settings;
- (void)viewDidLoad;
- (void)willDismissSearchController:(id)controller;
- (void)willPresentSearchController:(id)controller;
@end

@implementation RAPWebBundleEditLocationViewController

- (void)viewControllerOpenSettings:(id)settings
{
  editLocationMapView = [(EditLocationViewController *)self editLocationMapView];
  [editLocationMapView setHideAllSuplementaryViews:0];

  editLocationMapView2 = [(EditLocationViewController *)self editLocationMapView];
  [editLocationMapView2 setPrompt:&stru_1016631F0];
}

- (void)dataSource:(id)source itemTapped:(id)tapped
{
  sourceCopy = source;
  tappedCopy = tapped;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = tappedCopy;
    v9 = +[GEOMapService sharedService];
    defaultTraits = [v9 defaultTraits];

    [defaultTraits setSource:23];
    v11 = +[MKMapService sharedService];
    queryLine = [v8 queryLine];
    geoCompletionItem = [v8 geoCompletionItem];
    v14 = [v11 ticketForSearchQuery:queryLine completionItem:geoCompletionItem traits:defaultTraits searchSessionData:0];

    objc_initWeak(&location, self);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1005ABCF8;
    v15[3] = &unk_10165F290;
    objc_copyWeak(&v16, &location);
    [v14 submitWithHandler:v15 networkActivity:0];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

- (void)_updateWithInputText:(id)text
{
  textCopy = text;
  v5 = +[GEOMapService sharedService];
  defaultTraits = [v5 defaultTraits];

  -[SearchDataSource setActive:](self->_dataSource, "setActive:", [textCopy length] != 0);
  if (![(DataSource *)self->_dataSource active])
  {
    [(SearchDataSource *)self->_dataSource clearAutocompleteResults];
  }

  currentSearchString = self->_currentSearchString;
  self->_currentSearchString = textCopy;
  v7 = textCopy;

  [(SearchDataSource *)self->_dataSource setInputText:self->_currentSearchString traits:defaultTraits source:11];
}

- (void)willDismissSearchController:(id)controller
{
  promptText = [(RAPWebBundleEditLocationViewController *)self promptText];
  navigationItem = [(RAPWebBundleEditLocationViewController *)self navigationItem];
  [navigationItem setPrompt:promptText];

  [(UITableView *)self->_tableView setHidden:1];
  editLocationMapView = [(EditLocationViewController *)self editLocationMapView];
  [editLocationMapView setHidden:0];
}

- (void)willPresentSearchController:(id)controller
{
  navigationItem = [(RAPWebBundleEditLocationViewController *)self navigationItem];
  [navigationItem setPrompt:0];

  [(UITableView *)self->_tableView setHidden:0];
  editLocationMapView = [(EditLocationViewController *)self editLocationMapView];
  [editLocationMapView setHidden:1];
}

- (void)editLocationMapViewFinishedRenderingMap:(id)map
{
  if (self->_showAnnotationTitle)
  {
    mapCopy = map;
    editLocationMapView = [(EditLocationViewController *)self editLocationMapView];
    mapView = [editLocationMapView mapView];
    [mapView centerCoordinate];
    [mapCopy updateAnnotationTitleWithCenterCoordinate:?];
  }
}

- (void)editLocationMapView:(id)view didChangeViewMode:(int64_t)mode
{
  viewCopy = view;
  if ([(RAPEditLocationViewController *)self _isInEditLocationMode])
  {
    v8.receiver = self;
    v8.super_class = RAPWebBundleEditLocationViewController;
    [(RAPEditLocationViewController *)&v8 editLocationMapView:viewCopy didChangeViewMode:mode];
  }

  editLocationMapView = [(EditLocationViewController *)self editLocationMapView];
  [editLocationMapView setHideAllSuplementaryViews:1];
}

- (void)editLocationMapView:(id)view didChangeCenterCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = RAPWebBundleEditLocationViewController;
  [(RAPEditLocationViewController *)&v8 editLocationMapView:viewCopy didChangeCenterCoordinate:latitude, longitude];
  if (self->_showAnnotationTitle)
  {
    [viewCopy updateAnnotationTitleWithCenterCoordinate:{latitude, longitude}];
  }
}

- (void)setupConstraints
{
  v14.receiver = self;
  v14.super_class = RAPWebBundleEditLocationViewController;
  [(RAPEditLocationViewController *)&v14 setupConstraints];
  view = [(IOSFloatingControlsViewController *)self->_floatingControlsViewController view];
  topAnchor = [view topAnchor];
  editLocationMapView = [(EditLocationViewController *)self editLocationMapView];
  topAnchor2 = [editLocationMapView topAnchor];
  v6 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
  v15[0] = v6;
  view2 = [(IOSFloatingControlsViewController *)self->_floatingControlsViewController view];
  trailingAnchor = [view2 trailingAnchor];
  editLocationMapView2 = [(EditLocationViewController *)self editLocationMapView];
  trailingAnchor2 = [editLocationMapView2 trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  v15[1] = v11;
  v12 = [NSArray arrayWithObjects:v15 count:2];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)_setupSearch
{
  v3 = [[UISearchController alloc] initWithSearchResultsController:0];
  [v3 setDelegate:self];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"[Report an Issue Map] Search" value:@"localized string not found" table:0];
  searchBar = [v3 searchBar];
  [searchBar setPlaceholder:v5];

  searchBar2 = [v3 searchBar];
  [searchBar2 setReturnKeyType:9];

  searchBar3 = [v3 searchBar];
  [searchBar3 setDelegate:self];

  [v3 setObscuresBackgroundDuringPresentation:0];
  navigationItem = [(RAPWebBundleEditLocationViewController *)self navigationItem];
  [navigationItem setSearchController:v3];

  objc_storeStrong(&self->_searchController, v3);
  v10 = [[UITableView alloc] initWithFrame:0 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  tableView = self->_tableView;
  self->_tableView = v10;

  [(UITableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITableView *)self->_tableView setKeyboardDismissMode:1];
  [(UITableView *)self->_tableView setRowHeight:UITableViewAutomaticDimension];
  view = [(RAPWebBundleEditLocationViewController *)self view];
  [view addSubview:self->_tableView];

  leadingAnchor = [(UITableView *)self->_tableView leadingAnchor];
  view2 = [(RAPWebBundleEditLocationViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v38[0] = v34;
  trailingAnchor = [(UITableView *)self->_tableView trailingAnchor];
  view3 = [(RAPWebBundleEditLocationViewController *)self view];
  trailingAnchor2 = [view3 trailingAnchor];
  v30 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v38[1] = v30;
  topAnchor = [(UITableView *)self->_tableView topAnchor];
  view4 = [(RAPWebBundleEditLocationViewController *)self view];
  safeAreaLayoutGuide = [view4 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v38[2] = v14;
  bottomAnchor = [(UITableView *)self->_tableView bottomAnchor];
  view5 = [(RAPWebBundleEditLocationViewController *)self view];
  safeAreaLayoutGuide2 = [view5 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide2 bottomAnchor];
  v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v38[3] = v19;
  v20 = [NSArray arrayWithObjects:v38 count:4];
  [NSLayoutConstraint activateConstraints:v20];

  v21 = [[SearchDataSource alloc] initWithTableView:self->_tableView];
  [(SearchDataSource *)v21 setResultTypes:self->_resultTypes];
  [(DataSource *)v21 setDelegate:self];
  [(UITableView *)self->_tableView setDelegate:v21];
  [(UITableView *)self->_tableView setDataSource:v21];
  [(UITableView *)self->_tableView setHidden:1];
  dataSource = self->_dataSource;
  self->_dataSource = v21;
  v23 = v21;

  if ((self->_resultTypes & 4) != 0)
  {
    [RAPSearchAutocompleteBlockFilter poiAutocompleteFilterWithExcludedMUIDs:&__NSArray0__struct];
  }

  else
  {
    +[RAPSearchAutocompleteBlockFilter addressAutocompleteFilter];
  }
  v24 = ;
  autocompleteFilter = self->_autocompleteFilter;
  self->_autocompleteFilter = v24;

  editLocationMapView = [(EditLocationViewController *)self editLocationMapView];
  [editLocationMapView setHideAllSuplementaryViews:1];
}

- (void)_setupFloatingControlsAfterMapInitialized
{
  editLocationMapView = [(EditLocationViewController *)self editLocationMapView];
  [(FloatingControlsViewController *)self->_floatingControlsViewController setMapViewProviding:editLocationMapView];

  floatingControlsViewController = self->_floatingControlsViewController;
  editLocationMapView2 = [(EditLocationViewController *)self editLocationMapView];
  mapView = [editLocationMapView2 mapView];
  [(IOSFloatingControlsViewController *)floatingControlsViewController mapView:mapView regionDidChangeAnimated:0];

  [(IOSFloatingControlsViewController *)self->_floatingControlsViewController showControlsIfNeeded:3 animated:0];
  view = [(RAPWebBundleEditLocationViewController *)self view];
  view2 = [(IOSFloatingControlsViewController *)self->_floatingControlsViewController view];
  [view bringSubviewToFront:view2];

  view3 = [(RAPWebBundleEditLocationViewController *)self view];
  [view3 bringSubviewToFront:self->_tableView];
}

- (void)_setupFloatingConrols
{
  v3 = objc_alloc_init(IOSFloatingControlsViewController);
  floatingControlsViewController = self->_floatingControlsViewController;
  self->_floatingControlsViewController = v3;

  [(FloatingControlsViewController *)self->_floatingControlsViewController setOpenSettingsDelegate:self];
  view = [(IOSFloatingControlsViewController *)self->_floatingControlsViewController view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  [(RAPWebBundleEditLocationViewController *)self addChildViewController:self->_floatingControlsViewController];
  view2 = [(RAPWebBundleEditLocationViewController *)self view];
  view3 = [(IOSFloatingControlsViewController *)self->_floatingControlsViewController view];
  [view2 addSubview:view3];

  v8 = self->_floatingControlsViewController;

  [(PassThroughViewController *)v8 didMoveToParentViewController:self];
}

- (void)viewDidLoad
{
  if (sub_10000FA08(self) != 5)
  {
    [(RAPWebBundleEditLocationViewController *)self _setupFloatingConrols];
  }

  v4.receiver = self;
  v4.super_class = RAPWebBundleEditLocationViewController;
  [(RAPEditLocationViewController *)&v4 viewDidLoad];
  [(RAPWebBundleEditLocationViewController *)self _setupSearch];
  if (sub_10000FA08(self) != 5)
  {
    [(RAPWebBundleEditLocationViewController *)self _setupFloatingControlsAfterMapInitialized];
  }

  editLocationMapView = [(EditLocationViewController *)self editLocationMapView];
  [editLocationMapView setPrompt:&stru_1016631F0];
}

- (NSString)promptText
{
  navigationItem = [(RAPWebBundleEditLocationViewController *)self navigationItem];
  prompt = [navigationItem prompt];

  return prompt;
}

- (void)setPromptText:(id)text
{
  textCopy = text;
  navigationItem = [(RAPWebBundleEditLocationViewController *)self navigationItem];
  [navigationItem setPrompt:textCopy];
}

- (RAPWebBundleEditLocationViewController)initWithInitialCoordinates:(CLLocationCoordinate2D)coordinates inMapRect:(id)rect mapType:(unint64_t)type isShowingTraffic:(BOOL)traffic analyticsTarget:(int)target markerViewAttributes:(id)attributes showAnnotationTitle:(BOOL)title searchResultTypes:(unint64_t)self0 selectionHandler:(id)self1 cancelSelectionHandler:(id)self2
{
  v15 = *&target;
  trafficCopy = traffic;
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v20 = rect.var0.var1;
  v21 = rect.var0.var0;
  longitude = coordinates.longitude;
  latitude = coordinates.latitude;
  selectionHandlerCopy = selectionHandler;
  handlerCopy = handler;
  attributesCopy = attributes;
  v28 = [[RAPCorrectableEntryPoints alloc] initWithGEORoadAccessPoints:&__NSArray0__struct];
  v31.receiver = self;
  v31.super_class = RAPWebBundleEditLocationViewController;
  var1 = [(RAPEditLocationViewController *)&v31 initWithInitialCoordinates:v15 inMapRect:attributesCopy analyticsTarget:0 markerViewAttributes:v28 allowEditingEntryPoints:handlerCopy correctableEntryPoints:selectionHandlerCopy selectionHandler:latitude cancelSelectionHandler:longitude, v21, v20, var0, var1];

  if (var1)
  {
    var1->_showAnnotationTitle = title;
    var1->_resultTypes = types;
    [(EditLocationViewController *)var1 setMapType:type];
    [(EditLocationViewController *)var1 setIsShowingTraffic:trafficCopy];
  }

  return var1;
}

@end