@interface AllRAPHistoryViewController
- (AllRAPHistoryViewController)initWithReportSection:(unint64_t)a3 sectionTitle:(id)a4;
- (void)_createCollectionViewLayout;
- (void)_setupConstraints;
- (void)dataSource:(id)a3 itemTapped:(id)a4;
- (void)loadDataSource;
- (void)viewDidLoad;
@end

@implementation AllRAPHistoryViewController

- (void)dataSource:(id)a3 itemTapped:(id)a4
{
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ControlContaineeViewController *)self delegate];
    [v5 viewController:self presentReportDetail:v6 fromEntryPoint:39];
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
  v5 = [(AllRAPHistoryViewController *)self view];
  [v5 bounds];
  v6 = [v4 initWithFrame:v3 collectionViewLayout:?];

  [(UICollectionView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = +[UIColor clearColor];
  [(UICollectionView *)v6 setBackgroundColor:v7];

  collectionView = self->_collectionView;
  self->_collectionView = v6;
  v9 = v6;

  [(UICollectionView *)self->_collectionView setAccessibilityIdentifier:@"AllRAPHistoryCollectionView"];
  v10 = [(ContaineeViewController *)self contentView];
  [v10 addSubview:v9];

  v11 = self->_collectionView;
  v12 = objc_opt_class();
  v13 = +[(TwoLineCollectionViewListCell *)TwoLinesCollectionViewInsetGroupedListCell];
  [(UICollectionView *)v11 registerClass:v12 forCellWithReuseIdentifier:v13];
}

- (void)_setupConstraints
{
  v34 = [(ContainerHeaderView *)self->_titleHeaderView topAnchor];
  v35 = [(ContaineeViewController *)self headerView];
  v33 = [v35 topAnchor];
  v32 = [v34 constraintEqualToAnchor:v33];
  v36[0] = v32;
  v30 = [(ContainerHeaderView *)self->_titleHeaderView leadingAnchor];
  v31 = [(ContaineeViewController *)self headerView];
  v29 = [v31 leadingAnchor];
  v28 = [v30 constraintEqualToAnchor:v29];
  v36[1] = v28;
  v26 = [(ContainerHeaderView *)self->_titleHeaderView trailingAnchor];
  v27 = [(ContaineeViewController *)self headerView];
  v25 = [v27 trailingAnchor];
  v24 = [v26 constraintEqualToAnchor:v25];
  v36[2] = v24;
  v22 = [(ContainerHeaderView *)self->_titleHeaderView bottomAnchor];
  v23 = [(ContaineeViewController *)self headerView];
  v21 = [v23 bottomAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v36[3] = v20;
  v18 = [(UICollectionView *)self->_collectionView topAnchor];
  v19 = [(ContaineeViewController *)self contentView];
  v17 = [v19 topAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v36[4] = v16;
  v14 = [(UICollectionView *)self->_collectionView leadingAnchor];
  v15 = [(ContaineeViewController *)self contentView];
  v13 = [v15 leadingAnchor];
  v3 = [v14 constraintEqualToAnchor:v13];
  v36[5] = v3;
  v4 = [(UICollectionView *)self->_collectionView trailingAnchor];
  v5 = [(ContaineeViewController *)self contentView];
  v6 = [v5 trailingAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];
  v36[6] = v7;
  v8 = [(UICollectionView *)self->_collectionView bottomAnchor];
  v9 = [(ContaineeViewController *)self contentView];
  v10 = [v9 bottomAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v36[7] = v11;
  v12 = [NSArray arrayWithObjects:v36 count:8];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = AllRAPHistoryViewController;
  [(ContaineeViewController *)&v10 viewDidLoad];
  v3 = [(AllRAPHistoryViewController *)self view];
  [v3 setAccessibilityIdentifier:@"AllRAPHistoryView"];

  v4 = +[UIColor systemGroupedBackgroundColor];
  v5 = [(AllRAPHistoryViewController *)self view];
  [v5 setBackgroundColor:v4];

  v6 = [(ContaineeViewController *)self headerView];
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

  [v6 addSubview:self->_titleHeaderView];
  [(AllRAPHistoryViewController *)self _createCollectionViewLayout];
  [(AllRAPHistoryViewController *)self _setupConstraints];
}

- (AllRAPHistoryViewController)initWithReportSection:(unint64_t)a3 sectionTitle:(id)a4
{
  v6 = a4;
  v15.receiver = self;
  v15.super_class = AllRAPHistoryViewController;
  v7 = [(AllRAPHistoryViewController *)&v15 initWithNibName:0 bundle:0];
  if (v7)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [(AllRAPHistoryViewController *)v7 setAccessibilityIdentifier:v9];

    v7->_reportSectionTypeForView = a3;
    v10 = [[ContainerHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    titleHeaderView = v7->_titleHeaderView;
    v7->_titleHeaderView = v10;

    [(ContainerHeaderView *)v7->_titleHeaderView setTitle:v6];
    v12 = [(ContaineeViewController *)v7 cardPresentationController];
    [v12 setPresentedModally:1];

    v13 = [(ContaineeViewController *)v7 cardPresentationController];
    [v13 setTakesAvailableHeight:1];
  }

  return v7;
}

@end