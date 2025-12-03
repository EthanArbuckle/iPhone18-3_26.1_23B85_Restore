@interface MapsSuggestionsDebugController
- (MapsDebugNavigationTableRow)originNavigationRow;
- (MapsDebugViewControllerDelegate)delegate;
- (MapsDebugViewControllerNavigationDelegate)navigationDelegate;
- (void)_addMapsSuggestionsSettingsToDebugVC:(id)c;
- (void)_setupDebugMapController;
- (void)_setupDebugValuesController;
- (void)setupChildViewController:(id)controller;
- (void)viewDidLoad;
@end

@implementation MapsSuggestionsDebugController

- (MapsDebugNavigationTableRow)originNavigationRow
{
  WeakRetained = objc_loadWeakRetained(&self->_originNavigationRow);

  return WeakRetained;
}

- (MapsDebugViewControllerNavigationDelegate)navigationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);

  return WeakRetained;
}

- (MapsDebugViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setupChildViewController:(id)controller
{
  controllerCopy = controller;
  [controllerCopy willMoveToParentViewController:self];
  view = [(MapsSuggestionsDebugController *)self view];
  view2 = [controllerCopy view];
  [view addSubview:view2];

  [(MapsSuggestionsDebugController *)self addChildViewController:controllerCopy];
  [controllerCopy didMoveToParentViewController:self];
}

- (void)_addMapsSuggestionsSettingsToDebugVC:(id)c
{
  cCopy = c;
  v5 = [cCopy addSectionWithTitle:@"Logging" content:&stru_101658458];
  v6 = [cCopy addSectionWithTitle:@"Transportation Mode" content:&stru_1016584B8];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100EC4B04;
  v8[3] = &unk_1016612C8;
  v8[4] = self;
  v7 = [cCopy addSectionWithTitle:@"Real-Time Destination Graph Visualizer" content:v8];
}

- (void)_setupDebugMapController
{
  v3 = objc_alloc_init(MapsSuggestionsDebugMapController);
  mapVC = self->_mapVC;
  self->_mapVC = v3;

  [(MapsSuggestionsDebugController *)self setupChildViewController:self->_mapVC];
  view = [(MapsSuggestionsDebugMapController *)self->_mapVC view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  view2 = [(MapsSuggestionsDebugMapController *)self->_mapVC view];
  bottomAnchor = [view2 bottomAnchor];
  view3 = [(MapsSuggestionsDebugController *)self view];
  bottomAnchor2 = [view3 bottomAnchor];
  v10 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v10 setActive:1];

  view4 = [(MapsSuggestionsDebugMapController *)self->_mapVC view];
  topAnchor = [view4 topAnchor];
  view5 = [(MapsDebugValuesViewController *)self->_debugValuesVC view];
  bottomAnchor3 = [view5 bottomAnchor];
  v15 = [topAnchor constraintEqualToAnchor:bottomAnchor3];
  [v15 setActive:1];

  view6 = [(MapsSuggestionsDebugMapController *)self->_mapVC view];
  leftAnchor = [view6 leftAnchor];
  view7 = [(MapsSuggestionsDebugController *)self view];
  leftAnchor2 = [view7 leftAnchor];
  v20 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [v20 setActive:1];

  view8 = [(MapsSuggestionsDebugMapController *)self->_mapVC view];
  rightAnchor = [view8 rightAnchor];
  view9 = [(MapsSuggestionsDebugController *)self view];
  rightAnchor2 = [view9 rightAnchor];
  v25 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [v25 setActive:1];

  view10 = [(MapsSuggestionsDebugMapController *)self->_mapVC view];
  [view10 setHidden:GEOConfigGetBOOL() ^ 1];
}

- (void)_setupDebugValuesController
{
  v3 = objc_alloc_init(MapsDebugValuesViewController);
  debugValuesVC = self->_debugValuesVC;
  self->_debugValuesVC = v3;

  objc_initWeak(&location, self);
  v5 = self->_debugValuesVC;
  v25 = _NSConcreteStackBlock;
  v26 = 3221225472;
  v27 = sub_100EC5214;
  v28 = &unk_101658C70;
  objc_copyWeak(&v29, &location);
  [(MapsDebugValuesViewController *)v5 setPrepareContentBlock:&v25];
  [(MapsSuggestionsDebugController *)self setupChildViewController:self->_debugValuesVC, v25, v26, v27, v28];
  view = [(MapsDebugValuesViewController *)self->_debugValuesVC view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  view2 = [(MapsDebugValuesViewController *)self->_debugValuesVC view];
  heightAnchor = [view2 heightAnchor];
  v9 = [heightAnchor constraintEqualToConstant:self->_debugValuesVCHeight];
  [v9 setActive:1];

  view3 = [(MapsDebugValuesViewController *)self->_debugValuesVC view];
  topAnchor = [view3 topAnchor];
  view4 = [(MapsSuggestionsDebugController *)self view];
  topAnchor2 = [view4 topAnchor];
  v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v14 setActive:1];

  view5 = [(MapsDebugValuesViewController *)self->_debugValuesVC view];
  leftAnchor = [view5 leftAnchor];
  view6 = [(MapsSuggestionsDebugController *)self view];
  leftAnchor2 = [view6 leftAnchor];
  v19 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [v19 setActive:1];

  view7 = [(MapsDebugValuesViewController *)self->_debugValuesVC view];
  rightAnchor = [view7 rightAnchor];
  view8 = [(MapsSuggestionsDebugController *)self view];
  rightAnchor2 = [view8 rightAnchor];
  v24 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [v24 setActive:1];

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = MapsSuggestionsDebugController;
  [(MapsSuggestionsDebugController *)&v6 viewDidLoad];
  navigationItem = [(MapsSuggestionsDebugController *)self navigationItem];
  [navigationItem setTitle:@"Debug Settings"];

  self->_debugValuesVCHeight = 450.0;
  view = [(MapsSuggestionsDebugController *)self view];
  v5 = +[UIColor systemBackgroundColor];
  [view setBackgroundColor:v5];

  [(MapsSuggestionsDebugController *)self _setupDebugValuesController];
  [(MapsSuggestionsDebugController *)self _setupDebugMapController];
}

@end