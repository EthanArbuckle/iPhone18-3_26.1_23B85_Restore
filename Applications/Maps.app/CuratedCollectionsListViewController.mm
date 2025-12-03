@interface CuratedCollectionsListViewController
- (CuratedCollectionsListViewController)initWithCuratedCollections:(id)collections usingTitle:(id)title usingCollectionIds:(id)ids withTraits:(id)traits;
- (void)addCarouselView;
- (void)addHeaderView;
- (void)collectionsCarouselDidRouteToCollectionId:(id)id atIndex:(int64_t)index isSaved:(BOOL)saved;
- (void)curatedCollectionSyncManagerDidUpdateSyncedCollections:(id)collections;
- (void)dealloc;
- (void)didChangeLayout:(unint64_t)layout;
- (void)displayCollections;
- (void)handleDismissAction:(id)action;
- (void)routeToCuratedCollection:(id)collection;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setupConstraints;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CuratedCollectionsListViewController

- (void)curatedCollectionSyncManagerDidUpdateSyncedCollections:(id)collections
{
  collectionsCarousel = [(CuratedCollectionsListViewController *)self collectionsCarousel];
  [collectionsCarousel refreshCollections];
}

- (void)collectionsCarouselDidRouteToCollectionId:(id)id atIndex:(int64_t)index isSaved:(BOOL)saved
{
  savedCopy = saved;
  idCopy = id;
  analyticsManager = [(CuratedCollectionsListViewController *)self analyticsManager];
  muid = [idCopy muid];

  [analyticsManager curatedCollectionTappedWithMuid:muid verticalIndex:index isCollectionSaved:savedCopy];
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  v5.receiver = self;
  v5.super_class = CuratedCollectionsListViewController;
  [(ContaineeViewController *)&v5 scrollViewWillEndDragging:dragging withVelocity:offset targetContentOffset:velocity.x, velocity.y];
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  v3.receiver = self;
  v3.super_class = CuratedCollectionsListViewController;
  [(ContaineeViewController *)&v3 scrollViewWillBeginDragging:dragging];
}

- (void)scrollViewDidScroll:(id)scroll
{
  v3.receiver = self;
  v3.super_class = CuratedCollectionsListViewController;
  [(ContaineeViewController *)&v3 scrollViewDidScroll:scroll];
}

- (void)routeToCuratedCollection:(id)collection
{
  collectionCopy = collection;
  delegate = [(ControlContaineeViewController *)self delegate];
  [delegate viewController:self showCuratedCollection:collectionCopy];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = CuratedCollectionsListViewController;
  coordinatorCopy = coordinator;
  [(ContaineeViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100C9B6D8;
  v8[3] = &unk_101661710;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

- (void)setupConstraints
{
  titleHeaderView = [(CuratedCollectionsListViewController *)self titleHeaderView];
  topAnchor = [titleHeaderView topAnchor];
  headerView = [(ContaineeViewController *)self headerView];
  topAnchor2 = [headerView topAnchor];
  v39 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v44[0] = v39;
  titleHeaderView2 = [(CuratedCollectionsListViewController *)self titleHeaderView];
  leadingAnchor = [titleHeaderView2 leadingAnchor];
  headerView2 = [(ContaineeViewController *)self headerView];
  leadingAnchor2 = [headerView2 leadingAnchor];
  v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v44[1] = v34;
  titleHeaderView3 = [(CuratedCollectionsListViewController *)self titleHeaderView];
  trailingAnchor = [titleHeaderView3 trailingAnchor];
  headerView3 = [(ContaineeViewController *)self headerView];
  trailingAnchor2 = [headerView3 trailingAnchor];
  v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v44[2] = v29;
  titleHeaderView4 = [(CuratedCollectionsListViewController *)self titleHeaderView];
  bottomAnchor = [titleHeaderView4 bottomAnchor];
  headerView4 = [(ContaineeViewController *)self headerView];
  bottomAnchor2 = [headerView4 bottomAnchor];
  v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v44[3] = v24;
  collectionsCarousel = [(CuratedCollectionsListViewController *)self collectionsCarousel];
  leadingAnchor3 = [collectionsCarousel leadingAnchor];
  contentView = [(ContaineeViewController *)self contentView];
  leadingAnchor4 = [contentView leadingAnchor];
  v19 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v44[4] = v19;
  collectionsCarousel2 = [(CuratedCollectionsListViewController *)self collectionsCarousel];
  trailingAnchor3 = [collectionsCarousel2 trailingAnchor];
  contentView2 = [(ContaineeViewController *)self contentView];
  trailingAnchor4 = [contentView2 trailingAnchor];
  v14 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v44[5] = v14;
  collectionsCarousel3 = [(CuratedCollectionsListViewController *)self collectionsCarousel];
  topAnchor3 = [collectionsCarousel3 topAnchor];
  titleHeaderView5 = [(CuratedCollectionsListViewController *)self titleHeaderView];
  bottomAnchor3 = [titleHeaderView5 bottomAnchor];
  v6 = [topAnchor3 constraintEqualToAnchor:bottomAnchor3];
  v44[6] = v6;
  collectionsCarousel4 = [(CuratedCollectionsListViewController *)self collectionsCarousel];
  bottomAnchor4 = [collectionsCarousel4 bottomAnchor];
  contentView3 = [(ContaineeViewController *)self contentView];
  bottomAnchor5 = [contentView3 bottomAnchor];
  v11 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  v44[7] = v11;
  v12 = [NSArray arrayWithObjects:v44 count:8];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)addCarouselView
{
  v3 = [MKCollectionsCarouselView alloc];
  curatedCollections = [(CuratedCollectionsListViewController *)self curatedCollections];
  v5 = +[CuratedCollectionSyncManager sharedManager];
  v6 = [v3 initCollectionsCarouselViewWithContext:0 withPlaceCollections:curatedCollections usingSyncCoordinator:v5 withRoutingDelegate:self withScrollViewDelegate:self withAnalyticsDelegate:self exploreGuides:0];
  [(CuratedCollectionsListViewController *)self setCollectionsCarousel:v6];

  collectionsCarousel = [(CuratedCollectionsListViewController *)self collectionsCarousel];
  [collectionsCarousel setTranslatesAutoresizingMaskIntoConstraints:0];

  collectionsCarousel2 = [(CuratedCollectionsListViewController *)self collectionsCarousel];
  v9 = +[UIColor clearColor];
  [collectionsCarousel2 setBackgroundColor:v9];

  contentView = [(ContaineeViewController *)self contentView];
  collectionsCarousel3 = [(CuratedCollectionsListViewController *)self collectionsCarousel];
  [contentView addSubview:collectionsCarousel3];

  [(CuratedCollectionsListViewController *)self setupConstraints];
}

- (void)addHeaderView
{
  v3 = [[ContainerHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(CuratedCollectionsListViewController *)self setTitleHeaderView:v3];

  titleHeaderView = [(CuratedCollectionsListViewController *)self titleHeaderView];
  [titleHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];

  titleHeaderView2 = [(CuratedCollectionsListViewController *)self titleHeaderView];
  v6 = sub_10000FA08(titleHeaderView2);

  if (v6 == 5)
  {
    titleHeaderView3 = [(CuratedCollectionsListViewController *)self titleHeaderView];
    v8 = [UIFont _preferredFontForTextStyle:UIFontTextStyleTitle3 variant:1024];
    [titleHeaderView3 setCustomTitleFont:v8];
  }

  titleHeaderView4 = [(CuratedCollectionsListViewController *)self titleHeaderView];
  LODWORD(v10) = 1148846080;
  [titleHeaderView4 setContentCompressionResistancePriority:1 forAxis:v10];

  titleHeaderView5 = [(CuratedCollectionsListViewController *)self titleHeaderView];
  [titleHeaderView5 setDelegate:self];

  cardTitle = [(CuratedCollectionsListViewController *)self cardTitle];

  if (cardTitle)
  {
    cardTitle2 = [(CuratedCollectionsListViewController *)self cardTitle];
    titleHeaderView6 = [(CuratedCollectionsListViewController *)self titleHeaderView];
    [titleHeaderView6 setTitle:cardTitle2];
  }

  else
  {
    cardTitle2 = +[NSBundle mainBundle];
    titleHeaderView6 = [cardTitle2 localizedStringForKey:@"[Curated Guides] Featured In" value:@"localized string not found" table:0];
    curatedCollections = [(CuratedCollectionsListViewController *)self curatedCollections];
    v16 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", titleHeaderView6, [curatedCollections count]);
    titleHeaderView7 = [(CuratedCollectionsListViewController *)self titleHeaderView];
    [titleHeaderView7 setTitle:v16];
  }

  titleHeaderView8 = [(CuratedCollectionsListViewController *)self titleHeaderView];
  [titleHeaderView8 setHeaderSize:1];

  titleHeaderView9 = [(CuratedCollectionsListViewController *)self titleHeaderView];
  [titleHeaderView9 setHairLineAlpha:0.0];

  headerView = [(ContaineeViewController *)self headerView];
  titleHeaderView10 = [(CuratedCollectionsListViewController *)self titleHeaderView];
  [headerView addSubview:titleHeaderView10];
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

  collectionsCarousel = [(CuratedCollectionsListViewController *)self collectionsCarousel];
  collectionIds = [(CuratedCollectionsListViewController *)self collectionIds];
  guideFetcher = [(CuratedCollectionsListViewController *)self guideFetcher];
  [collectionsCarousel displayCollectionsUsingBatchIds:collectionIds usingGuideFetcher:guideFetcher];

  v10 = sub_100C9C090();
  v11 = v10;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v12 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, v4, "DisplayingCarouselCollections", "", v12, 2u);
  }
}

- (void)didChangeLayout:(unint64_t)layout
{
  v6.receiver = self;
  v6.super_class = CuratedCollectionsListViewController;
  [(ContaineeViewController *)&v6 didChangeLayout:layout];
  collectionsCarousel = [(CuratedCollectionsListViewController *)self collectionsCarousel];

  if (collectionsCarousel)
  {
    collectionsCarousel2 = [(CuratedCollectionsListViewController *)self collectionsCarousel];
    [collectionsCarousel2 resetCollectionsLayout];
  }
}

- (void)handleDismissAction:(id)action
{
  actionCopy = action;
  collectionsCarousel = [(CuratedCollectionsListViewController *)self collectionsCarousel];
  [collectionsCarousel dismissedCollections];

  v6.receiver = self;
  v6.super_class = CuratedCollectionsListViewController;
  [(ContaineeViewController *)&v6 handleDismissAction:actionCopy];
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

- (CuratedCollectionsListViewController)initWithCuratedCollections:(id)collections usingTitle:(id)title usingCollectionIds:(id)ids withTraits:(id)traits
{
  collectionsCopy = collections;
  titleCopy = title;
  idsCopy = ids;
  traitsCopy = traits;
  v25.receiver = self;
  v25.super_class = CuratedCollectionsListViewController;
  v15 = [(CuratedCollectionsListViewController *)&v25 initWithNibName:0 bundle:0];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_curatedCollections, collections);
    objc_storeStrong(&v16->_cardTitle, title);
    objc_storeStrong(&v16->_collectionIds, ids);
    objc_storeStrong(&v16->_traits, traits);
    v17 = [[CuratedCollectionsListFetcher alloc] initWithTraits:v16->_traits];
    guideFetcher = v16->_guideFetcher;
    v16->_guideFetcher = v17;

    cardPresentationController = [(ContaineeViewController *)v16 cardPresentationController];
    [cardPresentationController setPresentedModally:1];

    cardPresentationController2 = [(ContaineeViewController *)v16 cardPresentationController];
    [cardPresentationController2 setTakesAvailableHeight:1];

    v21 = objc_alloc_init(CuratedCollectionsListAnalyticsManager);
    analyticsManager = v16->_analyticsManager;
    v16->_analyticsManager = v21;

    v23 = +[CuratedCollectionSyncManager sharedManager];
    [v23 addObserver:v16];
  }

  return v16;
}

@end