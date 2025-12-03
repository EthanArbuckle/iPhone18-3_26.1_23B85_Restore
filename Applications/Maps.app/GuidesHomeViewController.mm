@interface GuidesHomeViewController
- (CGPoint)contentOffset;
- (GuidesHomeViewController)initWithGuideLocation:(id)location withTraits:(id)traits;
- (GuidesHomeViewControllerDelegate)actionDelegate;
- (double)heightForLayout:(unint64_t)layout;
- (id)backgroundViewForCitySelector;
- (id)createLayoutUsingWidth:(double)width;
- (void)activateConstraintsForViewAligningHeader:(id)header;
- (void)activateConstraintsForViewPinnedBelowHeader:(id)header headerView:(id)view;
- (void)activateHeaderConstraints;
- (void)addDefaultHeaderView;
- (void)addGuidesHomeCollectionsView;
- (void)addLoadingView;
- (void)didChangeLayout:(unint64_t)layout;
- (void)didDismissByGesture;
- (void)didSelectGuide:(id)guide;
- (void)didTapCitySelectorButton:(id)button;
- (void)dismissGuidesHome;
- (void)handleDismissAction:(id)action;
- (void)initializeDataSource;
- (void)onTransitionFromState:(int64_t)state toState:(int64_t)toState;
- (void)removeCitySelectionUI;
- (void)removeCollectionView;
- (void)removeDefaultHeaderView;
- (void)removeLoadingView;
- (void)resetCollectionViewLayout;
- (void)resetDefaultHeaderConstraints;
- (void)routeToCitySelector;
- (void)routeToCuratedCollection:(id)collection;
- (void)routeToGuideLocation:(id)location;
- (void)routeToPublisher:(id)publisher;
- (void)routeToSingleCuratedCollection:(id)collection;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setGuideLocation:(id)location;
- (void)setupCitySelectionUI;
- (void)setupCitySelectionUIGradientView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation GuidesHomeViewController

- (CGPoint)contentOffset
{
  x = self->_contentOffset.x;
  y = self->_contentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (GuidesHomeViewControllerDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (void)didSelectGuide:(id)guide
{
  guideCopy = guide;
  actionDelegate = [(GuidesHomeViewController *)self actionDelegate];
  [actionDelegate guidesHomeViewController:self showCuratedGuide:guideCopy];

  analyticsManager = [(GuidesHomeViewController *)self analyticsManager];
  collectionIdentifier = [guideCopy collectionIdentifier];
  publisher = [guideCopy publisher];
  identifier = [publisher identifier];
  v9 = +[CuratedCollectionSyncManager sharedManager];
  v10 = [v9 collectionIsSaved:guideCopy];

  [analyticsManager guidesHomeTappedFeaturedGuide:collectionIdentifier publisherId:identifier isCurrentlySaved:v10];
}

- (void)didTapCitySelectorButton:(id)button
{
  [(GuidesHomeViewController *)self routeToCitySelector];
  analyticsManager = [(GuidesHomeViewController *)self analyticsManager];
  [analyticsManager guidesHomeCitySelectorTapped];
}

- (void)routeToCitySelector
{
  actionDelegate = [(GuidesHomeViewController *)self actionDelegate];
  guideLocation = [(GuidesHomeViewController *)self guideLocation];
  [actionDelegate guidesHomeViewController:self showCitySelectorWithLocation:guideLocation];
}

- (void)routeToPublisher:(id)publisher
{
  publisherCopy = publisher;
  actionDelegate = [(GuidesHomeViewController *)self actionDelegate];
  [actionDelegate guidesHomeViewController:self showPublisher:publisherCopy];
}

- (void)routeToGuideLocation:(id)location
{
  locationCopy = location;
  actionDelegate = [(GuidesHomeViewController *)self actionDelegate];
  [actionDelegate guidesHomeViewController:self showGuidesHomeWithLocation:locationCopy];
}

- (void)routeToCuratedCollection:(id)collection
{
  collectionCopy = collection;
  actionDelegate = [(GuidesHomeViewController *)self actionDelegate];
  [actionDelegate guidesHomeViewController:self showCuratedGuide:collectionCopy];
}

- (void)dismissGuidesHome
{
  apiController = [(GuidesHomeViewController *)self apiController];
  [apiController cancelFetchingGuideHome];

  analyticsManager = [(GuidesHomeViewController *)self analyticsManager];
  [analyticsManager guidesHomeClosed];
}

- (void)routeToSingleCuratedCollection:(id)collection
{
  collectionCopy = collection;
  actionDelegate = [(GuidesHomeViewController *)self actionDelegate];
  [actionDelegate guidesHomeViewController:self showCuratedGuideWithIdentifier:collectionCopy];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v10.receiver = self;
  v10.super_class = GuidesHomeViewController;
  coordinatorCopy = coordinator;
  [(ContaineeViewController *)&v10 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[4] = self;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1008D2CD4;
  v9[3] = &unk_101661710;
  v9[4] = self;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1008D2CDC;
  v8[3] = &unk_101661710;
  [coordinatorCopy animateAlongsideTransition:v9 completion:v8];
}

- (void)removeLoadingView
{
  loadingView = [(GuidesHomeViewController *)self loadingView];

  if (loadingView)
  {
    loadingView2 = [(GuidesHomeViewController *)self loadingView];
    [loadingView2 removeFromSuperview];

    [(GuidesHomeViewController *)self setLoadingView:0];
  }
}

- (void)addLoadingView
{
  objc_initWeak(&location, self);
  v2 = dispatch_time(0, 200000000);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1008D2E6C;
  v3[3] = &unk_101661B98;
  objc_copyWeak(&v4, &location);
  dispatch_after(v2, &_dispatch_main_q, v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)resetCollectionViewLayout
{
  collectionView = [(GuidesHomeViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout invalidateLayout];

  collectionView2 = [(GuidesHomeViewController *)self collectionView];
  contentView = [(ContaineeViewController *)self contentView];
  [contentView frame];
  v8 = [(GuidesHomeViewController *)self createLayoutUsingWidth:v7];
  [collectionView2 setCollectionViewLayout:v8];

  collectionView3 = [(GuidesHomeViewController *)self collectionView];
  [(GuidesHomeViewController *)self contentOffset];
  [collectionView3 setContentOffset:?];
}

- (void)activateConstraintsForViewAligningHeader:(id)header
{
  headerCopy = header;
  apiController = [(GuidesHomeViewController *)self apiController];
  isCuratedGuidesHome = [apiController isCuratedGuidesHome];

  if (isCuratedGuidesHome)
  {
    leadingAnchor = [headerCopy leadingAnchor];
    contentView = [(ContaineeViewController *)self contentView];
    leadingAnchor2 = [contentView leadingAnchor];
    v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v25[0] = v20;
    trailingAnchor = [headerCopy trailingAnchor];
    contentView2 = [(ContaineeViewController *)self contentView];
    trailingAnchor2 = [contentView2 trailingAnchor];
    v7 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v25[1] = v7;
    topAnchor = [headerCopy topAnchor];
    citySelectionView = [(GuidesHomeViewController *)self citySelectionView];
    topAnchor2 = [citySelectionView topAnchor];
    v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v25[2] = v11;
    bottomAnchor = [headerCopy bottomAnchor];

    contentView3 = [(ContaineeViewController *)self contentView];
    bottomAnchor2 = [contentView3 bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v25[3] = v15;
    v16 = [NSArray arrayWithObjects:v25 count:4];
    [NSLayoutConstraint activateConstraints:v16];
  }

  else
  {
    citySelectionView2 = [(GuidesHomeViewController *)self citySelectionView];
    [(GuidesHomeViewController *)self activateConstraintsForViewPinnedBelowHeader:headerCopy headerView:?];
  }
}

- (void)activateConstraintsForViewPinnedBelowHeader:(id)header headerView:(id)view
{
  viewCopy = view;
  headerCopy = header;
  leadingAnchor = [headerCopy leadingAnchor];
  contentView = [(ContaineeViewController *)self contentView];
  leadingAnchor2 = [contentView leadingAnchor];
  v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v24[0] = v20;
  trailingAnchor = [headerCopy trailingAnchor];
  contentView2 = [(ContaineeViewController *)self contentView];
  trailingAnchor2 = [contentView2 trailingAnchor];
  v9 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v24[1] = v9;
  topAnchor = [headerCopy topAnchor];
  bottomAnchor = [viewCopy bottomAnchor];

  v12 = [topAnchor constraintEqualToAnchor:bottomAnchor];
  v24[2] = v12;
  bottomAnchor2 = [headerCopy bottomAnchor];

  contentView3 = [(ContaineeViewController *)self contentView];
  bottomAnchor3 = [contentView3 bottomAnchor];
  v16 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v24[3] = v16;
  v17 = [NSArray arrayWithObjects:v24 count:4];
  [NSLayoutConstraint activateConstraints:v17];
}

- (id)createLayoutUsingWidth:(double)width
{
  objc_initWeak(&location, self);
  v5 = [GuideHomeCompositionalLayout alloc];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1008D36CC;
  v9[3] = &unk_10162DB30;
  objc_copyWeak(v10, &location);
  v10[1] = *&width;
  apiController = [(GuidesHomeViewController *)self apiController];
  v7 = [(GuideHomeCompositionalLayout *)v5 initWithSectionProvider:v9 dataProvider:apiController];

  [(GuidesHomeViewController *)self setLayout:v7];
  objc_destroyWeak(v10);
  objc_destroyWeak(&location);

  return v7;
}

- (void)removeCitySelectionUI
{
  citySelectionView = [(GuidesHomeViewController *)self citySelectionView];

  if (citySelectionView)
  {
    citySelectionView2 = [(GuidesHomeViewController *)self citySelectionView];
    [citySelectionView2 removeFromSuperview];

    [(GuidesHomeViewController *)self setCitySelectionView:0];
    [(GuidesHomeViewController *)self setCitySelectionBackgroundView:0];

    [(GuidesHomeViewController *)self setCitySelectorButton:0];
  }
}

- (void)removeCollectionView
{
  collectionView = [(GuidesHomeViewController *)self collectionView];

  if (collectionView)
  {
    collectionView2 = [(GuidesHomeViewController *)self collectionView];
    [collectionView2 removeFromSuperview];

    [(GuidesHomeViewController *)self setCollectionView:0];

    [(GuidesHomeViewController *)self setDataSource:0];
  }
}

- (void)addGuidesHomeCollectionsView
{
  collectionView = [(GuidesHomeViewController *)self collectionView];

  if (!collectionView)
  {
    v4 = [UICollectionView alloc];
    contentView = [(ContaineeViewController *)self contentView];
    [contentView frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = objc_alloc_init(UICollectionViewLayout);
    v15 = [v4 initWithFrame:v14 collectionViewLayout:{v7, v9, v11, v13}];
    [(GuidesHomeViewController *)self setCollectionView:v15];

    collectionView2 = [(GuidesHomeViewController *)self collectionView];
    [collectionView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    v17 = +[UIColor clearColor];
    collectionView3 = [(GuidesHomeViewController *)self collectionView];
    [collectionView3 setBackgroundColor:v17];

    contentView2 = [(ContaineeViewController *)self contentView];
    collectionView4 = [(GuidesHomeViewController *)self collectionView];
    [contentView2 addSubview:collectionView4];

    collectionView5 = [(GuidesHomeViewController *)self collectionView];
    contentView3 = [(ContaineeViewController *)self contentView];
    [contentView3 frame];
    v24 = [(GuidesHomeViewController *)self createLayoutUsingWidth:v23];
    [collectionView5 setCollectionViewLayout:v24];

    collectionView6 = [(GuidesHomeViewController *)self collectionView];
    [collectionView6 setAlpha:0.0];
  }

  [(GuidesHomeViewController *)self initializeDataSource];
  dataSource = [(GuidesHomeViewController *)self dataSource];
  [dataSource displayGuidesHomeByReloadingData];

  objc_initWeak(&location, self);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1008D3D5C;
  v27[3] = &unk_101661B98;
  objc_copyWeak(&v28, &location);
  [UIView _animateWithDuration:0x10000 delay:v27 options:0 animations:0 start:0.2 completion:0.0];
  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

- (void)resetDefaultHeaderConstraints
{
  headerView = [(ContaineeViewController *)self headerView];
  topAnchor = [headerView topAnchor];
  view = [(GuidesHomeViewController *)self view];
  topAnchor2 = [view topAnchor];
  v23 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v28[0] = v23;
  headerView2 = [(ContaineeViewController *)self headerView];
  leadingAnchor = [headerView2 leadingAnchor];
  view2 = [(GuidesHomeViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v28[1] = v18;
  headerView3 = [(ContaineeViewController *)self headerView];
  trailingAnchor = [headerView3 trailingAnchor];
  view3 = [(GuidesHomeViewController *)self view];
  trailingAnchor2 = [view3 trailingAnchor];
  v3 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v28[2] = v3;
  headerView4 = [(ContaineeViewController *)self headerView];
  bottomAnchor = [headerView4 bottomAnchor];
  view4 = [(GuidesHomeViewController *)self view];
  bottomAnchor2 = [view4 bottomAnchor];
  v8 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  v28[3] = v8;
  headerView5 = [(ContaineeViewController *)self headerView];
  heightAnchor = [headerView5 heightAnchor];
  LODWORD(v11) = 1148846080;
  v12 = [heightAnchor constraintEqualToConstant:60.0 priority:v11];
  v28[4] = v12;
  v13 = [NSArray arrayWithObjects:v28 count:5];
  [NSLayoutConstraint activateConstraints:v13];
}

- (void)activateHeaderConstraints
{
  titleHeaderView = [(GuidesHomeViewController *)self titleHeaderView];
  topAnchor = [titleHeaderView topAnchor];
  headerView = [(ContaineeViewController *)self headerView];
  topAnchor2 = [headerView topAnchor];
  v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v24[0] = v19;
  titleHeaderView2 = [(GuidesHomeViewController *)self titleHeaderView];
  leadingAnchor = [titleHeaderView2 leadingAnchor];
  headerView2 = [(ContaineeViewController *)self headerView];
  leadingAnchor2 = [headerView2 leadingAnchor];
  v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v24[1] = v14;
  titleHeaderView3 = [(GuidesHomeViewController *)self titleHeaderView];
  trailingAnchor = [titleHeaderView3 trailingAnchor];
  headerView3 = [(ContaineeViewController *)self headerView];
  trailingAnchor2 = [headerView3 trailingAnchor];
  v6 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v24[2] = v6;
  titleHeaderView4 = [(GuidesHomeViewController *)self titleHeaderView];
  bottomAnchor = [titleHeaderView4 bottomAnchor];
  headerView4 = [(ContaineeViewController *)self headerView];
  bottomAnchor2 = [headerView4 bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v24[3] = v11;
  v12 = [NSArray arrayWithObjects:v24 count:4];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)removeDefaultHeaderView
{
  headerView = [(ContaineeViewController *)self headerView];
  [headerView removeFromSuperview];

  contentView = [(ContaineeViewController *)self contentView];
  topAnchor = [contentView topAnchor];
  view = [(GuidesHomeViewController *)self view];
  topAnchor2 = [view topAnchor];
  v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v25[0] = v20;
  contentView2 = [(ContaineeViewController *)self contentView];
  leadingAnchor = [contentView2 leadingAnchor];
  view2 = [(GuidesHomeViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v25[1] = v15;
  contentView3 = [(ContaineeViewController *)self contentView];
  trailingAnchor = [contentView3 trailingAnchor];
  view3 = [(GuidesHomeViewController *)self view];
  trailingAnchor2 = [view3 trailingAnchor];
  v7 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v25[2] = v7;
  contentView4 = [(ContaineeViewController *)self contentView];
  bottomAnchor = [contentView4 bottomAnchor];
  view4 = [(GuidesHomeViewController *)self view];
  bottomAnchor2 = [view4 bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v25[3] = v12;
  v13 = [NSArray arrayWithObjects:v25 count:4];
  [NSLayoutConstraint activateConstraints:v13];
}

- (void)addDefaultHeaderView
{
  titleHeaderView = [(GuidesHomeViewController *)self titleHeaderView];

  if (!titleHeaderView)
  {
    v4 = [[ContainerHeaderView alloc] initWithCardButtonType:1 cardButtonBlurred:0];
    [(GuidesHomeViewController *)self setTitleHeaderView:v4];

    titleHeaderView2 = [(GuidesHomeViewController *)self titleHeaderView];
    v6 = sub_10000FA08(titleHeaderView2);

    if (v6 == 5)
    {
      titleHeaderView3 = [(GuidesHomeViewController *)self titleHeaderView];
      v8 = [UIFont _preferredFontForTextStyle:UIFontTextStyleTitle3 variant:1024];
      [titleHeaderView3 setCustomTitleFont:v8];
    }

    titleHeaderView4 = [(GuidesHomeViewController *)self titleHeaderView];
    _headerTapGesture = [titleHeaderView4 _headerTapGesture];
    [_headerTapGesture setCancelsTouchesInView:0];

    titleHeaderView5 = [(GuidesHomeViewController *)self titleHeaderView];
    [titleHeaderView5 setTranslatesAutoresizingMaskIntoConstraints:0];

    titleHeaderView6 = [(GuidesHomeViewController *)self titleHeaderView];
    LODWORD(v13) = 1148846080;
    [titleHeaderView6 setContentCompressionResistancePriority:1 forAxis:v13];

    titleHeaderView7 = [(GuidesHomeViewController *)self titleHeaderView];
    [titleHeaderView7 setDelegate:self];

    titleHeaderView8 = [(GuidesHomeViewController *)self titleHeaderView];
    [titleHeaderView8 setHairLineAlpha:0.0];

    v16 = +[UIColor clearColor];
    titleHeaderView9 = [(GuidesHomeViewController *)self titleHeaderView];
    [titleHeaderView9 setBackgroundColor:v16];

    if (sub_10000FA08(self) == 5)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    titleHeaderView10 = [(GuidesHomeViewController *)self titleHeaderView];
    [titleHeaderView10 setHeaderSize:v18];

    headerView = [(ContaineeViewController *)self headerView];
    titleHeaderView11 = [(GuidesHomeViewController *)self titleHeaderView];
    [headerView addSubview:titleHeaderView11];
  }
}

- (void)initializeDataSource
{
  dataSource = [(GuidesHomeViewController *)self dataSource];

  if (!dataSource)
  {
    analyticsManager = [(GuidesHomeViewController *)self analyticsManager];

    if (analyticsManager)
    {
      analyticsManager2 = [(GuidesHomeViewController *)self analyticsManager];
      guideLocation = [(GuidesHomeViewController *)self guideLocation];
      guideLocationIdentifier = [guideLocation guideLocationIdentifier];
      apiController = [(GuidesHomeViewController *)self apiController];
      [analyticsManager2 updateAnalyticsManagerWithGuideLocationId:guideLocationIdentifier isCuratedGuidesHome:{-[GuidesHomeAnalyticsManager isCuratedGuidesHome](apiController, "isCuratedGuidesHome")}];
    }

    else
    {
      v9 = [GuidesHomeAnalyticsManager alloc];
      analyticsManager2 = [(GuidesHomeViewController *)self guideLocation];
      guideLocation = [analyticsManager2 guideLocationIdentifier];
      guideLocationIdentifier = [(GuidesHomeViewController *)self apiController];
      apiController = -[GuidesHomeAnalyticsManager initWithGuideLocationId:isCuratedGuidesHome:](v9, "initWithGuideLocationId:isCuratedGuidesHome:", guideLocation, [guideLocationIdentifier isCuratedGuidesHome]);
      [(GuidesHomeViewController *)self setAnalyticsManager:apiController];
    }

    v10 = [GuidesHomeDataSource alloc];
    collectionView = [(GuidesHomeViewController *)self collectionView];
    apiController2 = [(GuidesHomeViewController *)self apiController];
    guideHomeViewResult = [apiController2 guideHomeViewResult];
    apiController3 = [(GuidesHomeViewController *)self apiController];
    analyticsManager3 = [(GuidesHomeViewController *)self analyticsManager];
    v16 = [(GuidesHomeDataSource *)v10 initWithCollectionView:collectionView result:guideHomeViewResult routingDelegate:self apiController:apiController3 analyticsManager:analyticsManager3];
    [(GuidesHomeViewController *)self setDataSource:v16];

    dataSource2 = [(GuidesHomeViewController *)self dataSource];
    [dataSource2 setDelegate:self];

    analyticsManager4 = [(GuidesHomeViewController *)self analyticsManager];
    [analyticsManager4 guidesHomeRevealed];
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  v8.receiver = self;
  v8.super_class = GuidesHomeViewController;
  [(ContaineeViewController *)&v8 scrollViewWillEndDragging:dragging withVelocity:offset targetContentOffset:velocity.x];
  if (y >= 0.0)
  {
    if (y <= 0.0)
    {
      return;
    }

    analyticsManager = [(GuidesHomeViewController *)self analyticsManager];
    [analyticsManager guidesHomeScrolledDown];
  }

  else
  {
    analyticsManager = [(GuidesHomeViewController *)self analyticsManager];
    [analyticsManager guidesHomeScrolledUp];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  apiController = [(GuidesHomeViewController *)self apiController];
  isCuratedGuidesHome = [apiController isCuratedGuidesHome];

  if ((isCuratedGuidesHome & 1) == 0)
  {
    v26.receiver = self;
    v26.super_class = GuidesHomeViewController;
    [(ContaineeViewController *)&v26 scrollViewDidScroll:scrollCopy];
    goto LABEL_13;
  }

  dataSource = [(GuidesHomeViewController *)self dataSource];
  if ([dataSource currentState] == 1)
  {
    goto LABEL_11;
  }

  layout = [(GuidesHomeViewController *)self layout];
  collectionView = [(GuidesHomeViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];

  if (layout == collectionViewLayout)
  {
    [scrollCopy contentOffset];
    [(GuidesHomeViewController *)self setContentOffset:?];
    [scrollCopy contentOffset];
    v12 = v11;
    dataSource2 = [(GuidesHomeViewController *)self dataSource];
    dataSource = [dataSource2 featuredGuideViewModel];

    collectionLongTitle = [dataSource collectionLongTitle];
    collectionTitle = collectionLongTitle;
    if (!collectionLongTitle)
    {
      collectionTitle = [dataSource collectionTitle];
    }

    contentView = [(ContaineeViewController *)self contentView];
    [contentView frame];
    [GuideHomeHeaderView maximumRequiredHeightWithFeaturedGuideTitle:collectionTitle maxWidth:v17];
    v19 = v18;
    +[GuideHomeHeaderView minimumRequiredHeight];
    v21 = v20;

    if (!collectionLongTitle)
    {
    }

    v22 = 0.0;
    if (v12 >= 420.0)
    {
      v22 = fmin(fmax(v12 / (v19 - v21), 0.0), 1.0);
    }

    citySelectionBackgroundView = [(GuidesHomeViewController *)self citySelectionBackgroundView];
    [citySelectionBackgroundView setAlpha:v22];

    dataSource3 = [(GuidesHomeViewController *)self dataSource];
    [dataSource3 didChangeContentYOffset:v12];

    v25.receiver = self;
    v25.super_class = GuidesHomeViewController;
    [(ContaineeViewController *)&v25 scrollViewDidScroll:scrollCopy];
LABEL_11:
  }

LABEL_13:
}

- (id)backgroundViewForCitySelector
{
  v3 = [[GradientView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(GradientView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  dataSource = [(GuidesHomeViewController *)self dataSource];
  featuredGuideViewModel = [dataSource featuredGuideViewModel];
  backgroundColor = [featuredGuideViewModel backgroundColor];
  [(GradientView *)v3 setBackgroundColor:backgroundColor];

  [(GradientView *)v3 setAlpha:0.0];

  return v3;
}

- (void)setupCitySelectionUIGradientView
{
  citySelectionView = [(GuidesHomeViewController *)self citySelectionView];

  if (citySelectionView)
  {
    apiController = [(GuidesHomeViewController *)self apiController];
    if ([apiController isCuratedGuidesHome])
    {
      citySelectionBackgroundView = [(GuidesHomeViewController *)self citySelectionBackgroundView];

      if (!citySelectionBackgroundView)
      {
        backgroundViewForCitySelector = [(GuidesHomeViewController *)self backgroundViewForCitySelector];
        [(GuidesHomeViewController *)self setCitySelectionBackgroundView:backgroundViewForCitySelector];

        citySelectionBackgroundView2 = [(GuidesHomeViewController *)self citySelectionBackgroundView];
        [citySelectionBackgroundView2 setAlpha:0.0];

        citySelectionView2 = [(GuidesHomeViewController *)self citySelectionView];
        citySelectionBackgroundView3 = [(GuidesHomeViewController *)self citySelectionBackgroundView];
        [citySelectionView2 addSubview:citySelectionBackgroundView3];

        citySelectionView3 = [(GuidesHomeViewController *)self citySelectionView];
        citySelectionBackgroundView4 = [(GuidesHomeViewController *)self citySelectionBackgroundView];
        [citySelectionView3 sendSubviewToBack:citySelectionBackgroundView4];

        citySelectionBackgroundView5 = [(GuidesHomeViewController *)self citySelectionBackgroundView];
        topAnchor = [citySelectionBackgroundView5 topAnchor];
        citySelectionView4 = [(GuidesHomeViewController *)self citySelectionView];
        topAnchor2 = [citySelectionView4 topAnchor];
        v27 = [topAnchor constraintEqualToAnchor:topAnchor2];
        v33[0] = v27;
        citySelectionBackgroundView6 = [(GuidesHomeViewController *)self citySelectionBackgroundView];
        leadingAnchor = [citySelectionBackgroundView6 leadingAnchor];
        citySelectionView5 = [(GuidesHomeViewController *)self citySelectionView];
        leadingAnchor2 = [citySelectionView5 leadingAnchor];
        v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
        v33[1] = v22;
        citySelectionBackgroundView7 = [(GuidesHomeViewController *)self citySelectionBackgroundView];
        trailingAnchor = [citySelectionBackgroundView7 trailingAnchor];
        citySelectionView6 = [(GuidesHomeViewController *)self citySelectionView];
        trailingAnchor2 = [citySelectionView6 trailingAnchor];
        v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
        v33[2] = v14;
        citySelectionBackgroundView8 = [(GuidesHomeViewController *)self citySelectionBackgroundView];
        bottomAnchor = [citySelectionBackgroundView8 bottomAnchor];
        citySelectionView7 = [(GuidesHomeViewController *)self citySelectionView];
        bottomAnchor2 = [citySelectionView7 bottomAnchor];
        v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
        v33[3] = v19;
        v20 = [NSArray arrayWithObjects:v33 count:4];
        [NSLayoutConstraint activateConstraints:v20];
      }
    }

    else
    {
    }
  }
}

- (void)setupCitySelectionUI
{
  citySelectionView = [(GuidesHomeViewController *)self citySelectionView];

  if (!citySelectionView)
  {
    v4 = objc_alloc_init(UIView);
    [(GuidesHomeViewController *)self setCitySelectionView:v4];

    citySelectionView2 = [(GuidesHomeViewController *)self citySelectionView];
    [citySelectionView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    v6 = +[UIColor clearColor];
    citySelectionView3 = [(GuidesHomeViewController *)self citySelectionView];
    [citySelectionView3 setBackgroundColor:v6];

    citySelectionView4 = [(GuidesHomeViewController *)self citySelectionView];
    [citySelectionView4 setUserInteractionEnabled:1];

    citySelectionView5 = [(GuidesHomeViewController *)self citySelectionView];
    [citySelectionView5 setAccessibilityIdentifier:@"GuidesHomeCitySelectionView"];

    apiController = [(GuidesHomeViewController *)self apiController];
    LOBYTE(citySelectionView3) = [apiController isCuratedGuidesHome];

    if ((citySelectionView3 & 1) == 0)
    {
      citySelectionView6 = [(GuidesHomeViewController *)self citySelectionView];
      v12 = [citySelectionView6 _maps_addHairlineAtBottomWithLeadingMargin:16.0 trailingMargin:0.0];
    }

    v13 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v13 setAccessibilityIdentifier:@"TitleLabel"];
    v14 = +[UIFont system17Bold];
    [v13 setFont:v14];

    apiController2 = [(GuidesHomeViewController *)self apiController];
    if ([apiController2 isCuratedGuidesHome])
    {
      v16 = +[UIColor whiteColor];
      v17 = [v16 colorWithAlphaComponent:0.8];
      [v13 setTextColor:v17];
    }

    else
    {
      v16 = +[UIColor secondaryLabelColor];
      [v13 setTextColor:v16];
    }

    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v13 setNumberOfLines:1];
    v18 = +[NSBundle mainBundle];
    v19 = [v18 localizedStringForKey:@"[Guide Home View] Guide Home" value:@"localized string not found" table:0];
    [v13 setText:v19];

    citySelectionView7 = [(GuidesHomeViewController *)self citySelectionView];
    [citySelectionView7 addSubview:v13];

    v21 = +[UIButtonConfiguration plainButtonConfiguration];
    v22 = +[UIColor clearColor];
    background = [v21 background];
    [background setBackgroundColor:v22];

    background2 = [v21 background];
    [background2 setCornerRadius:0.0];

    [v21 setContentInsets:{0.0, 0.0, 0.0, 0.0}];
    v201[0] = _NSConcreteStackBlock;
    v201[1] = 3221225472;
    v201[2] = sub_1008D6784;
    v201[3] = &unk_101652B60;
    v201[4] = self;
    [v21 setTitleTextAttributesTransformer:v201];
    apiController3 = [(GuidesHomeViewController *)self apiController];
    guideLocationName = [apiController3 guideLocationName];

    if (guideLocationName)
    {
      [v21 setTitle:guideLocationName];
    }

    v196 = guideLocationName;
    v197 = v21;
    v27 = [UIButton buttonWithConfiguration:v21 primaryAction:0];
    [(GuidesHomeViewController *)self setCitySelectorButton:v27];

    citySelectorButton = [(GuidesHomeViewController *)self citySelectorButton];
    [citySelectorButton setTranslatesAutoresizingMaskIntoConstraints:0];

    citySelectorButton2 = [(GuidesHomeViewController *)self citySelectorButton];
    [citySelectorButton2 setAccessibilityIdentifier:@"CitySelectorButton"];

    apiController4 = [(GuidesHomeViewController *)self apiController];
    isCuratedGuidesHome = [apiController4 isCuratedGuidesHome];

    citySelectorButton3 = [(GuidesHomeViewController *)self citySelectorButton];
    v33 = citySelectorButton3;
    v200 = v13;
    if (isCuratedGuidesHome)
    {
      [citySelectorButton3 addTarget:self action:"didTapCitySelectorButton:" forControlEvents:64];
    }

    else
    {
      [citySelectorButton3 setUserInteractionEnabled:0];
    }

    citySelectionView8 = [(GuidesHomeViewController *)self citySelectionView];
    citySelectorButton4 = [(GuidesHomeViewController *)self citySelectorButton];
    [citySelectionView8 addSubview:citySelectorButton4];

    v36 = objc_alloc_init(UIView);
    [v36 setAccessibilityIdentifier:@"ChevronView"];
    [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
    v37 = +[UIColor clearColor];
    [v36 setBackgroundColor:v37];

    [v36 setUserInteractionEnabled:1];
    v195 = [UIBlurEffect effectWithStyle:11];
    v38 = [[UIVisualEffectView alloc] initWithEffect:v195];
    [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
    v199 = v38;
    [v36 addSubview:v38];
    v39 = [UIButton buttonWithType:0];
    [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
    v40 = [UIImageSymbolConfiguration configurationWithPointSize:7 weight:15.0];
    v41 = [UIImage systemImageNamed:@"chevron.down" withConfiguration:v40];

    v42 = [v41 imageWithRenderingMode:2];

    v43 = +[UIColor whiteColor];
    [v39 setTintColor:v43];

    v194 = v42;
    [v39 setImage:v42 forState:0];
    [v39 addTarget:self action:"didTapCitySelectorButton:" forControlEvents:64];
    v198 = v39;
    [v36 addSubview:v39];
    [v36 _setContinuousCornerRadius:12.0];
    [v36 setClipsToBounds:1];
    citySelectionView9 = [(GuidesHomeViewController *)self citySelectionView];
    v45 = v36;
    [citySelectionView9 addSubview:v36];

    v46 = objc_alloc_init(UIView);
    [v46 setAccessibilityIdentifier:@"CloseButton"];
    [v46 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v46 setUserInteractionEnabled:1];
    v47 = [UIVisualEffectView alloc];
    v48 = [UIBlurEffect effectWithStyle:11];
    v49 = [v47 initWithEffect:v48];

    [v49 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v46 addSubview:v49];
    apiController5 = [(GuidesHomeViewController *)self apiController];
    LODWORD(v48) = [apiController5 isCuratedGuidesHome];

    if (v48)
    {
      v51 = [UIButton buttonWithType:0];
    }

    else
    {
      v51 = [UIButton buttonWithType:7];
      [v49 setHidden:1];
    }

    [v51 setTranslatesAutoresizingMaskIntoConstraints:0];
    v52 = v51;
    v53 = [UIImageSymbolConfiguration configurationWithPointSize:7 weight:15.0];
    v54 = [UIImage systemImageNamed:@"xmark" withConfiguration:v53];

    v193 = [v54 imageWithRenderingMode:2];

    v55 = +[UIColor whiteColor];
    [v52 setTintColor:v55];

    [v52 setImage:v193 forState:0];
    [v52 addTarget:self action:"closeButtonTaped:" forControlEvents:64];
    [v46 _setContinuousCornerRadius:15.0];
    [v46 setClipsToBounds:1];
    [v46 addSubview:v52];
    citySelectionView10 = [(GuidesHomeViewController *)self citySelectionView];
    [citySelectionView10 addSubview:v46];

    contentView = [(ContaineeViewController *)self contentView];
    citySelectionView11 = [(GuidesHomeViewController *)self citySelectionView];
    [contentView addSubview:citySelectionView11];

    text = [v200 text];
    v203 = NSFontAttributeName;
    font = [v200 font];
    v204 = font;
    [NSDictionary dictionaryWithObjects:&v204 forKeys:&v203 count:1];
    v62 = v61 = v46;
    [text sizeWithAttributes:v62];
    v64 = v63;

    heightAnchor = [v45 heightAnchor];
    v191 = [heightAnchor constraintEqualToConstant:24.0];
    v202[0] = v191;
    widthAnchor = [v45 widthAnchor];
    v189 = [widthAnchor constraintEqualToConstant:24.0];
    v202[1] = v189;
    topAnchor = [v199 topAnchor];
    topAnchor2 = [v45 topAnchor];
    v186 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v202[2] = v186;
    leadingAnchor = [v199 leadingAnchor];
    leadingAnchor2 = [v45 leadingAnchor];
    v183 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v202[3] = v183;
    trailingAnchor = [v199 trailingAnchor];
    trailingAnchor2 = [v45 trailingAnchor];
    v180 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v202[4] = v180;
    bottomAnchor = [v199 bottomAnchor];
    bottomAnchor2 = [v45 bottomAnchor];
    v177 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v202[5] = v177;
    topAnchor3 = [v198 topAnchor];
    topAnchor4 = [v199 topAnchor];
    v174 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:2.0];
    v202[6] = v174;
    leadingAnchor3 = [v198 leadingAnchor];
    leadingAnchor4 = [v199 leadingAnchor];
    v171 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:0.5];
    v202[7] = v171;
    trailingAnchor3 = [v198 trailingAnchor];
    trailingAnchor4 = [v199 trailingAnchor];
    v168 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v202[8] = v168;
    bottomAnchor3 = [v198 bottomAnchor];
    bottomAnchor4 = [v199 bottomAnchor];
    v164 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v202[9] = v164;
    topAnchor5 = [v61 topAnchor];
    citySelectionView12 = [(GuidesHomeViewController *)self citySelectionView];
    topAnchor6 = [citySelectionView12 topAnchor];
    v160 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:16.0];
    v202[10] = v160;
    trailingAnchor5 = [v61 trailingAnchor];
    citySelectionView13 = [(GuidesHomeViewController *)self citySelectionView];
    trailingAnchor6 = [citySelectionView13 trailingAnchor];
    v155 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-16.0];
    v202[11] = v155;
    heightAnchor2 = [v61 heightAnchor];
    v153 = [heightAnchor2 constraintEqualToConstant:30.0];
    v202[12] = v153;
    widthAnchor2 = [v61 widthAnchor];
    v151 = [widthAnchor2 constraintEqualToConstant:30.0];
    v202[13] = v151;
    topAnchor7 = [v49 topAnchor];
    topAnchor8 = [v61 topAnchor];
    v148 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
    v202[14] = v148;
    leadingAnchor5 = [v49 leadingAnchor];
    leadingAnchor6 = [v61 leadingAnchor];
    v145 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v202[15] = v145;
    trailingAnchor7 = [v49 trailingAnchor];
    v166 = v61;
    trailingAnchor8 = [v61 trailingAnchor];
    v142 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
    v202[16] = v142;
    bottomAnchor5 = [v49 bottomAnchor];
    bottomAnchor6 = [v61 bottomAnchor];
    v139 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
    v202[17] = v139;
    topAnchor9 = [v52 topAnchor];
    topAnchor10 = [v49 topAnchor];
    v136 = [topAnchor9 constraintEqualToAnchor:topAnchor10];
    v202[18] = v136;
    leadingAnchor7 = [v52 leadingAnchor];
    leadingAnchor8 = [v49 leadingAnchor];
    v132 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    v202[19] = v132;
    v159 = v52;
    trailingAnchor9 = [v52 trailingAnchor];
    trailingAnchor10 = [v49 trailingAnchor];
    v129 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
    v202[20] = v129;
    bottomAnchor7 = [v52 bottomAnchor];
    bottomAnchor8 = [v49 bottomAnchor];
    v126 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
    v202[21] = v126;
    leadingAnchor9 = [v200 leadingAnchor];
    citySelectionView14 = [(GuidesHomeViewController *)self citySelectionView];
    leadingAnchor10 = [citySelectionView14 leadingAnchor];
    v121 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10 constant:16.0];
    v202[22] = v121;
    trailingAnchor11 = [v200 trailingAnchor];
    citySelectionView15 = [(GuidesHomeViewController *)self citySelectionView];
    trailingAnchor12 = [citySelectionView15 trailingAnchor];
    v117 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12];
    v202[23] = v117;
    topAnchor11 = [v200 topAnchor];
    citySelectionView16 = [(GuidesHomeViewController *)self citySelectionView];
    topAnchor12 = [citySelectionView16 topAnchor];
    v113 = [topAnchor11 constraintEqualToAnchor:topAnchor12 constant:26.0];
    v202[24] = v113;
    heightAnchor3 = [v200 heightAnchor];
    v111 = [heightAnchor3 constraintEqualToConstant:v64];
    v202[25] = v111;
    citySelectorButton5 = [(GuidesHomeViewController *)self citySelectorButton];
    leadingAnchor11 = [citySelectorButton5 leadingAnchor];
    leadingAnchor12 = [v200 leadingAnchor];
    v107 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
    v202[26] = v107;
    citySelectorButton6 = [(GuidesHomeViewController *)self citySelectorButton];
    trailingAnchor13 = [citySelectorButton6 trailingAnchor];
    citySelectionView17 = [(GuidesHomeViewController *)self citySelectionView];
    trailingAnchor14 = [citySelectionView17 trailingAnchor];
    v102 = [trailingAnchor13 constraintLessThanOrEqualToAnchor:trailingAnchor14 constant:-16.0];
    v202[27] = v102;
    citySelectorButton7 = [(GuidesHomeViewController *)self citySelectorButton];
    topAnchor13 = [citySelectorButton7 topAnchor];
    bottomAnchor9 = [v200 bottomAnchor];
    v98 = [topAnchor13 constraintEqualToAnchor:bottomAnchor9];
    v202[28] = v98;
    v135 = v45;
    leadingAnchor13 = [v45 leadingAnchor];
    citySelectorButton8 = [(GuidesHomeViewController *)self citySelectorButton];
    trailingAnchor15 = [citySelectorButton8 trailingAnchor];
    v94 = [leadingAnchor13 constraintEqualToAnchor:trailingAnchor15 constant:8.0];
    v202[29] = v94;
    centerYAnchor = [v45 centerYAnchor];
    citySelectorButton9 = [(GuidesHomeViewController *)self citySelectorButton];
    centerYAnchor2 = [citySelectorButton9 centerYAnchor];
    v90 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v202[30] = v90;
    citySelectionView18 = [(GuidesHomeViewController *)self citySelectionView];
    topAnchor14 = [citySelectionView18 topAnchor];
    contentView2 = [(ContaineeViewController *)self contentView];
    topAnchor15 = [contentView2 topAnchor];
    v85 = [topAnchor14 constraintEqualToAnchor:topAnchor15];
    v202[31] = v85;
    citySelectionView19 = [(GuidesHomeViewController *)self citySelectionView];
    leadingAnchor14 = [citySelectionView19 leadingAnchor];
    contentView3 = [(ContaineeViewController *)self contentView];
    leadingAnchor15 = [contentView3 leadingAnchor];
    v80 = [leadingAnchor14 constraintEqualToAnchor:leadingAnchor15];
    v202[32] = v80;
    citySelectionView20 = [(GuidesHomeViewController *)self citySelectionView];
    trailingAnchor16 = [citySelectionView20 trailingAnchor];
    contentView4 = [(ContaineeViewController *)self contentView];
    trailingAnchor17 = [contentView4 trailingAnchor];
    v75 = [trailingAnchor16 constraintEqualToAnchor:trailingAnchor17];
    v202[33] = v75;
    citySelectionView21 = [(GuidesHomeViewController *)self citySelectionView];
    heightAnchor4 = [citySelectionView21 heightAnchor];
    +[GuideHomeHeaderView minimumRequiredHeight];
    [heightAnchor4 constraintGreaterThanOrEqualToConstant:?];
    v67 = v124 = v49;
    v202[34] = v67;
    citySelectionView22 = [(GuidesHomeViewController *)self citySelectionView];
    bottomAnchor10 = [citySelectionView22 bottomAnchor];
    citySelectorButton10 = [(GuidesHomeViewController *)self citySelectorButton];
    bottomAnchor11 = [citySelectorButton10 bottomAnchor];
    v72 = [bottomAnchor10 constraintEqualToAnchor:bottomAnchor11 constant:15.0];
    v202[35] = v72;
    v73 = [NSArray arrayWithObjects:v202 count:36];
    [NSLayoutConstraint activateConstraints:v73];

    apiController6 = [(GuidesHomeViewController *)self apiController];
    [v135 setHidden:{objc_msgSend(apiController6, "isCuratedGuidesHome") ^ 1}];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = GuidesHomeViewController;
  [(GuidesHomeViewController *)&v5 viewDidAppear:appear];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController cardHeight];
  [(GuidesHomeViewController *)self setActualCardHeight:?];
}

- (void)onTransitionFromState:(int64_t)state toState:(int64_t)toState
{
  v7 = sub_1008D6B88();
  v8 = os_signpost_id_generate(v7);

  v9 = sub_1008D6B88();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "DisplayingGuideHomeView", "", buf, 2u);
  }

  if (state > 1)
  {
    if (state != 2)
    {
      if (state != 3 || toState != 1)
      {
        goto LABEL_24;
      }

      [(GuidesHomeViewController *)self removeErrorView];
LABEL_21:
      [(GuidesHomeViewController *)self addLoadingView];
      goto LABEL_24;
    }

    if (toState != 1)
    {
      goto LABEL_24;
    }

    apiController = [(GuidesHomeViewController *)self apiController];
    isFilteredGuidesHome = [apiController isFilteredGuidesHome];

    if (isFilteredGuidesHome)
    {
      goto LABEL_24;
    }

    [(GuidesHomeViewController *)self removeCollectionView];
    [(GuidesHomeViewController *)self removeCitySelectionUI];
    view = [(GuidesHomeViewController *)self view];
    headerView = [(ContaineeViewController *)self headerView];
    [view addSubview:headerView];

    [(GuidesHomeViewController *)self resetDefaultHeaderConstraints];
LABEL_20:
    [(GuidesHomeViewController *)self addDefaultHeaderView];
    [(GuidesHomeViewController *)self activateHeaderConstraints];
    goto LABEL_21;
  }

  if (!state)
  {
    if (toState != 1)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if (state == 1)
  {
    if (toState == 3)
    {
      [(GuidesHomeViewController *)self removeLoadingView];
      [(GuidesHomeViewController *)self removeCollectionView];
      [(GuidesHomeViewController *)self addErrorView];
    }

    else if (toState == 2)
    {
      apiController2 = [(GuidesHomeViewController *)self apiController];
      guideHomeSingleCollectionIdentifier = [apiController2 guideHomeSingleCollectionIdentifier];

      if (guideHomeSingleCollectionIdentifier)
      {
        [(GuidesHomeViewController *)self routeToSingleCuratedCollection:guideHomeSingleCollectionIdentifier];
        goto LABEL_27;
      }

      [(GuidesHomeViewController *)self removeLoadingView];
      [(GuidesHomeViewController *)self removeDefaultHeaderView];
      [(GuidesHomeViewController *)self setupCitySelectionUI];
      [(GuidesHomeViewController *)self addGuidesHomeCollectionsView];
      collectionView = [(GuidesHomeViewController *)self collectionView];
      [(GuidesHomeViewController *)self activateConstraintsForViewAligningHeader:collectionView];

      [(GuidesHomeViewController *)self setupCitySelectionUIGradientView];
      contentView = [(ContaineeViewController *)self contentView];
      citySelectionView = [(GuidesHomeViewController *)self citySelectionView];
      [contentView bringSubviewToFront:citySelectionView];
    }
  }

LABEL_24:
  v20 = sub_1008D6B88();
  guideHomeSingleCollectionIdentifier = v20;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *v21 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, guideHomeSingleCollectionIdentifier, OS_SIGNPOST_INTERVAL_END, v8, "DisplayingGuideHomeView", "", v21, 2u);
  }

LABEL_27:
}

- (void)didDismissByGesture
{
  [(GuidesHomeViewController *)self dismissGuidesHome];
  v3.receiver = self;
  v3.super_class = GuidesHomeViewController;
  [(ContaineeViewController *)&v3 didDismissByGesture];
}

- (double)heightForLayout:(unint64_t)layout
{
  v5 = sub_10000FA08(self);
  if (layout != 1 || (result = -1.0, v5 != 5))
  {
    v7.receiver = self;
    v7.super_class = GuidesHomeViewController;
    [(ContaineeViewController *)&v7 heightForLayout:layout];
  }

  return result;
}

- (void)didChangeLayout:(unint64_t)layout
{
  v8.receiver = self;
  v8.super_class = GuidesHomeViewController;
  [(ContaineeViewController *)&v8 didChangeLayout:?];
  collectionView = [(GuidesHomeViewController *)self collectionView];
  if (collectionView)
  {
    v6 = collectionView;
    containeeLayout = [(GuidesHomeViewController *)self containeeLayout];

    if (containeeLayout != layout)
    {
      [(GuidesHomeViewController *)self setContaineeLayout:layout];
      [(GuidesHomeViewController *)self resetCollectionViewLayout];
    }
  }
}

- (void)setGuideLocation:(id)location
{
  locationCopy = location;
  if (self->_guideLocation != locationCopy)
  {
    objc_storeStrong(&self->_guideLocation, location);
    apiController = [(GuidesHomeViewController *)self apiController];
    [apiController refreshWithGuideLocation:self->_guideLocation];

    dataSource = [(GuidesHomeViewController *)self dataSource];
    [dataSource refreshedGuideLocation];

    objc_initWeak(&location, self);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1008D6F04;
    v10[3] = &unk_101661B98;
    objc_copyWeak(&v11, &location);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1008D6F94;
    v8[3] = &unk_1016619A8;
    objc_copyWeak(&v9, &location);
    [UIView _animateWithDuration:0x10000 delay:v10 options:0 animations:v8 start:0.2 completion:0.0];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = GuidesHomeViewController;
  [(ContaineeViewController *)&v12 viewDidLoad];
  objc_initWeak(&location, self);
  v3 = [GuidesHomeAPIController alloc];
  guideLocation = [(GuidesHomeViewController *)self guideLocation];
  objc_copyWeak(&v10, &location);
  v5 = [(GuidesHomeViewController *)self traits:_NSConcreteStackBlock];
  v6 = [(GuidesHomeAPIController *)v3 initWithGuideLocation:guideLocation onStateChangeHandler:&v9 traits:v5];
  [(GuidesHomeViewController *)self setApiController:v6];

  apiController = [(GuidesHomeViewController *)self apiController];
  [apiController fetchGuidesHomeViewFilteredBy:0 onCompletion:&stru_10162DAE8];

  view = [(GuidesHomeViewController *)self view];
  [view setAccessibilityIdentifier:@"GuidesHomeView"];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)handleDismissAction:(id)action
{
  actionCopy = action;
  [(GuidesHomeViewController *)self dismissGuidesHome];
  v5.receiver = self;
  v5.super_class = GuidesHomeViewController;
  [(ContaineeViewController *)&v5 handleDismissAction:actionCopy];
}

- (GuidesHomeViewController)initWithGuideLocation:(id)location withTraits:(id)traits
{
  locationCopy = location;
  traitsCopy = traits;
  v16.receiver = self;
  v16.super_class = GuidesHomeViewController;
  v9 = [(GuidesHomeViewController *)&v16 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_guideLocation, location);
    objc_storeStrong(&v10->_traits, traits);
    v10->_contentOffset = CGPointZero;
    v11 = sub_10000FA08(v10);
    cardPresentationController = [(ContaineeViewController *)v10 cardPresentationController];
    v13 = cardPresentationController;
    if (v11 == 5)
    {
      [cardPresentationController setAllowResizeInFloatingStyle:1];

      cardPresentationController2 = [(ContaineeViewController *)v10 cardPresentationController];
      [cardPresentationController2 setDefaultContaineeLayout:3];
    }

    else
    {
      [cardPresentationController setPresentedModally:1];

      cardPresentationController2 = [(ContaineeViewController *)v10 cardPresentationController];
      [cardPresentationController2 setTakesAvailableHeight:1];
    }
  }

  return v10;
}

@end