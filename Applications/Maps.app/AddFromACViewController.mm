@interface AddFromACViewController
- (AddFromACViewController)initWithNibName:(id)name bundle:(id)bundle;
- (AddFromACViewControllerDelegate)addFromACDelegate;
- (BOOL)searchDataSource:(id)source shouldFilterItem:(id)item;
- (id)emptyStateDataSource;
- (id)recentlyViewedDataSource;
- (id)searchDataSource;
- (id)suggestionsDataSource;
- (void)_enableTextFieldNotification:(BOOL)notification;
- (void)_handleItem:(id)item;
- (void)_setPlaceHolder;
- (void)_textFieldDidChange:(id)change;
- (void)dataSourceUpdated:(id)updated;
- (void)didBecomeCurrent;
- (void)didResignCurrent;
- (void)searchBar:(id)bar didPasteMapsLink:(id)link;
- (void)setInputText:(id)text;
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

- (void)_textFieldDidChange:(id)change
{
  text = [(UITextField *)self->_searchField text];
  [(AddFromACViewController *)self setInputText:text];

  [(AddFromACViewController *)self updateDataSource];
}

- (void)searchBar:(id)bar didPasteMapsLink:(id)link
{
  linkCopy = link;
  _maps_platformController = [(AddFromACViewController *)self _maps_platformController];
  entryPointsCoordinator = [_maps_platformController entryPointsCoordinator];
  _maps_uiScene = [(AddFromACViewController *)self _maps_uiScene];
  session = [_maps_uiScene session];
  view = [(AddFromACViewController *)self view];
  window = [view window];
  [window bounds];
  [entryPointsCoordinator openURL:linkCopy session:session sceneOptions:0 mkOptions:0 windowSize:{v11, v12}];
}

- (void)setInputText:(id)text
{
  textCopy = text;
  v5 = textCopy;
  if (self->_inputText != textCopy)
  {
    v13 = textCopy;
    v6 = [(NSString *)textCopy isEqualToString:?];
    v5 = v13;
    if ((v6 & 1) == 0)
    {
      _maps_stringByTrimmingLeadingWhitespace = [(NSString *)v13 _maps_stringByTrimmingLeadingWhitespace];
      if (![_maps_stringByTrimmingLeadingWhitespace length])
      {

        _maps_stringByTrimmingLeadingWhitespace = 0;
      }

      v8 = [_maps_stringByTrimmingLeadingWhitespace copy];
      inputText = self->_inputText;
      self->_inputText = v8;

      addFromACDelegate = [(AddFromACViewController *)self addFromACDelegate];
      v11 = [addFromACDelegate traitsForAddFromACViewController:self];

      searchDataSource = [(AddFromACViewController *)self searchDataSource];
      [searchDataSource setInputText:self->_inputText traits:v11 source:11];

      v5 = v13;
    }
  }
}

- (BOOL)searchDataSource:(id)source shouldFilterItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  v5 = itemCopy;
  mapItem = [v5 mapItem];
  _hasHikeInfo = [mapItem _hasHikeInfo];

  if ((_hasHikeInfo & 1) == 0 && [v5 _type] != 2)
  {
    _type = [v5 _type];

    if (_type == 1)
    {
      _hasHikeInfo = 0;
      goto LABEL_8;
    }

LABEL_7:
    _hasHikeInfo = 1;
    goto LABEL_8;
  }

LABEL_8:
  return _hasHikeInfo;
}

- (void)dataSourceUpdated:(id)updated
{
  if (self->_currentDataSource == updated)
  {
    [(UITableView *)self->_tableView reloadData];
  }
}

- (void)_handleItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = itemCopy;
    addFromACDelegate = [(AddFromACViewController *)self addFromACDelegate];
    if (addFromACDelegate)
    {
      addFromACDelegate2 = [(AddFromACViewController *)self addFromACDelegate];
      [addFromACDelegate2 traitsForAddFromACViewController:self];
    }

    else
    {
      addFromACDelegate2 = +[MKMapService sharedService];
      [addFromACDelegate2 defaultTraits];
    }
    v8 = ;

    [v8 setSource:{-[AddFromACViewController requestSource](self, "requestSource")}];
    v9 = +[MKMapService sharedService];
    queryLine = [v5 queryLine];
    geoCompletionItem = [v5 geoCompletionItem];

    v12 = [v9 ticketForSearchQuery:queryLine completionItem:geoCompletionItem traits:v8 searchSessionData:0];

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
      [(AddFromACViewController *)self saveMapItem:itemCopy];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        [(AddFromACViewController *)self saveShortcut:itemCopy];
      }
    }
  }
}

- (void)_enableTextFieldNotification:(BOOL)notification
{
  notificationCopy = notification;
  v5 = +[NSNotificationCenter defaultCenter];
  v6 = v5;
  if (notificationCopy)
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
  text = [(UITextField *)self->_searchField text];
  if ([text length])
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
    tableView = [(AddFromACViewController *)self tableView];
    [tableView setDataSource:obj];

    tableView2 = [(AddFromACViewController *)self tableView];
    [tableView2 setDelegate:obj];

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
    tableView = [(AddFromACViewController *)self tableView];
    v6 = [(SearchDataSource *)v4 initWithTableView:tableView];

    [(DataSource *)v6 setDelegate:self];
    [(SearchDataSource *)v6 setUseLegacyCellsForSearchAC:1];
    [(SearchDataSource *)v6 setShowAddAccessory:1];
    [(SearchDataSource *)v6 setAccessoryType:[(AddFromACViewController *)self accessoryTypeToShow]];
    searchDataProvider = [(SearchDataSource *)v6 searchDataProvider];
    [searchDataProvider setResultTypes:3];

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
    tableView = [(AddFromACViewController *)self tableView];
    v6 = [(RecentlyViewedDataSource *)v4 initWithTableView:tableView updateLocation:0];

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
    tableView = [(AddFromACViewController *)self tableView];
    v6 = [(ShortcutSuggestionsDataSource *)v4 initWithTableView:tableView updateLocation:0 shortcutType:[(AddFromACViewController *)self shortcutType]];

    [(DataSource *)v6 setDelegate:self];
    v7 = self->_suggestionsDataSource;
    self->_suggestionsDataSource = v6;

    suggestionsDataSource = self->_suggestionsDataSource;
  }

  return suggestionsDataSource;
}

- (void)updateTheme
{
  theme = [(AddFromACViewController *)self theme];
  searchBarPlaceHolderColor = [theme searchBarPlaceHolderColor];
  _placeholderLabel = [(UITextField *)self->_searchField _placeholderLabel];
  [_placeholderLabel setTextColor:searchBarPlaceHolderColor];

  theme2 = [(AddFromACViewController *)self theme];
  -[UITextField setKeyboardAppearance:](self->_searchField, "setKeyboardAppearance:", [theme2 textFieldKeyboardAppearance]);
}

- (void)_setPlaceHolder
{
  if ((+[UIApplication shouldMakeUIForDefaultPNG]& 1) == 0)
  {
    v3 = +[NSLocale preferredLanguages];
    firstObject = [v3 firstObject];
    v11 = [NSString stringWithFormat:@"%@-%@", @"__internal__searchBarPlaceholderV2", firstObject];

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

    _placeholderLabel = [(UITextField *)self->_searchField _placeholderLabel];
    [_placeholderLabel setAllowsDefaultTighteningForTruncation:1];
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
  headerView = [(ContaineeViewController *)self headerView];
  contentView = [(ContaineeViewController *)self contentView];
  v5 = [_TtC4Maps19ModalCardHeaderView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(ModalCardHeaderView *)v5 initWithFrame:CGRectZero.origin.x, y, width, height];
  [(ModalCardHeaderView *)height setTranslatesAutoresizingMaskIntoConstraints:0];
  headerTitle = [(AddFromACViewController *)self headerTitle];
  [(ModalCardHeaderView *)height setTitle:headerTitle];

  if (sub_10000FA08(self) != 5)
  {
    v11 = [MapsThemeButton buttonWithType:1];
    [v11 addTarget:self action:"headerViewButtonTapped:buttonType:" forControlEvents:64];
    [(ModalCardHeaderView *)height setTrailingButton:v11];
  }

  objc_storeStrong(&self->_modalHeaderView, height);
  v12 = objc_alloc_init(PassthruSearchBar);
  [(PassthruSearchBar *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [headerView addSubview:v12];
  [(PassthruSearchBar *)v12 setDelegate:self];
  [(PassthruSearchBar *)v12 setTextFieldDelegate:self];
  objc_storeStrong(&self->_searchBar, v12);
  v81 = v12;
  searchTextField = [(PassthruSearchBar *)v12 searchTextField];
  [searchTextField setReturnKeyType:6];
  v78 = searchTextField;
  objc_storeStrong(&self->_searchField, searchTextField);
  v82 = height;
  [headerView addSubview:height];
  v14 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, y, width, height}];
  [v14 setAccessibilityIdentifier:@"AddFromACTableView"];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = +[UIColor clearColor];
  [v14 setBackgroundColor:v15];

  [v14 _setHeaderAndFooterViewsFloat:0];
  [v14 setPreservesSuperviewLayoutMargins:1];
  [v14 setSectionHeaderTopPadding:0.0];
  [contentView addSubview:v14];
  [(AddFromACViewController *)self setTableView:v14];
  v16 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
  v79 = contentView;
  v80 = headerView;
  if (sub_10000FA08(self) == 5)
  {
    v17 = [[MacFooterView alloc] initWithRightButtonType:8];
    footerView = self->_footerView;
    self->_footerView = v17;

    [(MacFooterView *)self->_footerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MacFooterView *)self->_footerView setRightButtonEnabled:1];
    [(MacFooterView *)self->_footerView setDelegate:self];
    contentView2 = [(ContaineeViewController *)self contentView];
    [contentView2 addSubview:self->_footerView];

    bottomAnchor = [(MacFooterView *)self->_footerView bottomAnchor];
    view = [(AddFromACViewController *)self view];
    bottomAnchor2 = [view bottomAnchor];
    v76 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v86[0] = v76;
    leadingAnchor = [(MacFooterView *)self->_footerView leadingAnchor];
    view2 = [(AddFromACViewController *)self view];
    leadingAnchor2 = [view2 leadingAnchor];
    bottomAnchor4 = leadingAnchor;
    v67 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v86[1] = v67;
    trailingAnchor = [(MacFooterView *)self->_footerView trailingAnchor];
    view3 = [(AddFromACViewController *)self view];
    trailingAnchor2 = [view3 trailingAnchor];
    v54 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v86[2] = v54;
    leadingAnchor3 = [v14 leadingAnchor];
    leadingAnchor4 = [contentView leadingAnchor];
    v24 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:10.0];
    v86[3] = v24;
    [v14 bottomAnchor];
    v26 = v25 = v14;
    topAnchor = [(MacFooterView *)self->_footerView topAnchor];
    v28 = [v26 constraintEqualToAnchor:topAnchor];
    v86[4] = v28;
    v29 = [NSArray arrayWithObjects:v86 count:5];
    [NSLayoutConstraint activateConstraints:v29];

    leadingAnchor5 = bottomAnchor;
    leadingAnchor6 = view;

    v14 = v25;
    v32 = bottomAnchor2;

    headerView = v80;
    contentView = v79;

    v16 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
  }

  else
  {
    leadingAnchor5 = [v14 leadingAnchor];
    leadingAnchor6 = [contentView leadingAnchor];
    v32 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v85[0] = v32;
    bottomAnchor3 = [v14 bottomAnchor];
    bottomAnchor4 = [contentView bottomAnchor];
    v76 = bottomAnchor3;
    view2 = [bottomAnchor3 constraintEqualToAnchor:?];
    v85[1] = view2;
    leadingAnchor2 = [NSArray arrayWithObjects:v85 count:2];
    [NSLayoutConstraint activateConstraints:leadingAnchor2];
  }

  v55 = v16[433];
  topAnchor2 = [(ModalCardHeaderView *)v82 topAnchor];
  topAnchor3 = [headerView topAnchor];
  v73 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
  v84[0] = v73;
  leadingAnchor7 = [(ModalCardHeaderView *)v82 leadingAnchor];
  leadingAnchor8 = [headerView leadingAnchor];
  v68 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  v84[1] = v68;
  trailingAnchor3 = [(ModalCardHeaderView *)v82 trailingAnchor];
  trailingAnchor4 = [headerView trailingAnchor];
  v62 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v84[2] = v62;
  bottomAnchor5 = [(ModalCardHeaderView *)v82 bottomAnchor];
  topAnchor4 = [(PassthruSearchBar *)v81 topAnchor];
  v53 = [bottomAnchor5 constraintEqualToAnchor:topAnchor4 constant:10.0];
  v84[3] = v53;
  leadingAnchor9 = [(PassthruSearchBar *)v81 leadingAnchor];
  leadingAnchor10 = [headerView leadingAnchor];
  v50 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
  v84[4] = v50;
  trailingAnchor5 = [(PassthruSearchBar *)v81 trailingAnchor];
  trailingAnchor6 = [headerView trailingAnchor];
  v47 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v84[5] = v47;
  bottomAnchor6 = [(PassthruSearchBar *)v81 bottomAnchor];
  bottomAnchor7 = [headerView bottomAnchor];
  v35 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
  v84[6] = v35;
  topAnchor5 = [v14 topAnchor];
  topAnchor6 = [contentView topAnchor];
  v38 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v39 = v14;
  v58 = v14;
  v40 = v38;
  v84[7] = v38;
  trailingAnchor7 = [v39 trailingAnchor];
  trailingAnchor8 = [contentView trailingAnchor];
  v43 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  v84[8] = v43;
  v44 = [NSArray arrayWithObjects:v84 count:9];
  [v55 activateConstraints:v44];

  view4 = [(AddFromACViewController *)self view];
  [view4 layoutIfNeeded];

  +[KeyboardAvoidingView startObservingKeyboard];
  [(AddFromACViewController *)self updateTheme];
  [(AddFromACViewController *)self updateDataSource];
  [(AddFromACViewController *)self _setPlaceHolder];
}

- (AddFromACViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v9.receiver = self;
  v9.super_class = AddFromACViewController;
  v4 = [(AddFromACViewController *)&v9 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    cardPresentationController = [(ContaineeViewController *)v4 cardPresentationController];
    [cardPresentationController setPresentedModally:1];

    cardPresentationController2 = [(ContaineeViewController *)v5 cardPresentationController];
    [cardPresentationController2 setTakesAvailableHeight:1];

    [(ContaineeViewController *)v5 setPreferredPresentationStyle:5];
    [(AddFromACViewController *)v5 setPreferredContentSize:341.0, 500.0];
  }

  return v5;
}

@end