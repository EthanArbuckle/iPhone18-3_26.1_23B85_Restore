@interface DirectionsElevationGraphHeaderView
- (DirectionsElevationGraphHeaderView)initWithFrame:(CGRect)frame;
- (DirectionsElevationGraphHeaderViewDelegate)delegate;
- (float)_calculateTransitionProgress;
- (void)_scheduleUpdateMinimumMaximumHeights;
- (void)_updateLabels;
- (void)_updateMinimumMaximumHeights;
- (void)_updateTransition;
- (void)layoutSubviews;
- (void)setRoute:(id)route;
- (void)setStyleForNavigation:(BOOL)navigation;
- (void)setTransitionProgress:(float)progress;
@end

@implementation DirectionsElevationGraphHeaderView

- (DirectionsElevationGraphHeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateTransition
{
  if (self->_minimumHeight == 0.0 || self->_maximumHeight == 0.0)
  {
    [(NSLayoutConstraint *)self->_textContainerTopConstraint setConstant:self->_textContainerMaxTopMargin];
    [(NSLayoutConstraint *)self->_innerContentBottomConstraint setConstant:0.0];
    textContainerView = self->_textContainerView;

    [(UIView *)textContainerView setAlpha:1.0];
  }

  else
  {
    transitionProgress = self->_transitionProgress;
    [(UIView *)self->_textContainerView bounds];
    [(NSLayoutConstraint *)self->_textContainerTopConstraint setConstant:self->_textContainerMaxTopMargin - (self->_textContainerMaxTopMargin + CGRectGetHeight(v8)) * transitionProgress];
    [(UIView *)self->_textContainerView setAlpha:(1.0 - self->_transitionProgress)];
    v5 = self->_transitionProgress * 16.0;
    innerContentBottomConstraint = self->_innerContentBottomConstraint;

    [(NSLayoutConstraint *)innerContentBottomConstraint setConstant:v5];
  }
}

- (void)_updateMinimumMaximumHeights
{
  self->_recalculatingHeights = 1;
  [(DirectionsElevationGraphHeaderView *)self bounds];
  self->_widthForLastMinMaxCalculation = CGRectGetWidth(v11);
  delegate = [(DirectionsElevationGraphHeaderView *)self delegate];
  [delegate directionsElevationGraphHeaderViewWillRecalculateHeights:self];

  top = self->_contentInsets.top;
  [(NSLayoutConstraint *)self->_graphMinimumHeightConstraint constant];
  self->_minimumHeight = top + 16.0 + v5 + self->_contentInsets.bottom;
  [(DirectionsElevationGraphHeaderView *)self setTransitionProgress:0.0];
  heightAnchor = [(DirectionsElevationGraphView *)self->_chartView heightAnchor];
  [(NSLayoutConstraint *)self->_graphMaximumHeightConstraint constant];
  v9 = [heightAnchor constraintEqualToConstant:?];

  [v9 setActive:1];
  [(DirectionsElevationGraphHeaderView *)self systemLayoutSizeFittingSize:UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height];
  self->_maximumHeight = v7;
  [v9 setActive:0];
  [(DirectionsElevationGraphHeaderView *)self setNeedsLayout];
  [(DirectionsElevationGraphHeaderView *)self layoutIfNeeded];
  self->_recalculatingHeights = 0;
  delegate2 = [(DirectionsElevationGraphHeaderView *)self delegate];
  [delegate2 directionsElevationGraphHeaderViewDidRecalculateHeights:self];
}

- (void)_scheduleUpdateMinimumMaximumHeights
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10092C3DC;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)setTransitionProgress:(float)progress
{
  v3 = fminf(fmaxf(progress, 0.0), 1.0);
  if (self->_transitionProgress != v3)
  {
    self->_transitionProgress = v3;
    [(DirectionsElevationGraphHeaderView *)self _updateTransition];
  }
}

- (float)_calculateTransitionProgress
{
  [(DirectionsElevationGraphHeaderView *)self bounds];
  Height = CGRectGetHeight(v9);
  minimumHeight = self->_minimumHeight;
  v5 = 1.0;
  if (Height > minimumHeight)
  {
    maximumHeight = self->_maximumHeight;
    v5 = 0.0;
    if (Height < maximumHeight)
    {
      v7 = (minimumHeight - Height) / (maximumHeight - minimumHeight);
      return v7 + 1.0;
    }
  }

  return v5;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = DirectionsElevationGraphHeaderView;
  [(DirectionsElevationGraphHeaderView *)&v4 layoutSubviews];
  if (self->_recalculatingHeights || (widthForLastMinMaxCalculation = self->_widthForLastMinMaxCalculation, [(DirectionsElevationGraphHeaderView *)self bounds], vabdd_f64(widthForLastMinMaxCalculation, CGRectGetWidth(v5)) <= 2.22044605e-16))
  {
    if (self->_minimumHeight > 0.0 && self->_maximumHeight > 0.0)
    {
      [(DirectionsElevationGraphHeaderView *)self _calculateTransitionProgress];
      [(DirectionsElevationGraphHeaderView *)self setTransitionProgress:?];
    }
  }

  else
  {
    [(DirectionsElevationGraphHeaderView *)self _updateMinimumMaximumHeights];
  }
}

- (void)_updateLabels
{
  elevationProfile = [(GEOComposedRoute *)self->_route elevationProfile];

  if (elevationProfile)
  {
    elevationProfile2 = [(GEOComposedRoute *)self->_route elevationProfile];
    v5 = [elevationProfile2 sumElevationGainCm] * 0.01;

    elevationProfile3 = [(GEOComposedRoute *)self->_route elevationProfile];
    v7 = [elevationProfile3 sumElevationLossCm] * 0.01;
  }

  else
  {
    v7 = 0.0;
    v5 = 0.0;
  }

  v8 = sub_1007993AC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    selfCopy = self;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    if (objc_opt_respondsToSelector())
    {
      v12 = [(DirectionsElevationGraphHeaderView *)selfCopy performSelector:"accessibilityIdentifier"];
      v13 = v12;
      if (v12 && ![v12 isEqualToString:v11])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v11, selfCopy, v13];

        goto LABEL_10;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v11, selfCopy];
LABEL_10:

    *buf = 138412290;
    v23 = selfCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%@ | Will update labels for gain/loss", buf, 0xCu);
  }

  labelSummaryView = self->_labelSummaryView;
  v16 = [NSMeasurement alloc];
  v17 = +[NSUnitLength meters];
  v18 = [v16 initWithDoubleValue:v17 unit:v5];
  v19 = [NSMeasurement alloc];
  v20 = +[NSUnitLength meters];
  v21 = [v19 initWithDoubleValue:v20 unit:v7];
  [(DirectionsElevationLabelSummaryView *)labelSummaryView setAscent:v18 descent:v21];
}

- (void)setRoute:(id)route
{
  routeCopy = route;
  if (self->_route != routeCopy)
  {
    v8 = routeCopy;
    objc_storeStrong(&self->_route, route);
    [(DirectionsElevationGraphHeaderView *)self _updateLabels];
    chartView = self->_chartView;
    elevationProfile = [(GEOComposedRoute *)v8 elevationProfile];
    [(GEOComposedRoute *)v8 distance];
    [(DirectionsElevationGraphView *)chartView setElevationProfile:elevationProfile routeLength:?];

    routeCopy = v8;
  }
}

- (void)setStyleForNavigation:(BOOL)navigation
{
  if (self->_styleForNavigation != navigation)
  {
    navigationCopy = navigation;
    self->_styleForNavigation = navigation;
    graphMinimumHeightConstraint = self->_graphMinimumHeightConstraint;
    v5 = [NSArray arrayWithObjects:&graphMinimumHeightConstraint count:1];
    [NSLayoutConstraint deactivateConstraints:v5];

    heightAnchor = [(DirectionsElevationGraphView *)self->_chartView heightAnchor];
    v7 = [heightAnchor constraintGreaterThanOrEqualToConstant:0.0];
    v8 = 50.0;
    if (navigationCopy)
    {
      v8 = 80.0;
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }

    v10 = [DynamicTypeWizard autoscaledConstraint:v7 constant:&stru_10162EF78 withFontProvider:v8];
    v11 = self->_graphMinimumHeightConstraint;
    self->_graphMinimumHeightConstraint = v10;

    v17 = self->_graphMinimumHeightConstraint;
    v12 = [NSArray arrayWithObjects:&v17 count:1];
    [NSLayoutConstraint activateConstraints:v12];

    chartView = self->_chartView;
    v14 = [DirectionsElevationGraphConfiguration alloc];
    traitCollection = [(DirectionsElevationGraphHeaderView *)self traitCollection];
    v16 = -[DirectionsElevationGraphConfiguration initWithUseType:userInterfaceIdiom:](v14, "initWithUseType:userInterfaceIdiom:", v9, [traitCollection userInterfaceIdiom]);
    [(DirectionsElevationGraphView *)chartView setConfiguration:v16];

    [(DirectionsElevationGraphHeaderView *)self _updateMinimumMaximumHeights];
  }
}

- (DirectionsElevationGraphHeaderView)initWithFrame:(CGRect)frame
{
  v122.receiver = self;
  v122.super_class = DirectionsElevationGraphHeaderView;
  v3 = [(DirectionsElevationGraphHeaderView *)&v122 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [(DirectionsElevationGraphHeaderView *)v3 setAccessibilityIdentifier:v5];

    [(DirectionsElevationGraphHeaderView *)v3 setClipsToBounds:1];
    v6 = objc_alloc_init(NSMutableArray);
    v7 = [UIView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v11 = [v7 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v11 setClipsToBounds:1];
    v12 = [UIColor colorNamed:@"RoutePlanningPlatterBackground"];
    [v11 setBackgroundColor:v12];

    traitCollection = [(DirectionsElevationGraphHeaderView *)v3 traitCollection];
    _UITableViewDefaultSectionCornerRadiusForTraitCollection();
    [v11 _setContinuousCornerRadius:?];

    v14 = +[UIColor lightGrayColor];
    cGColor = [v14 CGColor];
    layer = [v11 layer];
    [layer setShadowColor:cGColor];

    layer2 = [v11 layer];
    LODWORD(v18) = 1045220557;
    [layer2 setShadowOpacity:v18];

    layer3 = [v11 layer];
    [layer3 setShadowRadius:3.0];

    layer4 = [v11 layer];
    [layer4 setShadowOffset:{0.0, 0.0}];

    [v11 setAccessibilityIdentifier:@"InnerContentView"];
    [(DirectionsElevationGraphHeaderView *)v3 addSubview:v11];
    LODWORD(v21) = 1148846080;
    v22 = [v11 _maps_constraintsEqualToEdgesOfView:v3 insets:0.0 priority:{16.0, 16.0, 16.0, v21}];
    bottomConstraint = [v22 bottomConstraint];
    innerContentBottomConstraint = v3->_innerContentBottomConstraint;
    v3->_innerContentBottomConstraint = bottomConstraint;

    v117 = v22;
    allConstraints = [v22 allConstraints];
    v121 = v6;
    [v6 addObjectsFromArray:allConstraints];

    v26 = [DirectionsElevationGraphConfiguration alloc];
    traitCollection2 = [(DirectionsElevationGraphHeaderView *)v3 traitCollection];
    v28 = -[DirectionsElevationGraphConfiguration initWithUseType:userInterfaceIdiom:](v26, "initWithUseType:userInterfaceIdiom:", 0, [traitCollection2 userInterfaceIdiom]);

    v116 = v28;
    v29 = [[DirectionsElevationGraphView alloc] initWithConfiguration:v28];
    [(DirectionsElevationGraphView *)v29 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v11 addSubview:v29];
    p_chartView = &v3->_chartView;
    v115 = v29;
    objc_storeStrong(&v3->_chartView, v29);
    v30 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    textContainerView = v3->_textContainerView;
    v3->_textContainerView = v30;

    [(UIView *)v3->_textContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v32) = 1148846080;
    [(UIView *)v3->_textContainerView setContentCompressionResistancePriority:1 forAxis:v32];
    LODWORD(v33) = 1148846080;
    [(UIView *)v3->_textContainerView setContentHuggingPriority:1 forAxis:v33];
    [(UIView *)v3->_textContainerView setAccessibilityIdentifier:@"TextContainer"];
    [v11 addSubview:v3->_textContainerView];
    height = [[DirectionsElevationLabelSummaryView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    labelSummaryView = v3->_labelSummaryView;
    v3->_labelSummaryView = height;

    [(DirectionsElevationLabelSummaryView *)v3->_labelSummaryView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v36) = 1148846080;
    [(DirectionsElevationLabelSummaryView *)v3->_labelSummaryView setContentCompressionResistancePriority:1 forAxis:v36];
    LODWORD(v37) = 1148846080;
    [(DirectionsElevationLabelSummaryView *)v3->_labelSummaryView setContentHuggingPriority:1 forAxis:v37];
    [(DirectionsElevationLabelSummaryView *)v3->_labelSummaryView setAccessibilityIdentifier:@"LabelSummary"];
    [(UIView *)v3->_textContainerView addSubview:v3->_labelSummaryView];
    v38 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v38 setLineBreakMode:0];
    [v38 setAdjustsFontForContentSizeCategory:1];
    v39 = v38;
    [v38 setAccessibilityIdentifier:@"TitleLabel"];
    if (sub_10000FA08(v3) == 5)
    {
      v40 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody];
      v41 = [v40 fontDescriptorWithSymbolicTraits:2];

      v42 = [UIFont fontWithDescriptor:v41 size:0.0];
      v43 = v3->_labelSummaryView;
      v44 = +[UIColor labelColor];
      [(DirectionsElevationLabelSummaryView *)v43 setFont:v42 color:v44];

      v45 = &stru_10162EF18;
    }

    else
    {
      v45 = &stru_10162EF38;
    }

    v101 = v45;
    v46 = v45->invoke(v45);
    [v39 setFont:v46];

    v47 = +[NSBundle mainBundle];
    v48 = [v47 localizedStringForKey:@"Total Elevation [Chart Header]" value:@"localized string not found" table:0];
    [v39 setText:v48];

    v49 = +[UIColor secondaryLabelColor];
    v119 = v39;
    [v39 setTextColor:v49];

    LODWORD(v50) = 1148846080;
    [v39 setContentHuggingPriority:1 forAxis:v50];
    LODWORD(v51) = 1148846080;
    [v39 setContentCompressionResistancePriority:1 forAxis:v51];
    LODWORD(v52) = 1148829696;
    [v39 setContentCompressionResistancePriority:0 forAxis:v52];
    [(UIView *)v3->_textContainerView addSubview:v39];
    v53 = sub_10000FA08(v3);
    v54 = 12.0;
    if (v53 == 5)
    {
      v55 = 16.0;
    }

    else
    {
      v55 = 12.0;
    }

    if (v53 == 5)
    {
      v56 = 10.0;
    }

    else
    {
      v56 = 12.0;
    }

    if (v53 == 5)
    {
      v54 = 14.0;
    }

    v3->_contentInsets.top = v54;
    v3->_contentInsets.left = v55;
    v3->_contentInsets.bottom = v56;
    v3->_contentInsets.right = v55;
    v3->_textContainerMaxTopMargin = v54;
    topAnchor = [(UIView *)v3->_textContainerView topAnchor];
    topAnchor2 = [v11 topAnchor];
    v59 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v3->_textContainerMaxTopMargin];
    textContainerTopConstraint = v3->_textContainerTopConstraint;
    v3->_textContainerTopConstraint = v59;

    heightAnchor = [*p_chartView heightAnchor];
    v62 = [heightAnchor constraintGreaterThanOrEqualToConstant:0.0];
    v63 = 50.0;
    if (v3->_styleForNavigation)
    {
      v63 = 80.0;
    }

    v64 = [DynamicTypeWizard autoscaledConstraint:v62 constant:&stru_10162EF58 withFontProvider:v63];
    v118 = v11;
    graphMinimumHeightConstraint = v3->_graphMinimumHeightConstraint;
    v3->_graphMinimumHeightConstraint = v64;

    heightAnchor2 = [*p_chartView heightAnchor];
    v67 = [heightAnchor2 constraintLessThanOrEqualToConstant:0.0];
    v68 = [DynamicTypeWizard autoscaledConstraint:v67 constant:&stru_10162EF58 withFontProvider:80.0];
    graphMaximumHeightConstraint = v3->_graphMaximumHeightConstraint;
    v3->_graphMaximumHeightConstraint = v68;

    topAnchor3 = [(DirectionsElevationLabelSummaryView *)v3->_labelSummaryView topAnchor];
    topAnchor4 = [(UIView *)v3->_textContainerView topAnchor];
    v112 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v124[0] = v112;
    leadingAnchor = [(DirectionsElevationLabelSummaryView *)v3->_labelSummaryView leadingAnchor];
    leadingAnchor2 = [(UIView *)v3->_textContainerView leadingAnchor];
    v109 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v124[1] = v109;
    trailingAnchor = [(UIView *)v3->_textContainerView trailingAnchor];
    trailingAnchor2 = [(DirectionsElevationLabelSummaryView *)v3->_labelSummaryView trailingAnchor];
    v106 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2];
    v124[2] = v106;
    firstBaselineAnchor = [v39 firstBaselineAnchor];
    lastBaselineAnchor = [(DirectionsElevationLabelSummaryView *)v3->_labelSummaryView lastBaselineAnchor];
    v103 = [firstBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor];
    v102 = [DynamicTypeWizard autoscaledConstraint:v103 constant:v101 withFontProvider:17.0];
    v124[3] = v102;
    leadingAnchor3 = [v39 leadingAnchor];
    leadingAnchor4 = [(UIView *)v3->_textContainerView leadingAnchor];
    v98 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v124[4] = v98;
    trailingAnchor3 = [(UIView *)v3->_textContainerView trailingAnchor];
    trailingAnchor4 = [v39 trailingAnchor];
    v95 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v124[5] = v95;
    bottomAnchor = [(UIView *)v3->_textContainerView bottomAnchor];
    bottomAnchor2 = [v39 bottomAnchor];
    v91 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v124[6] = v91;
    v124[7] = v3->_textContainerTopConstraint;
    leadingAnchor5 = [(UIView *)v3->_textContainerView leadingAnchor];
    leadingAnchor6 = [v11 leadingAnchor];
    v89 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:v55];
    v124[8] = v89;
    trailingAnchor5 = [v11 trailingAnchor];
    trailingAnchor6 = [(UIView *)v3->_textContainerView trailingAnchor];
    v86 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:v55];
    v124[9] = v86;
    v124[10] = v3->_graphMinimumHeightConstraint;
    v124[11] = v3->_graphMaximumHeightConstraint;
    topAnchor5 = [*p_chartView topAnchor];
    lastBaselineAnchor2 = [(UIView *)v3->_textContainerView lastBaselineAnchor];
    v83 = [topAnchor5 constraintEqualToAnchor:lastBaselineAnchor2];
    v82 = [DynamicTypeWizard autoscaledConstraint:v83 constant:v101 withFontProvider:15.0];
    v124[12] = v82;
    leadingAnchor7 = [*p_chartView leadingAnchor];
    leadingAnchor8 = [v11 leadingAnchor];
    v71 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:v55];
    v124[13] = v71;
    trailingAnchor7 = [v11 trailingAnchor];
    trailingAnchor8 = [*p_chartView trailingAnchor];
    v74 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:v55];
    v124[14] = v74;
    bottomAnchor3 = [v11 bottomAnchor];
    bottomAnchor4 = [*p_chartView bottomAnchor];
    v77 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:v56];
    v124[15] = v77;
    v78 = [NSArray arrayWithObjects:v124 count:16];
    [v121 addObjectsFromArray:v78];

    [NSLayoutConstraint activateConstraints:v121];
    v123[0] = v3->_labelSummaryView;
    v123[1] = v119;
    v123[2] = *p_chartView;
    v79 = [NSArray arrayWithObjects:v123 count:3];
    [(DirectionsElevationGraphHeaderView *)v3 setAccessibilityElements:v79];

    [(DirectionsElevationGraphHeaderView *)v3 _updateMinimumMaximumHeights];
    [DynamicTypeWizard makeObject:v3 performSelector:"_scheduleUpdateMinimumMaximumHeights" whenSizeCategoryChangesWithOrder:2];
  }

  return v3;
}

@end