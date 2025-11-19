@interface RAPSearchAutocompleteViewController
+ (id)addressAutocompleteViewControllerWithInitialSearchString:(id)a3;
+ (id)poiAutocompleteViewControllerWithBoundedMapRegion:(id)a3 excludedMUIDs:(id)a4;
- (RAPSearchAutocompleteDelegate)delegate;
- (RAPSearchAutocompleteViewController)initWithPlaceholderText:(id)a3 initialSearchString:(id)a4 allowsFreeformResultText:(BOOL)a5 resultTypes:(unint64_t)a6 blockFilter:(id)a7;
- (void)_cancelTapped;
- (void)_dismissViewController;
- (void)_updateWithInputText:(id)a3;
- (void)dataSource:(id)a3 itemTapped:(id)a4;
- (void)searchBarSearchButtonClicked:(id)a3;
- (void)setTitleText:(id)a3;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation RAPSearchAutocompleteViewController

- (RAPSearchAutocompleteDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateWithInputText:(id)a3
{
  v4 = a3;
  v5 = +[GEOMapService sharedService];
  v10 = [v5 defaultTraits];

  v6 = [(RAPSearchAutocompleteViewController *)self boundedMapRegion];

  if (v6)
  {
    v7 = [(RAPSearchAutocompleteViewController *)self boundedMapRegion];
    [v10 setMapRegion:v7];
  }

  -[SearchDataSource setActive:](self->_dataSource, "setActive:", [v4 length] != 0);
  if (![(DataSource *)self->_dataSource active])
  {
    [(SearchDataSource *)self->_dataSource clearAutocompleteResults];
  }

  currentSearchString = self->_currentSearchString;
  self->_currentSearchString = v4;
  v9 = v4;

  [(SearchDataSource *)self->_dataSource setInputText:self->_currentSearchString traits:v10 source:11];
}

- (void)searchBarSearchButtonClicked:(id)a3
{
  v7 = a3;
  if ([(RAPSearchAutocompleteViewController *)self allowsFreeformResultText])
  {
    v4 = objc_alloc_init(RAPSearchAutocompleteResult);
    v5 = [v7 text];
    [(RAPSearchAutocompleteResult *)v4 setSearchBarText:v5];

    [(RAPSearchAutocompleteResult *)v4 setSelectedMapItem:0];
    v6 = [(RAPSearchAutocompleteViewController *)self delegate];
    [v6 rapSearchAutocompleteViewController:self finishedPickingAutocompleteResult:v4 isAutocompleteResult:0];

    [(RAPSearchAutocompleteViewController *)self _dismissViewController];
  }

  else
  {
    [v7 resignFirstResponder];
  }
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v5 = [a3 searchBar];
  v4 = [v5 text];
  [(RAPSearchAutocompleteViewController *)self _updateWithInputText:v4];
}

- (void)dataSource:(id)a3 itemTapped:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v9 = +[GEOMapService sharedService];
    v10 = [v9 defaultTraits];

    [v10 setSource:23];
    v11 = +[MKMapService sharedService];
    v12 = [v8 queryLine];
    v13 = [v8 geoCompletionItem];
    v14 = [v11 ticketForSearchQuery:v12 completionItem:v13 traits:v10 searchSessionData:0];

    objc_initWeak(&location, self);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100CC9E9C;
    v15[3] = &unk_10165F290;
    objc_copyWeak(&v16, &location);
    [v14 submitWithHandler:v15 networkActivity:0];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

- (void)_dismissViewController
{
  [(UISearchController *)self->_searchController setActive:0];
  v3 = [(RAPSearchAutocompleteViewController *)self traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 5)
  {
    v6 = [(RAPSearchAutocompleteViewController *)self navigationController];
    v5 = [v6 popViewControllerAnimated:1];
  }

  else
  {

    [(RAPSearchAutocompleteViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_cancelTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 rapSearchAutocompleteViewControllerDidCancel:self];
  }

  [(RAPSearchAutocompleteViewController *)self _dismissViewController];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = RAPSearchAutocompleteViewController;
  [(RAPSearchAutocompleteViewController *)&v5 viewDidAppear:a3];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100CCA1A8;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)viewDidLoad
{
  v43.receiver = self;
  v43.super_class = RAPSearchAutocompleteViewController;
  [(RAPSearchAutocompleteViewController *)&v43 viewDidLoad];
  v3 = +[UIColor systemBackgroundColor];
  v4 = [(RAPSearchAutocompleteViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [[UITableView alloc] initWithFrame:0 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  tableView = self->_tableView;
  self->_tableView = v5;

  [(UITableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITableView *)self->_tableView setKeyboardDismissMode:1];
  [(UITableView *)self->_tableView setRowHeight:UITableViewAutomaticDimension];
  [(UISearchController *)self->_searchController setAccessibilityIdentifier:@"RAPAddressSearchBar"];
  v7 = [(RAPSearchAutocompleteViewController *)self view];
  [v7 addSubview:self->_tableView];

  v41 = [(UITableView *)self->_tableView leadingAnchor];
  v42 = [(RAPSearchAutocompleteViewController *)self view];
  v40 = [v42 leadingAnchor];
  v39 = [v41 constraintEqualToAnchor:v40];
  v44[0] = v39;
  v37 = [(UITableView *)self->_tableView trailingAnchor];
  v38 = [(RAPSearchAutocompleteViewController *)self view];
  v36 = [v38 trailingAnchor];
  v35 = [v37 constraintEqualToAnchor:v36];
  v44[1] = v35;
  v34 = [(UITableView *)self->_tableView topAnchor];
  v8 = [(RAPSearchAutocompleteViewController *)self view];
  v9 = [v8 safeAreaLayoutGuide];
  v10 = [v9 topAnchor];
  v11 = [v34 constraintEqualToAnchor:v10];
  v44[2] = v11;
  v12 = [(UITableView *)self->_tableView bottomAnchor];
  v13 = [(RAPSearchAutocompleteViewController *)self view];
  v14 = [v13 bottomAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  v44[3] = v15;
  v16 = [NSArray arrayWithObjects:v44 count:4];
  [NSLayoutConstraint activateConstraints:v16];

  v17 = [(RAPSearchAutocompleteViewController *)self navigationItem];
  [v17 setHidesSearchBarWhenScrolling:0];

  v18 = [(RAPSearchAutocompleteViewController *)self traitCollection];
  v19 = [v18 userInterfaceIdiom];

  if (v19 != 5)
  {
    v20 = [[UISearchController alloc] initWithSearchResultsController:0];
    [(UISearchController *)v20 setSearchResultsUpdater:self];
    [(UISearchController *)v20 setObscuresBackgroundDuringPresentation:0];
    [(UISearchController *)v20 setHidesNavigationBarDuringPresentation:0];
    v21 = [(RAPSearchAutocompleteViewController *)self placeholderText];
    v22 = [(UISearchController *)v20 searchBar];
    [v22 setPlaceholder:v21];

    [(UISearchController *)v20 setActive:1];
    v23 = [(UISearchController *)v20 searchBar];
    [v23 setReturnKeyType:9];

    v24 = [(UISearchController *)v20 searchBar];
    [v24 setDelegate:self];

    currentSearchString = self->_currentSearchString;
    v26 = [(UISearchController *)v20 searchBar];
    [v26 setText:currentSearchString];

    [(UISearchController *)v20 setAutomaticallyShowsCancelButton:0];
    v27 = [(RAPSearchAutocompleteViewController *)self navigationItem];
    [v27 setSearchController:v20];

    searchController = self->_searchController;
    self->_searchController = v20;
  }

  v29 = [[SearchDataSource alloc] initWithTableView:self->_tableView];
  [(UITableView *)self->_tableView setDelegate:v29];
  [(UITableView *)self->_tableView setDataSource:v29];
  [(SearchDataSource *)v29 setResultTypes:self->_resultTypes];
  [(DataSource *)v29 setDelegate:self];
  dataSource = self->_dataSource;
  self->_dataSource = v29;
  v31 = v29;

  v32 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancelTapped"];
  v33 = [(RAPSearchAutocompleteViewController *)self navigationItem];
  [v33 setRightBarButtonItem:v32];
}

- (void)setTitleText:(id)a3
{
  v7 = a3;
  if (![(NSString *)self->_titleText isEqualToString:?])
  {
    objc_storeStrong(&self->_titleText, a3);
    titleText = self->_titleText;
    v6 = [(RAPSearchAutocompleteViewController *)self navigationItem];
    [v6 setTitle:titleText];
  }
}

- (RAPSearchAutocompleteViewController)initWithPlaceholderText:(id)a3 initialSearchString:(id)a4 allowsFreeformResultText:(BOOL)a5 resultTypes:(unint64_t)a6 blockFilter:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = RAPSearchAutocompleteViewController;
  v16 = [(RAPSearchAutocompleteViewController *)&v19 initWithNibName:0 bundle:0];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_placeholderText, a3);
    objc_storeStrong(&v17->_currentSearchString, a4);
    v17->_allowsFreeformResultText = a5;
    v17->_resultTypes = a6;
    objc_storeStrong(&v17->_autocompleteFilter, a7);
  }

  return v17;
}

+ (id)poiAutocompleteViewControllerWithBoundedMapRegion:(id)a3 excludedMUIDs:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [RAPSearchAutocompleteViewController alloc];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"Enter a Place [RAP]" value:@"localized string not found" table:0];
  v10 = [RAPSearchAutocompleteBlockFilter poiAutocompleteFilterWithExcludedMUIDs:v5];

  v11 = [(RAPSearchAutocompleteViewController *)v7 initWithPlaceholderText:v9 initialSearchString:0 allowsFreeformResultText:0 resultTypes:2 blockFilter:v10];
  [(RAPSearchAutocompleteViewController *)v11 setBoundedMapRegion:v6];

  return v11;
}

+ (id)addressAutocompleteViewControllerWithInitialSearchString:(id)a3
{
  v3 = a3;
  v4 = [RAPSearchAutocompleteViewController alloc];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Enter an Address [RAP]" value:@"localized string not found" table:0];
  v7 = +[RAPSearchAutocompleteBlockFilter addressAutocompleteFilter];
  v8 = [(RAPSearchAutocompleteViewController *)v4 initWithPlaceholderText:v6 initialSearchString:v3 allowsFreeformResultText:1 resultTypes:1 blockFilter:v7];

  return v8;
}

@end