@interface CollectionPickerViewController
- (CGSize)contentSize;
- (CollectionPickerViewController)initWithCollectionEditSession:(id)session;
- (CollectionPickerViewControllerDelegate)delegate;
- (void)dataSource:(id)source itemTapped:(id)tapped;
- (void)dataSourceUpdated:(id)updated;
- (void)loadDataSource;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CollectionPickerViewController

- (CollectionPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)dataSource:(id)source itemTapped:(id)tapped
{
  tappedCopy = tapped;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained collectionPickerViewController:self selectCollection:tappedCopy];
  }
}

- (void)dataSourceUpdated:(id)updated
{
  if (self->_collectionListDataSource == updated)
  {
    [(UITableView *)self->_tableView reloadData];
    [(CollectionPickerViewController *)self contentSize];

    [(CollectionPickerViewController *)self setPreferredContentSize:?];
  }
}

- (void)loadDataSource
{
  v3 = [[CollectionListDataSource alloc] initWithTableView:self->_tableView editSession:self->_collectionSession showsAddCollection:1];
  collectionListDataSource = self->_collectionListDataSource;
  self->_collectionListDataSource = v3;

  [(CollectionListDataSource *)self->_collectionListDataSource setCellsSize:1];
  [self->_collectionListDataSource setDelegate:self];
  [(UITableView *)self->_tableView setDelegate:self->_collectionListDataSource];
  [(UITableView *)self->_tableView setDataSource:self->_collectionListDataSource];
  [self->_collectionListDataSource setActive:1];
  [(CollectionPickerViewController *)self contentSize];

  [(CollectionPickerViewController *)self setPreferredContentSize:?];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CollectionPickerViewController;
  [(CollectionPickerViewController *)&v4 viewDidAppear:appear];
  [(CollectionPickerViewController *)self contentSize];
  [(CollectionPickerViewController *)self setPreferredContentSize:?];
}

- (void)viewDidLayoutSubviews
{
  v11.receiver = self;
  v11.super_class = CollectionPickerViewController;
  [(CollectionPickerViewController *)&v11 viewDidLayoutSubviews];
  [(CollectionPickerViewController *)self contentSize];
  v4 = v3;
  v6 = v5;
  [(CollectionPickerViewController *)self preferredContentSize];
  if (v4 != v8 || v6 != v7)
  {
    [(CollectionPickerViewController *)self setPreferredContentSize:v4, v6];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006430BC;
  block[3] = &unk_1016575B0;
  block[4] = self;
  *&block[5] = v4;
  *&block[6] = v6;
  dispatch_async(&_dispatch_main_q, block);
}

- (CGSize)contentSize
{
  +[CollectionTableViewCell estimatedCellHeight];
  v4 = v3;
  visibleCells = [(UITableView *)self->_tableView visibleCells];
  firstObject = [visibleCells firstObject];

  if (firstObject)
  {
    [firstObject frame];
    if (v7 > v4)
    {
      [firstObject frame];
      v4 = v8;
    }
  }

  v14.receiver = self;
  v14.super_class = CollectionPickerViewController;
  [(CollectionPickerViewController *)&v14 preferredContentSize];
  v10 = v9;
  v11 = v4 * [(CollectionListDataSource *)self->_collectionListDataSource entriesCount]+ 1.0;

  v12 = v10;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)viewDidLoad
{
  v25.receiver = self;
  v25.super_class = CollectionPickerViewController;
  [(CollectionPickerViewController *)&v25 viewDidLoad];
  view = [(CollectionPickerViewController *)self view];
  [view setAccessibilityIdentifier:@"CollectionPicker"];

  v4 = [[MapsThemeTableView alloc] initWithFrame:0 style:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  tableView = self->_tableView;
  self->_tableView = &v4->super;

  [(UITableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITableView *)self->_tableView setSectionHeaderTopPadding:0.0];
  v6 = +[UIColor clearColor];
  [(UITableView *)self->_tableView setBackgroundColor:v6];

  [(UITableView *)self->_tableView setAccessibilityIdentifier:@"CollectionPickerTable"];
  view2 = [(CollectionPickerViewController *)self view];
  [view2 addSubview:self->_tableView];

  topAnchor = [(UITableView *)self->_tableView topAnchor];
  view3 = [(CollectionPickerViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v26[0] = v21;
  leadingAnchor = [(UITableView *)self->_tableView leadingAnchor];
  view4 = [(CollectionPickerViewController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v26[1] = v17;
  bottomAnchor = [(UITableView *)self->_tableView bottomAnchor];
  view5 = [(CollectionPickerViewController *)self view];
  bottomAnchor2 = [view5 bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v26[2] = v11;
  trailingAnchor = [(UITableView *)self->_tableView trailingAnchor];
  view6 = [(CollectionPickerViewController *)self view];
  trailingAnchor2 = [view6 trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v26[3] = v15;
  v16 = [NSArray arrayWithObjects:v26 count:4];
  [NSLayoutConstraint activateConstraints:v16];

  [(CollectionPickerViewController *)self loadDataSource];
}

- (CollectionPickerViewController)initWithCollectionEditSession:(id)session
{
  sessionCopy = session;
  v9.receiver = self;
  v9.super_class = CollectionPickerViewController;
  v6 = [(CollectionPickerViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_collectionSession, session);
  }

  return v7;
}

@end