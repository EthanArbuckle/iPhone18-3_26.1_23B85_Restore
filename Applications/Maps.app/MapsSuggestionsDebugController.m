@interface MapsSuggestionsDebugController
- (MapsDebugNavigationTableRow)originNavigationRow;
- (MapsDebugViewControllerDelegate)delegate;
- (MapsDebugViewControllerNavigationDelegate)navigationDelegate;
- (void)_addMapsSuggestionsSettingsToDebugVC:(id)a3;
- (void)_setupDebugMapController;
- (void)_setupDebugValuesController;
- (void)setupChildViewController:(id)a3;
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

- (void)setupChildViewController:(id)a3
{
  v6 = a3;
  [v6 willMoveToParentViewController:self];
  v4 = [(MapsSuggestionsDebugController *)self view];
  v5 = [v6 view];
  [v4 addSubview:v5];

  [(MapsSuggestionsDebugController *)self addChildViewController:v6];
  [v6 didMoveToParentViewController:self];
}

- (void)_addMapsSuggestionsSettingsToDebugVC:(id)a3
{
  v4 = a3;
  v5 = [v4 addSectionWithTitle:@"Logging" content:&stru_101658458];
  v6 = [v4 addSectionWithTitle:@"Transportation Mode" content:&stru_1016584B8];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100EC4B04;
  v8[3] = &unk_1016612C8;
  v8[4] = self;
  v7 = [v4 addSectionWithTitle:@"Real-Time Destination Graph Visualizer" content:v8];
}

- (void)_setupDebugMapController
{
  v3 = objc_alloc_init(MapsSuggestionsDebugMapController);
  mapVC = self->_mapVC;
  self->_mapVC = v3;

  [(MapsSuggestionsDebugController *)self setupChildViewController:self->_mapVC];
  v5 = [(MapsSuggestionsDebugMapController *)self->_mapVC view];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(MapsSuggestionsDebugMapController *)self->_mapVC view];
  v7 = [v6 bottomAnchor];
  v8 = [(MapsSuggestionsDebugController *)self view];
  v9 = [v8 bottomAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  [v10 setActive:1];

  v11 = [(MapsSuggestionsDebugMapController *)self->_mapVC view];
  v12 = [v11 topAnchor];
  v13 = [(MapsDebugValuesViewController *)self->_debugValuesVC view];
  v14 = [v13 bottomAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  [v15 setActive:1];

  v16 = [(MapsSuggestionsDebugMapController *)self->_mapVC view];
  v17 = [v16 leftAnchor];
  v18 = [(MapsSuggestionsDebugController *)self view];
  v19 = [v18 leftAnchor];
  v20 = [v17 constraintEqualToAnchor:v19];
  [v20 setActive:1];

  v21 = [(MapsSuggestionsDebugMapController *)self->_mapVC view];
  v22 = [v21 rightAnchor];
  v23 = [(MapsSuggestionsDebugController *)self view];
  v24 = [v23 rightAnchor];
  v25 = [v22 constraintEqualToAnchor:v24];
  [v25 setActive:1];

  v26 = [(MapsSuggestionsDebugMapController *)self->_mapVC view];
  [v26 setHidden:GEOConfigGetBOOL() ^ 1];
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
  v6 = [(MapsDebugValuesViewController *)self->_debugValuesVC view];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [(MapsDebugValuesViewController *)self->_debugValuesVC view];
  v8 = [v7 heightAnchor];
  v9 = [v8 constraintEqualToConstant:self->_debugValuesVCHeight];
  [v9 setActive:1];

  v10 = [(MapsDebugValuesViewController *)self->_debugValuesVC view];
  v11 = [v10 topAnchor];
  v12 = [(MapsSuggestionsDebugController *)self view];
  v13 = [v12 topAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  [v14 setActive:1];

  v15 = [(MapsDebugValuesViewController *)self->_debugValuesVC view];
  v16 = [v15 leftAnchor];
  v17 = [(MapsSuggestionsDebugController *)self view];
  v18 = [v17 leftAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];
  [v19 setActive:1];

  v20 = [(MapsDebugValuesViewController *)self->_debugValuesVC view];
  v21 = [v20 rightAnchor];
  v22 = [(MapsSuggestionsDebugController *)self view];
  v23 = [v22 rightAnchor];
  v24 = [v21 constraintEqualToAnchor:v23];
  [v24 setActive:1];

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = MapsSuggestionsDebugController;
  [(MapsSuggestionsDebugController *)&v6 viewDidLoad];
  v3 = [(MapsSuggestionsDebugController *)self navigationItem];
  [v3 setTitle:@"Debug Settings"];

  self->_debugValuesVCHeight = 450.0;
  v4 = [(MapsSuggestionsDebugController *)self view];
  v5 = +[UIColor systemBackgroundColor];
  [v4 setBackgroundColor:v5];

  [(MapsSuggestionsDebugController *)self _setupDebugValuesController];
  [(MapsSuggestionsDebugController *)self _setupDebugMapController];
}

@end