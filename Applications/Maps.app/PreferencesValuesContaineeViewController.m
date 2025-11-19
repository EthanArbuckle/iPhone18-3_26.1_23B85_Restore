@interface PreferencesValuesContaineeViewController
- (NSDirectionalEdgeInsets)collectionViewListSectionContentInsetsForSection:(int64_t)a3;
- (PreferenceValuesDataSource)dataSource;
- (id)initialConstraints;
- (void)addSection:(id)a3;
- (void)addSectionWithTitle:(id)a3 content:(id)a4;
- (void)dataSourceDidRebuildSections:(id)a3;
- (void)loadContentNowIfNeeded;
- (void)prepareContent;
- (void)rebuildSections;
- (void)setupSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PreferencesValuesContaineeViewController

- (void)dataSourceDidRebuildSections:(id)a3
{
  [(UITableView *)self->_tableView reloadData];
  collectionView = self->_collectionView;

  [(UICollectionView *)collectionView reloadData];
}

- (void)rebuildSections
{
  v2 = [(PreferencesValuesContaineeViewController *)self dataSource];
  [v2 rebuildSections];
}

- (void)loadContentNowIfNeeded
{
  v2 = [(PreferencesValuesContaineeViewController *)self dataSource];
  [v2 loadContentNowIfNeeded];
}

- (void)addSectionWithTitle:(id)a3 content:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PreferencesValuesContaineeViewController *)self dataSource];
  [v8 addSectionWithTitle:v7 content:v6];
}

- (void)addSection:(id)a3
{
  v4 = a3;
  v5 = [(PreferencesValuesContaineeViewController *)self dataSource];
  [v5 addSection:v4];
}

- (void)prepareContent
{
  v2 = [(PreferencesValuesContaineeViewController *)self dataSource];
  [v2 prepareContent];
}

- (PreferenceValuesDataSource)dataSource
{
  dataSource = self->_dataSource;
  if (!dataSource)
  {
    v4 = objc_alloc_init(PreferenceValuesDataSource);
    v5 = self->_dataSource;
    self->_dataSource = v4;

    [(PreferenceValuesDataSource *)self->_dataSource setDelegate:self];
    dataSource = self->_dataSource;
  }

  return dataSource;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PreferencesValuesContaineeViewController;
  [(ContaineeViewController *)&v4 viewWillAppear:a3];
  [(MapsThemeViewController *)self updateTheme];
}

- (id)initialConstraints
{
  tableView = self->_tableView;
  if (!tableView)
  {
    tableView = self->_collectionView;
  }

  v3 = [(ContaineeViewController *)self contentView];
  LODWORD(v4) = 1148846080;
  v5 = [tableView _maps_constraintsEqualToEdgesOfView:v3 priority:v4];
  v6 = [v5 allConstraints];

  return v6;
}

- (void)setupSubviews
{
  if ([objc_opt_class() useCollectionView])
  {
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100E6791C;
    v28[3] = &unk_101658368;
    v28[4] = self;
    v3 = [[UICollectionViewCompositionalLayout alloc] initWithSectionProvider:v28];
    v4 = [UICollectionView alloc];
    v5 = [(PreferencesValuesContaineeViewController *)self view];
    [v5 bounds];
    v6 = [v4 initWithFrame:v3 collectionViewLayout:?];
    [(PreferencesValuesContaineeViewController *)self setCollectionView:v6];

    v7 = [(PreferencesValuesContaineeViewController *)self collectionView];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

    v8 = [(PreferencesValuesContaineeViewController *)self dataSource];
    v9 = [(PreferencesValuesContaineeViewController *)self collectionView];
    [v9 setDataSource:v8];

    v10 = [(PreferencesValuesContaineeViewController *)self dataSource];
    v11 = [(PreferencesValuesContaineeViewController *)self collectionView];
    [v11 setDelegate:v10];

    v12 = [(PreferencesValuesContaineeViewController *)self collectionView];
    [PreferenceValuesDataSource registerCellsInCollectionView:v12];

    v13 = [(ContaineeViewController *)self contentView];
    v14 = [(PreferencesValuesContaineeViewController *)self collectionView];
    [v13 addSubview:v14];
  }

  else
  {
    v15 = [UITableView alloc];
    v16 = [(PreferencesValuesContaineeViewController *)self view];
    [v16 bounds];
    v17 = [v15 initWithFrame:1 style:?];
    [(PreferencesValuesContaineeViewController *)self setTableView:v17];

    v18 = [(PreferencesValuesContaineeViewController *)self tableView];
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

    v19 = [(PreferencesValuesContaineeViewController *)self dataSource];
    v20 = [(PreferencesValuesContaineeViewController *)self tableView];
    [v20 setDataSource:v19];

    v21 = [(PreferencesValuesContaineeViewController *)self dataSource];
    v22 = [(PreferencesValuesContaineeViewController *)self tableView];
    [v22 setDelegate:v21];

    v23 = [(PreferencesValuesContaineeViewController *)self tableView];
    [v23 setBackgroundView:0];

    v24 = +[UIColor clearColor];
    v25 = [(PreferencesValuesContaineeViewController *)self tableView];
    [v25 setBackgroundColor:v24];

    v27 = [(ContaineeViewController *)self contentView];
    v26 = [(PreferencesValuesContaineeViewController *)self tableView];
    [v27 addSubview:v26];
  }
}

- (NSDirectionalEdgeInsets)collectionViewListSectionContentInsetsForSection:(int64_t)a3
{
  if (([(PreferencesValuesContaineeViewController *)self collectionViewListLayoutAppearanceStyle]& 0xFFFFFFFFFFFFFFFBLL) != 0)
  {
    leading = 16.0;
    top = 0.0;
    bottom = 0.0;
    trailing = 16.0;
  }

  else
  {
    top = NSDirectionalEdgeInsetsZero.top;
    leading = NSDirectionalEdgeInsetsZero.leading;
    bottom = NSDirectionalEdgeInsetsZero.bottom;
    trailing = NSDirectionalEdgeInsetsZero.trailing;
  }

  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PreferencesValuesContaineeViewController;
  [(ContaineeViewController *)&v4 viewDidLoad];
  [(PreferencesValuesContaineeViewController *)self setupSubviews];
  v3 = [(PreferencesValuesContaineeViewController *)self initialConstraints];
  [NSLayoutConstraint activateConstraints:v3];
}

@end