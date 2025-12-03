@interface AllCollectionsViewController
- (AllCollectionsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (AllCollectionsViewControllerDelegate)actionDelegate;
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
- (void)pptPresentFirstCollection;
- (void)removeCollectionView;
- (void)removeErrorView;
- (void)removeLoadingView;
- (void)resetCollectionViewLayout;
- (void)routeToCuratedCollection:(id)collection;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation AllCollectionsViewController

- (AllCollectionsViewControllerDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (void)pptPresentFirstCollection
{
  dataSource = [(AllCollectionsViewController *)self dataSource];
  [dataSource presentFirstCollection];
}

- (void)routeToCuratedCollection:(id)collection
{
  collectionCopy = collection;
  actionDelegate = [(AllCollectionsViewController *)self actionDelegate];
  [actionDelegate allCollectionsViewController:self showCuratedGuide:collectionCopy];
}

- (void)resetCollectionViewLayout
{
  collectionView = [(AllCollectionsViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout invalidateLayout];

  collectionView2 = [(AllCollectionsViewController *)self collectionView];
  contentView = [(ContaineeViewController *)self contentView];
  [contentView frame];
  v7 = [(AllCollectionsViewController *)self createLayoutUsingWidth:v6];
  [collectionView2 setCollectionViewLayout:v7];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = AllCollectionsViewController;
  coordinatorCopy = coordinator;
  [(ContaineeViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100C054DC;
  v8[3] = &unk_101661710;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:&stru_10164D9C0];
}

- (void)removeErrorView
{
  errorView = [(AllCollectionsViewController *)self errorView];

  if (errorView)
  {
    errorView2 = [(AllCollectionsViewController *)self errorView];
    [errorView2 removeFromSuperview];

    [(AllCollectionsViewController *)self setErrorView:0];
  }
}

- (void)addErrorView
{
  errorView = [(AllCollectionsViewController *)self errorView];

  if (!errorView)
  {
    dataSource = [(AllCollectionsViewController *)self dataSource];
    [dataSource clearAllCollectionsData];

    v5 = objc_alloc_init(ErrorModeView);
    [(AllCollectionsViewController *)self setErrorView:v5];

    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"[Brooklyn] Error Mode title" value:@"localized string not found" table:0];

    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"[Brooklyn] Error Mode message" value:@"localized string not found" table:0];

    v10 = MKCurrentNetworkConnectionFailureDiagnosis();
    errorView2 = [(AllCollectionsViewController *)self errorView];
    v12 = errorView2;
    if (v10)
    {
      [errorView2 setTitle:v7 andMessage:v9];

      objc_initWeak(&location, self);
      errorView3 = [(AllCollectionsViewController *)self errorView];
      v14 = +[UIColor systemGray5Color];
      v22 = _NSConcreteStackBlock;
      v23 = 3221225472;
      v24 = sub_100C05844;
      v25 = &unk_10165D828;
      objc_copyWeak(&v26, &location);
      [errorView3 setButtonTitle:@"Try Again" glyphName:@"arrow.clockwise" backgroundColor:v14 handler:&v22];

      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
    }

    else
    {
      v15 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubhead];
      [v12 setTitleLabelFont:v15];

      errorView4 = [(AllCollectionsViewController *)self errorView];
      [errorView4 setTitle:v7 andMessage:0];
    }

    v17 = [(AllCollectionsViewController *)self errorView:v22];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

    errorView5 = [(AllCollectionsViewController *)self errorView];
    [errorView5 setAccessibilityIdentifier:@"AllCollectionsErrorView"];

    contentView = [(ContaineeViewController *)self contentView];
    errorView6 = [(AllCollectionsViewController *)self errorView];
    [contentView addSubview:errorView6];

    errorView7 = [(AllCollectionsViewController *)self errorView];
    [(AllCollectionsViewController *)self activateConstraintsForViewPinnedBelowHeader:errorView7];
  }
}

- (void)removeLoadingView
{
  loadingView = [(AllCollectionsViewController *)self loadingView];

  if (loadingView)
  {
    loadingView2 = [(AllCollectionsViewController *)self loadingView];
    [loadingView2 removeFromSuperview];

    [(AllCollectionsViewController *)self setLoadingView:0];
  }
}

- (void)addLoadingView
{
  objc_initWeak(&location, self);
  v2 = dispatch_time(0, 200000000);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100C05A0C;
  v3[3] = &unk_101661B98;
  objc_copyWeak(&v4, &location);
  dispatch_after(v2, &_dispatch_main_q, v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
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
  headerView = [(ContaineeViewController *)self headerView];
  bottomAnchor = [headerView bottomAnchor];
  v9 = [topAnchor constraintEqualToAnchor:bottomAnchor];
  v22[2] = v9;
  bottomAnchor2 = [headerCopy bottomAnchor];

  contentView3 = [(ContaineeViewController *)self contentView];
  bottomAnchor3 = [contentView3 bottomAnchor];
  v13 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v22[3] = v13;
  v14 = [NSArray arrayWithObjects:v22 count:4];
  [NSLayoutConstraint activateConstraints:v14];
}

- (void)activateHeaderConstraints
{
  titleHeaderView = [(AllCollectionsViewController *)self titleHeaderView];
  topAnchor = [titleHeaderView topAnchor];
  headerView = [(ContaineeViewController *)self headerView];
  topAnchor2 = [headerView topAnchor];
  v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v24[0] = v19;
  titleHeaderView2 = [(AllCollectionsViewController *)self titleHeaderView];
  leadingAnchor = [titleHeaderView2 leadingAnchor];
  headerView2 = [(ContaineeViewController *)self headerView];
  leadingAnchor2 = [headerView2 leadingAnchor];
  v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v24[1] = v14;
  titleHeaderView3 = [(AllCollectionsViewController *)self titleHeaderView];
  trailingAnchor = [titleHeaderView3 trailingAnchor];
  headerView3 = [(ContaineeViewController *)self headerView];
  trailingAnchor2 = [headerView3 trailingAnchor];
  v6 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v24[2] = v6;
  titleHeaderView4 = [(AllCollectionsViewController *)self titleHeaderView];
  bottomAnchor = [titleHeaderView4 bottomAnchor];
  headerView4 = [(ContaineeViewController *)self headerView];
  bottomAnchor2 = [headerView4 bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v24[3] = v11;
  v12 = [NSArray arrayWithObjects:v24 count:4];
  [NSLayoutConstraint activateConstraints:v12];
}

- (id)createLayoutUsingWidth:(double)width
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100C060C8;
  v5[3] = &unk_10164D980;
  v5[4] = self;
  *&v5[5] = width;
  v3 = [[UICollectionViewCompositionalLayout alloc] initWithSectionProvider:v5];

  return v3;
}

- (void)removeCollectionView
{
  collectionView = [(AllCollectionsViewController *)self collectionView];

  if (collectionView)
  {
    collectionView2 = [(AllCollectionsViewController *)self collectionView];
    [collectionView2 removeFromSuperview];

    [(AllCollectionsViewController *)self setCollectionView:0];

    [(AllCollectionsViewController *)self setDataSource:0];
  }
}

- (void)addAllCollectionsView
{
  collectionView = [(AllCollectionsViewController *)self collectionView];

  if (!collectionView)
  {
    v4 = [UICollectionView alloc];
    contentView = [(ContaineeViewController *)self contentView];
    [contentView frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    contentView2 = [(ContaineeViewController *)self contentView];
    [contentView2 frame];
    v16 = [(AllCollectionsViewController *)self createLayoutUsingWidth:v15];
    v17 = [v4 initWithFrame:v16 collectionViewLayout:{v7, v9, v11, v13}];
    [(AllCollectionsViewController *)self setCollectionView:v17];

    collectionView2 = [(AllCollectionsViewController *)self collectionView];
    [collectionView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    v19 = +[UIColor clearColor];
    collectionView3 = [(AllCollectionsViewController *)self collectionView];
    [collectionView3 setBackgroundColor:v19];

    collectionView4 = [(AllCollectionsViewController *)self collectionView];
    [collectionView4 setBounces:1];

    collectionView5 = [(AllCollectionsViewController *)self collectionView];
    [collectionView5 setAlwaysBounceVertical:1];

    collectionView6 = [(AllCollectionsViewController *)self collectionView];
    [collectionView6 setAccessibilityIdentifier:@"AllCollectionsCollectionView"];

    contentView3 = [(ContaineeViewController *)self contentView];
    collectionView7 = [(AllCollectionsViewController *)self collectionView];
    [contentView3 addSubview:collectionView7];
  }

  [(AllCollectionsViewController *)self initializeSections];
  [(AllCollectionsViewController *)self initializeDataSource];
  dataSource = [(AllCollectionsViewController *)self dataSource];
  [dataSource displayAllCollectionsData];
}

- (void)initializeDataSource
{
  v3 = objc_alloc_init(NSMutableArray);
  apiController = [(AllCollectionsViewController *)self apiController];
  collectionResults = [apiController collectionResults];
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_100C065C8;
  v21 = &unk_10165D7E0;
  v6 = v3;
  v22 = v6;
  [collectionResults enumerateObjectsUsingBlock:&v18];

  apiController2 = [(AllCollectionsViewController *)self apiController];
  allCollectionViewIdentifiers = [apiController2 allCollectionViewIdentifiers];

  dataSource = [(AllCollectionsViewController *)self dataSource];

  if (dataSource)
  {
    dataSource2 = [(AllCollectionsViewController *)self dataSource];
    [dataSource2 updateCollections:v6 usingBatchIdentifiers:allCollectionViewIdentifiers];
  }

  else
  {
    apiController3 = [(AllCollectionsViewController *)self apiController];
    dataSource2 = [apiController3 allCollectionViewFilters];

    v12 = [AllCollectionsDataSource alloc];
    collectionView = [(AllCollectionsViewController *)self collectionView];
    sections = [(AllCollectionsViewController *)self sections];
    apiController4 = [(AllCollectionsViewController *)self apiController];
    v16 = [(AllCollectionsDataSource *)v12 initWithCollectionView:collectionView usingCuratedCollections:v6 usingPlaceCollectionIds:allCollectionViewIdentifiers withResultFilters:dataSource2 sections:sections usingAPIController:apiController4 withRoutingDelegate:self, v18, v19, v20, v21];
    [(AllCollectionsViewController *)self setDataSource:v16];

    dataSource3 = [(AllCollectionsViewController *)self dataSource];
    [dataSource3 setDelegate:self];
  }
}

- (void)initializeSections
{
  sections = [(AllCollectionsViewController *)self sections];
  v4 = [sections count];

  if (!v4)
  {
    v17 = [[NSMutableArray alloc] initWithCapacity:2];
    v5 = [AllCollectionsSection alloc];
    collectionView = [(AllCollectionsViewController *)self collectionView];
    [collectionView frame];
    v8 = v7;
    collectionView2 = [(AllCollectionsViewController *)self collectionView];
    v10 = [(AllCollectionsSection *)v5 initWithSectionIndex:0 usingMaxWidth:collectionView2 usingTraitEnvironment:v8];
    [v17 addObject:v10];

    v11 = [AllCollectionsSection alloc];
    collectionView3 = [(AllCollectionsViewController *)self collectionView];
    [collectionView3 frame];
    v14 = v13;
    collectionView4 = [(AllCollectionsViewController *)self collectionView];
    v16 = [(AllCollectionsSection *)v11 initWithSectionIndex:1 usingMaxWidth:collectionView4 usingTraitEnvironment:v14];
    [v17 addObject:v16];

    [(AllCollectionsViewController *)self setSections:v17];
  }
}

- (void)addHeaderView
{
  titleHeaderView = [(AllCollectionsViewController *)self titleHeaderView];

  if (!titleHeaderView)
  {
    v4 = [[ContainerHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    [(AllCollectionsViewController *)self setTitleHeaderView:v4];

    titleHeaderView2 = [(AllCollectionsViewController *)self titleHeaderView];
    v6 = sub_10000FA08(titleHeaderView2);

    if (v6 == 5)
    {
      titleHeaderView3 = [(AllCollectionsViewController *)self titleHeaderView];
      v8 = [UIFont _preferredFontForTextStyle:UIFontTextStyleTitle3 variant:1024];
      [titleHeaderView3 setCustomTitleFont:v8];
    }

    titleHeaderView4 = [(AllCollectionsViewController *)self titleHeaderView];
    [titleHeaderView4 setTranslatesAutoresizingMaskIntoConstraints:0];

    titleHeaderView5 = [(AllCollectionsViewController *)self titleHeaderView];
    LODWORD(v11) = 1148846080;
    [titleHeaderView5 setContentCompressionResistancePriority:1 forAxis:v11];

    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"All Collections [All Collections View]" value:@"localized string not found" table:0];
    titleHeaderView6 = [(AllCollectionsViewController *)self titleHeaderView];
    [titleHeaderView6 setTitle:v13];

    titleHeaderView7 = [(AllCollectionsViewController *)self titleHeaderView];
    [titleHeaderView7 setDelegate:self];

    titleHeaderView8 = [(AllCollectionsViewController *)self titleHeaderView];
    [titleHeaderView8 setHairLineAlpha:0.0];

    if (sub_10000FA08(self) == 5)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    titleHeaderView9 = [(AllCollectionsViewController *)self titleHeaderView];
    [titleHeaderView9 setHeaderSize:v17];

    titleHeaderView10 = [(AllCollectionsViewController *)self titleHeaderView];
    [titleHeaderView10 setAccessibilityIdentifier:@"AllCollectionsTitleHeaderView"];

    headerView = [(ContaineeViewController *)self headerView];
    titleHeaderView11 = [(AllCollectionsViewController *)self titleHeaderView];
    [headerView addSubview:titleHeaderView11];
  }
}

- (void)onTransitionFromState:(int64_t)state toState:(int64_t)toState
{
  v7 = sub_100C06BDC();
  v8 = os_signpost_id_generate(v7);

  v9 = sub_100C06BDC();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "DisplayingAllCollectionsView", "", buf, 2u);
  }

  if (state > 1)
  {
    if (state == 2)
    {
      if (toState != 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (state != 3 || toState != 1)
      {
        goto LABEL_18;
      }

      [(AllCollectionsViewController *)self removeErrorView];
    }

LABEL_17:
    [(AllCollectionsViewController *)self addLoadingView];
    goto LABEL_18;
  }

  if (!state)
  {
    if (toState != 1)
    {
      goto LABEL_18;
    }

    [(AllCollectionsViewController *)self addHeaderView];
    [(AllCollectionsViewController *)self activateHeaderConstraints];
    goto LABEL_17;
  }

  if (state == 1)
  {
    if (toState == 3)
    {
      [(AllCollectionsViewController *)self removeLoadingView];
      [(AllCollectionsViewController *)self removeCollectionView];
      [(AllCollectionsViewController *)self addErrorView];
    }

    else if (toState == 2)
    {
      [(AllCollectionsViewController *)self removeLoadingView];
      [(AllCollectionsViewController *)self addAllCollectionsView];
      collectionView = [(AllCollectionsViewController *)self collectionView];
      [(AllCollectionsViewController *)self activateConstraintsForViewPinnedBelowHeader:collectionView];
    }
  }

LABEL_18:
  v12 = sub_100C06BDC();
  v13 = v12;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, v8, "DisplayingAllCollectionsView", "", v14, 2u);
  }
}

- (double)heightForLayout:(unint64_t)layout
{
  v5 = sub_10000FA08(self);
  if (layout != 1 || (result = -1.0, v5 != 5))
  {
    v7.receiver = self;
    v7.super_class = AllCollectionsViewController;
    [(ContaineeViewController *)&v7 heightForLayout:layout];
  }

  return result;
}

- (void)handleDismissAction:(id)action
{
  actionCopy = action;
  apiController = [(AllCollectionsViewController *)self apiController];
  [apiController cancelFetchingAllCollections];

  dataSource = [(AllCollectionsViewController *)self dataSource];
  [dataSource dismissedCollections];

  v7.receiver = self;
  v7.super_class = AllCollectionsViewController;
  [(ContaineeViewController *)&v7 handleDismissAction:actionCopy];
}

- (void)didChangeLayout:(unint64_t)layout
{
  v6.receiver = self;
  v6.super_class = AllCollectionsViewController;
  [(ContaineeViewController *)&v6 didChangeLayout:layout];
  collectionView = [(AllCollectionsViewController *)self collectionView];

  if (collectionView)
  {
    [(AllCollectionsViewController *)self resetCollectionViewLayout];
    collectionView2 = [(AllCollectionsViewController *)self collectionView];
    [collectionView2 setContentOffset:{CGPointZero.x, CGPointZero.y}];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = AllCollectionsViewController;
  [(ContaineeViewController *)&v5 viewWillDisappear:disappear];
  apiController = [(AllCollectionsViewController *)self apiController];
  [apiController cancelFetchingAllCollections];
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = AllCollectionsViewController;
  [(ContaineeViewController *)&v11 viewDidLoad];
  objc_initWeak(&location, self);
  v3 = [AllCollectionsAPIController alloc];
  objc_copyWeak(&v9, &location);
  v4 = [(AllCollectionsViewController *)self traits:_NSConcreteStackBlock];
  v5 = [(AllCollectionsAPIController *)v3 initWithOnStateChangeHandler:&v8 usingTraits:v4];
  [(AllCollectionsViewController *)self setApiController:v5];

  view = [(AllCollectionsViewController *)self view];
  [view setAccessibilityIdentifier:@"AllCollections"];

  apiController = [(AllCollectionsViewController *)self apiController];
  [apiController fetchAllCollectionsViewForKeywordFilter:0 addressFilter:0 onCompletion:&stru_10164D958];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (AllCollectionsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v11.receiver = self;
  v11.super_class = AllCollectionsViewController;
  v4 = [(AllCollectionsViewController *)&v11 initWithNibName:0 bundle:0];
  v5 = v4;
  if (v4)
  {
    v6 = sub_10000FA08(v4);
    cardPresentationController = [(ContaineeViewController *)v5 cardPresentationController];
    v8 = cardPresentationController;
    if (v6 == 5)
    {
      [cardPresentationController setAllowResizeInFloatingStyle:1];

      cardPresentationController2 = [(ContaineeViewController *)v5 cardPresentationController];
      [cardPresentationController2 setDefaultContaineeLayout:3];
    }

    else
    {
      [cardPresentationController setPresentedModally:1];

      cardPresentationController2 = [(ContaineeViewController *)v5 cardPresentationController];
      [cardPresentationController2 setTakesAvailableHeight:1];
    }
  }

  return v5;
}

@end