@interface CuratedCollectionsListViewController
- (CuratedCollectionsListViewController)initWithCuratedCollections:(id)a3 usingTitle:(id)a4 usingCollectionIds:(id)a5 withTraits:(id)a6;
- (void)addCarouselView;
- (void)addHeaderView;
- (void)collectionsCarouselDidRouteToCollectionId:(id)a3 atIndex:(int64_t)a4 isSaved:(BOOL)a5;
- (void)curatedCollectionSyncManagerDidUpdateSyncedCollections:(id)a3;
- (void)dealloc;
- (void)didChangeLayout:(unint64_t)a3;
- (void)displayCollections;
- (void)handleDismissAction:(id)a3;
- (void)routeToCuratedCollection:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setupConstraints;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CuratedCollectionsListViewController

- (void)curatedCollectionSyncManagerDidUpdateSyncedCollections:(id)a3
{
  v3 = [(CuratedCollectionsListViewController *)self collectionsCarousel];
  [v3 refreshCollections];
}

- (void)collectionsCarouselDidRouteToCollectionId:(id)a3 atIndex:(int64_t)a4 isSaved:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v10 = [(CuratedCollectionsListViewController *)self analyticsManager];
  v9 = [v8 muid];

  [v10 curatedCollectionTappedWithMuid:v9 verticalIndex:a4 isCollectionSaved:v5];
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  v5.receiver = self;
  v5.super_class = CuratedCollectionsListViewController;
  [(ContaineeViewController *)&v5 scrollViewWillEndDragging:a3 withVelocity:a5 targetContentOffset:a4.x, a4.y];
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v3.receiver = self;
  v3.super_class = CuratedCollectionsListViewController;
  [(ContaineeViewController *)&v3 scrollViewWillBeginDragging:a3];
}

- (void)scrollViewDidScroll:(id)a3
{
  v3.receiver = self;
  v3.super_class = CuratedCollectionsListViewController;
  [(ContaineeViewController *)&v3 scrollViewDidScroll:a3];
}

- (void)routeToCuratedCollection:(id)a3
{
  v4 = a3;
  v5 = [(ControlContaineeViewController *)self delegate];
  [v5 viewController:self showCuratedCollection:v4];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = CuratedCollectionsListViewController;
  v7 = a4;
  [(ContaineeViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100C9B6D8;
  v8[3] = &unk_101661710;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

- (void)setupConstraints
{
  v43 = [(CuratedCollectionsListViewController *)self titleHeaderView];
  v41 = [v43 topAnchor];
  v42 = [(ContaineeViewController *)self headerView];
  v40 = [v42 topAnchor];
  v39 = [v41 constraintEqualToAnchor:v40];
  v44[0] = v39;
  v38 = [(CuratedCollectionsListViewController *)self titleHeaderView];
  v36 = [v38 leadingAnchor];
  v37 = [(ContaineeViewController *)self headerView];
  v35 = [v37 leadingAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v44[1] = v34;
  v33 = [(CuratedCollectionsListViewController *)self titleHeaderView];
  v31 = [v33 trailingAnchor];
  v32 = [(ContaineeViewController *)self headerView];
  v30 = [v32 trailingAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v44[2] = v29;
  v28 = [(CuratedCollectionsListViewController *)self titleHeaderView];
  v26 = [v28 bottomAnchor];
  v27 = [(ContaineeViewController *)self headerView];
  v25 = [v27 bottomAnchor];
  v24 = [v26 constraintEqualToAnchor:v25];
  v44[3] = v24;
  v23 = [(CuratedCollectionsListViewController *)self collectionsCarousel];
  v21 = [v23 leadingAnchor];
  v22 = [(ContaineeViewController *)self contentView];
  v20 = [v22 leadingAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v44[4] = v19;
  v18 = [(CuratedCollectionsListViewController *)self collectionsCarousel];
  v16 = [v18 trailingAnchor];
  v17 = [(ContaineeViewController *)self contentView];
  v15 = [v17 trailingAnchor];
  v14 = [v16 constraintEqualToAnchor:v15];
  v44[5] = v14;
  v13 = [(CuratedCollectionsListViewController *)self collectionsCarousel];
  v3 = [v13 topAnchor];
  v4 = [(CuratedCollectionsListViewController *)self titleHeaderView];
  v5 = [v4 bottomAnchor];
  v6 = [v3 constraintEqualToAnchor:v5];
  v44[6] = v6;
  v7 = [(CuratedCollectionsListViewController *)self collectionsCarousel];
  v8 = [v7 bottomAnchor];
  v9 = [(ContaineeViewController *)self contentView];
  v10 = [v9 bottomAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v44[7] = v11;
  v12 = [NSArray arrayWithObjects:v44 count:8];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)addCarouselView
{
  v3 = [MKCollectionsCarouselView alloc];
  v4 = [(CuratedCollectionsListViewController *)self curatedCollections];
  v5 = +[CuratedCollectionSyncManager sharedManager];
  v6 = [v3 initCollectionsCarouselViewWithContext:0 withPlaceCollections:v4 usingSyncCoordinator:v5 withRoutingDelegate:self withScrollViewDelegate:self withAnalyticsDelegate:self exploreGuides:0];
  [(CuratedCollectionsListViewController *)self setCollectionsCarousel:v6];

  v7 = [(CuratedCollectionsListViewController *)self collectionsCarousel];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(CuratedCollectionsListViewController *)self collectionsCarousel];
  v9 = +[UIColor clearColor];
  [v8 setBackgroundColor:v9];

  v10 = [(ContaineeViewController *)self contentView];
  v11 = [(CuratedCollectionsListViewController *)self collectionsCarousel];
  [v10 addSubview:v11];

  [(CuratedCollectionsListViewController *)self setupConstraints];
}

- (void)addHeaderView
{
  v3 = [[ContainerHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(CuratedCollectionsListViewController *)self setTitleHeaderView:v3];

  v4 = [(CuratedCollectionsListViewController *)self titleHeaderView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(CuratedCollectionsListViewController *)self titleHeaderView];
  v6 = sub_10000FA08(v5);

  if (v6 == 5)
  {
    v7 = [(CuratedCollectionsListViewController *)self titleHeaderView];
    v8 = [UIFont _preferredFontForTextStyle:UIFontTextStyleTitle3 variant:1024];
    [v7 setCustomTitleFont:v8];
  }

  v9 = [(CuratedCollectionsListViewController *)self titleHeaderView];
  LODWORD(v10) = 1148846080;
  [v9 setContentCompressionResistancePriority:1 forAxis:v10];

  v11 = [(CuratedCollectionsListViewController *)self titleHeaderView];
  [v11 setDelegate:self];

  v12 = [(CuratedCollectionsListViewController *)self cardTitle];

  if (v12)
  {
    v13 = [(CuratedCollectionsListViewController *)self cardTitle];
    v14 = [(CuratedCollectionsListViewController *)self titleHeaderView];
    [v14 setTitle:v13];
  }

  else
  {
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"[Curated Guides] Featured In" value:@"localized string not found" table:0];
    v15 = [(CuratedCollectionsListViewController *)self curatedCollections];
    v16 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v14, [v15 count]);
    v17 = [(CuratedCollectionsListViewController *)self titleHeaderView];
    [v17 setTitle:v16];
  }

  v18 = [(CuratedCollectionsListViewController *)self titleHeaderView];
  [v18 setHeaderSize:1];

  v19 = [(CuratedCollectionsListViewController *)self titleHeaderView];
  [v19 setHairLineAlpha:0.0];

  v21 = [(ContaineeViewController *)self headerView];
  v20 = [(CuratedCollectionsListViewController *)self titleHeaderView];
  [v21 addSubview:v20];
}

- (void)displayCollections
{
  v3 = sub_100C9C090();
  v4 = os_signpost_id_generate(v3);

  v5 = sub_100C9C090();
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "DisplayingCarouselCollections", "", buf, 2u);
  }

  v7 = [(CuratedCollectionsListViewController *)self collectionsCarousel];
  v8 = [(CuratedCollectionsListViewController *)self collectionIds];
  v9 = [(CuratedCollectionsListViewController *)self guideFetcher];
  [v7 displayCollectionsUsingBatchIds:v8 usingGuideFetcher:v9];

  v10 = sub_100C9C090();
  v11 = v10;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v12 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, v4, "DisplayingCarouselCollections", "", v12, 2u);
  }
}

- (void)didChangeLayout:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = CuratedCollectionsListViewController;
  [(ContaineeViewController *)&v6 didChangeLayout:a3];
  v4 = [(CuratedCollectionsListViewController *)self collectionsCarousel];

  if (v4)
  {
    v5 = [(CuratedCollectionsListViewController *)self collectionsCarousel];
    [v5 resetCollectionsLayout];
  }
}

- (void)handleDismissAction:(id)a3
{
  v4 = a3;
  v5 = [(CuratedCollectionsListViewController *)self collectionsCarousel];
  [v5 dismissedCollections];

  v6.receiver = self;
  v6.super_class = CuratedCollectionsListViewController;
  [(ContaineeViewController *)&v6 handleDismissAction:v4];
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = CuratedCollectionsListViewController;
  [(ContaineeViewController *)&v10 viewDidLoad];
  v3 = sub_100C9C090();
  v4 = os_signpost_id_generate(v3);

  v5 = sub_100C9C090();
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "DisplayingCuratedCollectionsListView", "", v9, 2u);
  }

  [(CuratedCollectionsListViewController *)self addHeaderView];
  [(CuratedCollectionsListViewController *)self addCarouselView];
  v7 = sub_100C9C090();
  v8 = v7;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v4, "DisplayingCuratedCollectionsListView", "", v9, 2u);
  }
}

- (void)dealloc
{
  v3 = +[CuratedCollectionSyncManager sharedManager];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CuratedCollectionsListViewController;
  [(CuratedCollectionsListViewController *)&v4 dealloc];
}

- (CuratedCollectionsListViewController)initWithCuratedCollections:(id)a3 usingTitle:(id)a4 usingCollectionIds:(id)a5 withTraits:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v25.receiver = self;
  v25.super_class = CuratedCollectionsListViewController;
  v15 = [(CuratedCollectionsListViewController *)&v25 initWithNibName:0 bundle:0];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_curatedCollections, a3);
    objc_storeStrong(&v16->_cardTitle, a4);
    objc_storeStrong(&v16->_collectionIds, a5);
    objc_storeStrong(&v16->_traits, a6);
    v17 = [[CuratedCollectionsListFetcher alloc] initWithTraits:v16->_traits];
    guideFetcher = v16->_guideFetcher;
    v16->_guideFetcher = v17;

    v19 = [(ContaineeViewController *)v16 cardPresentationController];
    [v19 setPresentedModally:1];

    v20 = [(ContaineeViewController *)v16 cardPresentationController];
    [v20 setTakesAvailableHeight:1];

    v21 = objc_alloc_init(CuratedCollectionsListAnalyticsManager);
    analyticsManager = v16->_analyticsManager;
    v16->_analyticsManager = v21;

    v23 = +[CuratedCollectionSyncManager sharedManager];
    [v23 addObserver:v16];
  }

  return v16;
}

@end