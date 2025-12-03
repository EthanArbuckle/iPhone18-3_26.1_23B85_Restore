@interface AllRAPHistoryViewController
- (AllRAPHistoryViewController)initWithReportSection:(unint64_t)section sectionTitle:(id)title;
- (void)_createCollectionViewLayout;
- (void)_setupConstraints;
- (void)dataSource:(id)source itemTapped:(id)tapped;
- (void)loadDataSource;
- (void)viewDidLoad;
@end

@implementation AllRAPHistoryViewController

- (void)dataSource:(id)source itemTapped:(id)tapped
{
  tappedCopy = tapped;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    delegate = [(ControlContaineeViewController *)self delegate];
    [delegate viewController:self presentReportDetail:tappedCopy fromEntryPoint:39];
  }
}

- (void)loadDataSource
{
  v3 = [[AllRAPHistoryDataSource alloc] initWithCollectionView:self->_collectionView reportSection:self->_reportSectionTypeForView];
  reportsDataSource = self->_reportsDataSource;
  self->_reportsDataSource = v3;

  [self->_reportsDataSource setDelegate:self];
  [(UICollectionView *)self->_collectionView setDelegate:self->_reportsDataSource];
  [(UICollectionView *)self->_collectionView setDataSource:self->_reportsDataSource];
  v5 = self->_reportsDataSource;

  [(DataSource *)v5 setActive:1];
}

- (void)_createCollectionViewLayout
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10061C458;
  v14[3] = &unk_101658368;
  v14[4] = self;
  v3 = [[UICollectionViewCompositionalLayout alloc] initWithSectionProvider:v14];
  v4 = [UICollectionView alloc];
  view = [(AllRAPHistoryViewController *)self view];
  [view bounds];
  v6 = [v4 initWithFrame:v3 collectionViewLayout:?];

  [(UICollectionView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = +[UIColor clearColor];
  [(UICollectionView *)v6 setBackgroundColor:v7];

  collectionView = self->_collectionView;
  self->_collectionView = v6;
  v9 = v6;

  [(UICollectionView *)self->_collectionView setAccessibilityIdentifier:@"AllRAPHistoryCollectionView"];
  contentView = [(ContaineeViewController *)self contentView];
  [contentView addSubview:v9];

  v11 = self->_collectionView;
  v12 = objc_opt_class();
  v13 = +[(TwoLineCollectionViewListCell *)TwoLinesCollectionViewInsetGroupedListCell];
  [(UICollectionView *)v11 registerClass:v12 forCellWithReuseIdentifier:v13];
}

- (void)_setupConstraints
{
  topAnchor = [(ContainerHeaderView *)self->_titleHeaderView topAnchor];
  headerView = [(ContaineeViewController *)self headerView];
  topAnchor2 = [headerView topAnchor];
  v32 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v36[0] = v32;
  leadingAnchor = [(ContainerHeaderView *)self->_titleHeaderView leadingAnchor];
  headerView2 = [(ContaineeViewController *)self headerView];
  leadingAnchor2 = [headerView2 leadingAnchor];
  v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v36[1] = v28;
  trailingAnchor = [(ContainerHeaderView *)self->_titleHeaderView trailingAnchor];
  headerView3 = [(ContaineeViewController *)self headerView];
  trailingAnchor2 = [headerView3 trailingAnchor];
  v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v36[2] = v24;
  bottomAnchor = [(ContainerHeaderView *)self->_titleHeaderView bottomAnchor];
  headerView4 = [(ContaineeViewController *)self headerView];
  bottomAnchor2 = [headerView4 bottomAnchor];
  v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v36[3] = v20;
  topAnchor3 = [(UICollectionView *)self->_collectionView topAnchor];
  contentView = [(ContaineeViewController *)self contentView];
  topAnchor4 = [contentView topAnchor];
  v16 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v36[4] = v16;
  leadingAnchor3 = [(UICollectionView *)self->_collectionView leadingAnchor];
  contentView2 = [(ContaineeViewController *)self contentView];
  leadingAnchor4 = [contentView2 leadingAnchor];
  v3 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v36[5] = v3;
  trailingAnchor3 = [(UICollectionView *)self->_collectionView trailingAnchor];
  contentView3 = [(ContaineeViewController *)self contentView];
  trailingAnchor4 = [contentView3 trailingAnchor];
  v7 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v36[6] = v7;
  bottomAnchor3 = [(UICollectionView *)self->_collectionView bottomAnchor];
  contentView4 = [(ContaineeViewController *)self contentView];
  bottomAnchor4 = [contentView4 bottomAnchor];
  v11 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v36[7] = v11;
  v12 = [NSArray arrayWithObjects:v36 count:8];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = AllRAPHistoryViewController;
  [(ContaineeViewController *)&v10 viewDidLoad];
  view = [(AllRAPHistoryViewController *)self view];
  [view setAccessibilityIdentifier:@"AllRAPHistoryView"];

  v4 = +[UIColor systemGroupedBackgroundColor];
  view2 = [(AllRAPHistoryViewController *)self view];
  [view2 setBackgroundColor:v4];

  headerView = [(ContaineeViewController *)self headerView];
  v7 = sub_10000FA08(self);
  [(ContainerHeaderView *)self->_titleHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ContainerHeaderView *)self->_titleHeaderView setDelegate:self];
  if (v7 == 5)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  [(ContainerHeaderView *)self->_titleHeaderView setHeaderSize:v8];
  [(ContainerHeaderView *)self->_titleHeaderView setHairLineAlpha:0.0];
  v9 = +[UIColor clearColor];
  [(ContainerHeaderView *)self->_titleHeaderView setBackgroundColor:v9];

  [headerView addSubview:self->_titleHeaderView];
  [(AllRAPHistoryViewController *)self _createCollectionViewLayout];
  [(AllRAPHistoryViewController *)self _setupConstraints];
}

- (AllRAPHistoryViewController)initWithReportSection:(unint64_t)section sectionTitle:(id)title
{
  titleCopy = title;
  v15.receiver = self;
  v15.super_class = AllRAPHistoryViewController;
  v7 = [(AllRAPHistoryViewController *)&v15 initWithNibName:0 bundle:0];
  if (v7)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [(AllRAPHistoryViewController *)v7 setAccessibilityIdentifier:v9];

    v7->_reportSectionTypeForView = section;
    v10 = [[ContainerHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    titleHeaderView = v7->_titleHeaderView;
    v7->_titleHeaderView = v10;

    [(ContainerHeaderView *)v7->_titleHeaderView setTitle:titleCopy];
    cardPresentationController = [(ContaineeViewController *)v7 cardPresentationController];
    [cardPresentationController setPresentedModally:1];

    cardPresentationController2 = [(ContaineeViewController *)v7 cardPresentationController];
    [cardPresentationController2 setTakesAvailableHeight:1];
  }

  return v7;
}

@end