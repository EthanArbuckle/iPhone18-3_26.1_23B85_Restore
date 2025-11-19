@interface CitySelectorViewController
- (CitySelectorViewController)initWithSourceGuideLocation:(id)a3;
- (CitySelectorViewControllerDelegate)actionDelegate;
- (double)heightForLayout:(unint64_t)a3;
- (id)createLayoutUsingWidth:(double)a3;
- (void)activateConstraintsForViewPinnedBelowHeader:(id)a3;
- (void)activateHeaderConstraints;
- (void)addAllCollectionsView;
- (void)addErrorView;
- (void)addHeaderView;
- (void)addLoadingView;
- (void)didChangeLayout:(unint64_t)a3;
- (void)handleDismissAction:(id)a3;
- (void)initializeDataSource;
- (void)initializeSections;
- (void)onTransitionFromState:(int64_t)a3 toState:(int64_t)a4;
- (void)removeCollectionView;
- (void)removeErrorView;
- (void)removeLoadingView;
- (void)resetCollectionViewLayout;
- (void)routeToGuideLocation:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CitySelectorViewController

- (CitySelectorViewControllerDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (void)scrollViewDidScroll:(id)a3
{
  v9.receiver = self;
  v9.super_class = CitySelectorViewController;
  [(ContaineeViewController *)&v9 scrollViewDidScroll:a3];
  v4 = [(CitySelectorViewController *)self collectionView];
  v5 = [v4 _maps_shouldShowTopHairline];

  v6 = 0.0;
  if (v5)
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
  v3 = [(CitySelectorViewController *)self errorView];

  if (v3)
  {
    v4 = [(CitySelectorViewController *)self errorView];
    [v4 removeFromSuperview];

    [(CitySelectorViewController *)self setErrorView:0];
  }
}

- (void)addErrorView
{
  v3 = [(CitySelectorViewController *)self errorView];

  if (!v3)
  {
    v4 = objc_alloc_init(ErrorModeView);
    [(CitySelectorViewController *)self setErrorView:v4];

    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"[City Selector] Error Mode title" value:@"localized string not found" table:0];

    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"[City Selector] Error Mode message" value:@"localized string not found" table:0];

    v9 = MKCurrentNetworkConnectionFailureDiagnosis();
    v10 = [(CitySelectorViewController *)self errorView];
    v11 = v10;
    if (v9)
    {
      [v10 setTitle:v6 andMessage:v8];

      objc_initWeak(&location, self);
      v12 = [(CitySelectorViewController *)self errorView];
      v13 = +[UIColor systemGray5Color];
      v20 = _NSConcreteStackBlock;
      v21 = 3221225472;
      v22 = sub_1008737B0;
      v23 = &unk_10165D828;
      objc_copyWeak(&v24, &location);
      [v12 setButtonTitle:@"Try Again" glyphName:@"arrow.clockwise" backgroundColor:v13 handler:&v20];

      objc_destroyWeak(&v24);
      objc_destroyWeak(&location);
    }

    else
    {
      v14 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubhead];
      [v11 setTitleLabelFont:v14];

      v15 = [(CitySelectorViewController *)self errorView];
      [v15 setTitle:v6 andMessage:0];
    }

    v16 = [(CitySelectorViewController *)self errorView:v20];
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

    v17 = [(ContaineeViewController *)self contentView];
    v18 = [(CitySelectorViewController *)self errorView];
    [v17 addSubview:v18];

    v19 = [(CitySelectorViewController *)self errorView];
    [(CitySelectorViewController *)self activateConstraintsForViewPinnedBelowHeader:v19];
  }
}

- (void)removeLoadingView
{
  v3 = [(CitySelectorViewController *)self loadingView];

  if (v3)
  {
    v4 = [(CitySelectorViewController *)self loadingView];
    [v4 removeFromSuperview];

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
  v3 = [(CitySelectorViewController *)self collectionView];
  v4 = [v3 collectionViewLayout];
  [v4 invalidateLayout];

  v8 = [(CitySelectorViewController *)self collectionView];
  v5 = [(ContaineeViewController *)self contentView];
  [v5 frame];
  v7 = [(CitySelectorViewController *)self createLayoutUsingWidth:v6];
  [v8 setCollectionViewLayout:v7];
}

- (void)activateConstraintsForViewPinnedBelowHeader:(id)a3
{
  v4 = a3;
  v20 = [v4 leadingAnchor];
  v21 = [(ContaineeViewController *)self contentView];
  v19 = [v21 leadingAnchor];
  v18 = [v20 constraintEqualToAnchor:v19];
  v22[0] = v18;
  v16 = [v4 trailingAnchor];
  v17 = [(ContaineeViewController *)self contentView];
  v15 = [v17 trailingAnchor];
  v5 = [v16 constraintEqualToAnchor:v15];
  v22[1] = v5;
  v6 = [v4 topAnchor];
  v7 = [(ContaineeViewController *)self contentView];
  v8 = [v7 topAnchor];
  v9 = [v6 constraintEqualToAnchor:v8];
  v22[2] = v9;
  v10 = [v4 bottomAnchor];

  v11 = [(ContaineeViewController *)self contentView];
  v12 = [v11 bottomAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  v22[3] = v13;
  v14 = [NSArray arrayWithObjects:v22 count:4];
  [NSLayoutConstraint activateConstraints:v14];
}

- (id)createLayoutUsingWidth:(double)a3
{
  v5 = objc_alloc_init(UICollectionViewCompositionalLayoutConfiguration);
  [v5 setInterSectionSpacing:6.0];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100873E68;
  v8[3] = &unk_10164D980;
  v8[4] = self;
  *&v8[5] = a3;
  v6 = [[UICollectionViewCompositionalLayout alloc] initWithSectionProvider:v8 configuration:v5];

  return v6;
}

- (void)removeCollectionView
{
  v3 = [(CitySelectorViewController *)self collectionView];

  if (v3)
  {
    v4 = [(CitySelectorViewController *)self collectionView];
    [v4 removeFromSuperview];

    [(CitySelectorViewController *)self setCollectionView:0];

    [(CitySelectorViewController *)self setDataSource:0];
  }
}

- (void)addAllCollectionsView
{
  v3 = [(CitySelectorViewController *)self collectionView];

  if (!v3)
  {
    v4 = [UICollectionView alloc];
    v5 = [(ContaineeViewController *)self contentView];
    [v5 frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = objc_alloc_init(UICollectionViewLayout);
    v15 = [v4 initWithFrame:v14 collectionViewLayout:{v7, v9, v11, v13}];
    [(CitySelectorViewController *)self setCollectionView:v15];

    v16 = [(CitySelectorViewController *)self collectionView];
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

    v17 = +[UIColor clearColor];
    v18 = [(CitySelectorViewController *)self collectionView];
    [v18 setBackgroundColor:v17];

    v19 = [(CitySelectorViewController *)self collectionView];
    [v19 setBounces:1];

    v20 = [(CitySelectorViewController *)self collectionView];
    [v20 setAlwaysBounceVertical:1];

    v21 = [(ContaineeViewController *)self contentView];
    v22 = [(CitySelectorViewController *)self collectionView];
    [v21 addSubview:v22];

    v23 = [(CitySelectorViewController *)self collectionView];
    [(ContaineeViewController *)self setContentScrollView:v23 forEdge:1];
  }

  [(CitySelectorViewController *)self initializeSections];
  [(CitySelectorViewController *)self initializeDataSource];
  v24 = [(CitySelectorViewController *)self collectionView];
  v25 = [(ContaineeViewController *)self contentView];
  [v25 frame];
  v27 = [(CitySelectorViewController *)self createLayoutUsingWidth:v26];
  [v24 setCollectionViewLayout:v27];

  v28 = [(CitySelectorViewController *)self dataSource];
  [v28 displayCitySelectorData];
}

- (void)activateHeaderConstraints
{
  v23 = [(CitySelectorViewController *)self titleHeaderView];
  v21 = [v23 topAnchor];
  v22 = [(ContaineeViewController *)self headerView];
  v20 = [v22 topAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v24[0] = v19;
  v18 = [(CitySelectorViewController *)self titleHeaderView];
  v16 = [v18 leadingAnchor];
  v17 = [(ContaineeViewController *)self headerView];
  v15 = [v17 leadingAnchor];
  v14 = [v16 constraintEqualToAnchor:v15];
  v24[1] = v14;
  v13 = [(CitySelectorViewController *)self titleHeaderView];
  v3 = [v13 trailingAnchor];
  v4 = [(ContaineeViewController *)self headerView];
  v5 = [v4 trailingAnchor];
  v6 = [v3 constraintEqualToAnchor:v5];
  v24[2] = v6;
  v7 = [(CitySelectorViewController *)self titleHeaderView];
  v8 = [v7 bottomAnchor];
  v9 = [(ContaineeViewController *)self headerView];
  v10 = [v9 bottomAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v24[3] = v11;
  v12 = [NSArray arrayWithObjects:v24 count:4];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)addHeaderView
{
  v3 = [(CitySelectorViewController *)self titleHeaderView];

  if (!v3)
  {
    v4 = [[ContainerHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    [(CitySelectorViewController *)self setTitleHeaderView:v4];

    v5 = [(CitySelectorViewController *)self titleHeaderView];
    v6 = sub_10000FA08(v5);

    if (v6 == 5)
    {
      v7 = [(CitySelectorViewController *)self titleHeaderView];
      v8 = [UIFont _preferredFontForTextStyle:UIFontTextStyleTitle3 variant:1024];
      [v7 setCustomTitleFont:v8];
    }

    v9 = [(CitySelectorViewController *)self titleHeaderView];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

    v10 = [(CitySelectorViewController *)self titleHeaderView];
    LODWORD(v11) = 1148846080;
    [v10 setContentCompressionResistancePriority:1 forAxis:v11];

    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"Cities [City Selector View]" value:@"localized string not found" table:0];
    v14 = [(CitySelectorViewController *)self titleHeaderView];
    [v14 setTitle:v13];

    v15 = [(CitySelectorViewController *)self titleHeaderView];
    [v15 setDelegate:self];

    v16 = [(CitySelectorViewController *)self titleHeaderView];
    [v16 setHairLineAlpha:0.0];

    if (sub_10000FA08(self) == 5)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    v18 = [(CitySelectorViewController *)self titleHeaderView];
    [v18 setHeaderSize:v17];

    v20 = [(ContaineeViewController *)self headerView];
    v19 = [(CitySelectorViewController *)self titleHeaderView];
    [v20 addSubview:v19];
  }
}

- (void)initializeDataSource
{
  v3 = [(CitySelectorViewController *)self dataSource];

  if (!v3)
  {
    v4 = [CitySelectorDataSource alloc];
    v5 = [(CitySelectorViewController *)self collectionView];
    v6 = [(CitySelectorViewController *)self apiController];
    v7 = [v6 citySelectorResult];
    v8 = [(CitySelectorViewController *)self sections];
    v9 = [(CitySelectorViewController *)self apiController];
    v10 = [(CitySelectorViewController *)self apiController];
    v11 = [v10 batchSize];
    v12 = [(CitySelectorViewController *)self sourceGuideLocation];
    v13 = [(CitySelectorDataSource *)v4 initWithCollectionView:v5 result:v7 sections:v8 routingDelegate:self usingCollectionFetcher:v9 usingBatchSize:v11 selectedGuideLocation:v12];
    [(CitySelectorViewController *)self setDataSource:v13];

    v14 = [(CitySelectorViewController *)self dataSource];
    [v14 setDelegate:self];

    v15 = [(CitySelectorViewController *)self analyticsManager];
    [v15 citySelectorRevealed];
  }
}

- (void)initializeSections
{
  v3 = [(CitySelectorViewController *)self sections];
  v4 = [v3 count];

  if (!v4)
  {
    v5 = [NSMutableArray alloc];
    v6 = [(CitySelectorViewController *)self apiController];
    v7 = [v6 citySelectorSections];
    v8 = [v5 initWithCapacity:{objc_msgSend(v7, "count")}];

    v9 = [(CitySelectorViewController *)self apiController];
    v10 = [v9 citySelectorSections];
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_100874914;
    v15 = &unk_10162C4A8;
    v16 = self;
    v17 = v8;
    v11 = v8;
    [v10 enumerateObjectsUsingBlock:&v12];

    [(CitySelectorViewController *)self setSections:v11, v12, v13, v14, v15, v16];
  }
}

- (void)onTransitionFromState:(int64_t)a3 toState:(int64_t)a4
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

  if (a3 == 3)
  {
    if (a4 != 1)
    {
      return;
    }

    [(CitySelectorViewController *)self removeErrorView];
    goto LABEL_14;
  }

  if (a3 == 1)
  {
    if (a4 == 3)
    {
      [(CitySelectorViewController *)self removeLoadingView];
      [(CitySelectorViewController *)self removeCollectionView];
      [(CitySelectorViewController *)self addErrorView];
    }

    else if (a4 == 2)
    {
      [(CitySelectorViewController *)self removeLoadingView];
      [(CitySelectorViewController *)self addAllCollectionsView];
      v11 = [(CitySelectorViewController *)self collectionView];
      [(CitySelectorViewController *)self activateConstraintsForViewPinnedBelowHeader:v11];
    }
  }

  else if (!a3 && a4 == 1)
  {
    [(CitySelectorViewController *)self addHeaderView];
    [(CitySelectorViewController *)self activateHeaderConstraints];
LABEL_14:
    [(CitySelectorViewController *)self addLoadingView];
  }
}

- (void)routeToGuideLocation:(id)a3
{
  v4 = a3;
  v5 = [(CitySelectorViewController *)self actionDelegate];
  [v5 citySelectorViewController:self showGuidesHomeWithLocation:v4];
}

- (double)heightForLayout:(unint64_t)a3
{
  v5 = sub_10000FA08(self);
  if (a3 != 1 || (result = -1.0, v5 != 5))
  {
    v7.receiver = self;
    v7.super_class = CitySelectorViewController;
    [(ContaineeViewController *)&v7 heightForLayout:a3];
  }

  return result;
}

- (void)handleDismissAction:(id)a3
{
  v4 = a3;
  v5 = [(CitySelectorViewController *)self apiController];
  [v5 cancelFetchingCitySelectorView];

  v6 = [(CitySelectorViewController *)self dataSource];
  [v6 dismissedCitySelector];

  v7.receiver = self;
  v7.super_class = CitySelectorViewController;
  [(ContaineeViewController *)&v7 handleDismissAction:v4];
}

- (void)didChangeLayout:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = CitySelectorViewController;
  [(ContaineeViewController *)&v6 didChangeLayout:a3];
  v4 = [(CitySelectorViewController *)self collectionView];

  if (v4)
  {
    [(CitySelectorViewController *)self resetCollectionViewLayout];
    v5 = [(CitySelectorViewController *)self collectionView];
    [v5 setContentOffset:{CGPointZero.x, CGPointZero.y}];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = CitySelectorViewController;
  v7 = a4;
  [(ContaineeViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100874ED8;
  v8[3] = &unk_101661710;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:&stru_10162C480];
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

  v6 = [(CitySelectorViewController *)self apiController];
  [v6 fetchCitySelectorView:&stru_10162C460];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (CitySelectorViewController)initWithSourceGuideLocation:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CitySelectorViewController;
  v5 = [(CitySelectorViewController *)&v13 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    v7 = sub_10000FA08(v5);
    v8 = [(ContaineeViewController *)v6 cardPresentationController];
    v9 = v8;
    if (v7 == 5)
    {
      [v8 setAllowResizeInFloatingStyle:1];

      v10 = [(ContaineeViewController *)v6 cardPresentationController];
      [v10 setDefaultContaineeLayout:3];
    }

    else
    {
      [v8 setPresentedModally:1];

      v10 = [(ContaineeViewController *)v6 cardPresentationController];
      [v10 setTakesAvailableHeight:1];
    }

    v11 = objc_alloc_init(CitySelectorAnalyticsManager);
    [(CitySelectorViewController *)v6 setAnalyticsManager:v11];

    [(CitySelectorViewController *)v6 setSourceGuideLocation:v4];
  }

  return v6;
}

@end