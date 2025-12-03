@interface OfflineMapsManagementSearchAutocompleteViewController
- (BOOL)isSearchLoading;
- (OfflineMapsManagementActionCoordination)delegate;
- (void)_addSubscriptionForMapItem:(id)item;
- (void)_dismiss;
- (void)_enableTextFieldNotification:(BOOL)notification;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)_textFieldDidChange:(id)change;
- (void)dataSource:(id)source itemTapped:(id)tapped;
- (void)didBecomeCurrent;
- (void)didResignCurrent;
- (void)setIsSearchLoading:(BOOL)loading;
- (void)viewDidLoad;
- (void)willBecomeCurrent:(BOOL)current;
- (void)willResignCurrent:(BOOL)current;
@end

@implementation OfflineMapsManagementSearchAutocompleteViewController

- (OfflineMapsManagementActionCoordination)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setIsSearchLoading:(BOOL)loading
{
  loadingCopy = loading;
  self->_isSearchLoading = loading;
  activityIndicator = [(OfflineMapsManagementSearchAutocompleteViewController *)self activityIndicator];
  v6 = activityIndicator;
  if (loadingCopy)
  {
    [activityIndicator startAnimating];
  }

  else
  {
    [activityIndicator stopAnimating];
  }

  activityIndicator2 = [(OfflineMapsManagementSearchAutocompleteViewController *)self activityIndicator];
  [activityIndicator2 setHidden:!loadingCopy];
}

- (BOOL)isSearchLoading
{
  if (!+[NSThread isMainThread])
  {
    v4 = sub_10006D178();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315906;
      v8 = "[OfflineMapsManagementSearchAutocompleteViewController isSearchLoading]";
      v9 = 2080;
      v10 = "OfflineMapsManagementSearchAutocompleteViewController.m";
      v11 = 1024;
      v12 = 276;
      v13 = 2080;
      v14 = "[NSThread isMainThread]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v7, 0x26u);
    }

    if (sub_100E03634())
    {
      v5 = sub_10006D178();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = +[NSThread callStackSymbols];
        v7 = 138412290;
        v8 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@", &v7, 0xCu);
      }
    }
  }

  return self->_isSearchLoading;
}

- (void)_textFieldDidChange:(id)change
{
  searchDataSource = [(OfflineMapsManagementSearchAutocompleteViewController *)self searchDataSource];
  searchField = [(OfflineMapsManagementSearchAutocompleteViewController *)self searchField];
  text = [searchField text];
  [searchDataSource updateForSearchQuery:text];
}

- (void)dataSource:(id)source itemTapped:(id)tapped
{
  sourceCopy = source;
  tappedCopy = tapped;
  if (![(OfflineMapsManagementSearchAutocompleteViewController *)self isSearchLoading])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = tappedCopy;
      v9 = [[MKLocalSearchRequest alloc] initWithCompletion:v8];
      v10 = [[MKLocalSearch alloc] initWithRequest:v9];
      [(OfflineMapsManagementSearchAutocompleteViewController *)self setIsSearchLoading:1];
      objc_initWeak(&location, self);
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100F67720;
      v23[3] = &unk_10165E518;
      objc_copyWeak(&v24, &location);
      [v10 startWithCompletionHandler:v23];
      objc_destroyWeak(&v24);
      objc_destroyWeak(&location);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      mapItem = [tappedCopy mapItem];
      [(OfflineMapsManagementSearchAutocompleteViewController *)self _addSubscriptionForMapItem:mapItem];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = tappedCopy;
      v13 = &OBJC_PROTOCOL___MSPHistoryEntryPlaceDisplay;
      objc_opt_class();
      v14 = v12;
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      if (v16 && ([v16 historyEntry], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "conformsToProtocol:", v13), v17, v18))
      {
        v19 = v14;
      }

      else
      {
        v19 = 0;
      }

      if (v19)
      {
        historyEntry = [v19 historyEntry];
        geoMapItem = [historyEntry geoMapItem];
        v22 = [MKMapItem _itemWithGeoMapItem:geoMapItem];

        [(OfflineMapsManagementSearchAutocompleteViewController *)self _addSubscriptionForMapItem:v22];
      }
    }
  }
}

- (void)_enableTextFieldNotification:(BOOL)notification
{
  notificationCopy = notification;
  v6 = +[NSNotificationCenter defaultCenter];
  [(OfflineMapsManagementSearchAutocompleteViewController *)self searchField];
  if (notificationCopy)
    v5 = {;
    [v6 addObserver:self selector:"_textFieldDidChange:" name:UITextFieldTextDidChangeNotification object:v5];
  }

  else
    v5 = {;
    [v6 removeObserver:self name:UITextFieldTextDidChangeNotification object:v5];
  }
}

- (void)_addSubscriptionForMapItem:(id)item
{
  itemCopy = item;
  searchBar = [(OfflineMapsManagementSearchAutocompleteViewController *)self searchBar];
  [searchBar resignFirstResponder];

  _geoMapItem = [itemCopy _geoMapItem];
  offlineDownloadRegion = [_geoMapItem offlineDownloadRegion];

  name = [itemCopy name];
  v8 = +[MKUserLocation title];
  v9 = [name isEqualToString:v8];

  if (v9)
  {
    _addressFormattedAsCity = [itemCopy _addressFormattedAsCity];

    name = _addressFormattedAsCity;
  }

  delegate = [(OfflineMapsManagementSearchAutocompleteViewController *)self delegate];
  [delegate presentOfflineMapRegionSelectorForRegion:offlineDownloadRegion name:name];
}

- (void)_dismiss
{
  delegate = [(OfflineMapsManagementSearchAutocompleteViewController *)self delegate];
  [delegate closeAddNewMapSearchAutocomplete];
}

- (void)_setupConstraints
{
  modalCardHeaderView = [(OfflineMapsManagementSearchAutocompleteViewController *)self modalCardHeaderView];
  topAnchor = [modalCardHeaderView topAnchor];
  headerView = [(ContaineeViewController *)self headerView];
  topAnchor2 = [headerView topAnchor];
  v64 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v69[0] = v64;
  modalCardHeaderView2 = [(OfflineMapsManagementSearchAutocompleteViewController *)self modalCardHeaderView];
  leadingAnchor = [modalCardHeaderView2 leadingAnchor];
  headerView2 = [(ContaineeViewController *)self headerView];
  leadingAnchor2 = [headerView2 leadingAnchor];
  v59 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v69[1] = v59;
  modalCardHeaderView3 = [(OfflineMapsManagementSearchAutocompleteViewController *)self modalCardHeaderView];
  trailingAnchor = [modalCardHeaderView3 trailingAnchor];
  headerView3 = [(ContaineeViewController *)self headerView];
  trailingAnchor2 = [headerView3 trailingAnchor];
  v54 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v69[2] = v54;
  modalCardHeaderView4 = [(OfflineMapsManagementSearchAutocompleteViewController *)self modalCardHeaderView];
  bottomAnchor = [modalCardHeaderView4 bottomAnchor];
  searchBar = [(OfflineMapsManagementSearchAutocompleteViewController *)self searchBar];
  topAnchor3 = [searchBar topAnchor];
  v49 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:10.0];
  v69[3] = v49;
  searchBar2 = [(OfflineMapsManagementSearchAutocompleteViewController *)self searchBar];
  leadingAnchor3 = [searchBar2 leadingAnchor];
  headerView4 = [(ContaineeViewController *)self headerView];
  leadingAnchor4 = [headerView4 leadingAnchor];
  v44 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v69[4] = v44;
  searchBar3 = [(OfflineMapsManagementSearchAutocompleteViewController *)self searchBar];
  trailingAnchor3 = [searchBar3 trailingAnchor];
  headerView5 = [(ContaineeViewController *)self headerView];
  trailingAnchor4 = [headerView5 trailingAnchor];
  v39 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v69[5] = v39;
  searchBar4 = [(OfflineMapsManagementSearchAutocompleteViewController *)self searchBar];
  bottomAnchor2 = [searchBar4 bottomAnchor];
  headerView6 = [(ContaineeViewController *)self headerView];
  bottomAnchor3 = [headerView6 bottomAnchor];
  v34 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v69[6] = v34;
  collectionView = [(OfflineMapsManagementSearchAutocompleteViewController *)self collectionView];
  topAnchor4 = [collectionView topAnchor];
  contentView = [(ContaineeViewController *)self contentView];
  topAnchor5 = [contentView topAnchor];
  v29 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
  v69[7] = v29;
  collectionView2 = [(OfflineMapsManagementSearchAutocompleteViewController *)self collectionView];
  leadingAnchor5 = [collectionView2 leadingAnchor];
  contentView2 = [(ContaineeViewController *)self contentView];
  leadingAnchor6 = [contentView2 leadingAnchor];
  v24 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v69[8] = v24;
  collectionView3 = [(OfflineMapsManagementSearchAutocompleteViewController *)self collectionView];
  trailingAnchor5 = [collectionView3 trailingAnchor];
  contentView3 = [(ContaineeViewController *)self contentView];
  trailingAnchor6 = [contentView3 trailingAnchor];
  v19 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v69[9] = v19;
  collectionView4 = [(OfflineMapsManagementSearchAutocompleteViewController *)self collectionView];
  bottomAnchor4 = [collectionView4 bottomAnchor];
  contentView4 = [(ContaineeViewController *)self contentView];
  bottomAnchor5 = [contentView4 bottomAnchor];
  v14 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  v69[10] = v14;
  activityIndicator = [(OfflineMapsManagementSearchAutocompleteViewController *)self activityIndicator];
  trailingAnchor7 = [activityIndicator trailingAnchor];
  modalCardHeaderView5 = [(OfflineMapsManagementSearchAutocompleteViewController *)self modalCardHeaderView];
  trailingAnchor8 = [modalCardHeaderView5 trailingAnchor];
  v6 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-16.0];
  v69[11] = v6;
  activityIndicator2 = [(OfflineMapsManagementSearchAutocompleteViewController *)self activityIndicator];
  centerYAnchor = [activityIndicator2 centerYAnchor];
  modalCardHeaderView6 = [(OfflineMapsManagementSearchAutocompleteViewController *)self modalCardHeaderView];
  centerYAnchor2 = [modalCardHeaderView6 centerYAnchor];
  v11 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v69[12] = v11;
  v12 = [NSArray arrayWithObjects:v69 count:13];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)_setupViews
{
  v3 = objc_alloc_init(GEOMapDataSubscriptionManager);
  [(OfflineMapsManagementSearchAutocompleteViewController *)self setSubscriptionManager:v3];

  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController setPresentedModally:1];

  cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController2 setTakesAvailableHeight:1];

  cardPresentationController3 = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController3 setAllowsSwipeToDismiss:0];

  headerView = [(ContaineeViewController *)self headerView];
  v8 = [_TtC4Maps19ModalCardHeaderView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(ModalCardHeaderView *)v8 initWithFrame:CGRectZero.origin.x, y, width, height];
  [(OfflineMapsManagementSearchAutocompleteViewController *)self setModalCardHeaderView:height];

  modalCardHeaderView = [(OfflineMapsManagementSearchAutocompleteViewController *)self modalCardHeaderView];
  [modalCardHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];

  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"Download New Map [page title]" value:@"localized string not found" table:@"Offline"];
  modalCardHeaderView2 = [(OfflineMapsManagementSearchAutocompleteViewController *)self modalCardHeaderView];
  [modalCardHeaderView2 setTitle:v15];

  v17 = [MapsThemeButton buttonWithType:7];
  [v17 addTarget:self action:"_dismiss" forEvents:64];
  modalCardHeaderView3 = [(OfflineMapsManagementSearchAutocompleteViewController *)self modalCardHeaderView];
  [modalCardHeaderView3 setLeadingButton:v17];

  modalCardHeaderView4 = [(OfflineMapsManagementSearchAutocompleteViewController *)self modalCardHeaderView];
  [headerView addSubview:modalCardHeaderView4];

  v20 = objc_alloc_init(PassthruSearchBar);
  [(OfflineMapsManagementSearchAutocompleteViewController *)self setSearchBar:v20];

  searchBar = [(OfflineMapsManagementSearchAutocompleteViewController *)self searchBar];
  [searchBar setTranslatesAutoresizingMaskIntoConstraints:0];

  v22 = +[NSBundle mainBundle];
  v23 = [v22 localizedStringForKey:@"Search city [search bar placeholder]" value:@"localized string not found" table:@"Offline"];
  searchBar2 = [(OfflineMapsManagementSearchAutocompleteViewController *)self searchBar];
  [searchBar2 setPlaceholder:v23];

  searchBar3 = [(OfflineMapsManagementSearchAutocompleteViewController *)self searchBar];
  [searchBar3 setDelegate:self];

  searchBar4 = [(OfflineMapsManagementSearchAutocompleteViewController *)self searchBar];
  [searchBar4 setTextFieldDelegate:self];

  searchBar5 = [(OfflineMapsManagementSearchAutocompleteViewController *)self searchBar];
  [headerView addSubview:searchBar5];

  searchBar6 = [(OfflineMapsManagementSearchAutocompleteViewController *)self searchBar];
  searchTextField = [searchBar6 searchTextField];
  [(OfflineMapsManagementSearchAutocompleteViewController *)self setSearchField:searchTextField];

  searchField = [(OfflineMapsManagementSearchAutocompleteViewController *)self searchField];
  [searchField setReturnKeyType:9];

  v31 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  [(OfflineMapsManagementSearchAutocompleteViewController *)self setActivityIndicator:v31];

  activityIndicator = [(OfflineMapsManagementSearchAutocompleteViewController *)self activityIndicator];
  [activityIndicator setTranslatesAutoresizingMaskIntoConstraints:0];

  modalCardHeaderView5 = [(OfflineMapsManagementSearchAutocompleteViewController *)self modalCardHeaderView];
  activityIndicator2 = [(OfflineMapsManagementSearchAutocompleteViewController *)self activityIndicator];
  [modalCardHeaderView5 addSubview:activityIndicator2];

  objc_initWeak(&location, self);
  v35 = [UICollectionViewCompositionalLayout alloc];
  v45 = _NSConcreteStackBlock;
  v46 = 3221225472;
  v47 = sub_100F6861C;
  v48 = &unk_10165E4F0;
  objc_copyWeak(&v49, &location);
  v36 = [v35 initWithSectionProvider:&v45];
  v37 = [UICollectionView alloc];
  v38 = [v37 initWithFrame:v36 collectionViewLayout:{CGRectZero.origin.x, y, width, height, v45, v46, v47, v48}];
  [(OfflineMapsManagementSearchAutocompleteViewController *)self setCollectionView:v38];

  collectionView = [(OfflineMapsManagementSearchAutocompleteViewController *)self collectionView];
  [collectionView setTranslatesAutoresizingMaskIntoConstraints:0];

  v40 = +[UIColor clearColor];
  collectionView2 = [(OfflineMapsManagementSearchAutocompleteViewController *)self collectionView];
  [collectionView2 setBackgroundColor:v40];

  collectionView3 = [(OfflineMapsManagementSearchAutocompleteViewController *)self collectionView];
  [collectionView3 setAccessibilityIdentifier:@"OfflineMapsSearchACCollectionView"];

  contentView = [(ContaineeViewController *)self contentView];
  collectionView4 = [(OfflineMapsManagementSearchAutocompleteViewController *)self collectionView];
  [contentView addSubview:collectionView4];

  objc_destroyWeak(&v49);
  objc_destroyWeak(&location);
}

- (void)didResignCurrent
{
  [(OfflineMapsManagementSearchAutocompleteViewController *)self _enableTextFieldNotification:0];
  v3.receiver = self;
  v3.super_class = OfflineMapsManagementSearchAutocompleteViewController;
  [(ContaineeViewController *)&v3 didResignCurrent];
}

- (void)willResignCurrent:(BOOL)current
{
  v5.receiver = self;
  v5.super_class = OfflineMapsManagementSearchAutocompleteViewController;
  [(ContaineeViewController *)&v5 willResignCurrent:current];
  searchDataSource = [(OfflineMapsManagementSearchAutocompleteViewController *)self searchDataSource];
  [searchDataSource setActive:0];
}

- (void)didBecomeCurrent
{
  v4.receiver = self;
  v4.super_class = OfflineMapsManagementSearchAutocompleteViewController;
  [(ContaineeViewController *)&v4 didBecomeCurrent];
  searchField = [(OfflineMapsManagementSearchAutocompleteViewController *)self searchField];
  [searchField becomeFirstResponder];

  [(OfflineMapsManagementSearchAutocompleteViewController *)self _enableTextFieldNotification:1];
}

- (void)willBecomeCurrent:(BOOL)current
{
  v9.receiver = self;
  v9.super_class = OfflineMapsManagementSearchAutocompleteViewController;
  [(ContaineeViewController *)&v9 willBecomeCurrent:current];
  v4 = [OfflineMapsManagementSearchAutocompleteDataSource alloc];
  collectionView = [(OfflineMapsManagementSearchAutocompleteViewController *)self collectionView];
  v6 = [(OfflineMapsManagementSearchAutocompleteDataSource *)v4 initWithCollectionView:collectionView updateLocation:1];
  [(OfflineMapsManagementSearchAutocompleteViewController *)self setSearchDataSource:v6];

  searchDataSource = [(OfflineMapsManagementSearchAutocompleteViewController *)self searchDataSource];
  [searchDataSource setDelegate:self];

  searchDataSource2 = [(OfflineMapsManagementSearchAutocompleteViewController *)self searchDataSource];
  [searchDataSource2 setActive:1];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = OfflineMapsManagementSearchAutocompleteViewController;
  [(ContaineeViewController *)&v3 viewDidLoad];
  [(OfflineMapsManagementSearchAutocompleteViewController *)self _setupViews];
  [(OfflineMapsManagementSearchAutocompleteViewController *)self _setupConstraints];
}

@end