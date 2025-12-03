@interface RAPSearchAutocompleteViewController
+ (id)addressAutocompleteViewControllerWithInitialSearchString:(id)string;
+ (id)poiAutocompleteViewControllerWithBoundedMapRegion:(id)region excludedMUIDs:(id)ds;
- (RAPSearchAutocompleteDelegate)delegate;
- (RAPSearchAutocompleteViewController)initWithPlaceholderText:(id)text initialSearchString:(id)string allowsFreeformResultText:(BOOL)resultText resultTypes:(unint64_t)types blockFilter:(id)filter;
- (void)_cancelTapped;
- (void)_dismissViewController;
- (void)_updateWithInputText:(id)text;
- (void)dataSource:(id)source itemTapped:(id)tapped;
- (void)searchBarSearchButtonClicked:(id)clicked;
- (void)setTitleText:(id)text;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation RAPSearchAutocompleteViewController

- (RAPSearchAutocompleteDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateWithInputText:(id)text
{
  textCopy = text;
  v5 = +[GEOMapService sharedService];
  defaultTraits = [v5 defaultTraits];

  boundedMapRegion = [(RAPSearchAutocompleteViewController *)self boundedMapRegion];

  if (boundedMapRegion)
  {
    boundedMapRegion2 = [(RAPSearchAutocompleteViewController *)self boundedMapRegion];
    [defaultTraits setMapRegion:boundedMapRegion2];
  }

  -[SearchDataSource setActive:](self->_dataSource, "setActive:", [textCopy length] != 0);
  if (![(DataSource *)self->_dataSource active])
  {
    [(SearchDataSource *)self->_dataSource clearAutocompleteResults];
  }

  currentSearchString = self->_currentSearchString;
  self->_currentSearchString = textCopy;
  v9 = textCopy;

  [(SearchDataSource *)self->_dataSource setInputText:self->_currentSearchString traits:defaultTraits source:11];
}

- (void)searchBarSearchButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  if ([(RAPSearchAutocompleteViewController *)self allowsFreeformResultText])
  {
    v4 = objc_alloc_init(RAPSearchAutocompleteResult);
    text = [clickedCopy text];
    [(RAPSearchAutocompleteResult *)v4 setSearchBarText:text];

    [(RAPSearchAutocompleteResult *)v4 setSelectedMapItem:0];
    delegate = [(RAPSearchAutocompleteViewController *)self delegate];
    [delegate rapSearchAutocompleteViewController:self finishedPickingAutocompleteResult:v4 isAutocompleteResult:0];

    [(RAPSearchAutocompleteViewController *)self _dismissViewController];
  }

  else
  {
    [clickedCopy resignFirstResponder];
  }
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  searchBar = [controller searchBar];
  text = [searchBar text];
  [(RAPSearchAutocompleteViewController *)self _updateWithInputText:text];
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
  traitCollection = [(RAPSearchAutocompleteViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    navigationController = [(RAPSearchAutocompleteViewController *)self navigationController];
    v5 = [navigationController popViewControllerAnimated:1];
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

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = RAPSearchAutocompleteViewController;
  [(RAPSearchAutocompleteViewController *)&v5 viewDidAppear:appear];
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
  view = [(RAPSearchAutocompleteViewController *)self view];
  [view setBackgroundColor:v3];

  v5 = [[UITableView alloc] initWithFrame:0 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  tableView = self->_tableView;
  self->_tableView = v5;

  [(UITableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITableView *)self->_tableView setKeyboardDismissMode:1];
  [(UITableView *)self->_tableView setRowHeight:UITableViewAutomaticDimension];
  [(UISearchController *)self->_searchController setAccessibilityIdentifier:@"RAPAddressSearchBar"];
  view2 = [(RAPSearchAutocompleteViewController *)self view];
  [view2 addSubview:self->_tableView];

  leadingAnchor = [(UITableView *)self->_tableView leadingAnchor];
  view3 = [(RAPSearchAutocompleteViewController *)self view];
  leadingAnchor2 = [view3 leadingAnchor];
  v39 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v44[0] = v39;
  trailingAnchor = [(UITableView *)self->_tableView trailingAnchor];
  view4 = [(RAPSearchAutocompleteViewController *)self view];
  trailingAnchor2 = [view4 trailingAnchor];
  v35 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v44[1] = v35;
  topAnchor = [(UITableView *)self->_tableView topAnchor];
  view5 = [(RAPSearchAutocompleteViewController *)self view];
  safeAreaLayoutGuide = [view5 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v44[2] = v11;
  bottomAnchor = [(UITableView *)self->_tableView bottomAnchor];
  view6 = [(RAPSearchAutocompleteViewController *)self view];
  bottomAnchor2 = [view6 bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v44[3] = v15;
  v16 = [NSArray arrayWithObjects:v44 count:4];
  [NSLayoutConstraint activateConstraints:v16];

  navigationItem = [(RAPSearchAutocompleteViewController *)self navigationItem];
  [navigationItem setHidesSearchBarWhenScrolling:0];

  traitCollection = [(RAPSearchAutocompleteViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom != 5)
  {
    v20 = [[UISearchController alloc] initWithSearchResultsController:0];
    [(UISearchController *)v20 setSearchResultsUpdater:self];
    [(UISearchController *)v20 setObscuresBackgroundDuringPresentation:0];
    [(UISearchController *)v20 setHidesNavigationBarDuringPresentation:0];
    placeholderText = [(RAPSearchAutocompleteViewController *)self placeholderText];
    searchBar = [(UISearchController *)v20 searchBar];
    [searchBar setPlaceholder:placeholderText];

    [(UISearchController *)v20 setActive:1];
    searchBar2 = [(UISearchController *)v20 searchBar];
    [searchBar2 setReturnKeyType:9];

    searchBar3 = [(UISearchController *)v20 searchBar];
    [searchBar3 setDelegate:self];

    currentSearchString = self->_currentSearchString;
    searchBar4 = [(UISearchController *)v20 searchBar];
    [searchBar4 setText:currentSearchString];

    [(UISearchController *)v20 setAutomaticallyShowsCancelButton:0];
    navigationItem2 = [(RAPSearchAutocompleteViewController *)self navigationItem];
    [navigationItem2 setSearchController:v20];

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
  navigationItem3 = [(RAPSearchAutocompleteViewController *)self navigationItem];
  [navigationItem3 setRightBarButtonItem:v32];
}

- (void)setTitleText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_titleText isEqualToString:?])
  {
    objc_storeStrong(&self->_titleText, text);
    titleText = self->_titleText;
    navigationItem = [(RAPSearchAutocompleteViewController *)self navigationItem];
    [navigationItem setTitle:titleText];
  }
}

- (RAPSearchAutocompleteViewController)initWithPlaceholderText:(id)text initialSearchString:(id)string allowsFreeformResultText:(BOOL)resultText resultTypes:(unint64_t)types blockFilter:(id)filter
{
  textCopy = text;
  stringCopy = string;
  filterCopy = filter;
  v19.receiver = self;
  v19.super_class = RAPSearchAutocompleteViewController;
  v16 = [(RAPSearchAutocompleteViewController *)&v19 initWithNibName:0 bundle:0];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_placeholderText, text);
    objc_storeStrong(&v17->_currentSearchString, string);
    v17->_allowsFreeformResultText = resultText;
    v17->_resultTypes = types;
    objc_storeStrong(&v17->_autocompleteFilter, filter);
  }

  return v17;
}

+ (id)poiAutocompleteViewControllerWithBoundedMapRegion:(id)region excludedMUIDs:(id)ds
{
  dsCopy = ds;
  regionCopy = region;
  v7 = [RAPSearchAutocompleteViewController alloc];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"Enter a Place [RAP]" value:@"localized string not found" table:0];
  v10 = [RAPSearchAutocompleteBlockFilter poiAutocompleteFilterWithExcludedMUIDs:dsCopy];

  v11 = [(RAPSearchAutocompleteViewController *)v7 initWithPlaceholderText:v9 initialSearchString:0 allowsFreeformResultText:0 resultTypes:2 blockFilter:v10];
  [(RAPSearchAutocompleteViewController *)v11 setBoundedMapRegion:regionCopy];

  return v11;
}

+ (id)addressAutocompleteViewControllerWithInitialSearchString:(id)string
{
  stringCopy = string;
  v4 = [RAPSearchAutocompleteViewController alloc];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Enter an Address [RAP]" value:@"localized string not found" table:0];
  v7 = +[RAPSearchAutocompleteBlockFilter addressAutocompleteFilter];
  v8 = [(RAPSearchAutocompleteViewController *)v4 initWithPlaceholderText:v6 initialSearchString:stringCopy allowsFreeformResultText:1 resultTypes:1 blockFilter:v7];

  return v8;
}

@end