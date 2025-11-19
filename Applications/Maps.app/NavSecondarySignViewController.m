@interface NavSecondarySignViewController
- (NavSecondarySignViewController)init;
- (UIView)backgroundView;
- (id)_containerConstraints;
- (id)_currentSign;
- (id)_effectiveJunctionForSign:(id)a3;
- (void)_insertBackgroundView;
- (void)_updateSign;
- (void)navigationService:(id)a3 hideLaneDirectionsForId:(id)a4;
- (void)navigationService:(id)a3 showLaneDirections:(id)a4;
- (void)navigationService:(id)a3 updateSignsWithInfo:(id)a4;
- (void)setCornerRadius:(double)a3;
- (void)viewDidLoad;
@end

@implementation NavSecondarySignViewController

- (id)_effectiveJunctionForSign:(id)a3
{
  v4 = a3;
  latestPrimarySign = self->_latestPrimarySign;
  if (latestPrimarySign && ((-[MNGuidanceSignDescription junction](latestPrimarySign, "junction"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 maneuverType], v6, latestSecondarySign = self->_latestSecondarySign, latestSecondarySign == v4) ? (v9 = v7 - 85 > 1) : (v9 = 1), !v9 && (-[MNGuidanceSignDescription junction](latestSecondarySign, "junction"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "maneuverType"), v10, v11 == v7)))
  {
    v12 = 0;
  }

  else
  {
    v12 = [(MNGuidanceSignDescription *)v4 junction];
  }

  return v12;
}

- (void)_updateSign
{
  v3 = [(MNGuidanceSignDescription *)self->_latestPrimarySign uniqueID];
  drawnPrimarySignID = self->_drawnPrimarySignID;
  self->_drawnPrimarySignID = v3;

  v5 = [(MNGuidanceSignDescription *)self->_latestSecondarySign uniqueID];
  drawnSecondarySignID = self->_drawnSecondarySignID;
  self->_drawnSecondarySignID = v5;

  v7 = [(NavSecondarySignViewController *)self _currentSign];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 secondaryStrings];
    v10 = [v9 count];

    if (v10)
    {
      v11 = [MKServerFormattedString alloc];
      v12 = [v8 secondaryStrings];
      v13 = [v12 firstObject];
      v14 = [v11 initWithComposedString:v13];
    }

    else
    {
      v15 = [MKServerFormattedStringParameters alloc];
      v16 = [v8 distanceDetailLevel];
      v17 = [v8 variableOverrides];
      v12 = [v15 initWithInstructionsDistanceDetailLevel:v16 variableOverrides:v17];

      v18 = [v8 details];
      v13 = [v18 firstObject];

      v14 = [[MKServerFormattedString alloc] initWithGeoServerString:v13 parameters:v12];
    }

    v19 = v14;

    [(RouteStepListMetrics *)self->_metrics displayedAsSecondaryFontPointSize];
    v21 = v20;
    [(RouteStepListMetrics *)self->_metrics displayedAsSecondaryFontWeight];
    v23 = [UIFont systemFontOfSize:v21 weight:v22];
    v44[0] = NSForegroundColorAttributeName;
    v24 = [(RouteStepListMetrics *)self->_metrics displayedAsSecondaryTextColor];
    v45[0] = v24;
    v45[1] = v23;
    v44[1] = NSFontAttributeName;
    v44[2] = MKServerFormattedStringArtworkSizeAttributeKey;
    v45[2] = &off_1016E96B0;
    v25 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:3];
    v26 = [v19 multiPartAttributedStringWithAttributes:v25];
    v27 = [v26 attributedString];
    [(UILabel *)self->_primaryTextLabel setAttributedText:v27];
  }

  else
  {
    [(UILabel *)self->_primaryTextLabel setText:0];
  }

  v28 = [(NavSecondarySignViewController *)self _effectiveJunctionForSign:v8];
  if ([v28 numElements])
  {
    v29 = [[MKJunction alloc] initWithJunction:v28];
  }

  else
  {
    v29 = 0;
  }

  v30 = [GuidanceManeuverArtwork alloc];
  v31 = [v28 maneuverType];
  v32 = [v28 drivingSide];
  v33 = [v8 artworkOverride];
  v34 = [(GuidanceManeuverArtwork *)v30 initWithManeuver:v31 junction:v29 drivingSide:v32 artworkDataSource:v33];
  [(GuidanceManeuverView *)self->_guidanceManeuverView setManeuverArtwork:v34];

  metrics = self->_metrics;
  if (metrics)
  {
    [(RouteStepListMetrics *)metrics secondaryArrowMetrics];
  }

  else
  {
    memset(__src, 0, sizeof(__src));
  }

  guidanceManeuverView = self->_guidanceManeuverView;
  memcpy(__dst, __src, sizeof(__dst));
  [(GuidanceManeuverView *)guidanceManeuverView setArrowMetrics:__dst];
  v37 = self->_metrics;
  if (v37)
  {
    [(RouteStepListMetrics *)v37 secondaryJunctionArrowMetrics];
  }

  else
  {
    memset(v41, 0, sizeof(v41));
  }

  v38 = self->_guidanceManeuverView;
  memcpy(__dst, v41, sizeof(__dst));
  [(GuidanceManeuverView *)v38 setJunctionArrowMetrics:__dst];
  v39 = [(RouteStepListMetrics *)self->_metrics arrowColor];
  [(GuidanceManeuverView *)self->_guidanceManeuverView setArrowColor:v39];

  v40 = [(RouteStepListMetrics *)self->_metrics arrowAccentColor];
  [(GuidanceManeuverView *)self->_guidanceManeuverView setAccentColor:v40];
}

- (id)_currentSign
{
  if (self->_isShowingMidstepLaneGuidance)
  {
    v2 = &OBJC_IVAR___NavSecondarySignViewController__latestPrimarySign;
  }

  else
  {
    v2 = &OBJC_IVAR___NavSecondarySignViewController__latestSecondarySign;
  }

  return *(&self->super.super.super.isa + *v2);
}

- (void)navigationService:(id)a3 hideLaneDirectionsForId:(id)a4
{
  isShowingMidstepLaneGuidance = self->_isShowingMidstepLaneGuidance;
  self->_isShowingMidstepLaneGuidance = 0;
  if (isShowingMidstepLaneGuidance)
  {
    [(NavSecondarySignViewController *)self _updateSign:a3];
  }
}

- (void)navigationService:(id)a3 showLaneDirections:(id)a4
{
  isShowingMidstepLaneGuidance = self->_isShowingMidstepLaneGuidance;
  v6 = [a4 isForManeuver];
  self->_isShowingMidstepLaneGuidance = v6 ^ 1;
  if (isShowingMidstepLaneGuidance != (v6 ^ 1))
  {

    [(NavSecondarySignViewController *)self _updateSign];
  }
}

- (void)navigationService:(id)a3 updateSignsWithInfo:(id)a4
{
  v5 = a4;
  v6 = [v5 primarySign];
  v7 = [v5 secondarySign];

  if (!self->_isShowingMidstepLaneGuidance)
  {
    LOBYTE(v10) = 0;
LABEL_7:
    v11 = [v7 uniqueID];
    v12 = v11;
    if (v11 | self->_drawnSecondarySignID)
    {
      v13 = [v11 isEqual:?] ^ 1;
    }

    else
    {
      LOBYTE(v13) = 0;
    }

    LOBYTE(v10) = v10 | v13;
    goto LABEL_11;
  }

  v8 = [v6 uniqueID];
  v9 = v8;
  if (v8 | self->_drawnPrimarySignID)
  {
    v10 = [v8 isEqual:?] ^ 1;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  if (!self->_isShowingMidstepLaneGuidance)
  {
    goto LABEL_7;
  }

LABEL_11:
  latestPrimarySign = self->_latestPrimarySign;
  self->_latestPrimarySign = v6;
  v15 = v6;

  latestSecondarySign = self->_latestSecondarySign;
  self->_latestSecondarySign = v7;

  if (v10)
  {

    [(NavSecondarySignViewController *)self _updateSign];
  }
}

- (void)setCornerRadius:(double)a3
{
  [(NavSecondarySignViewController *)self loadViewIfNeeded];
  v5 = [(UIView *)self->_backgroundView layer];
  [v5 setMaskedCorners:12];

  v6 = [(UIView *)self->_backgroundView layer];
  [v6 setCornerCurve:kCACornerCurveContinuous];

  v7 = [(UIView *)self->_backgroundView layer];
  [v7 setCornerRadius:a3];
}

- (id)_containerConstraints
{
  LODWORD(v2) = 1148846080;
  v3 = [(UIView *)self->_containerView _maps_constraintsEqualToEdgesOfView:self->_backgroundView priority:v2];
  v4 = [v3 allConstraints];

  return v4;
}

- (void)_insertBackgroundView
{
  if (self->_backgroundView)
  {
    v17 = sub_10006D178();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v29 = "[NavSecondarySignViewController _insertBackgroundView]";
      v30 = 2080;
      v31 = "NavSecondarySignViewController.m";
      v32 = 1024;
      v33 = 146;
      v34 = 2080;
      v35 = "_backgroundView == nil";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v18 = sub_10006D178();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v29 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  [(UIView *)self->_backgroundView removeFromSuperview];
  backgroundView = self->_backgroundView;
  self->_backgroundView = 0;

  v4 = [(NavSecondarySignViewController *)self view];
  v5 = [(NavSecondarySignViewController *)self backgroundView];
  [v4 insertSubview:v5 atIndex:0];

  v6 = [NSMutableArray alloc];
  v25 = [(UIView *)self->_backgroundView leadingAnchor];
  v26 = [(NavSecondarySignViewController *)self view];
  v24 = [v26 leadingAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v27[0] = v23;
  v21 = [(UIView *)self->_backgroundView trailingAnchor];
  v22 = [(NavSecondarySignViewController *)self view];
  v20 = [v22 trailingAnchor];
  v7 = [v21 constraintEqualToAnchor:v20];
  v27[1] = v7;
  v8 = [(UIView *)self->_backgroundView bottomAnchor];
  v9 = [(NavSecondarySignViewController *)self view];
  v10 = [v9 bottomAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v27[2] = v11;
  v12 = [(UIView *)self->_backgroundView heightAnchor];
  v13 = [v12 constraintEqualToConstant:64.0];
  v27[3] = v13;
  v14 = [NSArray arrayWithObjects:v27 count:4];
  v15 = [v6 initWithArray:v14];

  if (self->_containerView)
  {
    v16 = [(NavSecondarySignViewController *)self _containerConstraints];
    [v15 addObjectsFromArray:v16];
  }

  [NSLayoutConstraint activateConstraints:v15];
}

- (UIView)backgroundView
{
  backgroundView = self->_backgroundView;
  if (!backgroundView)
  {
    v4 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_backgroundView;
    self->_backgroundView = v4;

    [(UIView *)self->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [UIColor colorWithWhite:1.0 alpha:0.159999996];
    [(UIView *)self->_backgroundView setBackgroundColor:v6];

    backgroundView = self->_backgroundView;
  }

  return backgroundView;
}

- (void)viewDidLoad
{
  v53.receiver = self;
  v53.super_class = NavSecondarySignViewController;
  [(NavSecondarySignViewController *)&v53 viewDidLoad];
  v3 = [(NavSecondarySignViewController *)self view];
  [v3 setUserInteractionEnabled:0];

  v4 = [(NavSecondarySignViewController *)self view];
  v5 = [v4 layer];
  [v5 setMasksToBounds:1];

  [(NavSecondarySignViewController *)self _insertBackgroundView];
  v6 = objc_opt_new();
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [v6 layer];
  [v7 setMasksToBounds:1];

  objc_storeStrong(&self->_containerView, v6);
  if (_UISolariumEnabled())
  {
    [(UIView *)self->_backgroundView addSubview:v6];
  }

  else
  {
    v8 = [(NavSecondarySignViewController *)self view];
    [v8 addSubview:v6];
  }

  v9 = objc_opt_new();
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 setAccessibilityIdentifier:@"ImageContainerView"];
  [v6 addSubview:v9];
  v10 = [[GuidanceManeuverView alloc] initWithFrame:0 textureProvider:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  guidanceManeuverView = self->_guidanceManeuverView;
  self->_guidanceManeuverView = v10;

  [(GuidanceManeuverView *)self->_guidanceManeuverView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(GuidanceManeuverView *)self->_guidanceManeuverView setFraming:1];
  [(GuidanceManeuverView *)self->_guidanceManeuverView setAlpha:0.800000012];
  [v9 addSubview:self->_guidanceManeuverView];
  v12 = objc_opt_new();
  primaryTextLabel = self->_primaryTextLabel;
  self->_primaryTextLabel = v12;

  [(UILabel *)self->_primaryTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_primaryTextLabel setAccessibilityIdentifier:@"PrimaryTextLabel"];
  [v6 addSubview:self->_primaryTextLabel];
  v39 = [NSMutableArray alloc];
  v52 = [v9 leadingAnchor];
  v51 = [v6 leadingAnchor];
  v50 = [v52 constraintEqualToAnchor:v51];
  v54[0] = v50;
  v49 = [v9 topAnchor];
  v48 = [v6 topAnchor];
  v47 = [v49 constraintEqualToAnchor:v48];
  v54[1] = v47;
  v46 = [v9 bottomAnchor];
  v45 = [v6 bottomAnchor];
  v44 = [v46 constraintEqualToAnchor:v45];
  v54[2] = v44;
  v43 = [v9 widthAnchor];
  [(RouteStepListMetrics *)self->_metrics imageAreaWidth];
  v42 = [v43 constraintEqualToConstant:?];
  v54[3] = v42;
  v41 = [(GuidanceManeuverView *)self->_guidanceManeuverView centerXAnchor];
  v38 = [v9 centerXAnchor];
  [(RouteStepListMetrics *)self->_metrics imageCenterXOffset];
  v37 = [v41 constraintEqualToAnchor:v38 constant:?];
  v54[4] = v37;
  v35 = [(GuidanceManeuverView *)self->_guidanceManeuverView centerYAnchor];
  v34 = [v9 centerYAnchor];
  v33 = [v35 constraintEqualToAnchor:v34 constant:-2.0];
  v54[5] = v33;
  v32 = [(GuidanceManeuverView *)self->_guidanceManeuverView widthAnchor];
  v31 = [v32 constraintEqualToConstant:48.0];
  v54[6] = v31;
  v30 = [(GuidanceManeuverView *)self->_guidanceManeuverView heightAnchor];
  v29 = [v30 constraintEqualToConstant:48.0];
  v54[7] = v29;
  v28 = [(UILabel *)self->_primaryTextLabel leadingAnchor];
  v27 = [v9 trailingAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v54[8] = v26;
  v25 = [(UILabel *)self->_primaryTextLabel trailingAnchor];
  v36 = v6;
  v24 = [v6 trailingAnchor];
  [(RouteStepListMetrics *)self->_metrics textTrailingMargin];
  v15 = [v25 constraintEqualToAnchor:v24 constant:-v14];
  v54[9] = v15;
  v16 = [(UILabel *)self->_primaryTextLabel centerYAnchor];
  v17 = [v36 centerYAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:-2.0];
  v54[10] = v18;
  v19 = [(NavSecondarySignViewController *)self view];
  v20 = [v19 heightAnchor];
  v21 = [v20 constraintEqualToConstant:72.0];
  v54[11] = v21;
  v22 = [NSArray arrayWithObjects:v54 count:12];
  v40 = [v39 initWithArray:v22];

  v23 = [(NavSecondarySignViewController *)self _containerConstraints];
  [v40 addObjectsFromArray:v23];

  [NSLayoutConstraint activateConstraints:v40];
}

- (NavSecondarySignViewController)init
{
  v9.receiver = self;
  v9.super_class = NavSecondarySignViewController;
  v2 = [(NavSecondarySignViewController *)&v9 initWithNibName:0 bundle:0];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    [(NavSecondarySignViewController *)v2 setAccessibilityIdentifier:v4];

    v5 = +[RouteStepListMetrics navSignMetrics];
    metrics = v2->_metrics;
    v2->_metrics = v5;

    v7 = +[MNNavigationService sharedService];
    [v7 registerObserver:v2];
  }

  return v2;
}

@end