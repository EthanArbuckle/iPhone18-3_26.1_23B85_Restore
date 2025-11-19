@interface AddFromACViewController
- (AddFromACViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (AddFromACViewControllerDelegate)addFromACDelegate;
- (BOOL)searchDataSource:(id)a3 shouldFilterItem:(id)a4;
- (id)emptyStateDataSource;
- (id)recentlyViewedDataSource;
- (id)searchDataSource;
- (id)suggestionsDataSource;
- (void)_enableTextFieldNotification:(BOOL)a3;
- (void)_handleItem:(id)a3;
- (void)_setPlaceHolder;
- (void)_textFieldDidChange:(id)a3;
- (void)dataSourceUpdated:(id)a3;
- (void)didBecomeCurrent;
- (void)didResignCurrent;
- (void)searchBar:(id)a3 didPasteMapsLink:(id)a4;
- (void)setInputText:(id)a3;
- (void)updateDataSource;
- (void)updateTheme;
- (void)viewDidLoad;
@end

@implementation AddFromACViewController

- (AddFromACViewControllerDelegate)addFromACDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_addFromACDelegate);

  return WeakRetained;
}

- (void)_textFieldDidChange:(id)a3
{
  v4 = [(UITextField *)self->_searchField text];
  [(AddFromACViewController *)self setInputText:v4];

  [(AddFromACViewController *)self updateDataSource];
}

- (void)searchBar:(id)a3 didPasteMapsLink:(id)a4
{
  v5 = a4;
  v13 = [(AddFromACViewController *)self _maps_platformController];
  v6 = [v13 entryPointsCoordinator];
  v7 = [(AddFromACViewController *)self _maps_uiScene];
  v8 = [v7 session];
  v9 = [(AddFromACViewController *)self view];
  v10 = [v9 window];
  [v10 bounds];
  [v6 openURL:v5 session:v8 sceneOptions:0 mkOptions:0 windowSize:{v11, v12}];
}

- (void)setInputText:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_inputText != v4)
  {
    v13 = v4;
    v6 = [(NSString *)v4 isEqualToString:?];
    v5 = v13;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSString *)v13 _maps_stringByTrimmingLeadingWhitespace];
      if (![v7 length])
      {

        v7 = 0;
      }

      v8 = [v7 copy];
      inputText = self->_inputText;
      self->_inputText = v8;

      v10 = [(AddFromACViewController *)self addFromACDelegate];
      v11 = [v10 traitsForAddFromACViewController:self];

      v12 = [(AddFromACViewController *)self searchDataSource];
      [v12 setInputText:self->_inputText traits:v11 source:11];

      v5 = v13;
    }
  }
}

- (BOOL)searchDataSource:(id)a3 shouldFilterItem:(id)a4
{
  v4 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  v5 = v4;
  v6 = [v5 mapItem];
  v7 = [v6 _hasHikeInfo];

  if ((v7 & 1) == 0 && [v5 _type] != 2)
  {
    v8 = [v5 _type];

    if (v8 == 1)
    {
      v7 = 0;
      goto LABEL_8;
    }

LABEL_7:
    v7 = 1;
    goto LABEL_8;
  }

LABEL_8:
  return v7;
}

- (void)dataSourceUpdated:(id)a3
{
  if (self->_currentDataSource == a3)
  {
    [(UITableView *)self->_tableView reloadData];
  }
}

- (void)_handleItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(AddFromACViewController *)self addFromACDelegate];
    if (v6)
    {
      v7 = [(AddFromACViewController *)self addFromACDelegate];
      [v7 traitsForAddFromACViewController:self];
    }

    else
    {
      v7 = +[MKMapService sharedService];
      [v7 defaultTraits];
    }
    v8 = ;

    [v8 setSource:{-[AddFromACViewController requestSource](self, "requestSource")}];
    v9 = +[MKMapService sharedService];
    v10 = [v5 queryLine];
    v11 = [v5 geoCompletionItem];

    v12 = [v9 ticketForSearchQuery:v10 completionItem:v11 traits:v8 searchSessionData:0];

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1006E0020;
    v13[3] = &unk_101660FB0;
    v13[4] = self;
    [v12 submitWithHandler:v13 networkActivity:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(AddFromACViewController *)self saveMapItem:v4];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        [(AddFromACViewController *)self saveShortcut:v4];
      }
    }
  }
}

- (void)_enableTextFieldNotification:(BOOL)a3
{
  v3 = a3;
  v5 = +[NSNotificationCenter defaultCenter];
  v6 = v5;
  if (v3)
  {
    [v5 addObserver:self selector:"_textFieldDidChange:" name:UITextFieldTextDidChangeNotification object:self->_searchField];
  }

  else
  {
    [v5 removeObserver:self name:UITextFieldTextDidChangeNotification object:self->_searchField];
  }
}

- (void)updateDataSource
{
  v3 = [(UITextField *)self->_searchField text];
  if ([v3 length])
  {
    [(AddFromACViewController *)self searchDataSource];
  }

  else
  {
    [(AddFromACViewController *)self emptyStateDataSource];
  }
  obj = ;

  currentDataSource = self->_currentDataSource;
  if (currentDataSource != obj)
  {
    [currentDataSource setActive:0];
    objc_storeStrong(&self->_currentDataSource, obj);
    v5 = [(AddFromACViewController *)self tableView];
    [v5 setDataSource:obj];

    v6 = [(AddFromACViewController *)self tableView];
    [v6 setDelegate:obj];

    [(DataSource *)obj setActive:1];
  }
}

- (id)emptyStateDataSource
{
  if ([(AddFromACViewController *)self showsRecents])
  {
    [(AddFromACViewController *)self recentlyViewedDataSource];
  }

  else
  {
    [(AddFromACViewController *)self suggestionsDataSource];
  }
  v3 = ;

  return v3;
}

- (id)searchDataSource
{
  searchDataSource = self->_searchDataSource;
  if (!searchDataSource)
  {
    v4 = [SearchDataSource alloc];
    v5 = [(AddFromACViewController *)self tableView];
    v6 = [(SearchDataSource *)v4 initWithTableView:v5];

    [(DataSource *)v6 setDelegate:self];
    [(SearchDataSource *)v6 setUseLegacyCellsForSearchAC:1];
    [(SearchDataSource *)v6 setShowAddAccessory:1];
    [(SearchDataSource *)v6 setAccessoryType:[(AddFromACViewController *)self accessoryTypeToShow]];
    v7 = [(SearchDataSource *)v6 searchDataProvider];
    [v7 setResultTypes:3];

    v8 = self->_searchDataSource;
    self->_searchDataSource = v6;

    searchDataSource = self->_searchDataSource;
  }

  return searchDataSource;
}

- (id)recentlyViewedDataSource
{
  recentlyViewedDataSource = self->_recentlyViewedDataSource;
  if (!recentlyViewedDataSource)
  {
    v4 = [RecentlyViewedDataSource alloc];
    v5 = [(AddFromACViewController *)self tableView];
    v6 = [(RecentlyViewedDataSource *)v4 initWithTableView:v5 updateLocation:0];

    [(DataSource *)v6 setDelegate:self];
    [(RecentlyViewedDataSource *)v6 setShowAddAccessory:1];
    v7 = self->_recentlyViewedDataSource;
    self->_recentlyViewedDataSource = v6;

    recentlyViewedDataSource = self->_recentlyViewedDataSource;
  }

  return recentlyViewedDataSource;
}

- (id)suggestionsDataSource
{
  suggestionsDataSource = self->_suggestionsDataSource;
  if (!suggestionsDataSource)
  {
    v4 = [ShortcutSuggestionsDataSource alloc];
    v5 = [(AddFromACViewController *)self tableView];
    v6 = [(ShortcutSuggestionsDataSource *)v4 initWithTableView:v5 updateLocation:0 shortcutType:[(AddFromACViewController *)self shortcutType]];

    [(DataSource *)v6 setDelegate:self];
    v7 = self->_suggestionsDataSource;
    self->_suggestionsDataSource = v6;

    suggestionsDataSource = self->_suggestionsDataSource;
  }

  return suggestionsDataSource;
}

- (void)updateTheme
{
  v3 = [(AddFromACViewController *)self theme];
  v4 = [v3 searchBarPlaceHolderColor];
  v5 = [(UITextField *)self->_searchField _placeholderLabel];
  [v5 setTextColor:v4];

  v6 = [(AddFromACViewController *)self theme];
  -[UITextField setKeyboardAppearance:](self->_searchField, "setKeyboardAppearance:", [v6 textFieldKeyboardAppearance]);
}

- (void)_setPlaceHolder
{
  if ((+[UIApplication shouldMakeUIForDefaultPNG]& 1) == 0)
  {
    v3 = +[NSLocale preferredLanguages];
    v4 = [v3 firstObject];
    v11 = [NSString stringWithFormat:@"%@-%@", @"__internal__searchBarPlaceholderV2", v4];

    v5 = +[NSUserDefaults standardUserDefaults];
    v6 = [v5 objectForKey:v11];

    searchField = self->_searchField;
    if (v6)
    {
      [(UITextField *)self->_searchField setPlaceholder:v6];
    }

    else
    {
      v8 = +[NSBundle mainBundle];
      v9 = [v8 localizedStringForKey:@"Search for a place or address" value:@"localized string not found" table:0];
      [(UITextField *)searchField setPlaceholder:v9];
    }

    v10 = [(UITextField *)self->_searchField _placeholderLabel];
    [v10 setAllowsDefaultTighteningForTruncation:1];
  }
}

- (void)didResignCurrent
{
  [(AddFromACViewController *)self _enableTextFieldNotification:0];
  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    currentDataSource = self->_currentDataSource;
    self->_currentDataSource = 0;
  }

  v4.receiver = self;
  v4.super_class = AddFromACViewController;
  [(ContaineeViewController *)&v4 didResignCurrent];
}

- (void)didBecomeCurrent
{
  v3.receiver = self;
  v3.super_class = AddFromACViewController;
  [(ContaineeViewController *)&v3 didBecomeCurrent];
  [(UITextField *)self->_searchField becomeFirstResponder];
  [(AddFromACViewController *)self _enableTextFieldNotification:1];
  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    [(AddFromACViewController *)self updateDataSource];
  }
}

- (void)viewDidLoad
{
  v83.receiver = self;
  v83.super_class = AddFromACViewController;
  [(ContaineeViewController *)&v83 viewDidLoad];
  [(AddFromACViewController *)self setAccessibilityIdentifier:@"AddFromACView"];
  v3 = [(ContaineeViewController *)self headerView];
  v4 = [(ContaineeViewController *)self contentView];
  v5 = [_TtC4Maps19ModalCardHeaderView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v9 = [(ModalCardHeaderView *)v5 initWithFrame:CGRectZero.origin.x, y, width, height];
  [(ModalCardHeaderView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [(AddFromACViewController *)self headerTitle];
  [(ModalCardHeaderView *)v9 setTitle:v10];

  if (sub_10000FA08(self) != 5)
  {
    v11 = [MapsThemeButton buttonWithType:1];
    [v11 addTarget:self action:"headerViewButtonTapped:buttonType:" forControlEvents:64];
    [(ModalCardHeaderView *)v9 setTrailingButton:v11];
  }

  objc_storeStrong(&self->_modalHeaderView, v9);
  v12 = objc_alloc_init(PassthruSearchBar);
  [(PassthruSearchBar *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:v12];
  [(PassthruSearchBar *)v12 setDelegate:self];
  [(PassthruSearchBar *)v12 setTextFieldDelegate:self];
  objc_storeStrong(&self->_searchBar, v12);
  v81 = v12;
  v13 = [(PassthruSearchBar *)v12 searchTextField];
  [v13 setReturnKeyType:6];
  v78 = v13;
  objc_storeStrong(&self->_searchField, v13);
  v82 = v9;
  [v3 addSubview:v9];
  v14 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, y, width, height}];
  [v14 setAccessibilityIdentifier:@"AddFromACTableView"];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = +[UIColor clearColor];
  [v14 setBackgroundColor:v15];

  [v14 _setHeaderAndFooterViewsFloat:0];
  [v14 setPreservesSuperviewLayoutMargins:1];
  [v14 setSectionHeaderTopPadding:0.0];
  [v4 addSubview:v14];
  [(AddFromACViewController *)self setTableView:v14];
  v16 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
  v79 = v4;
  v80 = v3;
  if (sub_10000FA08(self) == 5)
  {
    v17 = [[MacFooterView alloc] initWithRightButtonType:8];
    footerView = self->_footerView;
    self->_footerView = v17;

    [(MacFooterView *)self->_footerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MacFooterView *)self->_footerView setRightButtonEnabled:1];
    [(MacFooterView *)self->_footerView setDelegate:self];
    v19 = [(ContaineeViewController *)self contentView];
    [v19 addSubview:self->_footerView];

    v63 = [(MacFooterView *)self->_footerView bottomAnchor];
    v69 = [(AddFromACViewController *)self view];
    v65 = [v69 bottomAnchor];
    v76 = [v63 constraintEqualToAnchor:v65];
    v86[0] = v76;
    v20 = [(MacFooterView *)self->_footerView leadingAnchor];
    v72 = [(AddFromACViewController *)self view];
    v21 = [v72 leadingAnchor];
    v74 = v20;
    v67 = [v20 constraintEqualToAnchor:v21];
    v86[1] = v67;
    v59 = [(MacFooterView *)self->_footerView trailingAnchor];
    v61 = [(AddFromACViewController *)self view];
    v56 = [v61 trailingAnchor];
    v54 = [v59 constraintEqualToAnchor:v56];
    v86[2] = v54;
    v22 = [v14 leadingAnchor];
    v23 = [v4 leadingAnchor];
    v24 = [v22 constraintEqualToAnchor:v23 constant:10.0];
    v86[3] = v24;
    [v14 bottomAnchor];
    v26 = v25 = v14;
    v27 = [(MacFooterView *)self->_footerView topAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];
    v86[4] = v28;
    v29 = [NSArray arrayWithObjects:v86 count:5];
    [NSLayoutConstraint activateConstraints:v29];

    v30 = v63;
    v31 = v69;

    v14 = v25;
    v32 = v65;

    v3 = v80;
    v4 = v79;

    v16 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
  }

  else
  {
    v30 = [v14 leadingAnchor];
    v31 = [v4 leadingAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];
    v85[0] = v32;
    v33 = [v14 bottomAnchor];
    v74 = [v4 bottomAnchor];
    v76 = v33;
    v72 = [v33 constraintEqualToAnchor:?];
    v85[1] = v72;
    v21 = [NSArray arrayWithObjects:v85 count:2];
    [NSLayoutConstraint activateConstraints:v21];
  }

  v55 = v16[433];
  v77 = [(ModalCardHeaderView *)v82 topAnchor];
  v75 = [v3 topAnchor];
  v73 = [v77 constraintEqualToAnchor:v75];
  v84[0] = v73;
  v71 = [(ModalCardHeaderView *)v82 leadingAnchor];
  v70 = [v3 leadingAnchor];
  v68 = [v71 constraintEqualToAnchor:v70];
  v84[1] = v68;
  v66 = [(ModalCardHeaderView *)v82 trailingAnchor];
  v64 = [v3 trailingAnchor];
  v62 = [v66 constraintEqualToAnchor:v64];
  v84[2] = v62;
  v60 = [(ModalCardHeaderView *)v82 bottomAnchor];
  v57 = [(PassthruSearchBar *)v81 topAnchor];
  v53 = [v60 constraintEqualToAnchor:v57 constant:10.0];
  v84[3] = v53;
  v52 = [(PassthruSearchBar *)v81 leadingAnchor];
  v51 = [v3 leadingAnchor];
  v50 = [v52 constraintEqualToAnchor:v51];
  v84[4] = v50;
  v49 = [(PassthruSearchBar *)v81 trailingAnchor];
  v48 = [v3 trailingAnchor];
  v47 = [v49 constraintEqualToAnchor:v48];
  v84[5] = v47;
  v46 = [(PassthruSearchBar *)v81 bottomAnchor];
  v34 = [v3 bottomAnchor];
  v35 = [v46 constraintEqualToAnchor:v34];
  v84[6] = v35;
  v36 = [v14 topAnchor];
  v37 = [v4 topAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];
  v39 = v14;
  v58 = v14;
  v40 = v38;
  v84[7] = v38;
  v41 = [v39 trailingAnchor];
  v42 = [v4 trailingAnchor];
  v43 = [v41 constraintEqualToAnchor:v42];
  v84[8] = v43;
  v44 = [NSArray arrayWithObjects:v84 count:9];
  [v55 activateConstraints:v44];

  v45 = [(AddFromACViewController *)self view];
  [v45 layoutIfNeeded];

  +[KeyboardAvoidingView startObservingKeyboard];
  [(AddFromACViewController *)self updateTheme];
  [(AddFromACViewController *)self updateDataSource];
  [(AddFromACViewController *)self _setPlaceHolder];
}

- (AddFromACViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v9.receiver = self;
  v9.super_class = AddFromACViewController;
  v4 = [(AddFromACViewController *)&v9 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(ContaineeViewController *)v4 cardPresentationController];
    [v6 setPresentedModally:1];

    v7 = [(ContaineeViewController *)v5 cardPresentationController];
    [v7 setTakesAvailableHeight:1];

    [(ContaineeViewController *)v5 setPreferredPresentationStyle:5];
    [(AddFromACViewController *)v5 setPreferredContentSize:341.0, 500.0];
  }

  return v5;
}

@end