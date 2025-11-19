@interface MacRAPBaseViewController
- (UISearchBar)searchBar;
- (void)_addFooterView;
- (void)_addHeaderView;
- (void)macFooterViewBackButtonTapped:(id)a3;
- (void)setHeaderTitle:(id)a3;
- (void)setRightButtonEnabled:(BOOL)a3;
- (void)setSearchBarPlaceholder:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation MacRAPBaseViewController

- (void)macFooterViewBackButtonTapped:(id)a3
{
  v4 = [(MacRAPBaseViewController *)self navigationController];
  v3 = [v4 popViewControllerAnimated:1];
}

- (void)_addFooterView
{
  v3 = [[MacFooterView alloc] initWithNoBlurRightSideButtonsOfType:[(MacRAPBaseViewController *)self footerRightButtonType]];
  [(MacRAPBaseViewController *)self setFooterView:v3];

  v4 = [(MacRAPBaseViewController *)self footerView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(MacRAPBaseViewController *)self footerView];
  [v5 setDelegate:self];

  v6 = [(MacRAPBaseViewController *)self footerView];
  [v6 setRightButtonEnabled:self->_rightButtonEnabled];

  v7 = [(MacRAPBaseViewController *)self view];
  v8 = [(MacRAPBaseViewController *)self footerView];
  [v7 addSubview:v8];

  v24 = [(MacRAPBaseViewController *)self footerView];
  v22 = [v24 leadingAnchor];
  v23 = [(MacRAPBaseViewController *)self view];
  v21 = [v23 leadingAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v25[0] = v20;
  v19 = [(MacRAPBaseViewController *)self footerView];
  v9 = [v19 trailingAnchor];
  v10 = [(MacRAPBaseViewController *)self view];
  v11 = [v10 trailingAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  v25[1] = v12;
  v13 = [(MacRAPBaseViewController *)self footerView];
  v14 = [v13 bottomAnchor];
  v15 = [(MacRAPBaseViewController *)self view];
  v16 = [v15 bottomAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];
  v25[2] = v17;
  v18 = [NSArray arrayWithObjects:v25 count:3];
  [NSLayoutConstraint activateConstraints:v18];
}

- (void)_addHeaderView
{
  if ([(MacRAPBaseViewController *)self hasSearchBar])
  {
    v3 = [MacRAPHeaderView alloc];
    v4 = [(MacRAPBaseViewController *)self searchBar];
    v5 = [(MacRAPHeaderView *)v3 initWithSearchBar:v4];
    [(MacRAPBaseViewController *)self setHeaderView:v5];
  }

  else
  {
    v4 = objc_alloc_init(MacRAPHeaderView);
    [(MacRAPBaseViewController *)self setHeaderView:v4];
  }

  v6 = [(MacRAPBaseViewController *)self headerView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [(MacRAPBaseViewController *)self headerTitle];
  v8 = [(MacRAPBaseViewController *)self headerView];
  [v8 setTitle:v7];

  v9 = [(MacRAPBaseViewController *)self view];
  v10 = [(MacRAPBaseViewController *)self headerView];
  [v9 addSubview:v10];

  v26 = [(MacRAPBaseViewController *)self headerView];
  v24 = [v26 leadingAnchor];
  v25 = [(MacRAPBaseViewController *)self view];
  v23 = [v25 leadingAnchor];
  v22 = [v24 constraintEqualToAnchor:v23];
  v27[0] = v22;
  v21 = [(MacRAPBaseViewController *)self headerView];
  v11 = [v21 trailingAnchor];
  v12 = [(MacRAPBaseViewController *)self view];
  v13 = [v12 trailingAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  v27[1] = v14;
  v15 = [(MacRAPBaseViewController *)self headerView];
  v16 = [v15 topAnchor];
  v17 = [(MacRAPBaseViewController *)self view];
  v18 = [v17 topAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];
  v27[2] = v19;
  v20 = [NSArray arrayWithObjects:v27 count:3];
  [NSLayoutConstraint activateConstraints:v20];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = MacRAPBaseViewController;
  [(MacRAPBaseViewController *)&v5 viewDidAppear:a3];
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

- (void)viewWillAppear:(BOOL)a3
{
  v15.receiver = self;
  v15.super_class = MacRAPBaseViewController;
  [(MacRAPBaseViewController *)&v15 viewWillAppear:a3];
  v4 = [(MacRAPBaseViewController *)self headerView];
  [v4 layoutIfNeeded];

  v5 = [(MacRAPBaseViewController *)self footerView];
  [v5 layoutIfNeeded];

  v6 = [(MacRAPBaseViewController *)self headerView];
  [v6 frame];
  v8 = v7;
  v9 = [(MacRAPBaseViewController *)self footerView];
  [v9 frame];
  [(MacRAPBaseViewController *)self setAdditionalSafeAreaInsets:v8, 0.0, v10, 0.0];

  v11 = [(MacRAPBaseViewController *)self view];
  v12 = [(MacRAPBaseViewController *)self headerView];
  [v11 bringSubviewToFront:v12];

  v13 = [(MacRAPBaseViewController *)self view];
  v14 = [(MacRAPBaseViewController *)self footerView];
  [v13 bringSubviewToFront:v14];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = MacRAPBaseViewController;
  [(MacRAPBaseViewController *)&v4 viewDidLoad];
  [(MacRAPBaseViewController *)self _addHeaderView];
  [(MacRAPBaseViewController *)self _addFooterView];
  v3 = [(MacRAPBaseViewController *)self navigationController];
  [v3 setNavigationBarHidden:1];
}

- (void)setRightButtonEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(MacRAPBaseViewController *)self footerView];
  [v5 setRightButtonEnabled:v3];

  self->_rightButtonEnabled = v3;
}

- (void)setHeaderTitle:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToString:self->_headerTitle] & 1) == 0)
  {
    v5 = [(MacRAPBaseViewController *)self headerView];
    [v5 setTitle:v6];

    objc_storeStrong(&self->_headerTitle, a3);
  }
}

- (void)setSearchBarPlaceholder:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToString:self->_searchBarPlaceholder] & 1) == 0)
  {
    v5 = [(MacRAPBaseViewController *)self searchBar];
    [v5 setPlaceholder:v6];

    objc_storeStrong(&self->_searchBarPlaceholder, a3);
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

    v7 = [(UISearchBar *)v4 layer];
    [v7 setCornerRadius:15.0];

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