@interface CitySelectorViewController
- (CitySelectorViewController)initWithSourceGuideLocation:(id)location;
- (CitySelectorViewControllerDelegate)actionDelegate;
- (double)heightForLayout:(unint64_t)layout;
- (id)createLayoutUsingWidth:(double)width;
- (void)activateConstraintsForViewPinnedBelowHeader:(id)header;
- (void)activateHeaderConstraints;
- (void)addAllCollectionsView;
- (void)addErrorView;
- (void)addHeaderView;
- (void)addLoadingView;
- (void)didChangeLayout:(unint64_t)layout;
- (void)handleDismissAction:(id)action;
- (void)initializeDataSource;
- (void)initializeSections;
- (void)onTransitionFromState:(int64_t)state toState:(int64_t)toState;
- (void)removeCollectionView;
- (void)removeErrorView;
- (void)removeLoadingView;
- (void)resetCollectionViewLayout;
- (void)routeToGuideLocation:(id)location;
- (void)scrollViewDidScroll:(id)scroll;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CitySelectorViewController

- (CitySelectorViewControllerDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (void)scrollViewDidScroll:(id)scroll
{
  v9.receiver = self;
  v9.super_class = CitySelectorViewController;
  [(ContaineeViewController *)&v9 scrollViewDidScroll:scroll];
  collectionView = [(CitySelectorViewController *)self collectionView];
  _maps_shouldShowTopHairline = [collectionView _maps_shouldShowTopHairline];

  v6 = 0.0;
  if (_maps_shouldShowTopHairline)
  {
    v6 = 1.0;
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100873464;
  v8[3] = &unk_101638450;
  v8[4] = self;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100873478;
  v7[3] = &unk_101638478;
  v7[4] = self;
  [UIScrollView _maps_updateTopHairlineAlpha:1 animated:v8 getter:v7 setter:v6];
}

- (void)removeErrorView
{
  errorView = [(CitySelectorViewController *)self errorView];

  if (errorView)
  {
    errorView2 = [(CitySelectorViewController *)self errorView];
    [errorView2 removeFromSuperview];

    [(CitySelectorViewController *)self setErrorView:0];
  }
}

- (void)addErrorView
{
  errorView = [(CitySelectorViewController *)self errorView];

  if (!errorView)
  {
    v4 = objc_alloc_init(ErrorModeView);
    [(CitySelectorViewController *)self setErrorView:v4];

    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"[City Selector] Error Mode title" value:@"localized string not found" table:0];

    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"[City Selector] Error Mode message" value:@"localized string not found" table:0];

    v9 = MKCurrentNetworkConnectionFailureDiagnosis();
    errorView2 = [(CitySelectorViewController *)self errorView];
    v11 = errorView2;
    if (v9)
    {
      [errorView2 setTitle:v6 andMessage:v8];

      objc_initWeak(&location, self);
      errorView3 = [(CitySelectorViewController *)self errorView];
      v13 = +[UIColor systemGray5Color];
      v20 = _NSConcreteStackBlock;
      v21 = 3221225472;
      v22 = sub_1008737B0;
      v23 = &unk_10165D828;
      objc_copyWeak(&v24, &location);
      [errorView3 setButtonTitle:@"Try Again" glyphName:@"arrow.clockwise" backgroundColor:v13 handler:&v20];

      objc_destroyWeak(&v24);
      objc_destroyWeak(&location);
    }

    else
    {
      v14 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubhead];
      [v11 setTitleLabelFont:v14];

      errorView4 = [(CitySelectorViewController *)self errorView];
      [errorView4 setTitle:v6 andMessage:0];
    }

    v16 = [(CitySelectorViewController *)self errorView:v20];
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

    contentView = [(ContaineeViewController *)self contentView];
    errorView5 = [(CitySelectorViewController *)self errorView];
    [contentView addSubview:errorView5];

    errorView6 = [(CitySelectorViewController *)self errorView];
    [(CitySelectorViewController *)self activateConstraintsForViewPinnedBelowHeader:errorView6];
  }
}

- (void)removeLoadingView
{
  loadingView = [(CitySelectorViewController *)self loadingView];

  if (loadingView)
  {
    loadingView2 = [(CitySelectorViewController *)self loadingView];
    [loadingView2 removeFromSuperview];

    [(CitySelectorViewController *)self setLoadingView:0];
  }
}

- (void)addLoadingView
{
  objc_initWeak(&location, self);
  v2 = dispatch_time(0, 200000000);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10087395C;
  v3[3] = &unk_101661B98;
  objc_copyWeak(&v4, &location);
  dispatch_after(v2, &_dispatch_main_q, v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)resetCollectionViewLayout
{
  collectionView = [(CitySelectorViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout invalidateLayout];

  collectionView2 = [(CitySelectorViewController *)self collectionView];
  contentView = [(ContaineeViewController *)self contentView];
  [contentView frame];
  v7 = [(CitySelectorViewController *)self createLayoutUsingWidth:v6];
  [collectionView2 setCollectionViewLayout:v7];
}

- (void)activateConstraintsForViewPinnedBelowHeader:(id)header
{
  headerCopy = header;
  leadingAnchor = [headerCopy leadingAnchor];
  contentView = [(ContaineeViewController *)self contentView];
  leadingAnchor2 = [contentView leadingAnchor];
  v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v22[0] = v18;
  trailingAnchor = [headerCopy trailingAnchor];
  contentView2 = [(ContaineeViewController *)self contentView];
  trailingAnchor2 = [contentView2 trailingAnchor];
  v5 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v22[1] = v5;
  topAnchor = [headerCopy topAnchor];
  contentView3 = [(ContaineeViewController *)self contentView];
  topAnchor2 = [contentView3 topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v22[2] = v9;
  bottomAnchor = [headerCopy bottomAnchor];

  contentView4 = [(ContaineeViewController *)self contentView];
  bottomAnchor2 = [contentView4 bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v22[3] = v13;
  v14 = [NSArray arrayWithObjects:v22 count:4];
  [NSLayoutConstraint activateConstraints:v14];
}

- (id)createLayoutUsingWidth:(double)width
{
  v5 = objc_alloc_init(UICollectionViewCompositionalLayoutConfiguration);
  [v5 setInterSectionSpacing:6.0];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100873E68;
  v8[3] = &unk_10164D980;
  v8[4] = self;
  *&v8[5] = width;
  v6 = [[UICollectionViewCompositionalLayout alloc] initWithSectionProvider:v8 configuration:v5];

  return v6;
}

- (void)removeCollectionView
{
  collectionView = [(CitySelectorViewController *)self collectionView];

  if (collectionView)
  {
    collectionView2 = [(CitySelectorViewController *)self collectionView];
    [collectionView2 removeFromSuperview];

    [(CitySelectorViewController *)self setCollectionView:0];

    [(CitySelectorViewController *)self setDataSource:0];
  }
}

- (void)addAllCollectionsView
{
  collectionView = [(CitySelectorViewController *)self collectionView];

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
    [(CitySelectorViewController *)self setCollectionView:v15];

    collectionView2 = [(CitySelectorViewController *)self collectionView];
    [collectionView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    v17 = +[UIColor clearColor];
    collectionView3 = [(CitySelectorViewController *)self collectionView];
    [collectionView3 setBackgroundColor:v17];

    collectionView4 = [(CitySelectorViewController *)self collectionView];
    [collectionView4 setBounces:1];

    collectionView5 = [(CitySelectorViewController *)self collectionView];
    [collectionView5 setAlwaysBounceVertical:1];

    contentView2 = [(ContaineeViewController *)self contentView];
    collectionView6 = [(CitySelectorViewController *)self collectionView];
    [contentView2 addSubview:collectionView6];

    collectionView7 = [(CitySelectorViewController *)self collectionView];
    [(ContaineeViewController *)self setContentScrollView:collectionView7 forEdge:1];
  }

  [(CitySelectorViewController *)self initializeSections];
  [(CitySelectorViewController *)self initializeDataSource];
  collectionView8 = [(CitySelectorViewController *)self collectionView];
  contentView3 = [(ContaineeViewController *)self contentView];
  [contentView3 frame];
  v27 = [(CitySelectorViewController *)self createLayoutUsingWidth:v26];
  [collectionView8 setCollectionViewLayout:v27];

  dataSource = [(CitySelectorViewController *)self dataSource];
  [dataSource displayCitySelectorData];
}

- (void)activateHeaderConstraints
{
  titleHeaderView = [(CitySelectorViewController *)self titleHeaderView];
  topAnchor = [titleHeaderView topAnchor];
  headerView = [(ContaineeViewController *)self headerView];
  topAnchor2 = [headerView topAnchor];
  v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v24[0] = v19;
  titleHeaderView2 = [(CitySelectorViewController *)self titleHeaderView];
  leadingAnchor = [titleHeaderView2 leadingAnchor];
  headerView2 = [(ContaineeViewController *)self headerView];
  leadingAnchor2 = [headerView2 leadingAnchor];
  v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v24[1] = v14;
  titleHeaderView3 = [(CitySelectorViewController *)self titleHeaderView];
  trailingAnchor = [titleHeaderView3 trailingAnchor];
  headerView3 = [(ContaineeViewController *)self headerView];
  trailingAnchor2 = [headerView3 trailingAnchor];
  v6 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v24[2] = v6;
  titleHeaderView4 = [(CitySelectorViewController *)self titleHeaderView];
  bottomAnchor = [titleHeaderView4 bottomAnchor];
  headerView4 = [(ContaineeViewController *)self headerView];
  bottomAnchor2 = [headerView4 bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v24[3] = v11;
  v12 = [NSArray arrayWithObjects:v24 count:4];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)addHeaderView
{
  titleHeaderView = [(CitySelectorViewController *)self titleHeaderView];

  if (!titleHeaderView)
  {
    v4 = [[ContainerHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    [(CitySelectorViewController *)self setTitleHeaderView:v4];

    titleHeaderView2 = [(CitySelectorViewController *)self titleHeaderView];
    v6 = sub_10000FA08(titleHeaderView2);

    if (v6 == 5)
    {
      titleHeaderView3 = [(CitySelectorViewController *)self titleHeaderView];
      v8 = [UIFont _preferredFontForTextStyle:UIFontTextStyleTitle3 variant:1024];
      [titleHeaderView3 setCustomTitleFont:v8];
    }

    titleHeaderView4 = [(CitySelectorViewController *)self titleHeaderView];
    [titleHeaderView4 setTranslatesAutoresizingMaskIntoConstraints:0];

    titleHeaderView5 = [(CitySelectorViewController *)self titleHeaderView];
    LODWORD(v11) = 1148846080;
    [titleHeaderView5 setContentCompressionResistancePriority:1 forAxis:v11];

    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"Cities [City Selector View]" value:@"localized string not found" table:0];
    titleHeaderView6 = [(CitySelectorViewController *)self titleHeaderView];
    [titleHeaderView6 setTitle:v13];

    titleHeaderView7 = [(CitySelectorViewController *)self titleHeaderView];
    [titleHeaderView7 setDelegate:self];

    titleHeaderView8 = [(CitySelectorViewController *)self titleHeaderView];
    [titleHeaderView8 setHairLineAlpha:0.0];

    if (sub_10000FA08(self) == 5)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    titleHeaderView9 = [(CitySelectorViewController *)self titleHeaderView];
    [titleHeaderView9 setHeaderSize:v17];

    headerView = [(ContaineeViewController *)self headerView];
    titleHeaderView10 = [(CitySelectorViewController *)self titleHeaderView];
    [headerView addSubview:titleHeaderView10];
  }
}

- (void)initializeDataSource
{
  dataSource = [(CitySelectorViewController *)self dataSource];

  if (!dataSource)
  {
    v4 = [CitySelectorDataSource alloc];
    collectionView = [(CitySelectorViewController *)self collectionView];
    apiController = [(CitySelectorViewController *)self apiController];
    citySelectorResult = [apiController citySelectorResult];
    sections = [(CitySelectorViewController *)self sections];
    apiController2 = [(CitySelectorViewController *)self apiController];
    apiController3 = [(CitySelectorViewController *)self apiController];
    batchSize = [apiController3 batchSize];
    sourceGuideLocation = [(CitySelectorViewController *)self sourceGuideLocation];
    v13 = [(CitySelectorDataSource *)v4 initWithCollectionView:collectionView result:citySelectorResult sections:sections routingDelegate:self usingCollectionFetcher:apiController2 usingBatchSize:batchSize selectedGuideLocation:sourceGuideLocation];
    [(CitySelectorViewController *)self setDataSource:v13];

    dataSource2 = [(CitySelectorViewController *)self dataSource];
    [dataSource2 setDelegate:self];

    analyticsManager = [(CitySelectorViewController *)self analyticsManager];
    [analyticsManager citySelectorRevealed];
  }
}

- (void)initializeSections
{
  sections = [(CitySelectorViewController *)self sections];
  v4 = [sections count];

  if (!v4)
  {
    v5 = [NSMutableArray alloc];
    apiController = [(CitySelectorViewController *)self apiController];
    citySelectorSections = [apiController citySelectorSections];
    v8 = [v5 initWithCapacity:{objc_msgSend(citySelectorSections, "count")}];

    apiController2 = [(CitySelectorViewController *)self apiController];
    citySelectorSections2 = [apiController2 citySelectorSections];
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_100874914;
    v15 = &unk_10162C4A8;
    selfCopy = self;
    v17 = v8;
    v11 = v8;
    [citySelectorSections2 enumerateObjectsUsingBlock:&v12];

    [(CitySelectorViewController *)self setSections:v11, v12, v13, v14, v15, selfCopy];
  }
}

- (void)onTransitionFromState:(int64_t)state toState:(int64_t)toState
{
  v7 = sub_100874B8C();
  v8 = os_signpost_id_generate(v7);

  v9 = sub_100874B8C();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v12 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "DisplayingCitySelectorView", "", v12, 2u);
  }

  if (state == 3)
  {
    if (toState != 1)
    {
      return;
    }

    [(CitySelectorViewController *)self removeErrorView];
    goto LABEL_14;
  }

  if (state == 1)
  {
    if (toState == 3)
    {
      [(CitySelectorViewController *)self removeLoadingView];
      [(CitySelectorViewController *)self removeCollectionView];
      [(CitySelectorViewController *)self addErrorView];
    }

    else if (toState == 2)
    {
      [(CitySelectorViewController *)self removeLoadingView];
      [(CitySelectorViewController *)self addAllCollectionsView];
      collectionView = [(CitySelectorViewController *)self collectionView];
      [(CitySelectorViewController *)self activateConstraintsForViewPinnedBelowHeader:collectionView];
    }
  }

  else if (!state && toState == 1)
  {
    [(CitySelectorViewController *)self addHeaderView];
    [(CitySelectorViewController *)self activateHeaderConstraints];
LABEL_14:
    [(CitySelectorViewController *)self addLoadingView];
  }
}

- (void)routeToGuideLocation:(id)location
{
  locationCopy = location;
  actionDelegate = [(CitySelectorViewController *)self actionDelegate];
  [actionDelegate citySelectorViewController:self showGuidesHomeWithLocation:locationCopy];
}

- (double)heightForLayout:(unint64_t)layout
{
  v5 = sub_10000FA08(self);
  if (layout != 1 || (result = -1.0, v5 != 5))
  {
    v7.receiver = self;
    v7.super_class = CitySelectorViewController;
    [(ContaineeViewController *)&v7 heightForLayout:layout];
  }

  return result;
}

- (void)handleDismissAction:(id)action
{
  actionCopy = action;
  apiController = [(CitySelectorViewController *)self apiController];
  [apiController cancelFetchingCitySelectorView];

  dataSource = [(CitySelectorViewController *)self dataSource];
  [dataSource dismissedCitySelector];

  v7.receiver = self;
  v7.super_class = CitySelectorViewController;
  [(ContaineeViewController *)&v7 handleDismissAction:actionCopy];
}

- (void)didChangeLayout:(unint64_t)layout
{
  v6.receiver = self;
  v6.super_class = CitySelectorViewController;
  [(ContaineeViewController *)&v6 didChangeLayout:layout];
  collectionView = [(CitySelectorViewController *)self collectionView];

  if (collectionView)
  {
    [(CitySelectorViewController *)self resetCollectionViewLayout];
    collectionView2 = [(CitySelectorViewController *)self collectionView];
    [collectionView2 setContentOffset:{CGPointZero.x, CGPointZero.y}];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = CitySelectorViewController;
  coordinatorCopy = coordinator;
  [(ContaineeViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100874ED8;
  v8[3] = &unk_101661710;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:&stru_10162C480];
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = CitySelectorViewController;
  [(ContaineeViewController *)&v10 viewDidLoad];
  [(CitySelectorViewController *)self setAccessibilityIdentifier:@"CitySelectorView"];
  objc_initWeak(&location, self);
  v3 = [CitySelectorAPIController alloc];
  objc_copyWeak(&v8, &location);
  v4 = [(CitySelectorViewController *)self traits:_NSConcreteStackBlock];
  v5 = [(CitySelectorAPIController *)v3 initWithStateChangeHandler:&v7 usingTraits:v4];
  [(CitySelectorViewController *)self setApiController:v5];

  apiController = [(CitySelectorViewController *)self apiController];
  [apiController fetchCitySelectorView:&stru_10162C460];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (CitySelectorViewController)initWithSourceGuideLocation:(id)location
{
  locationCopy = location;
  v13.receiver = self;
  v13.super_class = CitySelectorViewController;
  v5 = [(CitySelectorViewController *)&v13 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    v7 = sub_10000FA08(v5);
    cardPresentationController = [(ContaineeViewController *)v6 cardPresentationController];
    v9 = cardPresentationController;
    if (v7 == 5)
    {
      [cardPresentationController setAllowResizeInFloatingStyle:1];

      cardPresentationController2 = [(ContaineeViewController *)v6 cardPresentationController];
      [cardPresentationController2 setDefaultContaineeLayout:3];
    }

    else
    {
      [cardPresentationController setPresentedModally:1];

      cardPresentationController2 = [(ContaineeViewController *)v6 cardPresentationController];
      [cardPresentationController2 setTakesAvailableHeight:1];
    }

    v11 = objc_alloc_init(CitySelectorAnalyticsManager);
    [(CitySelectorViewController *)v6 setAnalyticsManager:v11];

    [(CitySelectorViewController *)v6 setSourceGuideLocation:locationCopy];
  }

  return v6;
}

@end