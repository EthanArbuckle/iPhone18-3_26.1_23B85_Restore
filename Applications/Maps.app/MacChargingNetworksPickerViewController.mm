@interface MacChargingNetworksPickerViewController
- (MacChargingNetworksPickerViewController)initWithExcludedNetworks:(id)networks delegate:(id)delegate;
- (_TtP4Maps43ChargingNetworkPickerViewControllerDelegate_)delegate;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateAddButton;
- (void)didDeselectNetwork:(id)network isSuggested:(BOOL)suggested;
- (void)didSelectNetwork:(id)network isSuggested:(BOOL)suggested;
- (void)macFooterViewBackButtonTapped:(id)tapped;
- (void)macFooterViewRightButtonTapped:(id)tapped;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation MacChargingNetworksPickerViewController

- (_TtP4Maps43ChargingNetworkPickerViewControllerDelegate_)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10070AD40;
  block[3] = &unk_101661B18;
  clickedCopy = clicked;
  v3 = clickedCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)macFooterViewBackButtonTapped:(id)tapped
{
  v3 = sub_10006D178();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315650;
    v7 = "[MacChargingNetworksPickerViewController macFooterViewBackButtonTapped:]";
    v8 = 2080;
    v9 = "MacChargingNetworksPickerViewController.m";
    v10 = 1024;
    v11 = 172;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v6, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v4 = sub_10006D178();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = +[NSThread callStackSymbols];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%@", &v6, 0xCu);
    }
  }
}

- (void)macFooterViewRightButtonTapped:(id)tapped
{
  [(MacChargingNetworksPickerViewController *)self dismissViewControllerAnimated:1 completion:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  selectedNetworks = [(ChargingNetworksDataSource *)self->_dataSource selectedNetworks];
  allObjects = [selectedNetworks allObjects];
  [WeakRetained networkPickerControllerDidSelectNetworks:allObjects];
}

- (void)didDeselectNetwork:(id)network isSuggested:(BOOL)suggested
{
  if (suggested)
  {
    v5 = 439;
  }

  else
  {
    v5 = 448;
  }

  v6 = +[MKMapService sharedService];
  [v6 captureUserAction:v5 onTarget:122 eventValue:0];

  [(MacChargingNetworksPickerViewController *)self _updateAddButton];
}

- (void)didSelectNetwork:(id)network isSuggested:(BOOL)suggested
{
  if (suggested)
  {
    v5 = 455;
  }

  else
  {
    v5 = 443;
  }

  v6 = +[MKMapService sharedService];
  [v6 captureUserAction:v5 onTarget:122 eventValue:0];

  [(MacChargingNetworksPickerViewController *)self _updateAddButton];
}

- (void)_updateAddButton
{
  selectedNetworks = [(ChargingNetworksDataSource *)self->_dataSource selectedNetworks];
  v4 = [selectedNetworks count] != 0;

  footerView = self->_footerView;

  [(MacFooterView *)footerView setRightButtonEnabled:v4];
}

- (void)_setupConstraints
{
  topAnchor = [(UISearchBar *)self->_searchBar topAnchor];
  view = [(MacChargingNetworksPickerViewController *)self view];
  topAnchor2 = [view topAnchor];
  v42 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v46[0] = v42;
  leadingAnchor = [(UISearchBar *)self->_searchBar leadingAnchor];
  view2 = [(MacChargingNetworksPickerViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v38 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v46[1] = v38;
  trailingAnchor = [(UISearchBar *)self->_searchBar trailingAnchor];
  view3 = [(MacChargingNetworksPickerViewController *)self view];
  trailingAnchor2 = [view3 trailingAnchor];
  v34 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v46[2] = v34;
  topAnchor3 = [(UITableView *)self->_tableView topAnchor];
  bottomAnchor = [(UISearchBar *)self->_searchBar bottomAnchor];
  v31 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  v46[3] = v31;
  bottomAnchor2 = [(UITableView *)self->_tableView bottomAnchor];
  view4 = [(MacChargingNetworksPickerViewController *)self view];
  safeAreaLayoutGuide = [view4 safeAreaLayoutGuide];
  bottomAnchor3 = [safeAreaLayoutGuide bottomAnchor];
  v26 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v46[4] = v26;
  leadingAnchor3 = [(UITableView *)self->_tableView leadingAnchor];
  view5 = [(MacChargingNetworksPickerViewController *)self view];
  safeAreaLayoutGuide2 = [view5 safeAreaLayoutGuide];
  leadingAnchor4 = [safeAreaLayoutGuide2 leadingAnchor];
  v21 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v46[5] = v21;
  trailingAnchor3 = [(UITableView *)self->_tableView trailingAnchor];
  view6 = [(MacChargingNetworksPickerViewController *)self view];
  safeAreaLayoutGuide3 = [view6 safeAreaLayoutGuide];
  trailingAnchor4 = [safeAreaLayoutGuide3 trailingAnchor];
  v16 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v46[6] = v16;
  leadingAnchor5 = [(MacFooterView *)self->_footerView leadingAnchor];
  view7 = [(MacChargingNetworksPickerViewController *)self view];
  leadingAnchor6 = [view7 leadingAnchor];
  v3 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v46[7] = v3;
  trailingAnchor5 = [(MacFooterView *)self->_footerView trailingAnchor];
  view8 = [(MacChargingNetworksPickerViewController *)self view];
  trailingAnchor6 = [view8 trailingAnchor];
  v7 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v46[8] = v7;
  bottomAnchor4 = [(MacFooterView *)self->_footerView bottomAnchor];
  view9 = [(MacChargingNetworksPickerViewController *)self view];
  bottomAnchor5 = [view9 bottomAnchor];
  v11 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  v46[9] = v11;
  v12 = [NSArray arrayWithObjects:v46 count:10];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)_setupSubviews
{
  v3 = objc_alloc_init(UISearchBar);
  searchBar = self->_searchBar;
  self->_searchBar = v3;

  [(UISearchBar *)self->_searchBar setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UISearchBar *)self->_searchBar setDelegate:self];
  v5 = objc_opt_new();
  [(UISearchBar *)self->_searchBar setBackgroundImage:v5];

  v6 = +[UIColor clearColor];
  [(UISearchBar *)self->_searchBar setBackgroundColor:v6];

  layer = [(UISearchBar *)self->_searchBar layer];
  [layer setCornerRadius:10.0];

  [(UISearchBar *)self->_searchBar setClipsToBounds:1];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"Networks picker" value:@"localized string not found" table:0];
  [(UISearchBar *)self->_searchBar setPlaceholder:v9];

  searchTextField = [(UISearchBar *)self->_searchBar searchTextField];
  [searchTextField setControlSize:2];

  [(UISearchBar *)self->_searchBar setReturnKeyType:9];
  [(UISearchBar *)self->_searchBar setContentInset:16.0, 16.0, 10.0, 16.0];
  searchTextField2 = [(UISearchBar *)self->_searchBar searchTextField];
  [searchTextField2 setDelegate:self];

  view = [(MacChargingNetworksPickerViewController *)self view];
  [view addSubview:self->_searchBar];

  v13 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  tableView = self->_tableView;
  self->_tableView = v13;

  [(UITableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITableView *)self->_tableView setAllowsMultipleSelection:1];
  LODWORD(v15) = 1148846080;
  [(UITableView *)self->_tableView setContentCompressionResistancePriority:1 forAxis:v15];
  [(UITableView *)self->_tableView setDataSource:self->_dataSource];
  [(UITableView *)self->_tableView setDelegate:self->_dataSource];
  [(UITableView *)self->_tableView setDirectionalLayoutMargins:0.0, 16.0, 0.0, 16.0];
  v16 = +[UIColor clearColor];
  [(UITableView *)self->_tableView setBackgroundColor:v16];

  v17 = self->_tableView;
  v18 = objc_opt_class();
  v19 = +[_TtC4Maps35ChargingNetworkPickerViewController reuseIdentifier];
  [(UITableView *)v17 registerClass:v18 forCellReuseIdentifier:v19];

  v20 = [[UIView alloc] initWithFrame:{0.0, 0.0, 0.0, 2.22507386e-308}];
  [(UITableView *)self->_tableView setTableHeaderView:v20];

  v21 = +[UIColor clearColor];
  [(UITableView *)self->_tableView setBackgroundColor:v21];

  view2 = [(MacChargingNetworksPickerViewController *)self view];
  [view2 addSubview:self->_tableView];

  v23 = [[MacFooterView alloc] initWithNoBlurRightSideButtonsOfType:1];
  footerView = self->_footerView;
  self->_footerView = v23;

  [(MacFooterView *)self->_footerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MacFooterView *)self->_footerView setDelegate:self];
  [(MacFooterView *)self->_footerView setRightButtonEnabled:0];
  view3 = [(MacChargingNetworksPickerViewController *)self view];
  [view3 addSubview:self->_footerView];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = MacChargingNetworksPickerViewController;
  [(MacChargingNetworksPickerViewController *)&v6 viewWillAppear:appear];
  [(MacFooterView *)self->_footerView layoutIfNeeded];
  [(MacFooterView *)self->_footerView frame];
  [(MacChargingNetworksPickerViewController *)self setAdditionalSafeAreaInsets:0.0, 0.0, v4, 0.0];
  view = [(MacChargingNetworksPickerViewController *)self view];
  [view bringSubviewToFront:self->_footerView];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = MacChargingNetworksPickerViewController;
  [(MacChargingNetworksPickerViewController *)&v4 viewDidLoad];
  navigationController = [(MacChargingNetworksPickerViewController *)self navigationController];
  [navigationController setNavigationBarHidden:1];

  [(MacChargingNetworksPickerViewController *)self _setupSubviews];
  [(MacChargingNetworksPickerViewController *)self _setupConstraints];
}

- (MacChargingNetworksPickerViewController)initWithExcludedNetworks:(id)networks delegate:(id)delegate
{
  networksCopy = networks;
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = MacChargingNetworksPickerViewController;
  v8 = [(MacChargingNetworksPickerViewController *)&v13 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    v10 = [[_TtC4Maps26ChargingNetworksDataSource alloc] initWithExcludedNetworks:networksCopy context:2 delegate:v9];
    dataSource = v9->_dataSource;
    v9->_dataSource = v10;
  }

  return v9;
}

@end