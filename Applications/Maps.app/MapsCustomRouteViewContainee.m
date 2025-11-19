@interface MapsCustomRouteViewContainee
- (MapsCustomRouteViewContainee)initWithContext:(id)a3;
- (double)headerHeight;
- (double)heightForLayout:(unint64_t)a3;
- (void)_insertAppropriateCardStateForRoute:(id)a3;
- (void)_insertRouteCardIfNeeded;
- (void)_updateRouteCardWithRoute:(id)a3;
- (void)didUpdateLayout;
- (void)handleButtonTap:(int64_t)a3;
- (void)headerViewTappedWithHeaderView:(id)a3;
- (void)pressedLearnMoreURL:(id)a3;
- (void)pressedNavigation;
- (void)pressedOfflineDataManagement;
- (void)pressedOfflineDownload;
- (void)pressedRoutePlanning;
- (void)pressedSaveToLibrary;
- (void)pressedStepping;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)willChangeLayout:(unint64_t)a3;
@end

@implementation MapsCustomRouteViewContainee

- (void)_updateRouteCardWithRoute:(id)a3
{
  [(MapsCustomRouteCardView *)self->_cardView setRoute:a3];
  v4 = [(ContaineeViewController *)self cardPresentationController];
  [v4 updateHeightForCurrentLayout];
}

- (void)_insertRouteCardIfNeeded
{
  v3 = self->_cardView;
  [(MapsCustomRouteCardView *)v3 setAlpha:1.0];
  v4 = [(MapsCustomRouteCardView *)v3 superview];

  if (!v4)
  {
    v5 = [(ContaineeViewController *)self contentView];
    [v5 addSubview:v3];

    v6 = [(MapsCustomRouteCardView *)v3 bottomAnchor];
    v7 = [(ContaineeViewController *)self contentView];
    v8 = [v7 bottomAnchor];
    v9 = [v6 constraintEqualToAnchor:v8 constant:-16.0];
    bottomConstraint = self->_bottomConstraint;
    self->_bottomConstraint = v9;

    v23 = [(MapsCustomRouteCardView *)v3 leadingAnchor];
    v24 = [(ContaineeViewController *)self contentView];
    v22 = [v24 leadingAnchor];
    v21 = [v23 constraintEqualToAnchor:v22];
    v25[0] = v21;
    v20 = [(MapsCustomRouteCardView *)v3 trailingAnchor];
    v11 = [(ContaineeViewController *)self contentView];
    v12 = [v11 trailingAnchor];
    v13 = [v20 constraintEqualToAnchor:v12];
    v25[1] = v13;
    v14 = [(MapsCustomRouteCardView *)v3 topAnchor];
    v15 = [(ContaineeViewController *)self headerView];
    v16 = [v15 bottomAnchor];
    v17 = [v14 constraintEqualToAnchor:v16];
    v18 = self->_bottomConstraint;
    v25[2] = v17;
    v25[3] = v18;
    v19 = [NSArray arrayWithObjects:v25 count:4];
    [NSLayoutConstraint activateConstraints:v19];
  }
}

- (void)_insertAppropriateCardStateForRoute:(id)a3
{
  v4 = a3;
  [(MapsCustomRouteViewContainee *)self loadViewIfNeeded];
  [(MapsCustomRouteViewContainee *)self _insertRouteCardIfNeeded];
  [(MapsCustomRouteViewContainee *)self _updateRouteCardWithRoute:v4];
}

- (void)didUpdateLayout
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100E908D0;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)pressedLearnMoreURL:(id)a3
{
  v9 = a3;
  v4 = [(MapsCustomRouteViewContainee *)self _maps_mapsSceneDelegate];
  v5 = [v4 appCoordinator];
  v6 = [v5 baseActionCoordinator];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  [v8 viewController:self openURL:v9];
}

- (void)pressedOfflineDataManagement
{
  v3 = [(MapsCustomRouteViewContainee *)self _maps_mapsSceneDelegate];
  v4 = [v3 appCoordinator];
  v5 = [v4 baseActionCoordinator];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  [v7 viewControllerShowOfflineMaps:self];
}

- (void)pressedOfflineDownload
{
  v3 = [(MapsCustomRouteViewContainee *)self _maps_mapsSceneDelegate];
  v4 = [v3 appCoordinator];
  v5 = [v4 baseActionCoordinator];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  WeakRetained = objc_loadWeakRetained(&self->_context);
  v18 = [WeakRetained composedRoute];

  v9 = [v18 userProvidedName];
  if ([v9 length])
  {
    [v18 userProvidedName];
  }

  else
  {
    [v18 name];
  }
  v10 = ;

  v11 = objc_loadWeakRetained(&self->_context);
  v12 = [v11 composedRoute];
  v13 = [v12 boundingMapRegion];
  v14 = [GEOMapRegion _maps_offlineDownloadRegionForRouteBounds:v13];
  v15 = objc_loadWeakRetained(&self->_context);
  v16 = [v15 composedRoute];
  LOWORD(v17) = 256;
  [v7 viewController:self showOfflineMapRegionSelectorForRegion:v14 name:v10 route:v16 muid:objc_msgSend(v18 shouldUseSessionlessAnalytics:"mapItemMuid") shouldShowDataManagementAfterDownload:0 shouldShowDataManagementAfterDownloadIfRegionDiffers:v17 dismissalBlock:0];
}

- (void)pressedSaveToLibrary
{
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100E90D0C;
  v4[3] = &unk_101661B98;
  objc_copyWeak(&v5, &location);
  [WeakRetained pushSaveContaineeWithCompletionHandler:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)pressedRoutePlanning
{
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained pushSuggestedNavigationMode:4 withCompletionHandler:0];
}

- (void)pressedNavigation
{
  [(MapsCustomRouteCardView *)self->_cardView setButtonEnabled:0];
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100E90E98;
  v4[3] = &unk_101661B98;
  objc_copyWeak(&v5, &location);
  [WeakRetained pushSuggestedNavigationMode:1 withCompletionHandler:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)pressedStepping
{
  [(MapsCustomRouteCardView *)self->_cardView setButtonEnabled:0];
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100E91088;
  v4[3] = &unk_101661B98;
  objc_copyWeak(&v5, &location);
  [WeakRetained pushSuggestedNavigationMode:2 withCompletionHandler:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)handleButtonTap:(int64_t)a3
{
  if (a3 == 9)
  {
    v5 = sub_1007989A4();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "pressed TTR", &v9, 2u);
    }

    v6 = +[MapsRadarController sharedInstance];
    [v6 launchTTR];
    goto LABEL_9;
  }

  if (a3 == 1)
  {
    v4 = sub_1007989A4();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "pressed close", &v9, 2u);
    }

    [(ContaineeViewController *)self handleDismissAction:0];
    return;
  }

  v7 = sub_10006D178();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v9 = 136315650;
    v10 = "[MapsCustomRouteViewContainee handleButtonTap:]";
    v11 = 2080;
    v12 = "MapsCustomRouteViewContainee.m";
    v13 = 1024;
    v14 = 247;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v9, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v6 = sub_10006D178();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = +[NSThread callStackSymbols];
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%@", &v9, 0xCu);
    }

LABEL_9:
  }
}

- (void)headerViewTappedWithHeaderView:(id)a3
{
  v4 = [(ContaineeViewController *)self cardPresentationController];
  if ([v4 containeeLayout] == 2)
  {

    v5 = 1;
  }

  else
  {
    v6 = [(ContaineeViewController *)self cardPresentationController];
    v7 = [v6 containeeLayout];

    if (v7 == 3)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }
  }

  v8 = [(ContaineeViewController *)self cardPresentationController];
  [v8 wantsLayout:v5];
}

- (double)heightForLayout:(unint64_t)a3
{
  if (a3 - 2 >= 4)
  {
    v14 = -1.0;
    if (a3 == 1)
    {
      [(MapsCustomRouteViewContainee *)self headerHeight];
      v16 = v15;
      v17 = [(ContaineeViewController *)self cardPresentationController];
      [v17 bottomSafeOffset];
      v14 = v18 + v16;
    }
  }

  else
  {
    [(MapsCustomRouteCardView *)self->_cardView layoutIfNeeded];
    cardView = self->_cardView;
    [(MapsCustomRouteCardView *)cardView frame];
    v6 = v5;
    LODWORD(v5) = 1148846080;
    LODWORD(v7) = 1112014848;
    [(MapsCustomRouteCardView *)cardView systemLayoutSizeFittingSize:v6 withHorizontalFittingPriority:UILayoutFittingCompressedSize.height verticalFittingPriority:v5, v7];
    v9 = v8;
    v10 = [(ContaineeViewController *)self cardPresentationController];
    [v10 bottomSafeOffset];
    v12 = v11;

    [(MapsCustomRouteViewContainee *)self headerHeight];
    return v12 + v13 + v9;
  }

  return v14;
}

- (void)willChangeLayout:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = MapsCustomRouteViewContainee;
  [(ContaineeViewController *)&v5 willChangeLayout:?];
  [(NSLayoutConstraint *)self->_bottomConstraint setActive:a3 != 1];
}

- (double)headerHeight
{
  [(MapsSubtitleHeaderView *)self->_containerHeaderView layoutIfNeeded];
  containerHeaderView = self->_containerHeaderView;
  [(MapsSubtitleHeaderView *)containerHeaderView frame];
  v5 = v4;
  LODWORD(v4) = 1148846080;
  LODWORD(v6) = 1112014848;
  [(MapsSubtitleHeaderView *)containerHeaderView systemLayoutSizeFittingSize:v5 withHorizontalFittingPriority:UILayoutFittingCompressedSize.height verticalFittingPriority:v4, v6];
  return v7;
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = MapsCustomRouteViewContainee;
  [(ContaineeViewController *)&v10 viewDidLayoutSubviews];
  v3 = [(ContaineeViewController *)self contentView];
  [v3 frame];
  v5 = v4;

  previousWidth = self->_previousWidth;
  v7 = fabs(previousWidth + -1.79769313e308);
  v8 = vabdd_f64(previousWidth, v5);
  if (v7 <= 2.22044605e-16 || v8 > 2.22044605e-16)
  {
    self->_previousWidth = v5;
    [(MapsCustomRouteViewContainee *)self didUpdateLayout];
  }
}

- (void)viewDidLoad
{
  v28.receiver = self;
  v28.super_class = MapsCustomRouteViewContainee;
  [(ContaineeViewController *)&v28 viewDidLoad];
  v3 = [(ContaineeViewController *)self headerView];
  v4 = +[NSMutableArray array];
  if (GEOConfigGetBOOL() && +[MapsTapToRadarExtras shouldEnableTTRButton])
  {
    [v4 addObject:&off_1016EA118];
  }

  [v4 addObject:&off_1016EA130];
  v5 = [[_TtC4Maps22MapsSubtitleHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v6 = [(GEOComposedRoute *)self->_route userProvidedName];
  if (v6)
  {
    [(MapsSubtitleHeaderView *)v5 setTitle:v6];
  }

  else
  {
    v7 = [(GEOComposedRoute *)self->_route name];
    [(MapsSubtitleHeaderView *)v5 setTitle:v7];
  }

  [(MapsSubtitleHeaderView *)v5 setTrailingButtons:v4];
  [(MapsSubtitleHeaderView *)v5 setDelegate:self];
  v27 = v4;
  containerHeaderView = self->_containerHeaderView;
  self->_containerHeaderView = v5;
  v26 = v5;

  [(MapsSubtitleHeaderView *)self->_containerHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v9) = 1148846080;
  [(MapsSubtitleHeaderView *)self->_containerHeaderView setContentCompressionResistancePriority:1 forAxis:v9];
  [v3 addSubview:self->_containerHeaderView];
  v10 = objc_opt_new();
  cardView = self->_cardView;
  self->_cardView = v10;

  [(MapsCustomRouteCardView *)self->_cardView setDelegate:self];
  [(MapsCustomRouteCardView *)self->_cardView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MapsCustomRouteViewContainee *)self _updateRouteCardWithRoute:self->_route];
  v25 = [(MapsSubtitleHeaderView *)self->_containerHeaderView leadingAnchor];
  v24 = [v3 leadingAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v29[0] = v23;
  v21 = [(MapsSubtitleHeaderView *)self->_containerHeaderView topAnchor];
  v12 = [v3 topAnchor];
  v13 = [v21 constraintEqualToAnchor:v12];
  v29[1] = v13;
  v14 = [(MapsSubtitleHeaderView *)self->_containerHeaderView trailingAnchor];
  v15 = [v3 trailingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  v29[2] = v16;
  v17 = [(MapsSubtitleHeaderView *)self->_containerHeaderView bottomAnchor];
  [v3 bottomAnchor];
  v18 = v22 = v3;
  v19 = [v17 constraintEqualToAnchor:v18];
  v29[3] = v19;
  v20 = [NSArray arrayWithObjects:v29 count:4];
  [NSLayoutConstraint activateConstraints:v20];

  [(MapsCustomRouteViewContainee *)self _insertRouteCardIfNeeded];
  [(MapsCustomRouteViewContainee *)self _insertAppropriateCardStateForRoute:self->_route];
}

- (MapsCustomRouteViewContainee)initWithContext:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MapsCustomRouteViewContainee;
  v5 = [(MapsCustomRouteViewContainee *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_context, v4);
    v7 = [v4 composedRoute];
    route = v6->_route;
    v6->_route = v7;

    v6->_previousWidth = 1.79769313e308;
    v9 = [(ContaineeViewController *)v6 cardPresentationController];
    [v9 setAllowResizeInFloatingStyle:1];

    v10 = [(ContaineeViewController *)v6 cardPresentationController];
    [v10 setDefaultContaineeLayout:2];

    v11 = [(ContaineeViewController *)v6 cardPresentationController];
    [v11 setTakesAvailableHeight:0];
  }

  return v6;
}

@end