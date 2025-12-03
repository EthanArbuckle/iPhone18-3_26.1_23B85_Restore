@interface RouteCreationCardView
- (RouteCreationCardView)initWithCoder:(id)coder;
- (RouteCreationCardView)initWithFrame:(CGRect)frame;
- (RouteCreationEditingDelegate)editingDelegate;
- (void)_commonInit;
- (void)_drawChart;
- (void)_pressedCloseLoop;
- (void)_pressedNav;
- (void)_pressedOutAndBack;
- (void)_pressedReverse;
- (void)_pressedRoutePlanning;
- (void)_pressedSave;
- (void)_pressedStepping;
- (void)_pressedUndo;
- (void)_unitsDidChange;
- (void)_updateButtons;
- (void)_updateDirectionsButtonWithSuggestedMode:(unint64_t)mode;
- (void)_updateGraphView;
- (void)layoutSubviews;
- (void)setEditingDelegate:(id)delegate;
- (void)setRoute:(id)route;
@end

@implementation RouteCreationCardView

- (RouteCreationEditingDelegate)editingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_editingDelegate);

  return WeakRetained;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = RouteCreationCardView;
  [(RouteCreationCardView *)&v9 layoutSubviews];
  elevationProfile = [(GEOComposedRoute *)self->_route elevationProfile];
  if (elevationProfile)
  {
    v4 = elevationProfile;
    renderedGraphWidth = self->_renderedGraphWidth;
    if (renderedGraphWidth)
    {
      [(NSNumber *)renderedGraphWidth cgFloatValue];
      v7 = v6;
      [(RouteCreationCardView *)self frame];
      v8 = vabdd_f64(v7, CGRectGetWidth(v10));

      if (v8 < 1.0)
      {
        return;
      }
    }

    else
    {
    }

    [(RouteCreationCardView *)self _updateGraphView];
  }
}

- (void)setEditingDelegate:(id)delegate
{
  objc_storeWeak(&self->_editingDelegate, delegate);

  [(RouteCreationCardView *)self _updateButtons];
}

- (void)setRoute:(id)route
{
  routeCopy = route;
  objc_storeStrong(&self->_route, route);
  persistentData = [routeCopy persistentData];
  routeData = self->_routeData;
  self->_routeData = persistentData;

  v7 = self->_routeData;
  v28[0] = NSFontAttributeName;
  v8 = [UIFont _preferredFontForTextStyle:UIFontTextStyleTitle2 weight:UIFontWeightSemibold];
  v29[0] = v8;
  v28[1] = NSForegroundColorAttributeName;
  v9 = +[UIColor labelColor];
  v29[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
  v11 = [(GEOComposedGeometryRoutePersistentData *)v7 distanceStringWithAttributes:v10];
  [(UILabel *)self->_distanceLabel setAttributedText:v11];

  v26[0] = NSFontAttributeName;
  v12 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  v26[1] = NSForegroundColorAttributeName;
  v27[0] = v12;
  v13 = +[UIColor secondaryLabelColor];
  v27[1] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
  v15 = [routeCopy timeAndElevationDescriptionStringWithAttributes:v14];
  [(MapsThemeMultiPartLabel *)self->_descriptionLabel setMultiPartString:v15];

  [(RouteCreationCardView *)self _updateGraphView];
  [(RouteCreationCardView *)self _updateButtons];
  if (self->_route)
  {
    objc_initWeak(&location, self);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100CFC3F4;
    v22[3] = &unk_101651820;
    objc_copyWeak(&v24, &location);
    v23 = routeCopy;
    v16 = objc_retainBlock(v22);
    v17 = +[MKLocationManager sharedLocationManager];
    lastLocation = [v17 lastLocation];
    (v16[2])(v16, lastLocation, 0);

    v19 = +[MKLocationManager sharedLocationManager];
    v20 = [v19 singleLocationUpdateWithHandler:v16];

    [v20 start];
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  else
  {
    [(RouteCreationCardView *)self _updateDirectionsButtonWithSuggestedMode:2];
  }
}

- (void)_updateDirectionsButtonWithSuggestedMode:(unint64_t)mode
{
  v5 = +[UIButtonConfiguration _maps_primaryCardFooterActionButtonConfiguration];
  if (mode == 4)
  {
    directionsButton = self->_directionsButton;
    v24 = +[NSBundle mainBundle];
    v25 = [v24 localizedStringForKey:@"[Route Creation] Directions" value:@"localized string not found" table:0];
    [(UIButton *)directionsButton setTitle:v25 forState:0];

    [(UIButton *)self->_directionsButton removeTarget:self action:0 forControlEvents:64];
    [(UIButton *)self->_directionsButton addTarget:self action:"_pressedRoutePlanning" forControlEvents:64];
    v26 = self->_directionsButton;
    v36[0] = self->_saveButton;
    v36[1] = v26;
    p_saveButton = v36;
    goto LABEL_11;
  }

  if (mode != 1)
  {
    if (!mode)
    {
      v6 = sub_1007989A4();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Hiding stepping button because it is not supported on this platform", buf, 2u);
      }

      saveButton = self->_saveButton;
      p_saveButton = &saveButton;
LABEL_15:
      v31 = 1;
      goto LABEL_16;
    }

    v27 = self->_directionsButton;
    v28 = +[NSBundle mainBundle];
    v29 = [v28 localizedStringForKey:@"[Route Creation] Directions" value:@"localized string not found" table:0];
    [(UIButton *)v27 setTitle:v29 forState:0];

    [(UIButton *)self->_directionsButton removeTarget:self action:0 forControlEvents:64];
    [(UIButton *)self->_directionsButton addTarget:self action:"_pressedStepping" forControlEvents:64];
    v30 = self->_directionsButton;
    v39[0] = self->_saveButton;
    v39[1] = v30;
    p_saveButton = v39;
LABEL_11:
    v31 = 2;
LABEL_16:
    v13 = [NSArray arrayWithObjects:p_saveButton count:v31];
    [(MultilineStackView *)self->_buttonStackView setArrangedSubviews:v13];
    goto LABEL_17;
  }

  v8 = +[GEOPlatform sharedPlatform];
  supportsNavigation = [v8 supportsNavigation];

  if ((supportsNavigation & 1) == 0)
  {
    v32 = sub_1007989A4();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Hiding GO button because it is not supported on this platform", buf, 2u);
    }

    v38 = self->_saveButton;
    p_saveButton = &v38;
    goto LABEL_15;
  }

  v10 = +[UIColor systemGreenColor];
  background = [v5 background];
  [background setBackgroundColor:v10];

  v12 = [UIFont _preferredFontForTextStyle:UIFontTextStyleTitle3 weight:UIFontWeightBold];
  v13 = [UIFont _maps_cappedFont:v12 withMaxPoint:34.0];

  fontDescriptor = [v13 fontDescriptor];
  v15 = [fontDescriptor fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];
  v16 = [UIFont fontWithDescriptor:v15 size:0.0];

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100CFC994;
  v33[3] = &unk_101652B60;
  v34 = v16;
  v17 = v16;
  [v5 setTitleTextAttributesTransformer:v33];
  v18 = self->_directionsButton;
  v19 = +[NSBundle mainBundle];
  v20 = [v19 localizedStringForKey:@"[Route Creation] GO" value:@"localized string not found" table:0];
  [(UIButton *)v18 setTitle:v20 forState:0];

  [(UIButton *)self->_directionsButton removeTarget:self action:0 forControlEvents:64];
  [(UIButton *)self->_directionsButton addTarget:self action:"_pressedNav" forControlEvents:64];
  v21 = self->_directionsButton;
  v37[0] = self->_saveButton;
  v37[1] = v21;
  v22 = [NSArray arrayWithObjects:v37 count:2];
  [(MultilineStackView *)self->_buttonStackView setArrangedSubviews:v22];

LABEL_17:
  [(UIButton *)self->_directionsButton setConfiguration:v5];
  [(MultilineStackView *)self->_buttonStackView invalidateLayout];
}

- (void)_updateButtons
{
  editingDelegate = [(RouteCreationCardView *)self editingDelegate];
  -[RouteCreationIconButton setEnabled:](self->_reverseButton, "setEnabled:", [editingDelegate reverseEnabled]);

  editingDelegate2 = [(RouteCreationCardView *)self editingDelegate];
  -[RouteCreationIconButton setEnabled:](self->_outAndBackButton, "setEnabled:", [editingDelegate2 outAndBackEnabled]);

  editingDelegate3 = [(RouteCreationCardView *)self editingDelegate];
  -[RouteCreationIconButton setEnabled:](self->_closeLoopButton, "setEnabled:", [editingDelegate3 closeLoopEnabled]);
}

- (void)_drawChart
{
  if (self->_graphViewController)
  {
    elevationProfile = [(GEOComposedRoute *)self->_route elevationProfile];

    if (elevationProfile)
    {

      [(RouteCreationCardView *)self _updateGraphView];
    }
  }
}

- (void)_updateGraphView
{
  view = [(UIViewController *)self->_graphViewController view];
  [view removeFromSuperview];

  graphViewController = self->_graphViewController;
  self->_graphViewController = 0;

  [(RouteCreationCardView *)self frame];
  v5 = CGRectGetWidth(v48) + -32.0;
  if (v5 >= 2.22044605e-16)
  {
    v6 = [NSNumber numberWithDouble:v5];
    renderedGraphWidth = self->_renderedGraphWidth;
    self->_renderedGraphWidth = v6;

    v8 = +[_TtC4Maps23MapsElevationChartStyle navigationLineStyle];
    elevationProfile = [(GEOComposedRoute *)self->_route elevationProfile];
    isMetric = self->_isMetric;
    traitCollection = [(RouteCreationCardView *)self traitCollection];
    v12 = [_TtC4Maps32MapsElevationGraphViewController makeHostingControllerFor:elevationProfile width:isMetric isMetric:traitCollection traitCollection:0 shouldHighlight:v8 chartStyle:self->_zeroMeters currentPosition:v5];
    v13 = self->_graphViewController;
    self->_graphViewController = v12;

    v14 = self->_graphViewController;
    if (v14)
    {
      view2 = [(UIViewController *)v14 view];
      [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
      [view2 setUserInteractionEnabled:0];
      v16 = +[UIColor clearColor];
      [view2 setBackgroundColor:v16];

      elevationProfile2 = [(GEOComposedRoute *)self->_route elevationProfile];
      if ([elevationProfile2 isValid])
      {
        v18 = -8.0;
      }

      else
      {
        v18 = -3.0;
      }

      elevationProfile3 = [(GEOComposedRoute *)self->_route elevationProfile];
      v20 = 0.0;
      if ([elevationProfile3 isValid])
      {
        v21 = 82.0;
      }

      else
      {
        v21 = 0.0;
      }

      elevationProfile4 = [(GEOComposedRoute *)self->_route elevationProfile];
      if ([elevationProfile4 isValid])
      {
        v20 = 10.0;
      }

      [(UIView *)self->_cardContentView addSubview:view2];
      leadingAnchor = [view2 leadingAnchor];
      leadingAnchor2 = [(UIView *)self->_cardContentView leadingAnchor];
      v38 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v41[0] = v38;
      trailingAnchor = [view2 trailingAnchor];
      trailingAnchor2 = [(UIView *)self->_cardContentView trailingAnchor];
      v35 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v41[1] = v35;
      bottomAnchor = [view2 bottomAnchor];
      bottomAnchor2 = [(UIView *)self->_cardContentView bottomAnchor];
      v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v18];
      v41[2] = v24;
      heightAnchor = [view2 heightAnchor];
      v26 = [heightAnchor constraintEqualToConstant:v21];
      v41[3] = v26;
      topAnchor = [view2 topAnchor];
      bottomAnchor3 = [(MapsThemeMultiPartLabel *)self->_descriptionLabel bottomAnchor];
      [topAnchor constraintEqualToAnchor:bottomAnchor3 constant:v20];
      v30 = v29 = v8;
      v41[4] = v30;
      v31 = [NSArray arrayWithObjects:v41 count:5];
      [NSLayoutConstraint activateConstraints:v31];

      v8 = v29;
    }

    else
    {
      v32 = sub_10006D178();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v43 = "[RouteCreationCardView _updateGraphView]";
        v44 = 2080;
        v45 = "RouteCreationCardView.m";
        v46 = 1024;
        v47 = 317;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
      }

      if (!sub_100E03634())
      {
        goto LABEL_13;
      }

      view2 = sub_10006D178();
      if (os_log_type_enabled(view2, OS_LOG_TYPE_ERROR))
      {
        v33 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v43 = v33;
        _os_log_impl(&_mh_execute_header, view2, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

LABEL_13:
  }
}

- (void)_unitsDidChange
{
  v3 = +[NSLocale currentLocale];
  self->_isMetric = [v3 _navigation_distanceUsesMetricSystem];

  [(RouteCreationCardView *)self _drawChart];
}

- (void)_pressedSave
{
  editingDelegate = [(RouteCreationCardView *)self editingDelegate];
  [editingDelegate pressedSave];
}

- (void)_pressedRoutePlanning
{
  editingDelegate = [(RouteCreationCardView *)self editingDelegate];
  [editingDelegate pressedRoutePlanning];
}

- (void)_pressedNav
{
  [(UIButton *)self->_directionsButton setEnabled:0];
  objc_initWeak(&location, self);
  editingDelegate = [(RouteCreationCardView *)self editingDelegate];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100CFD1FC;
  v4[3] = &unk_101661B98;
  objc_copyWeak(&v5, &location);
  [editingDelegate pressedStartNavigationWithCompletion:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_pressedStepping
{
  [(UIButton *)self->_directionsButton setEnabled:0];
  objc_initWeak(&location, self);
  editingDelegate = [(RouteCreationCardView *)self editingDelegate];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100CFD3EC;
  v4[3] = &unk_101661B98;
  objc_copyWeak(&v5, &location);
  [editingDelegate pressedStartSteppingWithCompletion:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_pressedCloseLoop
{
  editingDelegate = [(RouteCreationCardView *)self editingDelegate];
  [editingDelegate pressedCloseLoop];

  [(RouteCreationCardView *)self _updateButtons];
}

- (void)_pressedOutAndBack
{
  editingDelegate = [(RouteCreationCardView *)self editingDelegate];
  [editingDelegate pressedOutAndBack];

  [(RouteCreationCardView *)self _updateButtons];
}

- (void)_pressedReverse
{
  editingDelegate = [(RouteCreationCardView *)self editingDelegate];
  [editingDelegate pressedReverse];

  [(RouteCreationCardView *)self _updateButtons];
}

- (void)_pressedUndo
{
  editingDelegate = [(RouteCreationCardView *)self editingDelegate];
  [editingDelegate pressedUndo];

  [(RouteCreationCardView *)self _updateButtons];
}

- (void)_commonInit
{
  v3 = +[NSLocale currentLocale];
  self->_isMetric = [v3 _navigation_distanceUsesMetricSystem];

  v4 = +[NSNotificationCenter defaultCenter];
  v5 = MNLocaleDidChangeNotification();
  [v4 addObserver:self selector:"_unitsDidChange" name:v5 object:0];

  v6 = [NSMeasurement alloc];
  v7 = +[NSUnitLength meters];
  v8 = [v6 initWithDoubleValue:v7 unit:0.0];
  zeroMeters = self->_zeroMeters;
  self->_zeroMeters = v8;

  v10 = [UIFont systemFontOfSize:17.0 weight:UIFontWeightSemibold];
  v11 = [UIImageSymbolConfiguration configurationWithFont:v10];

  v12 = [RouteCreationIconButton alloc];
  v13 = [UIImage systemImageNamed:@"arrow.up.arrow.down" withConfiguration:v11];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"[Route Creation] Reverse Button" value:@"localized string not found" table:0];
  v16 = [(RouteCreationIconButton *)v12 initWithImage:v13 title:v15];

  [(RouteCreationIconButton *)v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(RouteCreationIconButton *)v16 setAccessibilityIdentifier:@"CreateARouteReverseButton"];
  [(RouteCreationIconButton *)v16 addTarget:self action:"_pressedReverse" forControlEvents:64];
  reverseButton = self->_reverseButton;
  self->_reverseButton = v16;
  v149 = v16;

  v18 = [RouteCreationIconButton alloc];
  v150 = v11;
  v19 = [UIImage systemImageNamed:@"point.bottomleft.forward.to.arrowtriangle.uturn.scurvepath.fill" withConfiguration:v11];
  v20 = +[NSBundle mainBundle];
  v21 = [v20 localizedStringForKey:@"[Route Creation] Out-n-Back Button" value:@"localized string not found" table:0];
  v22 = [(RouteCreationIconButton *)v18 initWithImage:v19 title:v21];

  [(RouteCreationIconButton *)v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(RouteCreationIconButton *)v22 setAccessibilityIdentifier:@"CreateARouteOutBackButton"];
  [(RouteCreationIconButton *)v22 addTarget:self action:"_pressedOutAndBack" forControlEvents:64];
  outAndBackButton = self->_outAndBackButton;
  self->_outAndBackButton = v22;
  v148 = v22;

  v24 = [RouteCreationIconButton alloc];
  v25 = [UIImage systemImageNamed:@"point.forward.to.point.capsulepath.fill" withConfiguration:v11];
  v26 = +[NSBundle mainBundle];
  v27 = [v26 localizedStringForKey:@"[Route Creation] Close Loop Button" value:@"localized string not found" table:0];
  v28 = [(RouteCreationIconButton *)v24 initWithImage:v25 title:v27];

  [(RouteCreationIconButton *)v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(RouteCreationIconButton *)v28 setAccessibilityIdentifier:@"CreateARouteCloseLoopButton"];
  [(RouteCreationIconButton *)v28 addTarget:self action:"_pressedCloseLoop" forControlEvents:64];
  closeLoopButton = self->_closeLoopButton;
  self->_closeLoopButton = v28;
  v146 = v28;

  v30 = objc_opt_new();
  [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v30 setClipsToBounds:1];
  v31 = objc_opt_new();
  cardContentView = self->_cardContentView;
  self->_cardContentView = v31;

  [(UIView *)self->_cardContentView setTranslatesAutoresizingMaskIntoConstraints:0];
  v33 = [UIColor colorWithDynamicProvider:&stru_101650FC0];
  [(UIView *)self->_cardContentView setBackgroundColor:v33];

  [(UIView *)self->_cardContentView _setContinuousCornerRadius:12.0];
  v34 = objc_opt_new();
  distanceLabel = self->_distanceLabel;
  self->_distanceLabel = v34;

  [(UILabel *)self->_distanceLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v36) = 1148846080;
  [(UILabel *)self->_distanceLabel setContentHuggingPriority:1 forAxis:v36];
  v37 = objc_opt_new();
  descriptionLabel = self->_descriptionLabel;
  self->_descriptionLabel = v37;

  [(MapsThemeMultiPartLabel *)self->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v39 = +[UIColor secondaryLabelColor];
  [(MapsThemeMultiPartLabel *)self->_descriptionLabel setTextColor:v39];

  [(MapsThemeMultiPartLabel *)self->_descriptionLabel setNumberOfLines:1];
  LODWORD(v40) = 1148846080;
  [(MapsThemeMultiPartLabel *)self->_descriptionLabel setContentHuggingPriority:1 forAxis:v40];
  v41 = [[MultilineStackView alloc] initWithHorizontalArrangement:3 verticalArrangement:2];
  buttonStackView = self->_buttonStackView;
  self->_buttonStackView = v41;

  [(MultilineStackView *)self->_buttonStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  kMUPlaceHorizontalStackSpacing();
  [(MultilineStackView *)self->_buttonStackView setInterItemHorizontalPadding:?];
  kMUPlaceHorizontalStackSpacing();
  [(MultilineStackView *)self->_buttonStackView setInterItemVerticalPadding:?];
  LODWORD(v43) = 1148846080;
  [(MultilineStackView *)self->_buttonStackView setContentHuggingPriority:1 forAxis:v43];
  LODWORD(v44) = 1148846080;
  [(MultilineStackView *)self->_buttonStackView setContentCompressionResistancePriority:1 forAxis:v44];
  [(MultilineStackView *)self->_buttonStackView setAccessibilityIdentifier:@"ButtonStackView"];
  [(MultilineStackView *)self->_buttonStackView setRowHeightBlock:&stru_101650FE0];
  v45 = +[UIButtonConfiguration _maps_primaryCardFooterActionButtonConfiguration];
  v46 = [UIButton buttonWithConfiguration:v45 primaryAction:0];
  directionsButton = self->_directionsButton;
  self->_directionsButton = v46;

  [(UIButton *)self->_directionsButton setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v48) = 1148846080;
  [(UIButton *)self->_directionsButton setContentCompressionResistancePriority:1 forAxis:v48];
  [(UIButton *)self->_directionsButton setAccessibilityIdentifier:@"DirectionsButton"];
  v49 = +[UIButtonConfiguration _maps_secondaryCardFooterActionButtonConfiguration];
  v50 = [UIButton buttonWithConfiguration:v49 primaryAction:0];
  saveButton = self->_saveButton;
  self->_saveButton = v50;

  [(UIButton *)self->_saveButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_saveButton setAccessibilityIdentifier:@"SaveButton"];
  [(UIButton *)self->_saveButton addTarget:self action:"_pressedSave" forControlEvents:64];
  v52 = +[NSBundle mainBundle];
  v147 = [v52 localizedStringForKey:@"[Route Creation] Save" value:@"localized string not found" table:0];

  [(UIButton *)self->_saveButton setTitle:v147 forState:0];
  v53 = self->_saveButton;
  v54 = [UIColor colorWithDynamicProvider:&stru_101651000];
  [(UIButton *)v53 setTitleColor:v54 forState:0];

  [(RouteCreationCardView *)self _updateDirectionsButtonWithSuggestedMode:2];
  [(RouteCreationCardView *)self addSubview:v30];
  [v30 addSubview:self->_reverseButton];
  [v30 addSubview:self->_outAndBackButton];
  [v30 addSubview:self->_closeLoopButton];
  [(RouteCreationCardView *)self addSubview:self->_cardContentView];
  [(UIView *)self->_cardContentView addSubview:self->_distanceLabel];
  [(UIView *)self->_cardContentView addSubview:self->_descriptionLabel];
  [(RouteCreationCardView *)self addSubview:self->_buttonStackView];
  v55 = self->_directionsButton;
  v154[0] = self->_saveButton;
  v154[1] = v55;
  v56 = [NSArray arrayWithObjects:v154 count:2];
  [(MultilineStackView *)self->_buttonStackView setArrangedSubviews:v56];

  leadingAnchor = [v30 leadingAnchor];
  leadingAnchor2 = [(RouteCreationCardView *)self leadingAnchor];
  v143 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v153[0] = v143;
  trailingAnchor = [v30 trailingAnchor];
  trailingAnchor2 = [(RouteCreationCardView *)self trailingAnchor];
  v140 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  v153[1] = v140;
  topAnchor = [v30 topAnchor];
  topAnchor2 = [(RouteCreationCardView *)self topAnchor];
  v137 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v153[2] = v137;
  heightAnchor = [v30 heightAnchor];
  v135 = [heightAnchor constraintEqualToConstant:0.0];
  v153[3] = v135;
  leadingAnchor3 = [(RouteCreationIconButton *)self->_reverseButton leadingAnchor];
  leadingAnchor4 = [v30 leadingAnchor];
  v132 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v153[4] = v132;
  leadingAnchor5 = [(RouteCreationIconButton *)self->_outAndBackButton leadingAnchor];
  trailingAnchor3 = [(RouteCreationIconButton *)self->_reverseButton trailingAnchor];
  v129 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor3 constant:8.0];
  v153[5] = v129;
  leadingAnchor6 = [(RouteCreationIconButton *)self->_closeLoopButton leadingAnchor];
  trailingAnchor4 = [(RouteCreationIconButton *)self->_outAndBackButton trailingAnchor];
  v126 = [leadingAnchor6 constraintEqualToAnchor:trailingAnchor4 constant:8.0];
  v153[6] = v126;
  trailingAnchor5 = [(RouteCreationIconButton *)self->_closeLoopButton trailingAnchor];
  trailingAnchor6 = [v30 trailingAnchor];
  v123 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v153[7] = v123;
  widthAnchor = [(RouteCreationIconButton *)self->_reverseButton widthAnchor];
  widthAnchor2 = [(RouteCreationIconButton *)self->_outAndBackButton widthAnchor];
  v120 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v153[8] = v120;
  widthAnchor3 = [(RouteCreationIconButton *)self->_reverseButton widthAnchor];
  widthAnchor4 = [(RouteCreationIconButton *)self->_closeLoopButton widthAnchor];
  v117 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
  v153[9] = v117;
  topAnchor3 = [(RouteCreationIconButton *)self->_reverseButton topAnchor];
  topAnchor4 = [v30 topAnchor];
  v114 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v153[10] = v114;
  bottomAnchor = [(RouteCreationIconButton *)self->_reverseButton bottomAnchor];
  bottomAnchor2 = [v30 bottomAnchor];
  v110 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v153[11] = v110;
  topAnchor5 = [(RouteCreationIconButton *)self->_outAndBackButton topAnchor];
  topAnchor6 = [v30 topAnchor];
  v107 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v153[12] = v107;
  bottomAnchor3 = [(RouteCreationIconButton *)self->_outAndBackButton bottomAnchor];
  bottomAnchor4 = [v30 bottomAnchor];
  v104 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v153[13] = v104;
  topAnchor7 = [(RouteCreationIconButton *)self->_closeLoopButton topAnchor];
  topAnchor8 = [v30 topAnchor];
  v101 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
  v153[14] = v101;
  bottomAnchor5 = [(RouteCreationIconButton *)self->_closeLoopButton bottomAnchor];
  v113 = v30;
  bottomAnchor6 = [v30 bottomAnchor];
  v98 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v153[15] = v98;
  leadingAnchor7 = [(UIView *)self->_cardContentView leadingAnchor];
  leadingAnchor8 = [(RouteCreationCardView *)self leadingAnchor];
  v95 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:16.0];
  v153[16] = v95;
  trailingAnchor7 = [(UIView *)self->_cardContentView trailingAnchor];
  trailingAnchor8 = [(RouteCreationCardView *)self trailingAnchor];
  v92 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-16.0];
  v153[17] = v92;
  topAnchor9 = [(UIView *)self->_cardContentView topAnchor];
  bottomAnchor7 = [v30 bottomAnchor];
  v89 = [topAnchor9 constraintEqualToAnchor:bottomAnchor7 constant:0.0];
  v153[18] = v89;
  bottomAnchor8 = [(UIView *)self->_cardContentView bottomAnchor];
  bottomAnchor9 = [(RouteCreationCardView *)self bottomAnchor];
  v86 = [bottomAnchor8 constraintLessThanOrEqualToAnchor:bottomAnchor9 constant:-16.0];
  v153[19] = v86;
  leadingAnchor9 = [(UILabel *)self->_distanceLabel leadingAnchor];
  leadingAnchor10 = [(UIView *)self->_cardContentView leadingAnchor];
  v83 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10 constant:14.0];
  v153[20] = v83;
  trailingAnchor9 = [(UILabel *)self->_distanceLabel trailingAnchor];
  trailingAnchor10 = [(UIView *)self->_cardContentView trailingAnchor];
  v80 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10 constant:-14.0];
  v153[21] = v80;
  topAnchor10 = [(UILabel *)self->_distanceLabel topAnchor];
  topAnchor11 = [(UIView *)self->_cardContentView topAnchor];
  v77 = [topAnchor10 constraintEqualToAnchor:topAnchor11 constant:12.0];
  v153[22] = v77;
  leadingAnchor11 = [(MapsThemeMultiPartLabel *)self->_descriptionLabel leadingAnchor];
  leadingAnchor12 = [(UILabel *)self->_distanceLabel leadingAnchor];
  v74 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
  v153[23] = v74;
  trailingAnchor11 = [(MapsThemeMultiPartLabel *)self->_descriptionLabel trailingAnchor];
  trailingAnchor12 = [(UILabel *)self->_distanceLabel trailingAnchor];
  v71 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12];
  v153[24] = v71;
  topAnchor12 = [(MapsThemeMultiPartLabel *)self->_descriptionLabel topAnchor];
  bottomAnchor10 = [(UILabel *)self->_distanceLabel bottomAnchor];
  v70 = [topAnchor12 constraintEqualToAnchor:bottomAnchor10 constant:-7.0];
  v153[25] = v70;
  leadingAnchor13 = [(MultilineStackView *)self->_buttonStackView leadingAnchor];
  leadingAnchor14 = [(RouteCreationCardView *)self leadingAnchor];
  v67 = [leadingAnchor13 constraintEqualToAnchor:leadingAnchor14 constant:16.0];
  v153[26] = v67;
  trailingAnchor13 = [(MultilineStackView *)self->_buttonStackView trailingAnchor];
  trailingAnchor14 = [(RouteCreationCardView *)self trailingAnchor];
  v59 = [trailingAnchor13 constraintEqualToAnchor:trailingAnchor14 constant:-16.0];
  v153[27] = v59;
  topAnchor13 = [(MultilineStackView *)self->_buttonStackView topAnchor];
  bottomAnchor11 = [(UIView *)self->_cardContentView bottomAnchor];
  v62 = [topAnchor13 constraintEqualToAnchor:bottomAnchor11 constant:16.0];
  v153[28] = v62;
  bottomAnchor12 = [(MultilineStackView *)self->_buttonStackView bottomAnchor];
  bottomAnchor13 = [(RouteCreationCardView *)self bottomAnchor];
  v65 = [bottomAnchor12 constraintEqualToAnchor:bottomAnchor13];
  v153[29] = v65;
  v66 = [NSArray arrayWithObjects:v153 count:30];
  [NSLayoutConstraint activateConstraints:v66];
}

- (RouteCreationCardView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = RouteCreationCardView;
  v3 = [(RouteCreationCardView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(RouteCreationCardView *)v3 _commonInit];
  }

  return v4;
}

- (RouteCreationCardView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = RouteCreationCardView;
  v3 = [(RouteCreationCardView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(RouteCreationCardView *)v3 _commonInit];
  }

  return v4;
}

@end