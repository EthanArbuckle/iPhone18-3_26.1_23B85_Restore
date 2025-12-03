@interface WeatherStackViewController
- (UIStackView)stackView;
- (WeatherStackViewController)initWithWeatherLocationDataProvider:(id)provider delegate:(id)delegate;
- (WeatherStackViewControllerDelegate)delegate;
- (double)_cornerRadius;
- (double)_viewAlpha;
- (id)_airQualityConditionsPunchOutURL;
- (id)_weatherPunchOutURL;
- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (void)_configureSubviews;
- (void)_configureWeatherOrbSupport;
- (void)_openAirQualityConditionsPunchOutURL;
- (void)_openWeatherPunchOutURL;
- (void)_requestVisibilityUpdateAnimated:(BOOL)animated;
- (void)_setCornerRadiusWithMaskedCorners:(unint64_t)corners withValue:(double)value;
- (void)_updateVisibilityAnimated:(BOOL)animated;
- (void)airQualityConditionsViewController:(id)controller makeVisible:(BOOL)visible animated:(BOOL)animated;
- (void)applyBorderAndShadow;
- (void)clearSavedLocation;
- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)loadView;
- (void)setBlurGroupName:(id)name;
- (void)setOverlayAlpha:(double)alpha;
- (void)setOverlayHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)viewDidLoad;
- (void)weatherConditionsViewController:(id)controller makeVisible:(BOOL)visible animated:(BOOL)animated;
@end

@implementation WeatherStackViewController

- (void)loadView
{
  v3 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(WeatherStackViewController *)self setView:v3];

  view = [(WeatherStackViewController *)self view];
  [view setHidden:1];

  view2 = [(WeatherStackViewController *)self view];
  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];

  view3 = [(WeatherStackViewController *)self view];
  [view3 setAccessibilityIdentifier:@"WeatherStackView"];

  v7 = objc_alloc_init(UIView);
  [(UIView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)v7 _maps_applyGlassBackground];
  materialBackgroundView = self->_materialBackgroundView;
  self->_materialBackgroundView = v7;
  v9 = v7;

  objc_storeStrong(&self->_contentView, self->_materialBackgroundView);
  view4 = [(WeatherStackViewController *)self view];
  [view4 addSubview:self->_materialBackgroundView];

  [(WeatherStackViewController *)self applyBorderAndShadow];
}

- (void)applyBorderAndShadow
{
  [(WeatherStackViewController *)self _cornerRadius];
  v4 = v3;
  materialBackgroundView = [(WeatherStackViewController *)self materialBackgroundView];
  layer = [materialBackgroundView layer];
  [layer setCornerRadius:v4];

  if ((_UISolariumEnabled() & 1) == 0)
  {
    traitCollection = [(WeatherStackViewController *)self traitCollection];
    [traitCollection userInterfaceStyle];

    v25 = [UIColor colorWithWhite:0.0 alpha:0.0799999982];
    v8 = v25;
    cGColor = [v25 CGColor];
    materialBackgroundView2 = [(WeatherStackViewController *)self materialBackgroundView];
    layer2 = [materialBackgroundView2 layer];
    [layer2 setBorderColor:cGColor];

    materialBackgroundView3 = [(WeatherStackViewController *)self materialBackgroundView];
    layer3 = [materialBackgroundView3 layer];
    [layer3 setBorderWidth:0.5];

    v14 = [UIColor colorWithWhite:0.0 alpha:0.0799999982];
    cGColor2 = [v14 CGColor];
    materialBackgroundView4 = [(WeatherStackViewController *)self materialBackgroundView];
    layer4 = [materialBackgroundView4 layer];
    [layer4 setShadowColor:cGColor2];

    materialBackgroundView5 = [(WeatherStackViewController *)self materialBackgroundView];
    layer5 = [materialBackgroundView5 layer];
    [layer5 setShadowRadius:4.0];

    materialBackgroundView6 = [(WeatherStackViewController *)self materialBackgroundView];
    layer6 = [materialBackgroundView6 layer];
    LODWORD(v22) = 1025758986;
    [layer6 setShadowOpacity:v22];

    materialBackgroundView7 = [(WeatherStackViewController *)self materialBackgroundView];
    layer7 = [materialBackgroundView7 layer];
    [layer7 setShadowPathIsBounds:1];
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = WeatherStackViewController;
  [(WeatherStackViewController *)&v3 viewDidLoad];
  [(WeatherStackViewController *)self _configureSubviews];
  [(WeatherStackViewController *)self _configureWeatherOrbSupport];
  [(WeatherStackViewController *)self _updateVisibilityAnimated:0];
}

- (void)_configureSubviews
{
  [(WeatherStackViewController *)self _cornerRadius];
  [(WeatherStackViewController *)self _setCornerRadiusWithMaskedCorners:15 withValue:?];
  v3 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v3 setAxis:1];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setAccessibilityIdentifier:@"ContentStackView"];
  [(UIView *)self->_contentView addSubview:v3];
  [(WeatherStackViewController *)self setStackView:v3];
  weatherConditionsViewController = [(WeatherStackViewController *)self weatherConditionsViewController];
  view = [weatherConditionsViewController view];
  [v3 addArrangedSubview:view];

  airQualityConditionsViewController = [(WeatherStackViewController *)self airQualityConditionsViewController];
  view2 = [airQualityConditionsViewController view];
  [v3 addArrangedSubview:view2];

  if (sub_10000FA08(self) == 5)
  {
    v8 = 5.0;
  }

  else
  {
    v8 = 4.0;
  }

  v46 = +[NSMutableArray array];
  materialBackgroundView = [(WeatherStackViewController *)self materialBackgroundView];
  leadingAnchor = [materialBackgroundView leadingAnchor];
  view3 = [(WeatherStackViewController *)self view];
  leadingAnchor2 = [view3 leadingAnchor];
  v41 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v47[0] = v41;
  materialBackgroundView2 = [(WeatherStackViewController *)self materialBackgroundView];
  trailingAnchor = [materialBackgroundView2 trailingAnchor];
  view4 = [(WeatherStackViewController *)self view];
  trailingAnchor2 = [view4 trailingAnchor];
  v36 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v47[1] = v36;
  materialBackgroundView3 = [(WeatherStackViewController *)self materialBackgroundView];
  topAnchor = [materialBackgroundView3 topAnchor];
  view5 = [(WeatherStackViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v31 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v47[2] = v31;
  materialBackgroundView4 = [(WeatherStackViewController *)self materialBackgroundView];
  bottomAnchor = [materialBackgroundView4 bottomAnchor];
  view6 = [(WeatherStackViewController *)self view];
  bottomAnchor2 = [view6 bottomAnchor];
  v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v47[3] = v26;
  leadingAnchor3 = [v3 leadingAnchor];
  materialBackgroundView5 = [(WeatherStackViewController *)self materialBackgroundView];
  leadingAnchor4 = [materialBackgroundView5 leadingAnchor];
  v22 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v8];
  v47[4] = v22;
  trailingAnchor3 = [v3 trailingAnchor];
  materialBackgroundView6 = [(WeatherStackViewController *)self materialBackgroundView];
  trailingAnchor4 = [materialBackgroundView6 trailingAnchor];
  v18 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-v8];
  v47[5] = v18;
  topAnchor3 = [v3 topAnchor];
  materialBackgroundView7 = [(WeatherStackViewController *)self materialBackgroundView];
  topAnchor4 = [materialBackgroundView7 topAnchor];
  v12 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:5.0];
  v47[6] = v12;
  bottomAnchor3 = [v3 bottomAnchor];
  materialBackgroundView8 = [(WeatherStackViewController *)self materialBackgroundView];
  bottomAnchor4 = [materialBackgroundView8 bottomAnchor];
  v16 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-5.0];
  v47[7] = v16;
  v17 = [NSArray arrayWithObjects:v47 count:8];
  [v46 addObjectsFromArray:v17];

  [NSLayoutConstraint activateConstraints:v46];
}

- (void)_configureWeatherOrbSupport
{
  v3 = [[UIContextMenuInteraction alloc] initWithDelegate:self];
  contextMenuInteraction = self->_contextMenuInteraction;
  self->_contextMenuInteraction = v3;

  view = [(WeatherStackViewController *)self view];
  [view addInteraction:self->_contextMenuInteraction];
}

- (double)_viewAlpha
{
  _viewShown = [(WeatherStackViewController *)self _viewShown];
  result = 0.0;
  if (_viewShown)
  {
    return self->_overlayAlpha;
  }

  return result;
}

- (UIStackView)stackView
{
  WeakRetained = objc_loadWeakRetained(&self->_stackView);

  return WeakRetained;
}

- (WeatherStackViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_airQualityConditionsPunchOutURL
{
  airQualityConditionsViewController = [(WeatherStackViewController *)self airQualityConditionsViewController];
  airQualityConditions = [airQualityConditionsViewController airQualityConditions];
  learnMoreURL = [airQualityConditions learnMoreURL];

  return learnMoreURL;
}

- (id)_weatherPunchOutURL
{
  location = [(WeatherStackViewController *)self location];
  v3 = [NSURL weatherURLForLocation:location];

  return v3;
}

- (void)_openAirQualityConditionsPunchOutURL
{
  _airQualityConditionsPunchOutURL = [(WeatherStackViewController *)self _airQualityConditionsPunchOutURL];
  if (_airQualityConditionsPunchOutURL)
  {
    v6 = _airQualityConditionsPunchOutURL;
    absoluteString = [_airQualityConditionsPunchOutURL absoluteString];
    [GEOAPPortal captureUserAction:6050 target:640 value:absoluteString];

    delegate = [(WeatherStackViewController *)self delegate];
    [delegate weatherStackViewController:self openURL:v6];

    _airQualityConditionsPunchOutURL = v6;
  }
}

- (void)_openWeatherPunchOutURL
{
  _weatherPunchOutURL = [(WeatherStackViewController *)self _weatherPunchOutURL];
  if (_weatherPunchOutURL)
  {
    v6 = _weatherPunchOutURL;
    absoluteString = [_weatherPunchOutURL absoluteString];
    [GEOAPPortal captureUserAction:6050 target:640 value:absoluteString];

    delegate = [(WeatherStackViewController *)self delegate];
    [delegate weatherStackViewController:self openURL:v6];

    _weatherPunchOutURL = v6;
  }
}

- (void)_updateVisibilityAnimated:(BOOL)animated
{
  animatedCopy = animated;
  view = [(WeatherStackViewController *)self view];
  airQualityConditionsViewController = [(WeatherStackViewController *)self airQualityConditionsViewController];
  view2 = [airQualityConditionsViewController view];

  weatherConditionsViewController = [(WeatherStackViewController *)self weatherConditionsViewController];
  view3 = [weatherConditionsViewController view];

  LODWORD(v9) = self->_airQualityShown;
  weatherShown = self->_weatherShown;
  _viewShown = [(WeatherStackViewController *)self _viewShown];
  v11 = sub_100033B24();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v36 = NSStringFromClass(v12);
    NSStringFromSelector(a2);
    v34 = view3;
    v35 = view2;
    v37 = v9;
    v14 = v13 = v11;
    if (animatedCopy)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    v16 = v15;
    if (_viewShown)
    {
      v17 = @"NO";
    }

    else
    {
      v17 = @"YES";
    }

    v18 = v17;
    if (weatherShown)
    {
      v19 = @"NO";
    }

    else
    {
      v19 = @"YES";
    }

    v9 = v19;
    if (v37)
    {
      v20 = @"NO";
    }

    else
    {
      v20 = @"YES";
    }

    v21 = v14;
    v11 = v13;
    v22 = v20;
    *buf = 138413570;
    v60 = v36;
    v61 = 2112;
    v33 = v21;
    v62 = v21;
    v63 = 2112;
    v64 = v16;
    v65 = 2112;
    v66 = v18;
    v67 = 2112;
    v23 = v9;
    v68 = v9;
    v69 = 2112;
    v70 = v22;
    LOBYTE(v9) = v37;
    view3 = v34;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ %@, animated = %@, overall view hidden = %@, weather hidden = %@, AQI hidden = %@", buf, 0x3Eu);

    view2 = v35;
  }

  v24 = objc_alloc_init(GroupAnimation);
  [(GroupAnimation *)v24 setAnimated:animatedCopy];
  +[GroupAnimation defaultAnimationDuration];
  [(GroupAnimation *)v24 setDuration:?];
  [(GroupAnimation *)v24 setOptions:4];
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_1008CC398;
  v52[3] = &unk_10162D990;
  v52[4] = self;
  v56 = v9;
  v25 = view2;
  v53 = v25;
  v57 = weatherShown;
  v26 = view3;
  v54 = v26;
  v58 = _viewShown;
  v27 = view;
  v55 = v27;
  [(GroupAnimation *)v24 addPreparation:v52];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1008CC430;
  v46[3] = &unk_10162D9B8;
  v28 = v25;
  v47 = v28;
  v50 = v9;
  v29 = v26;
  v51 = weatherShown;
  v48 = v29;
  selfCopy = self;
  [(GroupAnimation *)v24 addAnimations:v46];
  objc_initWeak(buf, self);
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_1008CC4C8;
  v41[3] = &unk_10162D9E0;
  objc_copyWeak(&v45, buf);
  v30 = v28;
  v42 = v30;
  v31 = v29;
  v43 = v31;
  v32 = v27;
  v44 = v32;
  [(GroupAnimation *)v24 addCompletion:v41];
  [(GroupAnimation *)v24 runWithCurrentOptions];

  objc_destroyWeak(&v45);
  objc_destroyWeak(buf);
}

- (void)_requestVisibilityUpdateAnimated:(BOOL)animated
{
  updateVisibilityTimer = self->_updateVisibilityTimer;
  if (updateVisibilityTimer || (v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q), v7 = self->_updateVisibilityTimer, self->_updateVisibilityTimer = v6, v7, self->_updateVisibilityTimer))
  {
    v8 = dispatch_time(0, 250000000);
    dispatch_source_set_timer(self->_updateVisibilityTimer, v8, 0xFFFFFFFFFFFFFFFFLL, 0xEE6B280uLL);
    objc_initWeak(location, self);
    v9 = self->_updateVisibilityTimer;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1008CC730;
    v11[3] = &unk_101661368;
    objc_copyWeak(&v12, location);
    animatedCopy = animated;
    dispatch_source_set_event_handler(v9, v11);
    if (!updateVisibilityTimer)
    {
      dispatch_resume(self->_updateVisibilityTimer);
    }

    objc_destroyWeak(&v12);
    objc_destroyWeak(location);
  }

  else
  {
    v10 = sub_100033B24();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to create timer to update WeatherStackViewController visibility", location, 2u);
    }
  }
}

- (void)_setCornerRadiusWithMaskedCorners:(unint64_t)corners withValue:(double)value
{
  v7 = self->_materialBackgroundView;
  subviews = [(UIView *)self->_materialBackgroundView subviews];
  v9 = self->_contentView;
  if (value == 0.0)
  {
    [(UIView *)v7 _setCornerRadius:0.0];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v19 = subviews;
    v20 = [v19 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v26;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v26 != v22)
          {
            objc_enumerationMutation(v19);
          }

          layer = [*(*(&v25 + 1) + 8 * i) layer];
          [layer setMaskedCorners:0];
        }

        v21 = [v19 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v21);
    }
  }

  else
  {
    [(UIView *)v7 _setCornerRadius:value];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v10 = subviews;
    v11 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v30;
      do
      {
        for (j = 0; j != v12; j = j + 1)
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v29 + 1) + 8 * j);
          layer2 = [(UIView *)v15 layer];
          v17 = layer2;
          if (v15 == v9)
          {
            cornersCopy = 0;
          }

          else
          {
            cornersCopy = corners;
          }

          [layer2 setMaskedCorners:cornersCopy];
          [v17 setCornerRadius:value];
        }

        v12 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v12);
    }
  }
}

- (void)airQualityConditionsViewController:(id)controller makeVisible:(BOOL)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  visibleCopy = visible;
  controllerCopy = controller;
  if (self->_airQualityShown != visibleCopy)
  {
    v10 = sub_100033B24();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(a2);
      v14 = @"NO";
      if (visibleCopy)
      {
        v14 = @"YES";
      }

      v15 = v14;
      v16 = 138412802;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ %@, visible = %@", &v16, 0x20u);
    }

    self->_airQualityShown = visibleCopy;
    if (![(WeatherStackViewController *)self overlayHidden])
    {
      [(WeatherStackViewController *)self _requestVisibilityUpdateAnimated:animatedCopy];
    }
  }
}

- (void)weatherConditionsViewController:(id)controller makeVisible:(BOOL)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  visibleCopy = visible;
  controllerCopy = controller;
  if (self->_weatherShown != visibleCopy)
  {
    v10 = sub_100033B24();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(a2);
      v14 = @"NO";
      if (visibleCopy)
      {
        v14 = @"YES";
      }

      v15 = v14;
      v16 = 138412802;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ %@, visible = %@", &v16, 0x20u);
    }

    self->_weatherShown = visibleCopy;
    if (![(WeatherStackViewController *)self overlayHidden])
    {
      [(WeatherStackViewController *)self _requestVisibilityUpdateAnimated:animatedCopy];
    }
  }
}

- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  animatorCopy = animator;
  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1008CCDB4;
  v11[3] = &unk_101661B98;
  objc_copyWeak(&v12, &location);
  [animatorCopy addCompletion:v11];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier
{
  v6 = objc_opt_new();
  if (sub_10000FA08(self) == 1)
  {
    theme = [(WeatherStackViewController *)self theme];
    dynamicControlBackgroundColor = [theme dynamicControlBackgroundColor];
    v9 = [dynamicControlBackgroundColor colorWithAlphaComponent:0.75];
    [v6 setBackgroundColor:v9];

    view = [(WeatherStackViewController *)self view];
    [view frame];
    v12 = v11;
    view2 = [(WeatherStackViewController *)self view];
    [view2 frame];
    v15 = v14;

    [(WeatherStackViewController *)self _cornerRadius];
    v17 = [UIBezierPath bezierPathWithRoundedRect:0.0 cornerRadius:0.0, v12, v15, v16];
    [v6 setVisiblePath:v17];
  }

  else
  {
    v17 = +[UIColor clearColor];
    [v6 setBackgroundColor:v17];
  }

  v18 = [_UITargetedPreview alloc];
  view3 = [(WeatherStackViewController *)self view];
  v20 = [v18 initWithView:view3 parameters:v6];

  return v20;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  interactionCopy = interaction;
  [GEOAPPortal captureUserAction:15001 target:640 value:0];
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1008CD0BC;
  v8[3] = &unk_10162D928;
  objc_copyWeak(&v9, &location);
  v6 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:v8 actionProvider:&stru_10162D968];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v6;
}

- (void)setOverlayAlpha:(double)alpha
{
  if (self->_overlayAlpha != alpha)
  {
    self->_overlayAlpha = alpha;
    [(WeatherStackViewController *)self _viewAlpha];
    v6 = v5;
    view = [(WeatherStackViewController *)self view];
    [view setAlpha:v6];
  }
}

- (void)setOverlayHidden:(BOOL)hidden animated:(BOOL)animated
{
  if (self->_overlayHidden != hidden)
  {
    animatedCopy = animated;
    hiddenCopy = hidden;
    v8 = sub_100033B24();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(a2);
      v12 = @"NO";
      if (hiddenCopy)
      {
        v12 = @"YES";
      }

      v13 = v12;
      v14 = 138412802;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ %@, hidden = %@", &v14, 0x20u);
    }

    self->_overlayHidden = hiddenCopy;
    [(AirQualityConditionsViewController *)self->_airQualityConditionsViewController setEnabled:!hiddenCopy];
    [(WeatherConditionsViewController *)self->_weatherConditionsViewController setEnabled:!hiddenCopy];
    [(WeatherStackViewController *)self _updateVisibilityAnimated:animatedCopy];
  }
}

- (void)setBlurGroupName:(id)name
{
  v4 = [name copy];
  blurGroupName = self->_blurGroupName;
  self->_blurGroupName = v4;

  v6 = self->_materialBackgroundView;
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

  [(UIView *)v8 _setGroupName:self->_blurGroupName];
}

- (void)clearSavedLocation
{
  airQualityConditionsViewController = [(WeatherStackViewController *)self airQualityConditionsViewController];
  [airQualityConditionsViewController clearSavedLocation];

  weatherConditionsViewController = [(WeatherStackViewController *)self weatherConditionsViewController];
  [weatherConditionsViewController clearSavedLocation];
}

- (double)_cornerRadius
{
  v3 = 8.0;
  if (_UISolariumEnabled())
  {
    if (sub_10000FA08(self) == 5)
    {
      return 10.0;
    }

    else
    {
      return 12.0;
    }
  }

  return v3;
}

- (WeatherStackViewController)initWithWeatherLocationDataProvider:(id)provider delegate:(id)delegate
{
  providerCopy = provider;
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = WeatherStackViewController;
  v8 = [(WeatherStackViewController *)&v14 initWithNibName:0 bundle:0];
  if (v8)
  {
    [providerCopy addObserver:v8];
    v9 = [[WeatherConditionsViewController alloc] initWithWeatherLocationDataProvider:providerCopy];
    weatherConditionsViewController = v8->_weatherConditionsViewController;
    v8->_weatherConditionsViewController = v9;

    [(WeatherConditionsViewController *)v8->_weatherConditionsViewController setDelegate:v8];
    [(WeatherStackViewController *)v8 addChildViewController:v8->_weatherConditionsViewController];
    v11 = [[AirQualityConditionsViewController alloc] initWithWeatherLocationDataProvider:providerCopy];
    airQualityConditionsViewController = v8->_airQualityConditionsViewController;
    v8->_airQualityConditionsViewController = v11;

    [(AirQualityConditionsViewController *)v8->_airQualityConditionsViewController setDelegate:v8];
    [(WeatherStackViewController *)v8 addChildViewController:v8->_airQualityConditionsViewController];
    [(WeatherConditionsViewController *)v8->_weatherConditionsViewController didMoveToParentViewController:v8];
    [(AirQualityConditionsViewController *)v8->_airQualityConditionsViewController didMoveToParentViewController:v8];
    v8->_overlayHidden = 0;
    v8->_overlayAlpha = 1.0;
    objc_storeWeak(&v8->_delegate, delegateCopy);
  }

  return v8;
}

@end