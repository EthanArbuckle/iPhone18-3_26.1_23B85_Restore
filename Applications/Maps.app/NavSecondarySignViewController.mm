@interface NavSecondarySignViewController
- (NavSecondarySignViewController)init;
- (UIView)backgroundView;
- (id)_containerConstraints;
- (id)_currentSign;
- (id)_effectiveJunctionForSign:(id)sign;
- (void)_insertBackgroundView;
- (void)_updateSign;
- (void)navigationService:(id)service hideLaneDirectionsForId:(id)id;
- (void)navigationService:(id)service showLaneDirections:(id)directions;
- (void)navigationService:(id)service updateSignsWithInfo:(id)info;
- (void)setCornerRadius:(double)radius;
- (void)viewDidLoad;
@end

@implementation NavSecondarySignViewController

- (id)_effectiveJunctionForSign:(id)sign
{
  signCopy = sign;
  latestPrimarySign = self->_latestPrimarySign;
  if (latestPrimarySign && ((-[MNGuidanceSignDescription junction](latestPrimarySign, "junction"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 maneuverType], v6, latestSecondarySign = self->_latestSecondarySign, latestSecondarySign == signCopy) ? (v9 = v7 - 85 > 1) : (v9 = 1), !v9 && (-[MNGuidanceSignDescription junction](latestSecondarySign, "junction"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "maneuverType"), v10, v11 == v7)))
  {
    junction = 0;
  }

  else
  {
    junction = [(MNGuidanceSignDescription *)signCopy junction];
  }

  return junction;
}

- (void)_updateSign
{
  uniqueID = [(MNGuidanceSignDescription *)self->_latestPrimarySign uniqueID];
  drawnPrimarySignID = self->_drawnPrimarySignID;
  self->_drawnPrimarySignID = uniqueID;

  uniqueID2 = [(MNGuidanceSignDescription *)self->_latestSecondarySign uniqueID];
  drawnSecondarySignID = self->_drawnSecondarySignID;
  self->_drawnSecondarySignID = uniqueID2;

  _currentSign = [(NavSecondarySignViewController *)self _currentSign];
  v8 = _currentSign;
  if (_currentSign)
  {
    secondaryStrings = [_currentSign secondaryStrings];
    v10 = [secondaryStrings count];

    if (v10)
    {
      v11 = [MKServerFormattedString alloc];
      secondaryStrings2 = [v8 secondaryStrings];
      firstObject = [secondaryStrings2 firstObject];
      v14 = [v11 initWithComposedString:firstObject];
    }

    else
    {
      v15 = [MKServerFormattedStringParameters alloc];
      distanceDetailLevel = [v8 distanceDetailLevel];
      variableOverrides = [v8 variableOverrides];
      secondaryStrings2 = [v15 initWithInstructionsDistanceDetailLevel:distanceDetailLevel variableOverrides:variableOverrides];

      details = [v8 details];
      firstObject = [details firstObject];

      v14 = [[MKServerFormattedString alloc] initWithGeoServerString:firstObject parameters:secondaryStrings2];
    }

    v19 = v14;

    [(RouteStepListMetrics *)self->_metrics displayedAsSecondaryFontPointSize];
    v21 = v20;
    [(RouteStepListMetrics *)self->_metrics displayedAsSecondaryFontWeight];
    v23 = [UIFont systemFontOfSize:v21 weight:v22];
    v44[0] = NSForegroundColorAttributeName;
    displayedAsSecondaryTextColor = [(RouteStepListMetrics *)self->_metrics displayedAsSecondaryTextColor];
    v45[0] = displayedAsSecondaryTextColor;
    v45[1] = v23;
    v44[1] = NSFontAttributeName;
    v44[2] = MKServerFormattedStringArtworkSizeAttributeKey;
    v45[2] = &off_1016E96B0;
    v25 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:3];
    v26 = [v19 multiPartAttributedStringWithAttributes:v25];
    attributedString = [v26 attributedString];
    [(UILabel *)self->_primaryTextLabel setAttributedText:attributedString];
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
  maneuverType = [v28 maneuverType];
  drivingSide = [v28 drivingSide];
  artworkOverride = [v8 artworkOverride];
  v34 = [(GuidanceManeuverArtwork *)v30 initWithManeuver:maneuverType junction:v29 drivingSide:drivingSide artworkDataSource:artworkOverride];
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
  arrowColor = [(RouteStepListMetrics *)self->_metrics arrowColor];
  [(GuidanceManeuverView *)self->_guidanceManeuverView setArrowColor:arrowColor];

  arrowAccentColor = [(RouteStepListMetrics *)self->_metrics arrowAccentColor];
  [(GuidanceManeuverView *)self->_guidanceManeuverView setAccentColor:arrowAccentColor];
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

- (void)navigationService:(id)service hideLaneDirectionsForId:(id)id
{
  isShowingMidstepLaneGuidance = self->_isShowingMidstepLaneGuidance;
  self->_isShowingMidstepLaneGuidance = 0;
  if (isShowingMidstepLaneGuidance)
  {
    [(NavSecondarySignViewController *)self _updateSign:service];
  }
}

- (void)navigationService:(id)service showLaneDirections:(id)directions
{
  isShowingMidstepLaneGuidance = self->_isShowingMidstepLaneGuidance;
  isForManeuver = [directions isForManeuver];
  self->_isShowingMidstepLaneGuidance = isForManeuver ^ 1;
  if (isShowingMidstepLaneGuidance != (isForManeuver ^ 1))
  {

    [(NavSecondarySignViewController *)self _updateSign];
  }
}

- (void)navigationService:(id)service updateSignsWithInfo:(id)info
{
  infoCopy = info;
  primarySign = [infoCopy primarySign];
  secondarySign = [infoCopy secondarySign];

  if (!self->_isShowingMidstepLaneGuidance)
  {
    LOBYTE(v10) = 0;
LABEL_7:
    uniqueID = [secondarySign uniqueID];
    v12 = uniqueID;
    if (uniqueID | self->_drawnSecondarySignID)
    {
      v13 = [uniqueID isEqual:?] ^ 1;
    }

    else
    {
      LOBYTE(v13) = 0;
    }

    LOBYTE(v10) = v10 | v13;
    goto LABEL_11;
  }

  uniqueID2 = [primarySign uniqueID];
  v9 = uniqueID2;
  if (uniqueID2 | self->_drawnPrimarySignID)
  {
    v10 = [uniqueID2 isEqual:?] ^ 1;
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
  self->_latestPrimarySign = primarySign;
  v15 = primarySign;

  latestSecondarySign = self->_latestSecondarySign;
  self->_latestSecondarySign = secondarySign;

  if (v10)
  {

    [(NavSecondarySignViewController *)self _updateSign];
  }
}

- (void)setCornerRadius:(double)radius
{
  [(NavSecondarySignViewController *)self loadViewIfNeeded];
  layer = [(UIView *)self->_backgroundView layer];
  [layer setMaskedCorners:12];

  layer2 = [(UIView *)self->_backgroundView layer];
  [layer2 setCornerCurve:kCACornerCurveContinuous];

  layer3 = [(UIView *)self->_backgroundView layer];
  [layer3 setCornerRadius:radius];
}

- (id)_containerConstraints
{
  LODWORD(v2) = 1148846080;
  v3 = [(UIView *)self->_containerView _maps_constraintsEqualToEdgesOfView:self->_backgroundView priority:v2];
  allConstraints = [v3 allConstraints];

  return allConstraints;
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

  view = [(NavSecondarySignViewController *)self view];
  backgroundView = [(NavSecondarySignViewController *)self backgroundView];
  [view insertSubview:backgroundView atIndex:0];

  v6 = [NSMutableArray alloc];
  leadingAnchor = [(UIView *)self->_backgroundView leadingAnchor];
  view2 = [(NavSecondarySignViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v27[0] = v23;
  trailingAnchor = [(UIView *)self->_backgroundView trailingAnchor];
  view3 = [(NavSecondarySignViewController *)self view];
  trailingAnchor2 = [view3 trailingAnchor];
  v7 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v27[1] = v7;
  bottomAnchor = [(UIView *)self->_backgroundView bottomAnchor];
  view4 = [(NavSecondarySignViewController *)self view];
  bottomAnchor2 = [view4 bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v27[2] = v11;
  heightAnchor = [(UIView *)self->_backgroundView heightAnchor];
  v13 = [heightAnchor constraintEqualToConstant:64.0];
  v27[3] = v13;
  v14 = [NSArray arrayWithObjects:v27 count:4];
  v15 = [v6 initWithArray:v14];

  if (self->_containerView)
  {
    _containerConstraints = [(NavSecondarySignViewController *)self _containerConstraints];
    [v15 addObjectsFromArray:_containerConstraints];
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
  view = [(NavSecondarySignViewController *)self view];
  [view setUserInteractionEnabled:0];

  view2 = [(NavSecondarySignViewController *)self view];
  layer = [view2 layer];
  [layer setMasksToBounds:1];

  [(NavSecondarySignViewController *)self _insertBackgroundView];
  v6 = objc_opt_new();
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  layer2 = [v6 layer];
  [layer2 setMasksToBounds:1];

  objc_storeStrong(&self->_containerView, v6);
  if (_UISolariumEnabled())
  {
    [(UIView *)self->_backgroundView addSubview:v6];
  }

  else
  {
    view3 = [(NavSecondarySignViewController *)self view];
    [view3 addSubview:v6];
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
  leadingAnchor = [v9 leadingAnchor];
  leadingAnchor2 = [v6 leadingAnchor];
  v50 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v54[0] = v50;
  topAnchor = [v9 topAnchor];
  topAnchor2 = [v6 topAnchor];
  v47 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v54[1] = v47;
  bottomAnchor = [v9 bottomAnchor];
  bottomAnchor2 = [v6 bottomAnchor];
  v44 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v54[2] = v44;
  widthAnchor = [v9 widthAnchor];
  [(RouteStepListMetrics *)self->_metrics imageAreaWidth];
  v42 = [widthAnchor constraintEqualToConstant:?];
  v54[3] = v42;
  centerXAnchor = [(GuidanceManeuverView *)self->_guidanceManeuverView centerXAnchor];
  centerXAnchor2 = [v9 centerXAnchor];
  [(RouteStepListMetrics *)self->_metrics imageCenterXOffset];
  v37 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2 constant:?];
  v54[4] = v37;
  centerYAnchor = [(GuidanceManeuverView *)self->_guidanceManeuverView centerYAnchor];
  centerYAnchor2 = [v9 centerYAnchor];
  v33 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:-2.0];
  v54[5] = v33;
  widthAnchor2 = [(GuidanceManeuverView *)self->_guidanceManeuverView widthAnchor];
  v31 = [widthAnchor2 constraintEqualToConstant:48.0];
  v54[6] = v31;
  heightAnchor = [(GuidanceManeuverView *)self->_guidanceManeuverView heightAnchor];
  v29 = [heightAnchor constraintEqualToConstant:48.0];
  v54[7] = v29;
  leadingAnchor3 = [(UILabel *)self->_primaryTextLabel leadingAnchor];
  trailingAnchor = [v9 trailingAnchor];
  v26 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor];
  v54[8] = v26;
  trailingAnchor2 = [(UILabel *)self->_primaryTextLabel trailingAnchor];
  v36 = v6;
  trailingAnchor3 = [v6 trailingAnchor];
  [(RouteStepListMetrics *)self->_metrics textTrailingMargin];
  v15 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-v14];
  v54[9] = v15;
  centerYAnchor3 = [(UILabel *)self->_primaryTextLabel centerYAnchor];
  centerYAnchor4 = [v36 centerYAnchor];
  v18 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4 constant:-2.0];
  v54[10] = v18;
  view4 = [(NavSecondarySignViewController *)self view];
  heightAnchor2 = [view4 heightAnchor];
  v21 = [heightAnchor2 constraintEqualToConstant:72.0];
  v54[11] = v21;
  v22 = [NSArray arrayWithObjects:v54 count:12];
  v40 = [v39 initWithArray:v22];

  _containerConstraints = [(NavSecondarySignViewController *)self _containerConstraints];
  [v40 addObjectsFromArray:_containerConstraints];

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