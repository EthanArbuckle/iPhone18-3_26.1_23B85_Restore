@interface PublisherViewController
- (GEOPublisher)publisher;
- (PublisherViewController)initWithPublisherId:(id)id numberOfCollections:(unint64_t)collections withTraits:(id)traits;
- (PublisherViewControllerDelegate)actionDelegate;
- (ShareDelegate)shareDelegate;
- (double)heightForLayout:(unint64_t)layout;
- (void)activateConstraints;
- (void)activateConstraintsForViewPinnedBelowHeader:(id)header;
- (void)activateDefaultHeaderConstraints;
- (void)addCollectionView;
- (void)addDefaultHeaderView;
- (void)addErrorView;
- (void)addLoadingView;
- (void)addPublisherHeaderView;
- (void)didChangeLayout:(unint64_t)layout;
- (void)didSelectAllGuidesMenuItem;
- (void)didSelectAppItem;
- (void)didSelectShareFromView:(id)view;
- (void)didSelectWebsiteItem;
- (void)handleDismissAction:(id)action;
- (void)onTransitionFromState:(int64_t)state toState:(int64_t)toState;
- (void)removeCollectionView;
- (void)removeDefaultHeaderView;
- (void)removeErrorView;
- (void)removeLoadingView;
- (void)resetCollectionViewLayout;
- (void)routeToCuratedCollection:(id)collection;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willDismissByGesture;
@end

@implementation PublisherViewController

- (PublisherViewControllerDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (ShareDelegate)shareDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_shareDelegate);

  return WeakRetained;
}

- (void)didSelectAppItem
{
  v11 = objc_alloc_init(NSNumberFormatter);
  [v11 setNumberStyle:1];
  publisher = [(PublisherViewController *)self publisher];
  publisherAttribution = [publisher publisherAttribution];
  applicationAdamId = [publisherAttribution applicationAdamId];
  v6 = [v11 numberFromString:applicationAdamId];

  v7 = [[LSApplicationRecord alloc] initWithStoreItemIdentifier:objc_msgSend(v6 error:{"longLongValue"), 0}];
  applicationState = [v7 applicationState];
  LODWORD(applicationAdamId) = [applicationState isInstalled];

  if (applicationAdamId)
  {
    actionDelegate = +[LSApplicationWorkspace defaultWorkspace];
    bundleIdentifier = [v7 bundleIdentifier];
    [actionDelegate openApplicationWithBundleID:bundleIdentifier];
  }

  else
  {
    actionDelegate = [(PublisherViewController *)self actionDelegate];
    [actionDelegate publisherViewController:self openAppWithAdamId:v6];
  }
}

- (void)didSelectWebsiteItem
{
  publisher = [(PublisherViewController *)self publisher];
  publisherAttribution = [publisher publisherAttribution];
  websiteURL = [publisherAttribution websiteURL];

  actionDelegate = [(PublisherViewController *)self actionDelegate];
  [actionDelegate publisherViewController:self openURL:websiteURL];
}

- (void)didSelectShareFromView:(id)view
{
  viewCopy = view;
  v5 = [CuratedCollectionShareItemSource alloc];
  publisher = [(PublisherViewController *)self publisher];
  v9 = [(CuratedCollectionShareItemSource *)v5 initWithPublisher:publisher];

  v7 = [MUPresentationOptions optionsWithSender:viewCopy];

  shareDelegate = [(PublisherViewController *)self shareDelegate];
  [shareDelegate shareItem:v9 presentationOptions:v7 completion:0];
}

- (void)didSelectAllGuidesMenuItem
{
  if (sub_10000FA08(self) == 5)
  {
    actionDelegate = [(PublisherViewController *)self actionDelegate];
    [actionDelegate publisherViewControllerShowAllGuides:self];
  }
}

- (void)routeToCuratedCollection:(id)collection
{
  collectionCopy = collection;
  actionDelegate = [(PublisherViewController *)self actionDelegate];
  [actionDelegate publisherViewController:self showCuratedGuide:collectionCopy];
}

- (void)resetCollectionViewLayout
{
  collectionView = [(PublisherViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout invalidateLayout];

  v5 = objc_alloc_init(UICollectionViewFlowLayout);
  [(PublisherViewController *)self setFlowLayout:v5];

  flowLayout = [(PublisherViewController *)self flowLayout];
  [flowLayout setScrollDirection:0];

  flowLayout2 = [(PublisherViewController *)self flowLayout];
  collectionView2 = [(PublisherViewController *)self collectionView];
  [collectionView2 setCollectionViewLayout:flowLayout2];
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController cardHeight];
  v7 = v6;
  [(PublisherViewController *)self actualCardHeight];
  v9 = v8;

  if (v7 >= v9)
  {
    [scrollCopy contentOffset];
    v11 = v10;
    headerHeightConstraint = [(PublisherViewController *)self headerHeightConstraint];
    [headerHeightConstraint constant];
    v14 = v13 - v11;

    publisherHeaderView = [(PublisherViewController *)self publisherHeaderView];
    [publisherHeaderView maximumRequiredHeight];
    v17 = v16;

    publisherHeaderView2 = [(PublisherViewController *)self publisherHeaderView];
    [publisherHeaderView2 minimumRequiredHeight];
    v20 = v19;

    if (v14 <= v17)
    {
      publisherHeaderView3 = [(PublisherViewController *)self publisherHeaderView];
      [publisherHeaderView3 headerHeightChangedWithNewYOffset:v11];

      if (v14 >= v20)
      {
        [scrollCopy contentOffset];
        [scrollCopy setContentOffset:?];
        v20 = v14;
      }
    }

    else
    {
      publisherHeaderView4 = [(PublisherViewController *)self publisherHeaderView];
      [publisherHeaderView4 headerHeightChangedWithNewYOffset:v11];

      v26.receiver = self;
      v26.super_class = PublisherViewController;
      [(ContaineeViewController *)&v26 scrollViewDidScroll:scrollCopy];
      v20 = v17;
    }

    headerHeightConstraint2 = [(PublisherViewController *)self headerHeightConstraint];
    [headerHeightConstraint2 setConstant:v20];

    publisherHeaderView5 = [(PublisherViewController *)self publisherHeaderView];
    headerHeightConstraint3 = [(PublisherViewController *)self headerHeightConstraint];
    [headerHeightConstraint3 constant];
    [publisherHeaderView5 adjustLogoImageViewTopConstraint:?];
  }

  else
  {
    v27.receiver = self;
    v27.super_class = PublisherViewController;
    [(ContaineeViewController *)&v27 scrollViewDidScroll:scrollCopy];
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  v9.receiver = self;
  v9.super_class = PublisherViewController;
  [(ContaineeViewController *)&v9 scrollViewWillEndDragging:dragging withVelocity:offset targetContentOffset:velocity.x];
  analyticsManager = [(PublisherViewController *)self analyticsManager];
  v8 = analyticsManager;
  if (y > 0.0)
  {
    [analyticsManager publisherCollectionsScrolledDown];
  }

  else
  {
    [analyticsManager publisherCollectionsScrolledUp];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v10.receiver = self;
  v10.super_class = PublisherViewController;
  coordinatorCopy = coordinator;
  [(ContaineeViewController *)&v10 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[4] = self;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100F37860;
  v9[3] = &unk_101661710;
  v9[4] = self;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100F37868;
  v8[3] = &unk_101661710;
  [coordinatorCopy animateAlongsideTransition:v9 completion:v8];
}

- (void)traitCollectionDidChange:(id)change
{
  v16.receiver = self;
  v16.super_class = PublisherViewController;
  changeCopy = change;
  [(MapsThemeViewController *)&v16 traitCollectionDidChange:changeCopy];
  v5 = [(PublisherViewController *)self traitCollection:v16.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  v8 = sub_10008FB5C(preferredContentSizeCategory, preferredContentSizeCategory2);
  if (v8)
  {
    collectionView = [(PublisherViewController *)self collectionView];
    collectionViewLayout = [collectionView collectionViewLayout];
    [collectionViewLayout invalidateLayout];

    v11 = objc_alloc_init(UICollectionViewFlowLayout);
    [(PublisherViewController *)self setFlowLayout:v11];

    flowLayout = [(PublisherViewController *)self flowLayout];
    [flowLayout setScrollDirection:0];

    flowLayout2 = [(PublisherViewController *)self flowLayout];
    collectionView2 = [(PublisherViewController *)self collectionView];
    [collectionView2 setCollectionViewLayout:flowLayout2];

    collectionView3 = [(PublisherViewController *)self collectionView];
    [collectionView3 reloadData];
  }
}

- (void)removeCollectionView
{
  collectionView = [(PublisherViewController *)self collectionView];

  if (collectionView)
  {
    collectionView2 = [(PublisherViewController *)self collectionView];
    [collectionView2 removeFromSuperview];

    [(PublisherViewController *)self setCollectionView:0];

    [(PublisherViewController *)self setDataSource:0];
  }
}

- (void)removeErrorView
{
  errorView = [(PublisherViewController *)self errorView];

  if (errorView)
  {
    errorView2 = [(PublisherViewController *)self errorView];
    [errorView2 removeFromSuperview];

    [(PublisherViewController *)self setErrorView:0];
  }
}

- (void)addErrorView
{
  errorView = [(PublisherViewController *)self errorView];

  if (!errorView)
  {
    dataSource = [(PublisherViewController *)self dataSource];
    [dataSource clearPublisherData];

    v5 = objc_alloc_init(ErrorModeView);
    [(PublisherViewController *)self setErrorView:v5];

    apiController = [(PublisherViewController *)self apiController];
    publisherResult = [apiController publisherResult];
    publisher = [publisherResult publisher];
    LODWORD(v5) = [publisher isSuppressed];
    v9 = +[NSBundle mainBundle];
    v10 = v9;
    if (v5)
    {
      v11 = @"[Brooklyn] Error Mode featue unavailable";
    }

    else
    {
      v11 = @"[Brooklyn] Error Mode title";
    }

    v12 = [v9 localizedStringForKey:v11 value:@"localized string not found" table:0];

    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"[Brooklyn] Error Mode message" value:@"localized string not found" table:0];

    v15 = MKCurrentNetworkConnectionFailureDiagnosis();
    errorView2 = [(PublisherViewController *)self errorView];
    v17 = errorView2;
    if (v15)
    {
      [errorView2 setTitle:v12 andMessage:v14];

      objc_initWeak(&location, self);
      errorView3 = [(PublisherViewController *)self errorView];
      v19 = +[NSBundle mainBundle];
      v20 = [v19 localizedStringForKey:@"Try Again [Brooklyn]" value:@"localized string not found" table:0];
      v21 = +[UIColor systemGray5Color];
      v28 = _NSConcreteStackBlock;
      v29 = 3221225472;
      v30 = sub_100F37E68;
      v31 = &unk_10165D828;
      objc_copyWeak(&v32, &location);
      [errorView3 setButtonTitle:v20 glyphName:@"arrow.clockwise" backgroundColor:v21 handler:&v28];

      objc_destroyWeak(&v32);
      objc_destroyWeak(&location);
    }

    else
    {
      v22 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubhead];
      [v17 setTitleLabelFont:v22];

      errorView4 = [(PublisherViewController *)self errorView];
      [errorView4 setTitle:v12 andMessage:0];
    }

    v24 = [(PublisherViewController *)self errorView:v28];
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];

    contentView = [(ContaineeViewController *)self contentView];
    errorView5 = [(PublisherViewController *)self errorView];
    [contentView addSubview:errorView5];

    errorView6 = [(PublisherViewController *)self errorView];
    [(PublisherViewController *)self activateConstraintsForViewPinnedBelowHeader:errorView6];
  }
}

- (void)removeLoadingView
{
  loadingView = [(PublisherViewController *)self loadingView];

  if (loadingView)
  {
    loadingView2 = [(PublisherViewController *)self loadingView];
    [loadingView2 removeFromSuperview];

    [(PublisherViewController *)self setLoadingView:0];
  }
}

- (void)addLoadingView
{
  objc_initWeak(&location, self);
  v2 = dispatch_time(0, 200000000);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100F38048;
  v3[3] = &unk_101661B98;
  objc_copyWeak(&v4, &location);
  dispatch_after(v2, &_dispatch_main_q, v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)activateConstraintsForViewPinnedBelowHeader:(id)header
{
  headerCopy = header;
  publisherHeaderView = [(PublisherViewController *)self publisherHeaderView];
  if (publisherHeaderView)
  {
    [(PublisherViewController *)self publisherHeaderView];
  }

  else
  {
    [(ContaineeViewController *)self headerView];
  }
  v18 = ;

  leadingAnchor = [headerCopy leadingAnchor];
  contentView = [(ContaineeViewController *)self contentView];
  leadingAnchor2 = [contentView leadingAnchor];
  v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v23[0] = v19;
  trailingAnchor = [headerCopy trailingAnchor];
  contentView2 = [(ContaineeViewController *)self contentView];
  trailingAnchor2 = [contentView2 trailingAnchor];
  v7 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v23[1] = v7;
  topAnchor = [headerCopy topAnchor];
  bottomAnchor = [v18 bottomAnchor];
  v10 = [topAnchor constraintEqualToAnchor:bottomAnchor];
  v23[2] = v10;
  bottomAnchor2 = [headerCopy bottomAnchor];

  contentView3 = [(ContaineeViewController *)self contentView];
  bottomAnchor3 = [contentView3 bottomAnchor];
  v14 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v23[3] = v14;
  v15 = [NSArray arrayWithObjects:v23 count:4];
  [NSLayoutConstraint activateConstraints:v15];
}

- (void)removeDefaultHeaderView
{
  headerView = [(ContaineeViewController *)self headerView];
  [headerView removeFromSuperview];

  contentView = [(ContaineeViewController *)self contentView];
  topAnchor = [contentView topAnchor];
  view = [(PublisherViewController *)self view];
  topAnchor2 = [view topAnchor];
  v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v25[0] = v20;
  contentView2 = [(ContaineeViewController *)self contentView];
  leadingAnchor = [contentView2 leadingAnchor];
  view2 = [(PublisherViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v25[1] = v15;
  contentView3 = [(ContaineeViewController *)self contentView];
  trailingAnchor = [contentView3 trailingAnchor];
  view3 = [(PublisherViewController *)self view];
  trailingAnchor2 = [view3 trailingAnchor];
  v7 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v25[2] = v7;
  contentView4 = [(ContaineeViewController *)self contentView];
  bottomAnchor = [contentView4 bottomAnchor];
  view4 = [(PublisherViewController *)self view];
  bottomAnchor2 = [view4 bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v25[3] = v12;
  v13 = [NSArray arrayWithObjects:v25 count:4];
  [NSLayoutConstraint activateConstraints:v13];
}

- (void)activateDefaultHeaderConstraints
{
  defaultHeaderView = [(PublisherViewController *)self defaultHeaderView];
  topAnchor = [defaultHeaderView topAnchor];
  headerView = [(ContaineeViewController *)self headerView];
  topAnchor2 = [headerView topAnchor];
  v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v24[0] = v19;
  defaultHeaderView2 = [(PublisherViewController *)self defaultHeaderView];
  leadingAnchor = [defaultHeaderView2 leadingAnchor];
  headerView2 = [(ContaineeViewController *)self headerView];
  leadingAnchor2 = [headerView2 leadingAnchor];
  v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v24[1] = v14;
  defaultHeaderView3 = [(PublisherViewController *)self defaultHeaderView];
  trailingAnchor = [defaultHeaderView3 trailingAnchor];
  headerView3 = [(ContaineeViewController *)self headerView];
  trailingAnchor2 = [headerView3 trailingAnchor];
  v6 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v24[2] = v6;
  defaultHeaderView4 = [(PublisherViewController *)self defaultHeaderView];
  bottomAnchor = [defaultHeaderView4 bottomAnchor];
  headerView4 = [(ContaineeViewController *)self headerView];
  bottomAnchor2 = [headerView4 bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v24[3] = v11;
  v12 = [NSArray arrayWithObjects:v24 count:4];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)addDefaultHeaderView
{
  defaultHeaderView = [(PublisherViewController *)self defaultHeaderView];

  if (!defaultHeaderView)
  {
    v4 = [[ContainerHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    [(PublisherViewController *)self setDefaultHeaderView:v4];

    defaultHeaderView2 = [(PublisherViewController *)self defaultHeaderView];
    [defaultHeaderView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    defaultHeaderView3 = [(PublisherViewController *)self defaultHeaderView];
    LODWORD(v7) = 1148846080;
    [defaultHeaderView3 setContentCompressionResistancePriority:1 forAxis:v7];

    defaultHeaderView4 = [(PublisherViewController *)self defaultHeaderView];
    [defaultHeaderView4 setDelegate:self];

    defaultHeaderView5 = [(PublisherViewController *)self defaultHeaderView];
    [defaultHeaderView5 setHairLineAlpha:0.0];

    defaultHeaderView6 = [(PublisherViewController *)self defaultHeaderView];
    [defaultHeaderView6 setHeaderSize:2];

    headerView = [(ContaineeViewController *)self headerView];
    defaultHeaderView7 = [(PublisherViewController *)self defaultHeaderView];
    [headerView addSubview:defaultHeaderView7];
  }
}

- (void)activateConstraints
{
  publisherHeaderView = [(PublisherViewController *)self publisherHeaderView];
  heightAnchor = [publisherHeaderView heightAnchor];
  publisherHeaderView2 = [(PublisherViewController *)self publisherHeaderView];
  [publisherHeaderView2 maximumRequiredHeight];
  v6 = [heightAnchor constraintEqualToConstant:?];
  [(PublisherViewController *)self setHeaderHeightConstraint:v6];

  v45 = objc_alloc_init(NSMutableArray);
  collectionView = [(PublisherViewController *)self collectionView];
  leadingAnchor = [collectionView leadingAnchor];
  contentView = [(ContaineeViewController *)self contentView];
  leadingAnchor2 = [contentView leadingAnchor];
  v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v47[0] = v35;
  collectionView2 = [(PublisherViewController *)self collectionView];
  trailingAnchor = [collectionView2 trailingAnchor];
  contentView2 = [(ContaineeViewController *)self contentView];
  trailingAnchor2 = [contentView2 trailingAnchor];
  v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v47[1] = v27;
  collectionView3 = [(PublisherViewController *)self collectionView];
  topAnchor = [collectionView3 topAnchor];
  publisherHeaderView3 = [(PublisherViewController *)self publisherHeaderView];
  bottomAnchor = [publisherHeaderView3 bottomAnchor];
  v9 = [topAnchor constraintEqualToAnchor:bottomAnchor];
  v47[2] = v9;
  collectionView4 = [(PublisherViewController *)self collectionView];
  bottomAnchor2 = [collectionView4 bottomAnchor];
  contentView3 = [(ContaineeViewController *)self contentView];
  bottomAnchor3 = [contentView3 bottomAnchor];
  v14 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v47[3] = v14;
  v15 = [NSArray arrayWithObjects:v47 count:4];
  [v45 addObjectsFromArray:v15];

  publisherHeaderView4 = [(PublisherViewController *)self publisherHeaderView];
  topAnchor2 = [publisherHeaderView4 topAnchor];
  contentView4 = [(ContaineeViewController *)self contentView];
  topAnchor3 = [contentView4 topAnchor];
  v36 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
  v46[0] = v36;
  publisherHeaderView5 = [(PublisherViewController *)self publisherHeaderView];
  leadingAnchor3 = [publisherHeaderView5 leadingAnchor];
  contentView5 = [(ContaineeViewController *)self contentView];
  leadingAnchor4 = [contentView5 leadingAnchor];
  v17 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v46[1] = v17;
  publisherHeaderView6 = [(PublisherViewController *)self publisherHeaderView];
  trailingAnchor3 = [publisherHeaderView6 trailingAnchor];
  contentView6 = [(ContaineeViewController *)self contentView];
  trailingAnchor4 = [contentView6 trailingAnchor];
  v22 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v46[2] = v22;
  headerHeightConstraint = [(PublisherViewController *)self headerHeightConstraint];
  v46[3] = headerHeightConstraint;
  v24 = [NSArray arrayWithObjects:v46 count:4];
  [v45 addObjectsFromArray:v24];

  [NSLayoutConstraint activateConstraints:v45];
}

- (void)addCollectionView
{
  v3 = objc_alloc_init(NSMutableArray);
  apiController = [(PublisherViewController *)self apiController];
  collectionResults = [apiController collectionResults];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_100F39348;
  v46[3] = &unk_10165D7E0;
  v6 = v3;
  v47 = v6;
  [collectionResults enumerateObjectsUsingBlock:v46];

  apiController2 = [(PublisherViewController *)self apiController];
  publisherViewIdentifiers = [apiController2 publisherViewIdentifiers];

  collectionView = [(PublisherViewController *)self collectionView];

  if (collectionView)
  {
    dataSource = [(PublisherViewController *)self dataSource];
    [dataSource updateCollections:v6 usingBatchIdentifiers:publisherViewIdentifiers];
  }

  else
  {
    v11 = objc_alloc_init(UICollectionViewFlowLayout);
    [(PublisherViewController *)self setFlowLayout:v11];

    flowLayout = [(PublisherViewController *)self flowLayout];
    [flowLayout setScrollDirection:0];

    v13 = [UICollectionView alloc];
    contentView = [(ContaineeViewController *)self contentView];
    [contentView frame];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    flowLayout2 = [(PublisherViewController *)self flowLayout];
    v24 = [v13 initWithFrame:flowLayout2 collectionViewLayout:{v16, v18, v20, v22}];
    [(PublisherViewController *)self setCollectionView:v24];

    apiController3 = [(PublisherViewController *)self apiController];
    dataSource = [apiController3 publisherViewResultFilters];

    v26 = [PublisherViewDataSource alloc];
    collectionView2 = [(PublisherViewController *)self collectionView];
    apiController4 = [(PublisherViewController *)self apiController];
    analyticsManager = [(PublisherViewController *)self analyticsManager];
    publisherHeaderView = [(PublisherViewController *)self publisherHeaderView];
    actionManager = [publisherHeaderView actionManager];
    v32 = [(PublisherViewDataSource *)v26 initWithCollectionView:collectionView2 usingCuratedCollections:v6 usingPlaceCollectionIds:publisherViewIdentifiers withResultFilters:dataSource withAPIController:apiController4 withCollectionRoutingDelegate:self usingAnalyticsManager:analyticsManager usingPublisherActionsManager:actionManager];
    [(PublisherViewController *)self setDataSource:v32];

    dataSource2 = [(PublisherViewController *)self dataSource];
    [dataSource2 setDelegate:self];

    collectionView3 = [(PublisherViewController *)self collectionView];
    [collectionView3 setBounces:1];

    collectionView4 = [(PublisherViewController *)self collectionView];
    [collectionView4 setAlwaysBounceVertical:1];

    collectionView5 = [(PublisherViewController *)self collectionView];
    [collectionView5 setTranslatesAutoresizingMaskIntoConstraints:0];

    v37 = +[UIColor clearColor];
    collectionView6 = [(PublisherViewController *)self collectionView];
    [collectionView6 setBackgroundColor:v37];

    contentView2 = [(ContaineeViewController *)self contentView];
    collectionView7 = [(PublisherViewController *)self collectionView];
    publisherHeaderView2 = [(PublisherViewController *)self publisherHeaderView];
    [contentView2 insertSubview:collectionView7 belowSubview:publisherHeaderView2];
  }

  objc_initWeak(&location, self);
  dataSource3 = [(PublisherViewController *)self dataSource];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_100F393C4;
  v43[3] = &unk_101661B98;
  objc_copyWeak(&v44, &location);
  [dataSource3 displayCollections:v43];

  objc_destroyWeak(&v44);
  objc_destroyWeak(&location);
}

- (void)addPublisherHeaderView
{
  publisherHeaderView = [(PublisherViewController *)self publisherHeaderView];

  if (!publisherHeaderView)
  {
    publisher = [(PublisherViewController *)self publisher];
    [publisher publisherAttribution];

    publisher2 = [(PublisherViewController *)self publisher];
    v5 = [PublisherAnalyticsManager alloc];
    identifier = [publisher2 identifier];
    publisherAttribution = [publisher2 publisherAttribution];
    v8 = [(PublisherAnalyticsManager *)v5 initWithPublisherId:identifier usingAttribution:publisherAttribution];
    [(PublisherViewController *)self setAnalyticsManager:v8];

    v9 = [PublisherHeaderView alloc];
    publisherAttribution2 = [publisher2 publisherAttribution];
    analyticsManager = [(PublisherViewController *)self analyticsManager];
    v12 = [(PublisherHeaderView *)v9 initWithDelegate:self usingPublisherAttribution:publisherAttribution2 usingAnalyticsManager:analyticsManager];
    [(PublisherViewController *)self setPublisherHeaderView:v12];

    v13 = +[UIColor clearColor];
    publisherHeaderView2 = [(PublisherViewController *)self publisherHeaderView];
    [publisherHeaderView2 setBackgroundColor:v13];

    publisherHeaderView3 = [(PublisherViewController *)self publisherHeaderView];
    [publisherHeaderView3 setTranslatesAutoresizingMaskIntoConstraints:0];

    publisherHeaderView4 = [(PublisherViewController *)self publisherHeaderView];
    LODWORD(v17) = 1148846080;
    [publisherHeaderView4 setContentCompressionResistancePriority:0 forAxis:v17];

    publisherHeaderView5 = [(PublisherViewController *)self publisherHeaderView];
    LODWORD(v19) = 1148846080;
    [publisherHeaderView5 setContentHuggingPriority:0 forAxis:v19];

    contentView = [(ContaineeViewController *)self contentView];
    publisherHeaderView6 = [(PublisherViewController *)self publisherHeaderView];
    [contentView addSubview:publisherHeaderView6];

    analyticsManager2 = [(PublisherViewController *)self analyticsManager];
    [analyticsManager2 publisherTrayRevealed];
  }
}

- (void)onTransitionFromState:(int64_t)state toState:(int64_t)toState
{
  v7 = sub_100F398D0();
  v8 = os_signpost_id_generate(v7);

  v9 = sub_100F398D0();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "DisplayingPublisherView", "", buf, 2u);
  }

  if (state > 1)
  {
    if (state == 2)
    {
      if (toState != 1)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (state != 3 || toState != 1)
      {
        goto LABEL_19;
      }

      [(PublisherViewController *)self removeErrorView];
    }

    [(PublisherViewController *)self addLoadingView];
    goto LABEL_19;
  }

  if (state)
  {
    if (state == 1)
    {
      if (toState == 3)
      {
        [(PublisherViewController *)self removeLoadingView];
        [(PublisherViewController *)self removeCollectionView];
        [(PublisherViewController *)self addErrorView];
      }

      else if (toState == 2)
      {
        [(PublisherViewController *)self removeLoadingView];
        [(PublisherViewController *)self removeDefaultHeaderView];
        [(PublisherViewController *)self addPublisherHeaderView];
        [(PublisherViewController *)self addCollectionView];
        [(PublisherViewController *)self activateConstraints];
      }
    }
  }

  else if (toState == 1)
  {
    [(PublisherViewController *)self addLoadingView];
    [(PublisherViewController *)self addDefaultHeaderView];
    [(PublisherViewController *)self activateDefaultHeaderConstraints];
  }

LABEL_19:
  v11 = sub_100F398D0();
  v12 = v11;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, v8, "DisplayingPublisherView", "", v13, 2u);
  }
}

- (void)handleDismissAction:(id)action
{
  actionCopy = action;
  apiController = [(PublisherViewController *)self apiController];
  [apiController cancelFetchingPublisher];

  dataSource = [(PublisherViewController *)self dataSource];
  [dataSource dismissedCollections];

  v7.receiver = self;
  v7.super_class = PublisherViewController;
  [(ContaineeViewController *)&v7 handleDismissAction:actionCopy];
}

- (double)heightForLayout:(unint64_t)layout
{
  v5 = sub_10000FA08(self);
  if (layout != 1 || (result = -1.0, v5 != 5))
  {
    v7.receiver = self;
    v7.super_class = PublisherViewController;
    [(ContaineeViewController *)&v7 heightForLayout:layout];
  }

  return result;
}

- (GEOPublisher)publisher
{
  apiController = [(PublisherViewController *)self apiController];
  publisherResult = [apiController publisherResult];
  publisher = [publisherResult publisher];

  return publisher;
}

- (void)didChangeLayout:(unint64_t)layout
{
  v11.receiver = self;
  v11.super_class = PublisherViewController;
  [(ContaineeViewController *)&v11 didChangeLayout:layout];
  collectionView = [(PublisherViewController *)self collectionView];

  if (collectionView)
  {
    [(PublisherViewController *)self resetCollectionViewLayout];
    collectionView2 = [(PublisherViewController *)self collectionView];
    [collectionView2 setContentOffset:{CGPointZero.x, CGPointZero.y}];

    publisherHeaderView = [(PublisherViewController *)self publisherHeaderView];
    [publisherHeaderView maximumRequiredHeight];
    v8 = v7;
    headerHeightConstraint = [(PublisherViewController *)self headerHeightConstraint];
    [headerHeightConstraint setConstant:v8];

    publisherHeaderView2 = [(PublisherViewController *)self publisherHeaderView];
    [publisherHeaderView2 resetLogoHeight];
  }
}

- (void)willDismissByGesture
{
  v4.receiver = self;
  v4.super_class = PublisherViewController;
  [(ContaineeViewController *)&v4 willDismissByGesture];
  actionDelegate = [(PublisherViewController *)self actionDelegate];
  [actionDelegate publisherViewControllerClearSearch:self];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PublisherViewController;
  [(ContaineeViewController *)&v5 viewWillDisappear:disappear];
  apiController = [(PublisherViewController *)self apiController];
  [apiController cancelFetchingPublisher];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PublisherViewController;
  [(PublisherViewController *)&v5 viewDidAppear:appear];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController cardHeight];
  [(PublisherViewController *)self setActualCardHeight:?];
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = PublisherViewController;
  [(ContaineeViewController *)&v12 viewDidLoad];
  view = [(PublisherViewController *)self view];
  [view setAccessibilityIdentifier:@"PublisherView"];

  objc_initWeak(&location, self);
  v4 = [PublisherAPIController alloc];
  publisherId = [(PublisherViewController *)self publisherId];
  objc_copyWeak(&v10, &location);
  v6 = [(PublisherViewController *)self traits:_NSConcreteStackBlock];
  v7 = [(PublisherAPIController *)v4 initWithPublisherId:publisherId usingOnStateChangeHandler:&v9 usingTraits:v6];
  [(PublisherViewController *)self setApiController:v7];

  apiController = [(PublisherViewController *)self apiController];
  [apiController fetchPublisherViewForKeywordFilter:0 addressFilter:0 onCompletion:&stru_10165D7B8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (PublisherViewController)initWithPublisherId:(id)id numberOfCollections:(unint64_t)collections withTraits:(id)traits
{
  idCopy = id;
  traitsCopy = traits;
  v18.receiver = self;
  v18.super_class = PublisherViewController;
  v11 = [(PublisherViewController *)&v18 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_publisherId, id);
    v12->_numberOfCollections = collections;
    objc_storeStrong(&v12->_traits, traits);
    v13 = sub_10000FA08(v12);
    cardPresentationController = [(ContaineeViewController *)v12 cardPresentationController];
    v15 = cardPresentationController;
    if (v13 == 5)
    {
      [cardPresentationController setAllowResizeInFloatingStyle:1];

      cardPresentationController2 = [(ContaineeViewController *)v12 cardPresentationController];
      [cardPresentationController2 setDefaultContaineeLayout:3];
    }

    else
    {
      [cardPresentationController setPresentedModally:1];

      cardPresentationController2 = [(ContaineeViewController *)v12 cardPresentationController];
      [cardPresentationController2 setTakesAvailableHeight:1];
    }
  }

  return v12;
}

@end