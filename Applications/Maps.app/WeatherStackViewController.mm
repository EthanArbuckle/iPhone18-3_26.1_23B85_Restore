@interface WeatherStackViewController
- (UIStackView)stackView;
- (WeatherStackViewController)initWithWeatherLocationDataProvider:(id)a3 delegate:(id)a4;
- (WeatherStackViewControllerDelegate)delegate;
- (double)_cornerRadius;
- (double)_viewAlpha;
- (id)_airQualityConditionsPunchOutURL;
- (id)_weatherPunchOutURL;
- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (void)_configureSubviews;
- (void)_configureWeatherOrbSupport;
- (void)_openAirQualityConditionsPunchOutURL;
- (void)_openWeatherPunchOutURL;
- (void)_requestVisibilityUpdateAnimated:(BOOL)a3;
- (void)_setCornerRadiusWithMaskedCorners:(unint64_t)a3 withValue:(double)a4;
- (void)_updateVisibilityAnimated:(BOOL)a3;
- (void)airQualityConditionsViewController:(id)a3 makeVisible:(BOOL)a4 animated:(BOOL)a5;
- (void)applyBorderAndShadow;
- (void)clearSavedLocation;
- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)loadView;
- (void)setBlurGroupName:(id)a3;
- (void)setOverlayAlpha:(double)a3;
- (void)setOverlayHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)viewDidLoad;
- (void)weatherConditionsViewController:(id)a3 makeVisible:(BOOL)a4 animated:(BOOL)a5;
@end

@implementation WeatherStackViewController

- (void)loadView
{
  v3 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(WeatherStackViewController *)self setView:v3];

  v4 = [(WeatherStackViewController *)self view];
  [v4 setHidden:1];

  v5 = [(WeatherStackViewController *)self view];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(WeatherStackViewController *)self view];
  [v6 setAccessibilityIdentifier:@"WeatherStackView"];

  v7 = objc_alloc_init(UIView);
  [(UIView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)v7 _maps_applyGlassBackground];
  materialBackgroundView = self->_materialBackgroundView;
  self->_materialBackgroundView = v7;
  v9 = v7;

  objc_storeStrong(&self->_contentView, self->_materialBackgroundView);
  v10 = [(WeatherStackViewController *)self view];
  [v10 addSubview:self->_materialBackgroundView];

  [(WeatherStackViewController *)self applyBorderAndShadow];
}

- (void)applyBorderAndShadow
{
  [(WeatherStackViewController *)self _cornerRadius];
  v4 = v3;
  v5 = [(WeatherStackViewController *)self materialBackgroundView];
  v6 = [v5 layer];
  [v6 setCornerRadius:v4];

  if ((_UISolariumEnabled() & 1) == 0)
  {
    v7 = [(WeatherStackViewController *)self traitCollection];
    [v7 userInterfaceStyle];

    v25 = [UIColor colorWithWhite:0.0 alpha:0.0799999982];
    v8 = v25;
    v9 = [v25 CGColor];
    v10 = [(WeatherStackViewController *)self materialBackgroundView];
    v11 = [v10 layer];
    [v11 setBorderColor:v9];

    v12 = [(WeatherStackViewController *)self materialBackgroundView];
    v13 = [v12 layer];
    [v13 setBorderWidth:0.5];

    v14 = [UIColor colorWithWhite:0.0 alpha:0.0799999982];
    v15 = [v14 CGColor];
    v16 = [(WeatherStackViewController *)self materialBackgroundView];
    v17 = [v16 layer];
    [v17 setShadowColor:v15];

    v18 = [(WeatherStackViewController *)self materialBackgroundView];
    v19 = [v18 layer];
    [v19 setShadowRadius:4.0];

    v20 = [(WeatherStackViewController *)self materialBackgroundView];
    v21 = [v20 layer];
    LODWORD(v22) = 1025758986;
    [v21 setShadowOpacity:v22];

    v23 = [(WeatherStackViewController *)self materialBackgroundView];
    v24 = [v23 layer];
    [v24 setShadowPathIsBounds:1];
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
  v4 = [(WeatherStackViewController *)self weatherConditionsViewController];
  v5 = [v4 view];
  [v3 addArrangedSubview:v5];

  v6 = [(WeatherStackViewController *)self airQualityConditionsViewController];
  v7 = [v6 view];
  [v3 addArrangedSubview:v7];

  if (sub_10000FA08(self) == 5)
  {
    v8 = 5.0;
  }

  else
  {
    v8 = 4.0;
  }

  v46 = +[NSMutableArray array];
  v45 = [(WeatherStackViewController *)self materialBackgroundView];
  v43 = [v45 leadingAnchor];
  v44 = [(WeatherStackViewController *)self view];
  v42 = [v44 leadingAnchor];
  v41 = [v43 constraintEqualToAnchor:v42];
  v47[0] = v41;
  v40 = [(WeatherStackViewController *)self materialBackgroundView];
  v38 = [v40 trailingAnchor];
  v39 = [(WeatherStackViewController *)self view];
  v37 = [v39 trailingAnchor];
  v36 = [v38 constraintEqualToAnchor:v37];
  v47[1] = v36;
  v35 = [(WeatherStackViewController *)self materialBackgroundView];
  v33 = [v35 topAnchor];
  v34 = [(WeatherStackViewController *)self view];
  v32 = [v34 topAnchor];
  v31 = [v33 constraintEqualToAnchor:v32];
  v47[2] = v31;
  v30 = [(WeatherStackViewController *)self materialBackgroundView];
  v28 = [v30 bottomAnchor];
  v29 = [(WeatherStackViewController *)self view];
  v27 = [v29 bottomAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v47[3] = v26;
  v24 = [v3 leadingAnchor];
  v25 = [(WeatherStackViewController *)self materialBackgroundView];
  v23 = [v25 leadingAnchor];
  v22 = [v24 constraintEqualToAnchor:v23 constant:v8];
  v47[4] = v22;
  v20 = [v3 trailingAnchor];
  v21 = [(WeatherStackViewController *)self materialBackgroundView];
  v19 = [v21 trailingAnchor];
  v18 = [v20 constraintEqualToAnchor:v19 constant:-v8];
  v47[5] = v18;
  v9 = [v3 topAnchor];
  v10 = [(WeatherStackViewController *)self materialBackgroundView];
  v11 = [v10 topAnchor];
  v12 = [v9 constraintEqualToAnchor:v11 constant:5.0];
  v47[6] = v12;
  v13 = [v3 bottomAnchor];
  v14 = [(WeatherStackViewController *)self materialBackgroundView];
  v15 = [v14 bottomAnchor];
  v16 = [v13 constraintEqualToAnchor:v15 constant:-5.0];
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

  v5 = [(WeatherStackViewController *)self view];
  [v5 addInteraction:self->_contextMenuInteraction];
}

- (double)_viewAlpha
{
  v3 = [(WeatherStackViewController *)self _viewShown];
  result = 0.0;
  if (v3)
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
  v2 = [(WeatherStackViewController *)self airQualityConditionsViewController];
  v3 = [v2 airQualityConditions];
  v4 = [v3 learnMoreURL];

  return v4;
}

- (id)_weatherPunchOutURL
{
  v2 = [(WeatherStackViewController *)self location];
  v3 = [NSURL weatherURLForLocation:v2];

  return v3;
}

- (void)_openAirQualityConditionsPunchOutURL
{
  v3 = [(WeatherStackViewController *)self _airQualityConditionsPunchOutURL];
  if (v3)
  {
    v6 = v3;
    v4 = [v3 absoluteString];
    [GEOAPPortal captureUserAction:6050 target:640 value:v4];

    v5 = [(WeatherStackViewController *)self delegate];
    [v5 weatherStackViewController:self openURL:v6];

    v3 = v6;
  }
}

- (void)_openWeatherPunchOutURL
{
  v3 = [(WeatherStackViewController *)self _weatherPunchOutURL];
  if (v3)
  {
    v6 = v3;
    v4 = [v3 absoluteString];
    [GEOAPPortal captureUserAction:6050 target:640 value:v4];

    v5 = [(WeatherStackViewController *)self delegate];
    [v5 weatherStackViewController:self openURL:v6];

    v3 = v6;
  }
}

- (void)_updateVisibilityAnimated:(BOOL)a3
{
  v40 = a3;
  v38 = [(WeatherStackViewController *)self view];
  v5 = [(WeatherStackViewController *)self airQualityConditionsViewController];
  v6 = [v5 view];

  v7 = [(WeatherStackViewController *)self weatherConditionsViewController];
  v8 = [v7 view];

  LODWORD(v9) = self->_airQualityShown;
  weatherShown = self->_weatherShown;
  v39 = [(WeatherStackViewController *)self _viewShown];
  v11 = sub_100033B24();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v36 = NSStringFromClass(v12);
    NSStringFromSelector(a2);
    v34 = v8;
    v35 = v6;
    v37 = v9;
    v14 = v13 = v11;
    if (v40)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    v16 = v15;
    if (v39)
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
    v8 = v34;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ %@, animated = %@, overall view hidden = %@, weather hidden = %@, AQI hidden = %@", buf, 0x3Eu);

    v6 = v35;
  }

  v24 = objc_alloc_init(GroupAnimation);
  [(GroupAnimation *)v24 setAnimated:v40];
  +[GroupAnimation defaultAnimationDuration];
  [(GroupAnimation *)v24 setDuration:?];
  [(GroupAnimation *)v24 setOptions:4];
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_1008CC398;
  v52[3] = &unk_10162D990;
  v52[4] = self;
  v56 = v9;
  v25 = v6;
  v53 = v25;
  v57 = weatherShown;
  v26 = v8;
  v54 = v26;
  v58 = v39;
  v27 = v38;
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
  v49 = self;
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

- (void)_requestVisibilityUpdateAnimated:(BOOL)a3
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
    v13 = a3;
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

- (void)_setCornerRadiusWithMaskedCorners:(unint64_t)a3 withValue:(double)a4
{
  v7 = self->_materialBackgroundView;
  v8 = [(UIView *)self->_materialBackgroundView subviews];
  v9 = self->_contentView;
  if (a4 == 0.0)
  {
    [(UIView *)v7 _setCornerRadius:0.0];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v19 = v8;
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

          v24 = [*(*(&v25 + 1) + 8 * i) layer];
          [v24 setMaskedCorners:0];
        }

        v21 = [v19 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v21);
    }
  }

  else
  {
    [(UIView *)v7 _setCornerRadius:a4];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v10 = v8;
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
          v16 = [(UIView *)v15 layer];
          v17 = v16;
          if (v15 == v9)
          {
            v18 = 0;
          }

          else
          {
            v18 = a3;
          }

          [v16 setMaskedCorners:v18];
          [v17 setCornerRadius:a4];
        }

        v12 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v12);
    }
  }
}

- (void)airQualityConditionsViewController:(id)a3 makeVisible:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = a3;
  if (self->_airQualityShown != v6)
  {
    v10 = sub_100033B24();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(a2);
      v14 = @"NO";
      if (v6)
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

    self->_airQualityShown = v6;
    if (![(WeatherStackViewController *)self overlayHidden])
    {
      [(WeatherStackViewController *)self _requestVisibilityUpdateAnimated:v5];
    }
  }
}

- (void)weatherConditionsViewController:(id)a3 makeVisible:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = a3;
  if (self->_weatherShown != v6)
  {
    v10 = sub_100033B24();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(a2);
      v14 = @"NO";
      if (v6)
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

    self->_weatherShown = v6;
    if (![(WeatherStackViewController *)self overlayHidden])
    {
      [(WeatherStackViewController *)self _requestVisibilityUpdateAnimated:v5];
    }
  }
}

- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1008CCDB4;
  v11[3] = &unk_101661B98;
  objc_copyWeak(&v12, &location);
  [v10 addCompletion:v11];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5
{
  v6 = objc_opt_new();
  if (sub_10000FA08(self) == 1)
  {
    v7 = [(WeatherStackViewController *)self theme];
    v8 = [v7 dynamicControlBackgroundColor];
    v9 = [v8 colorWithAlphaComponent:0.75];
    [v6 setBackgroundColor:v9];

    v10 = [(WeatherStackViewController *)self view];
    [v10 frame];
    v12 = v11;
    v13 = [(WeatherStackViewController *)self view];
    [v13 frame];
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
  v19 = [(WeatherStackViewController *)self view];
  v20 = [v18 initWithView:v19 parameters:v6];

  return v20;
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v5 = a3;
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

- (void)setOverlayAlpha:(double)a3
{
  if (self->_overlayAlpha != a3)
  {
    self->_overlayAlpha = a3;
    [(WeatherStackViewController *)self _viewAlpha];
    v6 = v5;
    v7 = [(WeatherStackViewController *)self view];
    [v7 setAlpha:v6];
  }
}

- (void)setOverlayHidden:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_overlayHidden != a3)
  {
    v4 = a4;
    v5 = a3;
    v8 = sub_100033B24();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(a2);
      v12 = @"NO";
      if (v5)
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

    self->_overlayHidden = v5;
    [(AirQualityConditionsViewController *)self->_airQualityConditionsViewController setEnabled:!v5];
    [(WeatherConditionsViewController *)self->_weatherConditionsViewController setEnabled:!v5];
    [(WeatherStackViewController *)self _updateVisibilityAnimated:v4];
  }
}

- (void)setBlurGroupName:(id)a3
{
  v4 = [a3 copy];
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
  v3 = [(WeatherStackViewController *)self airQualityConditionsViewController];
  [v3 clearSavedLocation];

  v4 = [(WeatherStackViewController *)self weatherConditionsViewController];
  [v4 clearSavedLocation];
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

- (WeatherStackViewController)initWithWeatherLocationDataProvider:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = WeatherStackViewController;
  v8 = [(WeatherStackViewController *)&v14 initWithNibName:0 bundle:0];
  if (v8)
  {
    [v6 addObserver:v8];
    v9 = [[WeatherConditionsViewController alloc] initWithWeatherLocationDataProvider:v6];
    weatherConditionsViewController = v8->_weatherConditionsViewController;
    v8->_weatherConditionsViewController = v9;

    [(WeatherConditionsViewController *)v8->_weatherConditionsViewController setDelegate:v8];
    [(WeatherStackViewController *)v8 addChildViewController:v8->_weatherConditionsViewController];
    v11 = [[AirQualityConditionsViewController alloc] initWithWeatherLocationDataProvider:v6];
    airQualityConditionsViewController = v8->_airQualityConditionsViewController;
    v8->_airQualityConditionsViewController = v11;

    [(AirQualityConditionsViewController *)v8->_airQualityConditionsViewController setDelegate:v8];
    [(WeatherStackViewController *)v8 addChildViewController:v8->_airQualityConditionsViewController];
    [(WeatherConditionsViewController *)v8->_weatherConditionsViewController didMoveToParentViewController:v8];
    [(AirQualityConditionsViewController *)v8->_airQualityConditionsViewController didMoveToParentViewController:v8];
    v8->_overlayHidden = 0;
    v8->_overlayAlpha = 1.0;
    objc_storeWeak(&v8->_delegate, v7);
  }

  return v8;
}

@end