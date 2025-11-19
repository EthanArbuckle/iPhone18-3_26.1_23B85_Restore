@interface OfflineMapsManagementSearchAutocompleteViewController
- (BOOL)isSearchLoading;
- (OfflineMapsManagementActionCoordination)delegate;
- (void)_addSubscriptionForMapItem:(id)a3;
- (void)_dismiss;
- (void)_enableTextFieldNotification:(BOOL)a3;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)_textFieldDidChange:(id)a3;
- (void)dataSource:(id)a3 itemTapped:(id)a4;
- (void)didBecomeCurrent;
- (void)didResignCurrent;
- (void)setIsSearchLoading:(BOOL)a3;
- (void)viewDidLoad;
- (void)willBecomeCurrent:(BOOL)a3;
- (void)willResignCurrent:(BOOL)a3;
@end

@implementation OfflineMapsManagementSearchAutocompleteViewController

- (OfflineMapsManagementActionCoordination)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setIsSearchLoading:(BOOL)a3
{
  v3 = a3;
  self->_isSearchLoading = a3;
  v5 = [(OfflineMapsManagementSearchAutocompleteViewController *)self activityIndicator];
  v6 = v5;
  if (v3)
  {
    [v5 startAnimating];
  }

  else
  {
    [v5 stopAnimating];
  }

  v7 = [(OfflineMapsManagementSearchAutocompleteViewController *)self activityIndicator];
  [v7 setHidden:!v3];
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

- (void)_textFieldDidChange:(id)a3
{
  v6 = [(OfflineMapsManagementSearchAutocompleteViewController *)self searchDataSource];
  v4 = [(OfflineMapsManagementSearchAutocompleteViewController *)self searchField];
  v5 = [v4 text];
  [v6 updateForSearchQuery:v5];
}

- (void)dataSource:(id)a3 itemTapped:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(OfflineMapsManagementSearchAutocompleteViewController *)self isSearchLoading])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
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
      v11 = [v7 mapItem];
      [(OfflineMapsManagementSearchAutocompleteViewController *)self _addSubscriptionForMapItem:v11];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v7;
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
        v20 = [v19 historyEntry];
        v21 = [v20 geoMapItem];
        v22 = [MKMapItem _itemWithGeoMapItem:v21];

        [(OfflineMapsManagementSearchAutocompleteViewController *)self _addSubscriptionForMapItem:v22];
      }
    }
  }
}

- (void)_enableTextFieldNotification:(BOOL)a3
{
  v3 = a3;
  v6 = +[NSNotificationCenter defaultCenter];
  [(OfflineMapsManagementSearchAutocompleteViewController *)self searchField];
  if (v3)
    v5 = {;
    [v6 addObserver:self selector:"_textFieldDidChange:" name:UITextFieldTextDidChangeNotification object:v5];
  }

  else
    v5 = {;
    [v6 removeObserver:self name:UITextFieldTextDidChangeNotification object:v5];
  }
}

- (void)_addSubscriptionForMapItem:(id)a3
{
  v12 = a3;
  v4 = [(OfflineMapsManagementSearchAutocompleteViewController *)self searchBar];
  [v4 resignFirstResponder];

  v5 = [v12 _geoMapItem];
  v6 = [v5 offlineDownloadRegion];

  v7 = [v12 name];
  v8 = +[MKUserLocation title];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = [v12 _addressFormattedAsCity];

    v7 = v10;
  }

  v11 = [(OfflineMapsManagementSearchAutocompleteViewController *)self delegate];
  [v11 presentOfflineMapRegionSelectorForRegion:v6 name:v7];
}

- (void)_dismiss
{
  v2 = [(OfflineMapsManagementSearchAutocompleteViewController *)self delegate];
  [v2 closeAddNewMapSearchAutocomplete];
}

- (void)_setupConstraints
{
  v68 = [(OfflineMapsManagementSearchAutocompleteViewController *)self modalCardHeaderView];
  v66 = [v68 topAnchor];
  v67 = [(ContaineeViewController *)self headerView];
  v65 = [v67 topAnchor];
  v64 = [v66 constraintEqualToAnchor:v65];
  v69[0] = v64;
  v63 = [(OfflineMapsManagementSearchAutocompleteViewController *)self modalCardHeaderView];
  v61 = [v63 leadingAnchor];
  v62 = [(ContaineeViewController *)self headerView];
  v60 = [v62 leadingAnchor];
  v59 = [v61 constraintEqualToAnchor:v60];
  v69[1] = v59;
  v58 = [(OfflineMapsManagementSearchAutocompleteViewController *)self modalCardHeaderView];
  v56 = [v58 trailingAnchor];
  v57 = [(ContaineeViewController *)self headerView];
  v55 = [v57 trailingAnchor];
  v54 = [v56 constraintEqualToAnchor:v55];
  v69[2] = v54;
  v53 = [(OfflineMapsManagementSearchAutocompleteViewController *)self modalCardHeaderView];
  v51 = [v53 bottomAnchor];
  v52 = [(OfflineMapsManagementSearchAutocompleteViewController *)self searchBar];
  v50 = [v52 topAnchor];
  v49 = [v51 constraintEqualToAnchor:v50 constant:10.0];
  v69[3] = v49;
  v48 = [(OfflineMapsManagementSearchAutocompleteViewController *)self searchBar];
  v46 = [v48 leadingAnchor];
  v47 = [(ContaineeViewController *)self headerView];
  v45 = [v47 leadingAnchor];
  v44 = [v46 constraintEqualToAnchor:v45];
  v69[4] = v44;
  v43 = [(OfflineMapsManagementSearchAutocompleteViewController *)self searchBar];
  v41 = [v43 trailingAnchor];
  v42 = [(ContaineeViewController *)self headerView];
  v40 = [v42 trailingAnchor];
  v39 = [v41 constraintEqualToAnchor:v40];
  v69[5] = v39;
  v38 = [(OfflineMapsManagementSearchAutocompleteViewController *)self searchBar];
  v36 = [v38 bottomAnchor];
  v37 = [(ContaineeViewController *)self headerView];
  v35 = [v37 bottomAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v69[6] = v34;
  v33 = [(OfflineMapsManagementSearchAutocompleteViewController *)self collectionView];
  v31 = [v33 topAnchor];
  v32 = [(ContaineeViewController *)self contentView];
  v30 = [v32 topAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v69[7] = v29;
  v28 = [(OfflineMapsManagementSearchAutocompleteViewController *)self collectionView];
  v26 = [v28 leadingAnchor];
  v27 = [(ContaineeViewController *)self contentView];
  v25 = [v27 leadingAnchor];
  v24 = [v26 constraintEqualToAnchor:v25];
  v69[8] = v24;
  v23 = [(OfflineMapsManagementSearchAutocompleteViewController *)self collectionView];
  v21 = [v23 trailingAnchor];
  v22 = [(ContaineeViewController *)self contentView];
  v20 = [v22 trailingAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v69[9] = v19;
  v18 = [(OfflineMapsManagementSearchAutocompleteViewController *)self collectionView];
  v16 = [v18 bottomAnchor];
  v17 = [(ContaineeViewController *)self contentView];
  v15 = [v17 bottomAnchor];
  v14 = [v16 constraintEqualToAnchor:v15];
  v69[10] = v14;
  v13 = [(OfflineMapsManagementSearchAutocompleteViewController *)self activityIndicator];
  v3 = [v13 trailingAnchor];
  v4 = [(OfflineMapsManagementSearchAutocompleteViewController *)self modalCardHeaderView];
  v5 = [v4 trailingAnchor];
  v6 = [v3 constraintEqualToAnchor:v5 constant:-16.0];
  v69[11] = v6;
  v7 = [(OfflineMapsManagementSearchAutocompleteViewController *)self activityIndicator];
  v8 = [v7 centerYAnchor];
  v9 = [(OfflineMapsManagementSearchAutocompleteViewController *)self modalCardHeaderView];
  v10 = [v9 centerYAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v69[12] = v11;
  v12 = [NSArray arrayWithObjects:v69 count:13];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)_setupViews
{
  v3 = objc_alloc_init(GEOMapDataSubscriptionManager);
  [(OfflineMapsManagementSearchAutocompleteViewController *)self setSubscriptionManager:v3];

  v4 = [(ContaineeViewController *)self cardPresentationController];
  [v4 setPresentedModally:1];

  v5 = [(ContaineeViewController *)self cardPresentationController];
  [v5 setTakesAvailableHeight:1];

  v6 = [(ContaineeViewController *)self cardPresentationController];
  [v6 setAllowsSwipeToDismiss:0];

  v7 = [(ContaineeViewController *)self headerView];
  v8 = [_TtC4Maps19ModalCardHeaderView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v12 = [(ModalCardHeaderView *)v8 initWithFrame:CGRectZero.origin.x, y, width, height];
  [(OfflineMapsManagementSearchAutocompleteViewController *)self setModalCardHeaderView:v12];

  v13 = [(OfflineMapsManagementSearchAutocompleteViewController *)self modalCardHeaderView];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"Download New Map [page title]" value:@"localized string not found" table:@"Offline"];
  v16 = [(OfflineMapsManagementSearchAutocompleteViewController *)self modalCardHeaderView];
  [v16 setTitle:v15];

  v17 = [MapsThemeButton buttonWithType:7];
  [v17 addTarget:self action:"_dismiss" forEvents:64];
  v18 = [(OfflineMapsManagementSearchAutocompleteViewController *)self modalCardHeaderView];
  [v18 setLeadingButton:v17];

  v19 = [(OfflineMapsManagementSearchAutocompleteViewController *)self modalCardHeaderView];
  [v7 addSubview:v19];

  v20 = objc_alloc_init(PassthruSearchBar);
  [(OfflineMapsManagementSearchAutocompleteViewController *)self setSearchBar:v20];

  v21 = [(OfflineMapsManagementSearchAutocompleteViewController *)self searchBar];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];

  v22 = +[NSBundle mainBundle];
  v23 = [v22 localizedStringForKey:@"Search city [search bar placeholder]" value:@"localized string not found" table:@"Offline"];
  v24 = [(OfflineMapsManagementSearchAutocompleteViewController *)self searchBar];
  [v24 setPlaceholder:v23];

  v25 = [(OfflineMapsManagementSearchAutocompleteViewController *)self searchBar];
  [v25 setDelegate:self];

  v26 = [(OfflineMapsManagementSearchAutocompleteViewController *)self searchBar];
  [v26 setTextFieldDelegate:self];

  v27 = [(OfflineMapsManagementSearchAutocompleteViewController *)self searchBar];
  [v7 addSubview:v27];

  v28 = [(OfflineMapsManagementSearchAutocompleteViewController *)self searchBar];
  v29 = [v28 searchTextField];
  [(OfflineMapsManagementSearchAutocompleteViewController *)self setSearchField:v29];

  v30 = [(OfflineMapsManagementSearchAutocompleteViewController *)self searchField];
  [v30 setReturnKeyType:9];

  v31 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  [(OfflineMapsManagementSearchAutocompleteViewController *)self setActivityIndicator:v31];

  v32 = [(OfflineMapsManagementSearchAutocompleteViewController *)self activityIndicator];
  [v32 setTranslatesAutoresizingMaskIntoConstraints:0];

  v33 = [(OfflineMapsManagementSearchAutocompleteViewController *)self modalCardHeaderView];
  v34 = [(OfflineMapsManagementSearchAutocompleteViewController *)self activityIndicator];
  [v33 addSubview:v34];

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

  v39 = [(OfflineMapsManagementSearchAutocompleteViewController *)self collectionView];
  [v39 setTranslatesAutoresizingMaskIntoConstraints:0];

  v40 = +[UIColor clearColor];
  v41 = [(OfflineMapsManagementSearchAutocompleteViewController *)self collectionView];
  [v41 setBackgroundColor:v40];

  v42 = [(OfflineMapsManagementSearchAutocompleteViewController *)self collectionView];
  [v42 setAccessibilityIdentifier:@"OfflineMapsSearchACCollectionView"];

  v43 = [(ContaineeViewController *)self contentView];
  v44 = [(OfflineMapsManagementSearchAutocompleteViewController *)self collectionView];
  [v43 addSubview:v44];

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

- (void)willResignCurrent:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = OfflineMapsManagementSearchAutocompleteViewController;
  [(ContaineeViewController *)&v5 willResignCurrent:a3];
  v4 = [(OfflineMapsManagementSearchAutocompleteViewController *)self searchDataSource];
  [v4 setActive:0];
}

- (void)didBecomeCurrent
{
  v4.receiver = self;
  v4.super_class = OfflineMapsManagementSearchAutocompleteViewController;
  [(ContaineeViewController *)&v4 didBecomeCurrent];
  v3 = [(OfflineMapsManagementSearchAutocompleteViewController *)self searchField];
  [v3 becomeFirstResponder];

  [(OfflineMapsManagementSearchAutocompleteViewController *)self _enableTextFieldNotification:1];
}

- (void)willBecomeCurrent:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = OfflineMapsManagementSearchAutocompleteViewController;
  [(ContaineeViewController *)&v9 willBecomeCurrent:a3];
  v4 = [OfflineMapsManagementSearchAutocompleteDataSource alloc];
  v5 = [(OfflineMapsManagementSearchAutocompleteViewController *)self collectionView];
  v6 = [(OfflineMapsManagementSearchAutocompleteDataSource *)v4 initWithCollectionView:v5 updateLocation:1];
  [(OfflineMapsManagementSearchAutocompleteViewController *)self setSearchDataSource:v6];

  v7 = [(OfflineMapsManagementSearchAutocompleteViewController *)self searchDataSource];
  [v7 setDelegate:self];

  v8 = [(OfflineMapsManagementSearchAutocompleteViewController *)self searchDataSource];
  [v8 setActive:1];
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