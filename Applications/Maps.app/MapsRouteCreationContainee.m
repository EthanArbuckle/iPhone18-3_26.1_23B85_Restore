@interface MapsRouteCreationContainee
- (BOOL)_isValidRoute;
- (MapsRouteCreationContainee)initWithContext:(id)a3;
- (double)headerHeight;
- (double)heightForLayout:(unint64_t)a3;
- (void)_insertAppropriateCardStateForRoute:(id)a3;
- (void)_insertEmptyStateIfNeeded;
- (void)_insertRouteCardIfNeeded;
- (void)_showExitConfirmationAlert;
- (void)_updateDoneButton;
- (void)_updateEmptyStateContent;
- (void)_updateRouteCardWithRoute:(id)a3;
- (void)headerViewTappedWithHeaderView:(id)a3;
- (void)setRoute:(id)a3;
- (void)trailingButtonTappedWithHeaderView:(id)a3 buttonType:(int64_t)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)willChangeLayout:(unint64_t)a3;
@end

@implementation MapsRouteCreationContainee

- (void)_updateEmptyStateContent
{
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v4 = [WeakRetained emptyStateVideoName];

  v5 = sub_1007989A4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349314;
    v14 = self;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Updating video: %@", buf, 0x16u);
  }

  if (v4 && ![(NSString *)self->_currentVideoName isEqualToString:v4])
  {
    v6 = [[NSDataAsset alloc] initWithName:v4];
    v7 = [v6 data];
    v11[0] = AVAssetPreferPreciseDurationAndTimingKey;
    v11[1] = AVAssetReferenceRestrictionsKey;
    v12[0] = &__kCFBooleanFalse;
    v12[1] = &off_1016E6D40;
    v8 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
    v9 = [AVAsset assetWithData:v7 contentType:AVFileTypeAppleM4V options:v8];

    v10 = [AVPlayerItem playerItemWithAsset:v9];
    [(MapsLoopingVideoPlayerView *)self->_playerView replaceCurrentItemWithPlayerItem:v10 preserveCurrentTimestamp:0];
    objc_storeStrong(&self->_currentVideoName, v4);
  }
}

- (void)_updateDoneButton
{
  v3 = [(MapsRouteCreationContainee *)self _isValidRoute];
  v4 = [(RouteCreationCardView *)self->_cardView saveButton];
  [v4 setEnabled:v3];
}

- (BOOL)_isValidRoute
{
  v2 = [(RouteCreationCardView *)self->_cardView route];
  v3 = [v2 legs];
  v4 = [v3 count] != 0;

  return v4;
}

- (void)_updateRouteCardWithRoute:(id)a3
{
  [(RouteCreationCardView *)self->_cardView setRoute:a3];

  [(MapsRouteCreationContainee *)self _updateDoneButton];
}

- (void)_insertRouteCardIfNeeded
{
  [(MapsLoopingVideoPlayerView *)self->_playerView removeFromSuperview];
  currentVideoName = self->_currentVideoName;
  self->_currentVideoName = 0;

  v4 = self->_cardView;
  [(RouteCreationCardView *)v4 setAlpha:1.0];
  v5 = [(RouteCreationCardView *)v4 superview];

  if (!v5)
  {
    v6 = [(ContaineeViewController *)self contentView];
    [v6 addSubview:v4];

    v7 = [(RouteCreationCardView *)v4 bottomAnchor];
    v8 = [(ContaineeViewController *)self contentView];
    v9 = [v8 bottomAnchor];
    v10 = [v7 constraintEqualToAnchor:v9 constant:-16.0];
    bottomConstraint = self->_bottomConstraint;
    self->_bottomConstraint = v10;

    v24 = [(RouteCreationCardView *)v4 leadingAnchor];
    v25 = [(ContaineeViewController *)self contentView];
    v23 = [v25 leadingAnchor];
    v22 = [v24 constraintEqualToAnchor:v23];
    v26[0] = v22;
    v21 = [(RouteCreationCardView *)v4 trailingAnchor];
    v12 = [(ContaineeViewController *)self contentView];
    v13 = [v12 trailingAnchor];
    v14 = [v21 constraintEqualToAnchor:v13];
    v26[1] = v14;
    v15 = [(RouteCreationCardView *)v4 topAnchor];
    v16 = [(ContaineeViewController *)self headerView];
    v17 = [v16 bottomAnchor];
    v18 = [v15 constraintEqualToAnchor:v17];
    v19 = self->_bottomConstraint;
    v26[2] = v18;
    v26[3] = v19;
    v20 = [NSArray arrayWithObjects:v26 count:4];
    [NSLayoutConstraint activateConstraints:v20];
  }
}

- (void)_insertEmptyStateIfNeeded
{
  [(RouteCreationCardView *)self->_cardView setAlpha:0.0];
  v3 = self->_playerView;
  v4 = v3;
  if (v3)
  {
    v5 = [(MapsLoopingVideoPlayerView *)v3 superview];

    if (!v5)
    {
      v6 = [(ContaineeViewController *)self contentView];
      [v6 addSubview:v4];

      v22 = [(MapsLoopingVideoPlayerView *)v4 leadingAnchor];
      v23 = [(ContaineeViewController *)self contentView];
      v21 = [v23 leadingAnchor];
      v20 = [v22 constraintEqualToAnchor:v21];
      v24[0] = v20;
      v18 = [(MapsLoopingVideoPlayerView *)v4 trailingAnchor];
      v19 = [(ContaineeViewController *)self contentView];
      v17 = [v19 trailingAnchor];
      v16 = [v18 constraintEqualToAnchor:v17];
      v24[1] = v16;
      v7 = [(MapsLoopingVideoPlayerView *)v4 topAnchor];
      v8 = [(ContaineeViewController *)self headerView];
      v9 = [v8 bottomAnchor];
      v10 = [v7 constraintEqualToAnchor:v9];
      v24[2] = v10;
      v11 = [(MapsLoopingVideoPlayerView *)v4 heightAnchor];
      v12 = [(ContaineeViewController *)self contentView];
      v13 = [v12 widthAnchor];
      v14 = [v11 constraintEqualToAnchor:v13 multiplier:0.580817044 constant:0.0];
      v24[3] = v14;
      v15 = [NSArray arrayWithObjects:v24 count:4];
      [NSLayoutConstraint activateConstraints:v15];
    }
  }
}

- (void)_insertAppropriateCardStateForRoute:(id)a3
{
  v9 = a3;
  v4 = [(MapsLoopingVideoPlayerView *)self->_playerView superview];

  [(MapsRouteCreationContainee *)self loadViewIfNeeded];
  v5 = [v9 legs];
  if (![v5 count])
  {

    goto LABEL_6;
  }

  v6 = [v9 waypoints];
  v7 = [v6 count];

  if (v7 < 2)
  {
LABEL_6:
    [(MapsRouteCreationContainee *)self _insertEmptyStateIfNeeded];
    [(MapsRouteCreationContainee *)self _updateEmptyStateContent];
    goto LABEL_7;
  }

  [(MapsRouteCreationContainee *)self _insertRouteCardIfNeeded];
  [(MapsRouteCreationContainee *)self _updateRouteCardWithRoute:v9];
  if (v4)
  {
LABEL_7:
    v8 = [(ContaineeViewController *)self cardPresentationController];
    [v8 updateHeightForCurrentLayout];
  }
}

- (void)setRoute:(id)a3
{
  objc_storeStrong(&self->_route, a3);
  v5 = a3;
  [(MapsRouteCreationContainee *)self _insertAppropriateCardStateForRoute:v5];
}

- (void)_showExitConfirmationAlert
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"[Route Creation] Exit Alert Title" value:@"localized string not found" table:0];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"[Route Creation] Exit Alert Message" value:@"localized string not found" table:0];
  v7 = [UIAlertController alertControllerWithTitle:v4 message:v6 preferredStyle:1];

  objc_initWeak(&location, self);
  v8 = [v7 view];
  [v8 setAccessibilityIdentifier:@"ExitAlert"];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"[Route Creation] Exit Delete Option" value:@"localized string not found" table:0];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10079BBD0;
  v18 = &unk_101658AF0;
  objc_copyWeak(&v19, &location);
  v11 = [UIAlertAction actionWithTitle:v10 style:2 handler:&v15];

  [v11 setAccessibilityIdentifier:{@"DeleteAction", v15, v16, v17, v18}];
  [v7 addAction:v11];
  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"[Route Creation] Exit Cancel Option" value:@"localized string not found" table:0];
  v14 = [UIAlertAction actionWithTitle:v13 style:0 handler:0];

  [v14 setAccessibilityIdentifier:@"CancelAction"];
  [v7 addAction:v14];
  [(MapsRouteCreationContainee *)self _maps_topMostPresentViewController:v7 animated:1 completion:0];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)trailingButtonTappedWithHeaderView:(id)a3 buttonType:(int64_t)a4
{
  v6 = a3;
  if (a4 == 9)
  {
    v8 = sub_1007989A4();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "pressed TTR", &v12, 2u);
    }

    v9 = +[MapsRadarController sharedInstance];
    [v9 launchTTR];
    goto LABEL_10;
  }

  if (a4 == 1)
  {
    v7 = sub_1007989A4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "pressed cancel", &v12, 2u);
    }

    if (GEOConfigGetBOOL())
    {
      [(MapsRouteCreationContainee *)self _showExitConfirmationAlert];
    }

    else
    {
      [(ContaineeViewController *)self handleDismissAction:0];
    }

    goto LABEL_17;
  }

  v10 = sub_10006D178();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v12 = 136315650;
    v13 = "[MapsRouteCreationContainee trailingButtonTappedWithHeaderView:buttonType:]";
    v14 = 2080;
    v15 = "MapsRouteCreationContainee.m";
    v16 = 1024;
    v17 = 203;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v12, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v9 = sub_10006D178();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = +[NSThread callStackSymbols];
      v12 = 138412290;
      v13 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@", &v12, 0xCu);
    }

LABEL_10:
  }

LABEL_17:
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
  if (a3 - 2 >= 2)
  {
    v9 = -1.0;
    if (a3 == 1)
    {
      [(MapsRouteCreationContainee *)self headerHeight];
      v11 = v10;
      v12 = [(ContaineeViewController *)self cardPresentationController];
      [v12 bottomSafeOffset];
      v9 = v13 + v11;
    }
  }

  else
  {
    v4 = [(MapsLoopingVideoPlayerView *)self->_playerView superview];

    if (v4)
    {
      v5 = [(ContaineeViewController *)self contentView];
      [v5 layoutIfNeeded];

      v6 = [(ContaineeViewController *)self contentView];
      [v6 frame];
      v8 = v7 * 0.580817044;
    }

    else
    {
      [(RouteCreationCardView *)self->_cardView layoutIfNeeded];
      cardView = self->_cardView;
      [(RouteCreationCardView *)cardView frame];
      v16 = v15;
      LODWORD(v15) = 1148846080;
      LODWORD(v17) = 1112014848;
      [(RouteCreationCardView *)cardView systemLayoutSizeFittingSize:v16 withHorizontalFittingPriority:UILayoutFittingCompressedSize.height verticalFittingPriority:v15, v17];
      v8 = v18;
    }

    v19 = [(ContaineeViewController *)self cardPresentationController];
    [v19 bottomSafeOffset];
    v21 = v20;

    if (fabs(v21) <= 2.22044605e-16)
    {
      v21 = 16.0;
    }

    [(MapsRouteCreationContainee *)self headerHeight];
    return v22 + v8 + v21;
  }

  return v9;
}

- (void)willChangeLayout:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = MapsRouteCreationContainee;
  [(ContaineeViewController *)&v5 willChangeLayout:?];
  [(NSLayoutConstraint *)self->_bottomConstraint setActive:a3 != 1];
}

- (double)headerHeight
{
  [(MapsSubtitleHeaderView *)self->_modalHeaderView layoutIfNeeded];
  modalHeaderView = self->_modalHeaderView;
  [(MapsSubtitleHeaderView *)modalHeaderView frame];
  v5 = v4;
  LODWORD(v4) = 1148846080;
  LODWORD(v6) = 1112014848;
  [(MapsSubtitleHeaderView *)modalHeaderView systemLayoutSizeFittingSize:v5 withHorizontalFittingPriority:UILayoutFittingCompressedSize.height verticalFittingPriority:v4, v6];
  return v7;
}

- (void)viewDidLayoutSubviews
{
  v11.receiver = self;
  v11.super_class = MapsRouteCreationContainee;
  [(ContaineeViewController *)&v11 viewDidLayoutSubviews];
  v3 = [(ContaineeViewController *)self contentView];
  [v3 frame];
  v5 = v4;

  previousWidth = self->_previousWidth;
  v7 = fabs(previousWidth + -1.79769313e308);
  v8 = vabdd_f64(previousWidth, v5);
  if (v7 <= 2.22044605e-16 || v8 > 2.22044605e-16)
  {
    self->_previousWidth = v5;
    v10 = [(ContaineeViewController *)self cardPresentationController];
    [v10 updateHeightForCurrentLayout];
  }
}

- (void)viewDidLoad
{
  v37.receiver = self;
  v37.super_class = MapsRouteCreationContainee;
  [(ContaineeViewController *)&v37 viewDidLoad];
  v3 = [(MapsRouteCreationContainee *)self view];
  [v3 setAccessibilityIdentifier:@"CreateARouteView"];

  v4 = [(ContaineeViewController *)self headerView];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"[Route Creation] Create Route" value:@"localized string not found" table:0];

  v7 = [[_TtC4Maps22MapsSubtitleHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v36 = v6;
  [(MapsSubtitleHeaderView *)v7 setTitle:v6];
  [(MapsSubtitleHeaderView *)v7 setTrailingButtons:&off_1016ECAB8];
  if (GEOConfigGetBOOL() && +[MapsTapToRadarExtras shouldEnableTTRButton])
  {
    [(MapsSubtitleHeaderView *)v7 setLeadingButtons:&off_1016ECAD0];
  }

  [(MapsSubtitleHeaderView *)v7 setDelegate:self];
  [(MapsSubtitleHeaderView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v8) = 1148846080;
  [(MapsSubtitleHeaderView *)v7 setContentCompressionResistancePriority:1 forAxis:v8];
  [v4 addSubview:v7];
  objc_storeStrong(&self->_modalHeaderView, v7);
  v9 = objc_opt_new();
  v35 = v7;
  playerView = self->_playerView;
  self->_playerView = v9;

  [(MapsLoopingVideoPlayerView *)self->_playerView setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v11) = 1148846080;
  [(MapsLoopingVideoPlayerView *)self->_playerView setContentCompressionResistancePriority:1 forAxis:v11];
  v12 = objc_opt_new();
  cardView = self->_cardView;
  self->_cardView = v12;

  [(RouteCreationCardView *)self->_cardView setTranslatesAutoresizingMaskIntoConstraints:0];
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [(RouteCreationCardView *)self->_cardView setEditingDelegate:WeakRetained];

  v15 = objc_loadWeakRetained(&self->_context);
  v16 = [v15 composedRoute];
  [(MapsRouteCreationContainee *)self _updateRouteCardWithRoute:v16];

  v33 = [(MapsSubtitleHeaderView *)self->_modalHeaderView leadingAnchor];
  v32 = [v4 leadingAnchor];
  v31 = [v33 constraintEqualToAnchor:v32];
  v39[0] = v31;
  v30 = [(MapsSubtitleHeaderView *)self->_modalHeaderView topAnchor];
  v17 = [v4 topAnchor];
  v18 = [v30 constraintEqualToAnchor:v17];
  v39[1] = v18;
  v19 = [(MapsSubtitleHeaderView *)self->_modalHeaderView trailingAnchor];
  v34 = v4;
  v20 = [v4 trailingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  v39[2] = v21;
  v22 = [(MapsSubtitleHeaderView *)self->_modalHeaderView bottomAnchor];
  v23 = [v4 bottomAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  v39[3] = v24;
  v25 = [NSArray arrayWithObjects:v39 count:4];
  [NSLayoutConstraint activateConstraints:v25];

  v38 = objc_opt_class();
  v26 = [NSArray arrayWithObjects:&v38 count:1];
  v27 = [(MapsRouteCreationContainee *)self registerForTraitChanges:v26 withTarget:self action:"_userInterfaceStyleDidChange"];

  [(MapsRouteCreationContainee *)self _insertRouteCardIfNeeded];
  v28 = objc_loadWeakRetained(&self->_context);
  v29 = [v28 composedRoute];
  [(MapsRouteCreationContainee *)self _insertAppropriateCardStateForRoute:v29];
}

- (MapsRouteCreationContainee)initWithContext:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MapsRouteCreationContainee;
  v5 = [(MapsRouteCreationContainee *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_context, v4);
    v6->_previousWidth = 1.79769313e308;
    v7 = [(ContaineeViewController *)v6 cardPresentationController];
    [v7 setAllowResizeInFloatingStyle:1];

    v8 = [(ContaineeViewController *)v6 cardPresentationController];
    [v8 setDefaultContaineeLayout:2];
  }

  return v6;
}

@end