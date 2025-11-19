@interface AllCollectionsViewController
- (AllCollectionsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (AllCollectionsViewControllerDelegate)actionDelegate;
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
- (void)pptPresentFirstCollection;
- (void)removeCollectionView;
- (void)removeErrorView;
- (void)removeLoadingView;
- (void)resetCollectionViewLayout;
- (void)routeToCuratedCollection:(id)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation AllCollectionsViewController

- (AllCollectionsViewControllerDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (void)pptPresentFirstCollection
{
  v2 = [(AllCollectionsViewController *)self dataSource];
  [v2 presentFirstCollection];
}

- (void)routeToCuratedCollection:(id)a3
{
  v4 = a3;
  v5 = [(AllCollectionsViewController *)self actionDelegate];
  [v5 allCollectionsViewController:self showCuratedGuide:v4];
}

- (void)resetCollectionViewLayout
{
  v3 = [(AllCollectionsViewController *)self collectionView];
  v4 = [v3 collectionViewLayout];
  [v4 invalidateLayout];

  v8 = [(AllCollectionsViewController *)self collectionView];
  v5 = [(ContaineeViewController *)self contentView];
  [v5 frame];
  v7 = [(AllCollectionsViewController *)self createLayoutUsingWidth:v6];
  [v8 setCollectionViewLayout:v7];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = AllCollectionsViewController;
  v7 = a4;
  [(ContaineeViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100C054DC;
  v8[3] = &unk_101661710;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:&stru_10164D9C0];
}

- (void)removeErrorView
{
  v3 = [(AllCollectionsViewController *)self errorView];

  if (v3)
  {
    v4 = [(AllCollectionsViewController *)self errorView];
    [v4 removeFromSuperview];

    [(AllCollectionsViewController *)self setErrorView:0];
  }
}

- (void)addErrorView
{
  v3 = [(AllCollectionsViewController *)self errorView];

  if (!v3)
  {
    v4 = [(AllCollectionsViewController *)self dataSource];
    [v4 clearAllCollectionsData];

    v5 = objc_alloc_init(ErrorModeView);
    [(AllCollectionsViewController *)self setErrorView:v5];

    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"[Brooklyn] Error Mode title" value:@"localized string not found" table:0];

    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"[Brooklyn] Error Mode message" value:@"localized string not found" table:0];

    v10 = MKCurrentNetworkConnectionFailureDiagnosis();
    v11 = [(AllCollectionsViewController *)self errorView];
    v12 = v11;
    if (v10)
    {
      [v11 setTitle:v7 andMessage:v9];

      objc_initWeak(&location, self);
      v13 = [(AllCollectionsViewController *)self errorView];
      v14 = +[UIColor systemGray5Color];
      v22 = _NSConcreteStackBlock;
      v23 = 3221225472;
      v24 = sub_100C05844;
      v25 = &unk_10165D828;
      objc_copyWeak(&v26, &location);
      [v13 setButtonTitle:@"Try Again" glyphName:@"arrow.clockwise" backgroundColor:v14 handler:&v22];

      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
    }

    else
    {
      v15 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubhead];
      [v12 setTitleLabelFont:v15];

      v16 = [(AllCollectionsViewController *)self errorView];
      [v16 setTitle:v7 andMessage:0];
    }

    v17 = [(AllCollectionsViewController *)self errorView:v22];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

    v18 = [(AllCollectionsViewController *)self errorView];
    [v18 setAccessibilityIdentifier:@"AllCollectionsErrorView"];

    v19 = [(ContaineeViewController *)self contentView];
    v20 = [(AllCollectionsViewController *)self errorView];
    [v19 addSubview:v20];

    v21 = [(AllCollectionsViewController *)self errorView];
    [(AllCollectionsViewController *)self activateConstraintsForViewPinnedBelowHeader:v21];
  }
}

- (void)removeLoadingView
{
  v3 = [(AllCollectionsViewController *)self loadingView];

  if (v3)
  {
    v4 = [(AllCollectionsViewController *)self loadingView];
    [v4 removeFromSuperview];

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
  v7 = [(ContaineeViewController *)self headerView];
  v8 = [v7 bottomAnchor];
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

- (void)activateHeaderConstraints
{
  v23 = [(AllCollectionsViewController *)self titleHeaderView];
  v21 = [v23 topAnchor];
  v22 = [(ContaineeViewController *)self headerView];
  v20 = [v22 topAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v24[0] = v19;
  v18 = [(AllCollectionsViewController *)self titleHeaderView];
  v16 = [v18 leadingAnchor];
  v17 = [(ContaineeViewController *)self headerView];
  v15 = [v17 leadingAnchor];
  v14 = [v16 constraintEqualToAnchor:v15];
  v24[1] = v14;
  v13 = [(AllCollectionsViewController *)self titleHeaderView];
  v3 = [v13 trailingAnchor];
  v4 = [(ContaineeViewController *)self headerView];
  v5 = [v4 trailingAnchor];
  v6 = [v3 constraintEqualToAnchor:v5];
  v24[2] = v6;
  v7 = [(AllCollectionsViewController *)self titleHeaderView];
  v8 = [v7 bottomAnchor];
  v9 = [(ContaineeViewController *)self headerView];
  v10 = [v9 bottomAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v24[3] = v11;
  v12 = [NSArray arrayWithObjects:v24 count:4];
  [NSLayoutConstraint activateConstraints:v12];
}

- (id)createLayoutUsingWidth:(double)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100C060C8;
  v5[3] = &unk_10164D980;
  v5[4] = self;
  *&v5[5] = a3;
  v3 = [[UICollectionViewCompositionalLayout alloc] initWithSectionProvider:v5];

  return v3;
}

- (void)removeCollectionView
{
  v3 = [(AllCollectionsViewController *)self collectionView];

  if (v3)
  {
    v4 = [(AllCollectionsViewController *)self collectionView];
    [v4 removeFromSuperview];

    [(AllCollectionsViewController *)self setCollectionView:0];

    [(AllCollectionsViewController *)self setDataSource:0];
  }
}

- (void)addAllCollectionsView
{
  v3 = [(AllCollectionsViewController *)self collectionView];

  if (!v3)
  {
    v4 = [UICollectionView alloc];
    v5 = [(ContaineeViewController *)self contentView];
    [v5 frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(ContaineeViewController *)self contentView];
    [v14 frame];
    v16 = [(AllCollectionsViewController *)self createLayoutUsingWidth:v15];
    v17 = [v4 initWithFrame:v16 collectionViewLayout:{v7, v9, v11, v13}];
    [(AllCollectionsViewController *)self setCollectionView:v17];

    v18 = [(AllCollectionsViewController *)self collectionView];
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

    v19 = +[UIColor clearColor];
    v20 = [(AllCollectionsViewController *)self collectionView];
    [v20 setBackgroundColor:v19];

    v21 = [(AllCollectionsViewController *)self collectionView];
    [v21 setBounces:1];

    v22 = [(AllCollectionsViewController *)self collectionView];
    [v22 setAlwaysBounceVertical:1];

    v23 = [(AllCollectionsViewController *)self collectionView];
    [v23 setAccessibilityIdentifier:@"AllCollectionsCollectionView"];

    v24 = [(ContaineeViewController *)self contentView];
    v25 = [(AllCollectionsViewController *)self collectionView];
    [v24 addSubview:v25];
  }

  [(AllCollectionsViewController *)self initializeSections];
  [(AllCollectionsViewController *)self initializeDataSource];
  v26 = [(AllCollectionsViewController *)self dataSource];
  [v26 displayAllCollectionsData];
}

- (void)initializeDataSource
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(AllCollectionsViewController *)self apiController];
  v5 = [v4 collectionResults];
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_100C065C8;
  v21 = &unk_10165D7E0;
  v6 = v3;
  v22 = v6;
  [v5 enumerateObjectsUsingBlock:&v18];

  v7 = [(AllCollectionsViewController *)self apiController];
  v8 = [v7 allCollectionViewIdentifiers];

  v9 = [(AllCollectionsViewController *)self dataSource];

  if (v9)
  {
    v10 = [(AllCollectionsViewController *)self dataSource];
    [v10 updateCollections:v6 usingBatchIdentifiers:v8];
  }

  else
  {
    v11 = [(AllCollectionsViewController *)self apiController];
    v10 = [v11 allCollectionViewFilters];

    v12 = [AllCollectionsDataSource alloc];
    v13 = [(AllCollectionsViewController *)self collectionView];
    v14 = [(AllCollectionsViewController *)self sections];
    v15 = [(AllCollectionsViewController *)self apiController];
    v16 = [(AllCollectionsDataSource *)v12 initWithCollectionView:v13 usingCuratedCollections:v6 usingPlaceCollectionIds:v8 withResultFilters:v10 sections:v14 usingAPIController:v15 withRoutingDelegate:self, v18, v19, v20, v21];
    [(AllCollectionsViewController *)self setDataSource:v16];

    v17 = [(AllCollectionsViewController *)self dataSource];
    [v17 setDelegate:self];
  }
}

- (void)initializeSections
{
  v3 = [(AllCollectionsViewController *)self sections];
  v4 = [v3 count];

  if (!v4)
  {
    v17 = [[NSMutableArray alloc] initWithCapacity:2];
    v5 = [AllCollectionsSection alloc];
    v6 = [(AllCollectionsViewController *)self collectionView];
    [v6 frame];
    v8 = v7;
    v9 = [(AllCollectionsViewController *)self collectionView];
    v10 = [(AllCollectionsSection *)v5 initWithSectionIndex:0 usingMaxWidth:v9 usingTraitEnvironment:v8];
    [v17 addObject:v10];

    v11 = [AllCollectionsSection alloc];
    v12 = [(AllCollectionsViewController *)self collectionView];
    [v12 frame];
    v14 = v13;
    v15 = [(AllCollectionsViewController *)self collectionView];
    v16 = [(AllCollectionsSection *)v11 initWithSectionIndex:1 usingMaxWidth:v15 usingTraitEnvironment:v14];
    [v17 addObject:v16];

    [(AllCollectionsViewController *)self setSections:v17];
  }
}

- (void)addHeaderView
{
  v3 = [(AllCollectionsViewController *)self titleHeaderView];

  if (!v3)
  {
    v4 = [[ContainerHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    [(AllCollectionsViewController *)self setTitleHeaderView:v4];

    v5 = [(AllCollectionsViewController *)self titleHeaderView];
    v6 = sub_10000FA08(v5);

    if (v6 == 5)
    {
      v7 = [(AllCollectionsViewController *)self titleHeaderView];
      v8 = [UIFont _preferredFontForTextStyle:UIFontTextStyleTitle3 variant:1024];
      [v7 setCustomTitleFont:v8];
    }

    v9 = [(AllCollectionsViewController *)self titleHeaderView];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

    v10 = [(AllCollectionsViewController *)self titleHeaderView];
    LODWORD(v11) = 1148846080;
    [v10 setContentCompressionResistancePriority:1 forAxis:v11];

    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"All Collections [All Collections View]" value:@"localized string not found" table:0];
    v14 = [(AllCollectionsViewController *)self titleHeaderView];
    [v14 setTitle:v13];

    v15 = [(AllCollectionsViewController *)self titleHeaderView];
    [v15 setDelegate:self];

    v16 = [(AllCollectionsViewController *)self titleHeaderView];
    [v16 setHairLineAlpha:0.0];

    if (sub_10000FA08(self) == 5)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    v18 = [(AllCollectionsViewController *)self titleHeaderView];
    [v18 setHeaderSize:v17];

    v19 = [(AllCollectionsViewController *)self titleHeaderView];
    [v19 setAccessibilityIdentifier:@"AllCollectionsTitleHeaderView"];

    v21 = [(ContaineeViewController *)self headerView];
    v20 = [(AllCollectionsViewController *)self titleHeaderView];
    [v21 addSubview:v20];
  }
}

- (void)onTransitionFromState:(int64_t)a3 toState:(int64_t)a4
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

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      if (a4 != 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (a3 != 3 || a4 != 1)
      {
        goto LABEL_18;
      }

      [(AllCollectionsViewController *)self removeErrorView];
    }

LABEL_17:
    [(AllCollectionsViewController *)self addLoadingView];
    goto LABEL_18;
  }

  if (!a3)
  {
    if (a4 != 1)
    {
      goto LABEL_18;
    }

    [(AllCollectionsViewController *)self addHeaderView];
    [(AllCollectionsViewController *)self activateHeaderConstraints];
    goto LABEL_17;
  }

  if (a3 == 1)
  {
    if (a4 == 3)
    {
      [(AllCollectionsViewController *)self removeLoadingView];
      [(AllCollectionsViewController *)self removeCollectionView];
      [(AllCollectionsViewController *)self addErrorView];
    }

    else if (a4 == 2)
    {
      [(AllCollectionsViewController *)self removeLoadingView];
      [(AllCollectionsViewController *)self addAllCollectionsView];
      v11 = [(AllCollectionsViewController *)self collectionView];
      [(AllCollectionsViewController *)self activateConstraintsForViewPinnedBelowHeader:v11];
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

- (double)heightForLayout:(unint64_t)a3
{
  v5 = sub_10000FA08(self);
  if (a3 != 1 || (result = -1.0, v5 != 5))
  {
    v7.receiver = self;
    v7.super_class = AllCollectionsViewController;
    [(ContaineeViewController *)&v7 heightForLayout:a3];
  }

  return result;
}

- (void)handleDismissAction:(id)a3
{
  v4 = a3;
  v5 = [(AllCollectionsViewController *)self apiController];
  [v5 cancelFetchingAllCollections];

  v6 = [(AllCollectionsViewController *)self dataSource];
  [v6 dismissedCollections];

  v7.receiver = self;
  v7.super_class = AllCollectionsViewController;
  [(ContaineeViewController *)&v7 handleDismissAction:v4];
}

- (void)didChangeLayout:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = AllCollectionsViewController;
  [(ContaineeViewController *)&v6 didChangeLayout:a3];
  v4 = [(AllCollectionsViewController *)self collectionView];

  if (v4)
  {
    [(AllCollectionsViewController *)self resetCollectionViewLayout];
    v5 = [(AllCollectionsViewController *)self collectionView];
    [v5 setContentOffset:{CGPointZero.x, CGPointZero.y}];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = AllCollectionsViewController;
  [(ContaineeViewController *)&v5 viewWillDisappear:a3];
  v4 = [(AllCollectionsViewController *)self apiController];
  [v4 cancelFetchingAllCollections];
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

  v6 = [(AllCollectionsViewController *)self view];
  [v6 setAccessibilityIdentifier:@"AllCollections"];

  v7 = [(AllCollectionsViewController *)self apiController];
  [v7 fetchAllCollectionsViewForKeywordFilter:0 addressFilter:0 onCompletion:&stru_10164D958];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (AllCollectionsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v11.receiver = self;
  v11.super_class = AllCollectionsViewController;
  v4 = [(AllCollectionsViewController *)&v11 initWithNibName:0 bundle:0];
  v5 = v4;
  if (v4)
  {
    v6 = sub_10000FA08(v4);
    v7 = [(ContaineeViewController *)v5 cardPresentationController];
    v8 = v7;
    if (v6 == 5)
    {
      [v7 setAllowResizeInFloatingStyle:1];

      v9 = [(ContaineeViewController *)v5 cardPresentationController];
      [v9 setDefaultContaineeLayout:3];
    }

    else
    {
      [v7 setPresentedModally:1];

      v9 = [(ContaineeViewController *)v5 cardPresentationController];
      [v9 setTakesAvailableHeight:1];
    }
  }

  return v5;
}

@end