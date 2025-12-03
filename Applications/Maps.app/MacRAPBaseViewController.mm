@interface MacRAPBaseViewController
- (UISearchBar)searchBar;
- (void)_addFooterView;
- (void)_addHeaderView;
- (void)macFooterViewBackButtonTapped:(id)tapped;
- (void)setHeaderTitle:(id)title;
- (void)setRightButtonEnabled:(BOOL)enabled;
- (void)setSearchBarPlaceholder:(id)placeholder;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation MacRAPBaseViewController

- (void)macFooterViewBackButtonTapped:(id)tapped
{
  navigationController = [(MacRAPBaseViewController *)self navigationController];
  v3 = [navigationController popViewControllerAnimated:1];
}

- (void)_addFooterView
{
  v3 = [[MacFooterView alloc] initWithNoBlurRightSideButtonsOfType:[(MacRAPBaseViewController *)self footerRightButtonType]];
  [(MacRAPBaseViewController *)self setFooterView:v3];

  footerView = [(MacRAPBaseViewController *)self footerView];
  [footerView setTranslatesAutoresizingMaskIntoConstraints:0];

  footerView2 = [(MacRAPBaseViewController *)self footerView];
  [footerView2 setDelegate:self];

  footerView3 = [(MacRAPBaseViewController *)self footerView];
  [footerView3 setRightButtonEnabled:self->_rightButtonEnabled];

  view = [(MacRAPBaseViewController *)self view];
  footerView4 = [(MacRAPBaseViewController *)self footerView];
  [view addSubview:footerView4];

  footerView5 = [(MacRAPBaseViewController *)self footerView];
  leadingAnchor = [footerView5 leadingAnchor];
  view2 = [(MacRAPBaseViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v25[0] = v20;
  footerView6 = [(MacRAPBaseViewController *)self footerView];
  trailingAnchor = [footerView6 trailingAnchor];
  view3 = [(MacRAPBaseViewController *)self view];
  trailingAnchor2 = [view3 trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v25[1] = v12;
  footerView7 = [(MacRAPBaseViewController *)self footerView];
  bottomAnchor = [footerView7 bottomAnchor];
  view4 = [(MacRAPBaseViewController *)self view];
  bottomAnchor2 = [view4 bottomAnchor];
  v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v25[2] = v17;
  v18 = [NSArray arrayWithObjects:v25 count:3];
  [NSLayoutConstraint activateConstraints:v18];
}

- (void)_addHeaderView
{
  if ([(MacRAPBaseViewController *)self hasSearchBar])
  {
    v3 = [MacRAPHeaderView alloc];
    searchBar = [(MacRAPBaseViewController *)self searchBar];
    v5 = [(MacRAPHeaderView *)v3 initWithSearchBar:searchBar];
    [(MacRAPBaseViewController *)self setHeaderView:v5];
  }

  else
  {
    searchBar = objc_alloc_init(MacRAPHeaderView);
    [(MacRAPBaseViewController *)self setHeaderView:searchBar];
  }

  headerView = [(MacRAPBaseViewController *)self headerView];
  [headerView setTranslatesAutoresizingMaskIntoConstraints:0];

  headerTitle = [(MacRAPBaseViewController *)self headerTitle];
  headerView2 = [(MacRAPBaseViewController *)self headerView];
  [headerView2 setTitle:headerTitle];

  view = [(MacRAPBaseViewController *)self view];
  headerView3 = [(MacRAPBaseViewController *)self headerView];
  [view addSubview:headerView3];

  headerView4 = [(MacRAPBaseViewController *)self headerView];
  leadingAnchor = [headerView4 leadingAnchor];
  view2 = [(MacRAPBaseViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v27[0] = v22;
  headerView5 = [(MacRAPBaseViewController *)self headerView];
  trailingAnchor = [headerView5 trailingAnchor];
  view3 = [(MacRAPBaseViewController *)self view];
  trailingAnchor2 = [view3 trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v27[1] = v14;
  headerView6 = [(MacRAPBaseViewController *)self headerView];
  topAnchor = [headerView6 topAnchor];
  view4 = [(MacRAPBaseViewController *)self view];
  topAnchor2 = [view4 topAnchor];
  v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v27[2] = v19;
  v20 = [NSArray arrayWithObjects:v27 count:3];
  [NSLayoutConstraint activateConstraints:v20];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = MacRAPBaseViewController;
  [(MacRAPBaseViewController *)&v5 viewDidAppear:appear];
  if ([(MacRAPBaseViewController *)self hasSearchBar])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100BCE054;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v15.receiver = self;
  v15.super_class = MacRAPBaseViewController;
  [(MacRAPBaseViewController *)&v15 viewWillAppear:appear];
  headerView = [(MacRAPBaseViewController *)self headerView];
  [headerView layoutIfNeeded];

  footerView = [(MacRAPBaseViewController *)self footerView];
  [footerView layoutIfNeeded];

  headerView2 = [(MacRAPBaseViewController *)self headerView];
  [headerView2 frame];
  v8 = v7;
  footerView2 = [(MacRAPBaseViewController *)self footerView];
  [footerView2 frame];
  [(MacRAPBaseViewController *)self setAdditionalSafeAreaInsets:v8, 0.0, v10, 0.0];

  view = [(MacRAPBaseViewController *)self view];
  headerView3 = [(MacRAPBaseViewController *)self headerView];
  [view bringSubviewToFront:headerView3];

  view2 = [(MacRAPBaseViewController *)self view];
  footerView3 = [(MacRAPBaseViewController *)self footerView];
  [view2 bringSubviewToFront:footerView3];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = MacRAPBaseViewController;
  [(MacRAPBaseViewController *)&v4 viewDidLoad];
  [(MacRAPBaseViewController *)self _addHeaderView];
  [(MacRAPBaseViewController *)self _addFooterView];
  navigationController = [(MacRAPBaseViewController *)self navigationController];
  [navigationController setNavigationBarHidden:1];
}

- (void)setRightButtonEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  footerView = [(MacRAPBaseViewController *)self footerView];
  [footerView setRightButtonEnabled:enabledCopy];

  self->_rightButtonEnabled = enabledCopy;
}

- (void)setHeaderTitle:(id)title
{
  titleCopy = title;
  if (([titleCopy isEqualToString:self->_headerTitle] & 1) == 0)
  {
    headerView = [(MacRAPBaseViewController *)self headerView];
    [headerView setTitle:titleCopy];

    objc_storeStrong(&self->_headerTitle, title);
  }
}

- (void)setSearchBarPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  if (([placeholderCopy isEqualToString:self->_searchBarPlaceholder] & 1) == 0)
  {
    searchBar = [(MacRAPBaseViewController *)self searchBar];
    [searchBar setPlaceholder:placeholderCopy];

    objc_storeStrong(&self->_searchBarPlaceholder, placeholder);
  }
}

- (UISearchBar)searchBar
{
  searchBar = self->_searchBar;
  if (!searchBar)
  {
    v4 = objc_alloc_init(UISearchBar);
    [(UISearchBar *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UISearchBar *)v4 setDelegate:self];
    v5 = objc_opt_new();
    [(UISearchBar *)v4 setBackgroundImage:v5];

    v6 = +[UIColor systemGray5Color];
    [(UISearchBar *)v4 setBackgroundColor:v6];

    layer = [(UISearchBar *)v4 layer];
    [layer setCornerRadius:15.0];

    [(UISearchBar *)v4 setClipsToBounds:1];
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"Enter an Address [RAP]" value:@"localized string not found" table:0];
    [(UISearchBar *)v4 setPlaceholder:v9];

    [(UISearchBar *)v4 setReturnKeyType:9];
    v10 = self->_searchBar;
    self->_searchBar = v4;

    searchBar = self->_searchBar;
  }

  return searchBar;
}

@end