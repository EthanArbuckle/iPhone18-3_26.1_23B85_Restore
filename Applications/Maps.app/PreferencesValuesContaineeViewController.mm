@interface PreferencesValuesContaineeViewController
- (NSDirectionalEdgeInsets)collectionViewListSectionContentInsetsForSection:(int64_t)section;
- (PreferenceValuesDataSource)dataSource;
- (id)initialConstraints;
- (void)addSection:(id)section;
- (void)addSectionWithTitle:(id)title content:(id)content;
- (void)dataSourceDidRebuildSections:(id)sections;
- (void)loadContentNowIfNeeded;
- (void)prepareContent;
- (void)rebuildSections;
- (void)setupSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PreferencesValuesContaineeViewController

- (void)dataSourceDidRebuildSections:(id)sections
{
  [(UITableView *)self->_tableView reloadData];
  collectionView = self->_collectionView;

  [(UICollectionView *)collectionView reloadData];
}

- (void)rebuildSections
{
  dataSource = [(PreferencesValuesContaineeViewController *)self dataSource];
  [dataSource rebuildSections];
}

- (void)loadContentNowIfNeeded
{
  dataSource = [(PreferencesValuesContaineeViewController *)self dataSource];
  [dataSource loadContentNowIfNeeded];
}

- (void)addSectionWithTitle:(id)title content:(id)content
{
  contentCopy = content;
  titleCopy = title;
  dataSource = [(PreferencesValuesContaineeViewController *)self dataSource];
  [dataSource addSectionWithTitle:titleCopy content:contentCopy];
}

- (void)addSection:(id)section
{
  sectionCopy = section;
  dataSource = [(PreferencesValuesContaineeViewController *)self dataSource];
  [dataSource addSection:sectionCopy];
}

- (void)prepareContent
{
  dataSource = [(PreferencesValuesContaineeViewController *)self dataSource];
  [dataSource prepareContent];
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

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PreferencesValuesContaineeViewController;
  [(ContaineeViewController *)&v4 viewWillAppear:appear];
  [(MapsThemeViewController *)self updateTheme];
}

- (id)initialConstraints
{
  tableView = self->_tableView;
  if (!tableView)
  {
    tableView = self->_collectionView;
  }

  contentView = [(ContaineeViewController *)self contentView];
  LODWORD(v4) = 1148846080;
  v5 = [tableView _maps_constraintsEqualToEdgesOfView:contentView priority:v4];
  allConstraints = [v5 allConstraints];

  return allConstraints;
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
    view = [(PreferencesValuesContaineeViewController *)self view];
    [view bounds];
    v6 = [v4 initWithFrame:v3 collectionViewLayout:?];
    [(PreferencesValuesContaineeViewController *)self setCollectionView:v6];

    collectionView = [(PreferencesValuesContaineeViewController *)self collectionView];
    [collectionView setTranslatesAutoresizingMaskIntoConstraints:0];

    dataSource = [(PreferencesValuesContaineeViewController *)self dataSource];
    collectionView2 = [(PreferencesValuesContaineeViewController *)self collectionView];
    [collectionView2 setDataSource:dataSource];

    dataSource2 = [(PreferencesValuesContaineeViewController *)self dataSource];
    collectionView3 = [(PreferencesValuesContaineeViewController *)self collectionView];
    [collectionView3 setDelegate:dataSource2];

    collectionView4 = [(PreferencesValuesContaineeViewController *)self collectionView];
    [PreferenceValuesDataSource registerCellsInCollectionView:collectionView4];

    contentView = [(ContaineeViewController *)self contentView];
    collectionView5 = [(PreferencesValuesContaineeViewController *)self collectionView];
    [contentView addSubview:collectionView5];
  }

  else
  {
    v15 = [UITableView alloc];
    view2 = [(PreferencesValuesContaineeViewController *)self view];
    [view2 bounds];
    v17 = [v15 initWithFrame:1 style:?];
    [(PreferencesValuesContaineeViewController *)self setTableView:v17];

    tableView = [(PreferencesValuesContaineeViewController *)self tableView];
    [tableView setTranslatesAutoresizingMaskIntoConstraints:0];

    dataSource3 = [(PreferencesValuesContaineeViewController *)self dataSource];
    tableView2 = [(PreferencesValuesContaineeViewController *)self tableView];
    [tableView2 setDataSource:dataSource3];

    dataSource4 = [(PreferencesValuesContaineeViewController *)self dataSource];
    tableView3 = [(PreferencesValuesContaineeViewController *)self tableView];
    [tableView3 setDelegate:dataSource4];

    tableView4 = [(PreferencesValuesContaineeViewController *)self tableView];
    [tableView4 setBackgroundView:0];

    v24 = +[UIColor clearColor];
    tableView5 = [(PreferencesValuesContaineeViewController *)self tableView];
    [tableView5 setBackgroundColor:v24];

    contentView2 = [(ContaineeViewController *)self contentView];
    tableView6 = [(PreferencesValuesContaineeViewController *)self tableView];
    [contentView2 addSubview:tableView6];
  }
}

- (NSDirectionalEdgeInsets)collectionViewListSectionContentInsetsForSection:(int64_t)section
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
  initialConstraints = [(PreferencesValuesContaineeViewController *)self initialConstraints];
  [NSLayoutConstraint activateConstraints:initialConstraints];
}

@end