@interface IOSFloatingControlsViewController
- (BOOL)_alignStackToBottom;
- (BOOL)_hideBackgroundForUserProfileItem;
- (BOOL)_shouldObserveOrientationDidChange;
- (BOOL)lacksSearchResultsInVenue:(id)a3 forFloorOrdinal:(signed __int16)a4;
- (BOOL)shouldShow:(int64_t)a3 withControlOptions:(int64_t)a4;
- (ButtonsContainerViewController)buttonsContainerViewController;
- (CGRect)floatingButtonsFrame;
- (LocalSearchViewController)localSearchViewController;
- (MKCompassButton)compassButton;
- (UIButton)mode2DButton;
- (UIButton)mode3DButton;
- (UIButton)modePedestrianARButton;
- (UIButton)settingsButton;
- (UIButton)ssaoButton;
- (UIButton)ttrButton;
- (UIButton)userProfileButton;
- (UIStackView)controlsStackView;
- (VKVenueFeatureMarker)venueWithFocus;
- (_MapsUserTrackingButton)userLocationButton;
- (double)_mapModeButtonPointSizeForCurrentMapType;
- (double)_pointSize;
- (double)_spacing;
- (id)_desiredFloatingButtonItems;
- (id)_localSearchViewConstraints;
- (id)_mapModeAXIdentifierForCurrentMapType;
- (id)_mapModeButtonImageNameForCurrentMapType;
- (id)floatingButtonItems;
- (id)floatingButtonLeadingGuide;
- (id)macOSStyledFloatingButtonItems;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (id)venueFloorViewControllerConstraintsForViewWhenOpen:(id)a3;
- (void)_applyNewVisibleControls:(int64_t)a3 animated:(BOOL)a4;
- (void)_configureButton:(id)a3 withImage:(id)a4 pointSize:(double)a5 weight:(int64_t)a6;
- (void)_configureButton:(id)a3 withSymbolImageName:(id)a4;
- (void)_configureButton:(id)a3 withSymbolImageName:(id)a4 pointSize:(double)a5 weight:(int64_t)a6;
- (void)_deviceOrientationDidChange:(id)a3;
- (void)_invalidateConstraints;
- (void)_presentSettings;
- (void)_refreshCompassButton;
- (void)_refreshUserLocationButton;
- (void)_setMapModeButtonAXIdentifier;
- (void)_showLocationServicesAlertIfNeeded;
- (void)_updateConstraintsIfNeeded;
- (void)_updateMapModeButtonAppearance;
- (void)_updateUserProfileButtonImage;
- (void)createRadar;
- (void)didChangeFocusedVenue:(id)a3;
- (void)enterPedestrianAR:(id)a3;
- (void)hideControlsIfNeeded:(int64_t)a3 animated:(BOOL)a4;
- (void)localSearchViewControllerDidSelectRefreshSearchHere:(id)a3;
- (void)localSearchViewShouldBeVisibleDidChange:(id)a3;
- (void)mapView:(id)a3 didChangeMapType:(unint64_t)a4;
- (void)mapView:(id)a3 didChangeUserTrackingMode:(int64_t)a4 animated:(BOOL)a5 fromTrackingButton:(BOOL)a6;
- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4;
- (void)setBlurGroupName:(id)a3;
- (void)setMargin:(double)a3;
- (void)setNonFloorPickerControlsVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)setRefreshViewEnable:(BOOL)a3;
- (void)setSearchSession:(id)a3;
- (void)setupVenueFloorViewController;
- (void)showControlsIfNeeded:(int64_t)a3 animated:(BOOL)a4;
- (void)toggleSSAO;
- (void)updateNonFloorPickerControlsVisibleAnimated:(BOOL)a3;
- (void)updateNonFloorPickerControlsVisibleForFloorPickerHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)updateTheme;
- (void)venueFloorViewControllerDidChangeConstraints:(id)a3;
- (void)venueFloorViewControllerDidClose:(id)a3;
- (void)venueFloorViewControllerDidFinishHiding:(id)a3;
- (void)venueFloorViewControllerDidFinishShowing:(id)a3;
- (void)venueFloorViewControllerDidOpen:(id)a3;
- (void)venueFloorViewControllerDidStartHiding:(id)a3;
- (void)venueFloorViewControllerDidStartShowing:(id)a3;
- (void)viewControllerDidSelectBrowseVenue:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation IOSFloatingControlsViewController

- (UIStackView)controlsStackView
{
  if ([(IOSFloatingControlsViewController *)self isViewLoaded])
  {
    controlsStackView = self->_controlsStackView;
    if (!controlsStackView)
    {
      v4 = objc_alloc_init(UIStackView);
      [(UIStackView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(IOSFloatingControlsViewController *)self _spacing];
      [(UIStackView *)v4 setSpacing:?];
      [(UIStackView *)v4 setDistribution:3];
      [(UIStackView *)v4 setAlignment:4];
      [(UIStackView *)v4 setAxis:1];
      v5 = self->_controlsStackView;
      self->_controlsStackView = v4;

      v6 = [(IOSFloatingControlsViewController *)self view];
      [v6 addSubview:self->_controlsStackView];

      [(IOSFloatingControlsViewController *)self _updateConstraintsIfNeeded];
      controlsStackView = self->_controlsStackView;
    }

    v7 = controlsStackView;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)viewDidLoad
{
  [(IOSFloatingControlsViewController *)self setNonFloorPickerControlsVisible:1];
  v13.receiver = self;
  v13.super_class = IOSFloatingControlsViewController;
  [(FloatingControlsViewController *)&v13 viewDidLoad];
  if (GEOConfigGetBOOL())
  {
    v3 = objc_alloc_init(UILabel);
    [(IOSFloatingControlsViewController *)self setSizeDebugLabel:v3];

    v4 = [(IOSFloatingControlsViewController *)self sizeDebugLabel];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

    v5 = +[UIColor blackColor];
    v6 = [(IOSFloatingControlsViewController *)self sizeDebugLabel];
    [v6 setBackgroundColor:v5];

    v7 = +[UIColor whiteColor];
    v8 = [(IOSFloatingControlsViewController *)self sizeDebugLabel];
    [v8 setTextColor:v7];

    v9 = [(IOSFloatingControlsViewController *)self sizeDebugLabel];
    [v9 setText:@"0x0"];

    v10 = [(IOSFloatingControlsViewController *)self view];
    v11 = [(IOSFloatingControlsViewController *)self sizeDebugLabel];
    [v10 addSubview:v11];
  }

  v12 = [(IOSFloatingControlsViewController *)self view];
  [v12 _mapkit_addPointerInteractionWithDelegate:self];
}

- (ButtonsContainerViewController)buttonsContainerViewController
{
  if ([(IOSFloatingControlsViewController *)self isViewLoaded])
  {
    buttonsContainerViewController = self->_buttonsContainerViewController;
    if (!buttonsContainerViewController)
    {
      v4 = [ButtonsContainerViewController alloc];
      v5 = [(IOSFloatingControlsViewController *)self _desiredFloatingButtonItems];
      v6 = [(ButtonsContainerViewController *)v4 initWithFloatingButtonItems:v5];
      v7 = self->_buttonsContainerViewController;
      self->_buttonsContainerViewController = v6;

      v8 = [(FloatingControlsViewController *)self blurGroupName];
      [(ButtonsContainerViewController *)self->_buttonsContainerViewController setBlurGroupName:v8];

      [(IOSFloatingControlsViewController *)self addChildViewController:self->_buttonsContainerViewController];
      v9 = [(IOSFloatingControlsViewController *)self controlsStackView];
      v10 = [(ButtonsContainerViewController *)self->_buttonsContainerViewController view];
      [v9 addArrangedSubview:v10];

      [(ButtonsContainerViewController *)self->_buttonsContainerViewController didMoveToParentViewController:self];
      [(IOSFloatingControlsViewController *)self updateTheme];
      buttonsContainerViewController = self->_buttonsContainerViewController;
    }

    v11 = buttonsContainerViewController;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)updateTheme
{
  v10 = [(IOSFloatingControlsViewController *)self buttonsContainerViewControllerIfLoaded];
  if (v10)
  {
    v3 = [(IOSFloatingControlsViewController *)self theme];
    v4 = [v3 controlTintColor];
    v5 = [v10 view];
    [v5 setTintColor:v4];
  }

  v6 = [(IOSFloatingControlsViewController *)self venueFloorViewControllerIfLoaded];
  if (v6)
  {
    v7 = [(IOSFloatingControlsViewController *)self theme];
    v8 = [v7 controlTintColor];
    v9 = [v6 view];
    [v9 setTintColor:v8];
  }
}

- (void)_refreshUserLocationButton
{
  userLocationButton = self->_userLocationButton;
  if (userLocationButton)
  {
    v4 = [(_MapsUserTrackingButton *)userLocationButton mapView];

    if (!v4)
    {
      v5 = [(FloatingControlsViewController *)self mapView];
      [(_MapsUserTrackingButton *)self->_userLocationButton setMapView:v5];
    }
  }
}

- (void)_updateUserProfileButtonImage
{
  if (self->_userProfileButton)
  {
    v3 = +[UserInformationManager sharedInstance];
    v4 = [v3 userIconAllowingFallback:0];
    if (v4)
    {
      [(UIButton *)self->_userProfileButton setImage:v4 forState:0];
    }

    else
    {
      [(IOSFloatingControlsViewController *)self _configureButton:self->_userProfileButton withSymbolImageName:@"person.crop.circle"];
    }

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [(ButtonsContainerViewController *)self->_buttonsContainerViewController floatingButtonItems];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v11 + 1) + 8 * i);
          if ([v10 option] == 2048)
          {
            [v10 setHideBackground:v4 != 0];
            goto LABEL_15;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }
}

- (void)_refreshCompassButton
{
  compassButton = self->_compassButton;
  if (compassButton)
  {
    v4 = [(MKCompassButton *)compassButton mapView];

    if (!v4)
    {
      v5 = [(FloatingControlsViewController *)self mapView];
      [(MKCompassButton *)self->_compassButton setMapView:v5];
    }
  }
}

- (void)viewDidLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = IOSFloatingControlsViewController;
  [(FloatingControlsViewController *)&v8 viewDidLayoutSubviews];
  v3 = [(FloatingControlsViewController *)self mapView];
  [v3 bounds];
  v9.width = v4;
  v9.height = v5;
  v6 = NSStringFromCGSize(v9);
  v7 = [(IOSFloatingControlsViewController *)self sizeDebugLabel];
  [v7 setText:v6];
}

- (BOOL)_shouldObserveOrientationDidChange
{
  if (!_UISolariumEnabled())
  {
    return 0;
  }

  v3 = [(IOSFloatingControlsViewController *)self view];
  v4 = sub_10000FA08(v3) == 0;

  return v4;
}

- (id)_desiredFloatingButtonItems
{
  if ([(IOSFloatingControlsViewController *)self _alignStackToBottom]|| (_UISolariumEnabled() & 1) == 0)
  {
    v3 = [(IOSFloatingControlsViewController *)self floatingButtonItems];
  }

  else
  {
    v3 = [(IOSFloatingControlsViewController *)self macOSStyledFloatingButtonItems];
  }

  return v3;
}

- (BOOL)_alignStackToBottom
{
  v3 = +[UIDevice currentDevice];
  v4 = [v3 orientation];

  if (sub_10000FA08(self) || (v4 - 3) >= 2)
  {
    v5 = _UISolariumEnabled();
    if (v5)
    {
      LOBYTE(v5) = sub_10000FA08(self) == 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)floatingButtonItems
{
  v2 = _UISolariumEnabled();
  v3 = [FloatingButtonItem alloc];
  if (v2)
  {
    v20 = [(FloatingButtonItem *)v3 initWithOption:4096];
    v22[0] = v20;
    v19 = +[FloatingButtonItem separatorItem];
    v22[1] = v19;
    v18 = [[FloatingButtonItem alloc] initWithOption:1024];
    v22[2] = v18;
    v17 = +[FloatingButtonItem separatorItem];
    v22[3] = v17;
    v16 = [[FloatingButtonItem alloc] initWithOption:512];
    v22[4] = v16;
    v4 = +[FloatingButtonItem separatorItem];
    v22[5] = v4;
    v5 = [[FloatingButtonItem alloc] initWithOption:256];
    v22[6] = v5;
    v6 = +[FloatingButtonItem separatorItem];
    v22[7] = v6;
    v7 = [[FloatingButtonItem alloc] initWithOption:32];
    v22[8] = v7;
    v8 = [[FloatingButtonItem alloc] initWithOption:16];
    v22[9] = v8;
    v9 = +[FloatingButtonItem separatorItem];
    v22[10] = v9;
    v10 = [[FloatingButtonItem alloc] initWithOption:2];
    v22[11] = v10;
    v11 = v22;
    v12 = 1;
  }

  else
  {
    v20 = [(FloatingButtonItem *)v3 initWithOption:2];
    v21[0] = v20;
    v19 = [[FloatingButtonItem alloc] initWithOption:1];
    v21[1] = v19;
    v18 = +[FloatingButtonItem separatorItem];
    v21[2] = v18;
    v17 = [[FloatingButtonItem alloc] initWithOption:16];
    v21[3] = v17;
    v16 = [[FloatingButtonItem alloc] initWithOption:32];
    v21[4] = v16;
    v4 = +[FloatingButtonItem separatorItem];
    v21[5] = v4;
    v5 = [[FloatingButtonItem alloc] initWithOption:256];
    v21[6] = v5;
    v6 = +[FloatingButtonItem separatorItem];
    v21[7] = v6;
    v7 = [[FloatingButtonItem alloc] initWithOption:512];
    v21[8] = v7;
    v8 = +[FloatingButtonItem separatorItem];
    v21[9] = v8;
    v9 = [[FloatingButtonItem alloc] initWithOption:1024];
    v21[10] = v9;
    v10 = +[FloatingButtonItem separatorItem];
    v21[11] = v10;
    v11 = v21;
    v12 = 4096;
  }

  v13 = [[FloatingButtonItem alloc] initWithOption:v12];
  v11[12] = v13;
  v14 = [NSArray arrayWithObjects:v11 count:13];

  return v14;
}

- (void)_updateConstraintsIfNeeded
{
  if (!self->_constraints)
  {
    v3 = [(IOSFloatingControlsViewController *)self _alignStackToBottom];
    v4 = [(UIStackView *)self->_controlsStackView trailingAnchor];
    v23 = [(IOSFloatingControlsViewController *)self view];
    [v23 trailingAnchor];
    v22 = v24 = v4;
    v5 = [v4 constraintEqualToAnchor:?];
    v21 = v5;
    if (v3)
    {
      v26[0] = v5;
      v6 = [(UIStackView *)self->_controlsStackView topAnchor];
      v7 = [(IOSFloatingControlsViewController *)self view];
      v8 = [v7 topAnchor];
      v9 = sub_100019A44();
      [(FloatingControlsViewController *)self compassDiameter];
      v11 = [v6 constraintGreaterThanOrEqualToAnchor:v8 constant:v10 + v9 * 2.0];
      v26[1] = v11;
      v12 = [(UIStackView *)self->_controlsStackView bottomAnchor];
      v13 = [(IOSFloatingControlsViewController *)self view];
      v14 = [v13 bottomAnchor];
      v15 = [v12 constraintEqualToAnchor:v14];
      v26[2] = v15;
      v16 = v26;
    }

    else
    {
      v25[0] = v5;
      v6 = [(UIStackView *)self->_controlsStackView topAnchor];
      v7 = [(IOSFloatingControlsViewController *)self view];
      v8 = [v7 topAnchor];
      v11 = [v6 constraintEqualToAnchor:v8];
      v25[1] = v11;
      v12 = [(UIStackView *)self->_controlsStackView bottomAnchor];
      v13 = [(IOSFloatingControlsViewController *)self view];
      v14 = [v13 bottomAnchor];
      v17 = sub_100019A44();
      [(FloatingControlsViewController *)self compassDiameter];
      v15 = [v12 constraintLessThanOrEqualToAnchor:v14 constant:-(v18 + v17 * 2.0)];
      v25[2] = v15;
      v16 = v25;
    }

    v19 = [NSArray arrayWithObjects:v16 count:3];
    constraints = self->_constraints;
    self->_constraints = v19;

    [NSLayoutConstraint activateConstraints:self->_constraints];
  }
}

- (void)_updateMapModeButtonAppearance
{
  v3 = [(FloatingControlsViewController *)self mapView];

  if (v3)
  {
    v7 = [(IOSFloatingControlsViewController *)self _mapModeButtonImageNameForCurrentMapType];
    [(IOSFloatingControlsViewController *)self _mapModeButtonPointSizeForCurrentMapType];
    v5 = v4;
    v6 = [(IOSFloatingControlsViewController *)self _imageSymbolWeight];
    [(IOSFloatingControlsViewController *)self _setMapModeButtonAXIdentifier];
    [(IOSFloatingControlsViewController *)self _configureButton:self->_settingsButton withSymbolImageName:v7 pointSize:v6 weight:v5];
  }
}

- (id)_mapModeButtonImageNameForCurrentMapType
{
  v3 = [(FloatingControlsViewController *)self mapView];
  if (v3)
  {
    v4 = v3;
    [v3 _cartographicConfiguration];

    if (v10 == 1)
    {
      return @"globe.americas.fill";
    }

    if (v10)
    {
      return @"map.fill";
    }
  }

  v5 = [(FloatingControlsViewController *)self mapView];
  if (!v5)
  {
    return @"map.fill";
  }

  v6 = v5;
  [v5 _cartographicConfiguration];

  v7 = @"map.fill";
  if (v9 == 4)
  {
    v7 = @"tram.fill";
  }

  if (v9 == 2)
  {
    return @"car.fill";
  }

  else
  {
    return v7;
  }
}

- (double)_mapModeButtonPointSizeForCurrentMapType
{
  if (_UISolariumEnabled())
  {

    [(IOSFloatingControlsViewController *)self _pointSize];
  }

  else
  {
    v4 = [(FloatingControlsViewController *)self mapView];
    v5 = v4;
    if (v4)
    {
      [v4 _cartographicConfiguration];
      if (v7 == 1)
      {
        v6 = 18.0;
      }

      else
      {
        v6 = 17.0;
      }
    }

    else
    {
      v6 = 17.0;
    }

    return v6;
  }

  return result;
}

- (void)_setMapModeButtonAXIdentifier
{
  v4 = [(IOSFloatingControlsViewController *)self _mapModeAXIdentifierForCurrentMapType];
  v3 = [@"SettingsButton." stringByAppendingString:v4];
  [(UIButton *)self->_settingsButton setAccessibilityIdentifier:v3];
}

- (id)_mapModeAXIdentifierForCurrentMapType
{
  v3 = [(FloatingControlsViewController *)self mapView];
  if (v3)
  {
    v4 = v3;
    [v3 _cartographicConfiguration];

    if (v10 == 1)
    {
      return @"Satellite";
    }

    if (v10)
    {
      return @"Explore";
    }
  }

  v5 = [(FloatingControlsViewController *)self mapView];
  if (!v5)
  {
    return @"Explore";
  }

  v6 = v5;
  [v5 _cartographicConfiguration];

  v7 = @"Explore";
  if (v9 == 4)
  {
    v7 = @"Transit";
  }

  if (v9 == 2)
  {
    return @"Driving";
  }

  else
  {
    return v7;
  }
}

- (CGRect)floatingButtonsFrame
{
  v3 = [(IOSFloatingControlsViewController *)self controlsStackViewIfLoaded];

  if (v3)
  {
    v4 = [(IOSFloatingControlsViewController *)self controlsStackViewIfLoaded];
    [v4 frame];
    x = v5;
    y = v7;
    width = v9;
    height = v11;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)_configureButton:(id)a3 withImage:(id)a4 pointSize:(double)a5 weight:(int64_t)a6
{
  v11 = a3;
  [v11 setImage:a4 forState:0];
  if (_UISolariumEnabled())
  {
    +[_TtC4Maps23MapsDesignConstantsShim defaultButtonTintColor];
  }

  else
  {
    +[MapsTheme floatingControlsTintColor];
  }
  v9 = ;
  [v11 setTintColor:v9];

  v10 = [UIImageSymbolConfiguration configurationWithPointSize:a6 weight:a5];
  [v11 setPreferredSymbolConfiguration:v10 forImageInState:0];
}

- (void)_configureButton:(id)a3 withSymbolImageName:(id)a4 pointSize:(double)a5 weight:(int64_t)a6
{
  v10 = a3;
  v11 = [UIImage _systemImageNamed:a4];
  [(IOSFloatingControlsViewController *)self _configureButton:v10 withImage:v11 pointSize:a6 weight:a5];
}

- (void)_configureButton:(id)a3 withSymbolImageName:(id)a4
{
  v6 = a4;
  v8 = a3;
  v7 = [(IOSFloatingControlsViewController *)self _imageSymbolWeight];
  [(IOSFloatingControlsViewController *)self _pointSize];
  [(IOSFloatingControlsViewController *)self _configureButton:v8 withSymbolImageName:v6 pointSize:v7 weight:?];
}

- (void)toggleSSAO
{
  GEOConfigGetBOOL();

  GEOConfigSetBOOL();
}

- (void)createRadar
{
  v3 = sub_1008E379C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = self;
    if (!v4)
    {
      v9 = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(IOSFloatingControlsViewController *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Launching TTR from floating control", buf, 0xCu);
  }

  v10 = +[MapsRadarController sharedInstance];
  [v10 launchTTR];
}

- (UIButton)ssaoButton
{
  ssaoButton = self->_ssaoButton;
  if (!ssaoButton)
  {
    v4 = [MapsThemeButton buttonWithType:0];
    v5 = self->_ssaoButton;
    self->_ssaoButton = v4;

    [(UIButton *)self->_ssaoButton setAccessibilityIdentifier:@"SSAOButton"];
    [(UIButton *)self->_ssaoButton setHidden:1];
    v6 = self->_ssaoButton;
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"SSAO" value:@"localized string not found" table:0];
    [(UIButton *)v6 setAccessibilityLabel:v8];

    v9 = self->_ssaoButton;
    v10 = [(FloatingControlsViewController *)self actionCoordinator];
    [(UIButton *)v9 addTarget:v10 action:"toggleSSAO" forControlEvents:64];

    [(IOSFloatingControlsViewController *)self _configureButton:self->_ssaoButton withSymbolImageName:@"s.circle.fill"];
    [(UIButton *)self->_ssaoButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = sub_100035D80(self);
    v12 = [(UIButton *)self->_ssaoButton heightAnchor];
    v13 = [v12 constraintEqualToConstant:v11];
    v18[0] = v13;
    v14 = [(UIButton *)self->_ssaoButton widthAnchor];
    v15 = [v14 constraintEqualToConstant:v11];
    v18[1] = v15;
    v16 = [NSArray arrayWithObjects:v18 count:2];
    [NSLayoutConstraint activateConstraints:v16];

    ssaoButton = self->_ssaoButton;
  }

  return ssaoButton;
}

- (UIButton)ttrButton
{
  ttrButton = self->_ttrButton;
  if (!ttrButton)
  {
    v4 = [MapsThemeButton buttonWithType:0];
    v5 = self->_ttrButton;
    self->_ttrButton = v4;

    [(UIButton *)self->_ttrButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)self->_ttrButton setAccessibilityIdentifier:@"TTRButton"];
    [(UIButton *)self->_ttrButton setHidden:1];
    v6 = self->_ttrButton;
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"Tap-to-Radar" value:@"localized string not found" table:0];
    [(UIButton *)v6 setAccessibilityLabel:v8];

    [(IOSFloatingControlsViewController *)self _configureButton:self->_ttrButton withSymbolImageName:0];
    objc_initWeak(&location, self);
    v9 = self->_ttrButton;
    v10 = [(IOSFloatingControlsViewController *)self topMostPresentedViewController];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1008E3CF4;
    v18[3] = &unk_101661B98;
    objc_copyWeak(&v19, &location);
    [MapsRadarButtonHelper configureWithButton:v9 presentationViewController:v10 actionHandler:v18];

    v11 = sub_100035D80(self);
    v12 = [(UIButton *)self->_ttrButton heightAnchor];
    v13 = [v12 constraintEqualToConstant:v11];
    v21[0] = v13;
    v14 = [(UIButton *)self->_ttrButton widthAnchor];
    v15 = [v14 constraintEqualToConstant:v11];
    v21[1] = v15;
    v16 = [NSArray arrayWithObjects:v21 count:2];
    [NSLayoutConstraint activateConstraints:v16];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
    ttrButton = self->_ttrButton;
  }

  return ttrButton;
}

- (void)enterPedestrianAR:(id)a3
{
  v4 = a3;
  v5 = [(FloatingControlsViewController *)self actionCoordinator];
  [v5 enterPedestrianAR:v4];

  [GEOAPPortal captureUserAction:126 target:302 value:0];
}

- (UIButton)modePedestrianARButton
{
  modePedestrianARButton = self->_modePedestrianARButton;
  if (!modePedestrianARButton)
  {
    v4 = [MapsThemeButton buttonWithType:0];
    v5 = self->_modePedestrianARButton;
    self->_modePedestrianARButton = v4;

    [(UIButton *)self->_modePedestrianARButton setAccessibilityIdentifier:@"ModeButtonAR"];
    [(UIButton *)self->_modePedestrianARButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)self->_modePedestrianARButton setTag:&off_101661968];
    v6 = self->_modePedestrianARButton;
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"Pedestrian AR [Accessibility]" value:@"localized string not found" table:0];
    [(UIButton *)v6 setAccessibilityLabel:v8];

    [(UIButton *)self->_modePedestrianARButton addTarget:self action:"enterPedestrianAR:" forControlEvents:64];
    [(IOSFloatingControlsViewController *)self _configureButton:self->_modePedestrianARButton withSymbolImageName:@"arkit"];
    v9 = [(UIButton *)self->_modePedestrianARButton heightAnchor];
    v10 = [v9 constraintEqualToConstant:sub_100035D80(self)];
    v16[0] = v10;
    v11 = [(UIButton *)self->_modePedestrianARButton widthAnchor];
    v12 = [(UIButton *)self->_modePedestrianARButton heightAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v16[1] = v13;
    v14 = [NSArray arrayWithObjects:v16 count:2];
    [NSLayoutConstraint activateConstraints:v14];

    modePedestrianARButton = self->_modePedestrianARButton;
  }

  return modePedestrianARButton;
}

- (UIButton)mode3DButton
{
  mode3DButton = self->_mode3DButton;
  if (!mode3DButton)
  {
    v4 = [MapsThemeButton buttonWithType:0];
    v5 = self->_mode3DButton;
    self->_mode3DButton = v4;

    [(UIButton *)self->_mode3DButton setAccessibilityIdentifier:@"ModeButton3D"];
    [(UIButton *)self->_mode3DButton setHidden:1];
    v6 = self->_mode3DButton;
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"3D mode" value:@"localized string not found" table:0];
    [(UIButton *)v6 setAccessibilityLabel:v8];

    v9 = self->_mode3DButton;
    v10 = [(FloatingControlsViewController *)self actionCoordinator];
    [(UIButton *)v9 addTarget:v10 action:"select3dMode" forControlEvents:64];

    [(IOSFloatingControlsViewController *)self _configureButton:self->_mode3DButton withSymbolImageName:@"view.3d"];
    [(UIButton *)self->_mode3DButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = sub_100035D80(self);
    v12 = [(UIButton *)self->_mode3DButton heightAnchor];
    v13 = [v12 constraintEqualToConstant:v11];
    v18[0] = v13;
    v14 = [(UIButton *)self->_mode3DButton widthAnchor];
    v15 = [v14 constraintEqualToConstant:v11];
    v18[1] = v15;
    v16 = [NSArray arrayWithObjects:v18 count:2];
    [NSLayoutConstraint activateConstraints:v16];

    mode3DButton = self->_mode3DButton;
  }

  return mode3DButton;
}

- (UIButton)mode2DButton
{
  mode2DButton = self->_mode2DButton;
  if (!mode2DButton)
  {
    v4 = [MapsThemeButton buttonWithType:0];
    v5 = self->_mode2DButton;
    self->_mode2DButton = v4;

    [(UIButton *)self->_mode2DButton setAccessibilityIdentifier:@"ModeButton2D"];
    [(UIButton *)self->_mode2DButton setHidden:1];
    v6 = self->_mode2DButton;
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"2D mode" value:@"localized string not found" table:0];
    [(UIButton *)v6 setAccessibilityLabel:v8];

    v9 = self->_mode2DButton;
    v10 = [(FloatingControlsViewController *)self actionCoordinator];
    [(UIButton *)v9 addTarget:v10 action:"exit3dMode" forControlEvents:64];

    [(IOSFloatingControlsViewController *)self _configureButton:self->_mode2DButton withSymbolImageName:@"view.2d"];
    [(UIButton *)self->_mode2DButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = sub_100035D80(self);
    v12 = [(UIButton *)self->_mode2DButton heightAnchor];
    v13 = [v12 constraintEqualToConstant:v11];
    v18[0] = v13;
    v14 = [(UIButton *)self->_mode2DButton widthAnchor];
    v15 = [v14 constraintEqualToConstant:v11];
    v18[1] = v15;
    v16 = [NSArray arrayWithObjects:v18 count:2];
    [NSLayoutConstraint activateConstraints:v16];

    mode2DButton = self->_mode2DButton;
  }

  return mode2DButton;
}

- (BOOL)_hideBackgroundForUserProfileItem
{
  v2 = +[UserInformationManager sharedInstance];
  v3 = [v2 userIconAllowingFallback:0];
  v4 = v3 != 0;

  return v4;
}

- (UIButton)userProfileButton
{
  userProfileButton = self->_userProfileButton;
  if (!userProfileButton)
  {
    v4 = [MapsThemeButton buttonWithType:0];
    v5 = self->_userProfileButton;
    self->_userProfileButton = v4;

    [(UIButton *)self->_userProfileButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)self->_userProfileButton setAccessibilityIdentifier:&stru_1016631F0];
    v6 = [(UIButton *)self->_userProfileButton imageView];
    [v6 setContentMode:1];

    v7 = [(UIButton *)self->_userProfileButton imageView];
    [v7 setClipsToBounds:1];

    v8 = self->_userProfileButton;
    v9 = [(FloatingControlsViewController *)self actionCoordinator];
    [(UIButton *)v8 addTarget:v9 action:"openUserProfile" forEvents:64];

    [(IOSFloatingControlsViewController *)self _updateUserProfileButtonImage];
    v10 = sub_100035D80(self);
    v11 = [(UIButton *)self->_userProfileButton heightAnchor];
    v12 = [v11 constraintEqualToConstant:v10];
    v17[0] = v12;
    v13 = [(UIButton *)self->_userProfileButton widthAnchor];
    v14 = [v13 constraintEqualToConstant:v10];
    v17[1] = v14;
    v15 = [NSArray arrayWithObjects:v17 count:2];
    [NSLayoutConstraint activateConstraints:v15];

    userProfileButton = self->_userProfileButton;
  }

  return userProfileButton;
}

- (void)_showLocationServicesAlertIfNeeded
{
  v2 = +[MKLocationManager sharedLocationManager];
  v3 = [v2 isLocationServicesAuthorizationNeeded];

  if (v3)
  {
    v4 = sub_1008E379C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Location Services authorization is needed, will show alert", buf, 2u);
    }

    v5 = +[MKLocationManager sharedLocationManager];
    [v5 requestWhenInUseAuthorization];
    v6 = 0;
LABEL_5:

    goto LABEL_18;
  }

  v7 = +[MKLocationManager sharedLocationManager];
  v21 = 0;
  v8 = [v7 isLocationServicesPossiblyAvailable:&v21];
  v6 = v21;

  if ((v8 & 1) == 0)
  {
    v9 = sub_1008E379C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v6 domain];
      v11 = [v6 code];
      v12 = [v6 localizedDescription];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = @"no description available";
      }

      v15 = [v6 localizedRecoverySuggestion];
      v16 = v15;
      v17 = @"no recovery suggestion available";
      *buf = 138413058;
      v23 = v10;
      if (v15)
      {
        v17 = v15;
      }

      v24 = 2048;
      v25 = v11;
      v26 = 2112;
      v27 = v14;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Location Services not available, error domain => %@ code => %ld, description => %@, recovery suggestion => %@", buf, 0x2Au);
    }

    v18 = [v6 domain];
    v19 = [v18 isEqualToString:MKLocationErrorDomain];

    if (v19)
    {
      v20 = [v6 code];
      if (v20 == 2)
      {
        v5 = +[UIApplication sharedMapsDelegate];
        [v5 showLocationServicesAlertWithError:v6];
      }

      else
      {
        if (v20)
        {
          goto LABEL_18;
        }

        v5 = +[UIApplication sharedMapsDelegate];
        [v5 promptLocationServicesOff];
      }

      goto LABEL_5;
    }
  }

LABEL_18:
}

- (void)_presentSettings
{
  v3 = [(FloatingControlsViewController *)self actionCoordinator];
  [v3 viewControllerOpenSettings:self];

  v4 = [(FloatingControlsViewController *)self openSettingsDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(FloatingControlsViewController *)self openSettingsDelegate];
    [v6 viewControllerOpenSettings:self];
  }
}

- (UIButton)settingsButton
{
  settingsButton = self->_settingsButton;
  if (!settingsButton)
  {
    v4 = [MapsThemeButton buttonWithType:0];
    v5 = self->_settingsButton;
    self->_settingsButton = v4;

    [(IOSFloatingControlsViewController *)self _setMapModeButtonAXIdentifier];
    v6 = self->_settingsButton;
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"Map Modes" value:@"localized string not found" table:0];
    [(UIButton *)v6 setAccessibilityLabel:v8];

    [(UIButton *)self->_settingsButton addTarget:self action:"_presentSettings" forControlEvents:64];
    v9 = [(IOSFloatingControlsViewController *)self _mapModeButtonImageNameForCurrentMapType];
    [(IOSFloatingControlsViewController *)self _mapModeButtonPointSizeForCurrentMapType];
    [(IOSFloatingControlsViewController *)self _configureButton:self->_settingsButton withSymbolImageName:v9 pointSize:[(IOSFloatingControlsViewController *)self _imageSymbolWeight] weight:v10];
    [(UIButton *)self->_settingsButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = sub_100035D80(self);
    v12 = [(UIButton *)self->_settingsButton heightAnchor];
    v13 = [v12 constraintEqualToConstant:v11];
    v18[0] = v13;
    v14 = [(UIButton *)self->_settingsButton widthAnchor];
    v15 = [v14 constraintEqualToConstant:v11];
    v18[1] = v15;
    v16 = [NSArray arrayWithObjects:v18 count:2];
    [NSLayoutConstraint activateConstraints:v16];

    settingsButton = self->_settingsButton;
  }

  return settingsButton;
}

- (MKCompassButton)compassButton
{
  compassButton = self->_compassButton;
  if (!compassButton)
  {
    v4 = [(FloatingControlsViewController *)self mapView];
    v5 = [MKCompassButton compassButtonWithMapView:v4];
    v6 = self->_compassButton;
    self->_compassButton = v5;

    [(MKCompassButton *)self->_compassButton setCompassVisibility:2];
    v7 = sub_100035D80(self);
    v8 = [(MKCompassButton *)self->_compassButton heightAnchor];
    v9 = [v8 constraintEqualToConstant:v7];
    v14[0] = v9;
    v10 = [(MKCompassButton *)self->_compassButton widthAnchor];
    v11 = [v10 constraintEqualToConstant:v7];
    v14[1] = v11;
    v12 = [NSArray arrayWithObjects:v14 count:2];
    [NSLayoutConstraint activateConstraints:v12];

    compassButton = self->_compassButton;
  }

  return compassButton;
}

- (_MapsUserTrackingButton)userLocationButton
{
  userLocationButton = self->_userLocationButton;
  if (!userLocationButton)
  {
    v4 = [(FloatingControlsViewController *)self mapView];
    v5 = [_MapsUserTrackingButton buttonWithMapView:v4 applyDefaultImageIfNeeded:0];
    v6 = self->_userLocationButton;
    self->_userLocationButton = v5;

    [(_MapsUserTrackingButton *)self->_userLocationButton setAccessibilityIdentifier:@"UserLocationButton"];
    v7 = self->_userLocationButton;
    v8 = [UIImage systemImageNamed:@"location"];
    [(_MapsUserTrackingButton *)v7 _setImage:v8 forUserTrackingMode:0 controlState:0];

    v9 = self->_userLocationButton;
    v10 = [UIImage systemImageNamed:@"location.fill"];
    [(_MapsUserTrackingButton *)v9 _setImage:v10 forUserTrackingMode:1 controlState:0];

    v11 = self->_userLocationButton;
    v12 = [UIImage systemImageNamed:@"location.north.line.fill"];
    [(_MapsUserTrackingButton *)v11 _setImage:v12 forUserTrackingMode:2 controlState:0];

    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    [(_MapsUserTrackingButton *)self->_userLocationButton _setImageEdgeInsets:0 forUserTrackingMode:UIEdgeInsetsZero.top, left, bottom, right];
    [(_MapsUserTrackingButton *)self->_userLocationButton _setImageEdgeInsets:1 forUserTrackingMode:UIEdgeInsetsZero.top, left, bottom, right];
    [(_MapsUserTrackingButton *)self->_userLocationButton _setImageEdgeInsets:2 forUserTrackingMode:UIEdgeInsetsZero.top, left, bottom, right];
    v16 = self->_userLocationButton;
    if (_UISolariumEnabled())
    {
      +[MapsTheme floatingControlsUserLocationTintColor];
    }

    else
    {
      +[MapsTheme floatingControlsTintColor];
    }
    v17 = ;
    [(_MapsUserTrackingButton *)v16 setTintColor:v17];

    [(_MapsUserTrackingButton *)self->_userLocationButton _setSelectsWhenTracking:0];
    [(_MapsUserTrackingButton *)self->_userLocationButton addTarget:self action:"_showLocationServicesAlertIfNeeded" forControlEvents:64];
    [(IOSFloatingControlsViewController *)self _pointSize];
    v18 = self->_userLocationButton;
    v20 = [UIImageSymbolConfiguration configurationWithPointSize:[(IOSFloatingControlsViewController *)self _imageSymbolWeight] weight:v19];
    [(_MapsUserTrackingButton *)v18 setPreferredSymbolConfiguration:v20 forImageInState:0];

    [(_MapsUserTrackingButton *)self->_userLocationButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v21 = sub_100035D80(self);
    v22 = [(_MapsUserTrackingButton *)self->_userLocationButton heightAnchor];
    v23 = [v22 constraintEqualToConstant:v21];
    v28[0] = v23;
    v24 = [(_MapsUserTrackingButton *)self->_userLocationButton widthAnchor];
    v25 = [v24 constraintEqualToConstant:v21];
    v28[1] = v25;
    v26 = [NSArray arrayWithObjects:v28 count:2];
    [NSLayoutConstraint activateConstraints:v26];

    userLocationButton = self->_userLocationButton;
  }

  return userLocationButton;
}

- (id)_localSearchViewConstraints
{
  localSearchViewController = self->_localSearchViewController;
  if (localSearchViewController)
  {
    v4 = [(LocalSearchViewController *)localSearchViewController view];
    v5 = [v4 trailingAnchor];
    v6 = [(IOSFloatingControlsViewController *)self controlsStackView];
    v7 = [v6 leadingAnchor];
    [(FloatingControlsViewController *)self margin];
    v9 = [v5 constraintEqualToAnchor:v7 constant:-v8];
    v16[0] = v9;
    v10 = [v4 topAnchor];
    v11 = [(IOSFloatingControlsViewController *)self controlsStackView];
    v12 = [v11 topAnchor];
    v13 = [v10 constraintEqualToAnchor:v12];
    v16[1] = v13;
    v14 = [NSArray arrayWithObjects:v16 count:2];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (LocalSearchViewController)localSearchViewController
{
  localSearchViewController = self->_localSearchViewController;
  if (!localSearchViewController)
  {
    v4 = [[LocalSearchViewController alloc] initAsButton:1];
    v5 = self->_localSearchViewController;
    self->_localSearchViewController = v4;

    [(LocalSearchViewController *)self->_localSearchViewController setDelegate:self];
    localSearchViewController = self->_localSearchViewController;
  }

  return localSearchViewController;
}

- (void)localSearchViewShouldBeVisibleDidChange:(id)a3
{
  v4 = [(IOSFloatingControlsViewController *)self localSearchViewController];
  v5 = [v4 view];
  [v5 alpha];
  v7 = v6;

  v8 = [(IOSFloatingControlsViewController *)self localSearchViewController];
  v9 = [v8 shouldBeVisible];

  if ((((v7 != 1.0) ^ v9) & 1) == 0)
  {
    if (v9)
    {
      v10 = [(IOSFloatingControlsViewController *)self localSearchViewController];
      v11 = [v10 view];
      [v11 layoutIfNeeded];
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1008E52F8;
    v12[3] = &unk_101661AE0;
    v12[4] = self;
    v13 = v9;
    [UIView _animateUsingDefaultTimingWithOptions:0 animations:v12 completion:0];
  }
}

- (void)viewControllerDidSelectBrowseVenue:(id)a3
{
  v4 = [(FloatingControlsViewController *)self actionCoordinator];
  v3 = [v4 venuesManager];
  [v3 presentPlaceCardForVenueWithFocusAndAddToHistory:1 source:7 centeringOnVenue:0];
}

- (void)localSearchViewControllerDidSelectRefreshSearchHere:(id)a3
{
  v4 = [(FloatingControlsViewController *)self actionCoordinator];
  v5 = [v4 shouldShowSearchOverlay];

  if (v5)
  {
    v6 = [(FloatingControlsViewController *)self actionCoordinator];
    [v6 refreshCurrentSearch];
  }
}

- (VKVenueFeatureMarker)venueWithFocus
{
  v2 = [(FloatingControlsViewController *)self actionCoordinator];
  v3 = [v2 venuesManager];
  v4 = [v3 venueWithFocus];

  return v4;
}

- (void)setSearchSession:(id)a3
{
  v4 = a3;
  v6 = [(IOSFloatingControlsViewController *)self localSearchViewController];
  v5 = [v6 refreshSearchHereBusinessController];
  [v5 setSearchSession:v4];
}

- (void)setRefreshViewEnable:(BOOL)a3
{
  v3 = a3;
  v4 = [(IOSFloatingControlsViewController *)self localSearchViewController];
  [v4 setEnable:v3];
}

- (double)_pointSize
{
  v3 = 17.0;
  if (_UISolariumEnabled())
  {
    if (sub_10000FA08(self) == 5)
    {
      return 14.0;
    }

    else
    {
      return 18.0;
    }
  }

  return v3;
}

- (BOOL)lacksSearchResultsInVenue:(id)a3 forFloorOrdinal:(signed __int16)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(FloatingControlsViewController *)self actionCoordinator];
  v8 = [v7 venuesManager];
  if ([v8 hasSearchResultsInVenueForAnyFloorOrdinal:v6])
  {
    v9 = [(FloatingControlsViewController *)self actionCoordinator];
    v10 = [v9 venuesManager];
    v11 = [v10 hasSearchResultsInVenue:v6 forFloorOrdinal:v4] ^ 1;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (id)venueFloorViewControllerConstraintsForViewWhenOpen:(id)a3
{
  v4 = a3;
  v32 = [v4 view];
  v29 = [v32 leadingAnchor];
  v5 = [(IOSFloatingControlsViewController *)self controlsStackView];
  v6 = [v5 leadingAnchor];
  v7 = [v29 constraintEqualToAnchor:v6];
  v36[0] = v7;
  v8 = [v4 view];
  v9 = [v8 trailingAnchor];
  v10 = [(IOSFloatingControlsViewController *)self controlsStackView];
  v11 = [v10 trailingAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  v36[1] = v12;
  v31 = [NSArray arrayWithObjects:v36 count:2];

  LODWORD(v11) = [(IOSFloatingControlsViewController *)self _alignStackToBottom];
  v33 = v4;
  v13 = [v4 view];
  v30 = v13;
  if (v11)
  {
    v14 = [v13 bottomAnchor];
    v27 = [(IOSFloatingControlsViewController *)self view];
    v15 = [v27 bottomAnchor];
    v28 = v14;
    v16 = [v14 constraintEqualToAnchor:v15];
    v35[0] = v16;
    v17 = [v4 view];
    v18 = [v17 topAnchor];
    v19 = [(IOSFloatingControlsViewController *)self view];
    v20 = [v19 topAnchor];
    v21 = [v18 constraintGreaterThanOrEqualToAnchor:v20];
    v35[1] = v21;
    v22 = v35;
  }

  else
  {
    v23 = [v13 topAnchor];
    v27 = [(IOSFloatingControlsViewController *)self view];
    v15 = [v27 topAnchor];
    v28 = v23;
    v16 = [v23 constraintEqualToAnchor:v15];
    v34[0] = v16;
    v17 = [v4 view];
    v18 = [v17 bottomAnchor];
    v19 = [(IOSFloatingControlsViewController *)self view];
    v20 = [v19 bottomAnchor];
    v21 = [v18 constraintLessThanOrEqualToAnchor:v20];
    v34[1] = v21;
    v22 = v34;
  }

  v24 = [NSArray arrayWithObjects:v22 count:2];
  v25 = [v31 arrayByAddingObjectsFromArray:v24];

  return v25;
}

- (void)venueFloorViewControllerDidClose:(id)a3
{
  v4 = a3;
  [(IOSFloatingControlsViewController *)self updateNonFloorPickerControlsVisibleAnimated:1];
  v6 = [(FloatingControlsViewController *)self actionCoordinator];
  v5 = [v6 venuesManager];
  [v5 venueFloorViewControllerDidClose:v4];
}

- (void)venueFloorViewControllerDidOpen:(id)a3
{
  v4 = a3;
  [(IOSFloatingControlsViewController *)self updateNonFloorPickerControlsVisibleAnimated:1];
  v6 = [(FloatingControlsViewController *)self actionCoordinator];
  v5 = [v6 venuesManager];
  [v5 venueFloorViewControllerDidOpen:v4];
}

- (void)venueFloorViewControllerDidFinishShowing:(id)a3
{
  v4 = a3;
  [(IOSFloatingControlsViewController *)self updateNonFloorPickerControlsVisibleAnimated:1];
  v6 = [(FloatingControlsViewController *)self actionCoordinator];
  v5 = [v6 venuesManager];
  [v5 venueFloorViewControllerDidFinishShowing:v4];
}

- (void)venueFloorViewControllerDidStartShowing:(id)a3
{
  v4 = a3;
  v5 = [(IOSFloatingControlsViewController *)self view];
  [v5 layoutIfNeeded];

  [(IOSFloatingControlsViewController *)self updateNonFloorPickerControlsVisibleForFloorPickerHidden:0 animated:1];
  v7 = [(FloatingControlsViewController *)self actionCoordinator];
  v6 = [v7 venuesManager];
  [v6 venueFloorViewControllerDidStartShowing:v4];
}

- (void)venueFloorViewControllerDidFinishHiding:(id)a3
{
  v4 = a3;
  v5 = [(IOSFloatingControlsViewController *)self _alignStackToBottom];
  v6 = [(IOSFloatingControlsViewController *)self controlsStackView];
  v7 = [(IOSFloatingControlsViewController *)self venueFloorViewControllerIfLoaded];
  v8 = [v7 closedPlaceholderView];
  if (v5)
  {
    [v6 insertArrangedSubview:v8 atIndex:0];
  }

  else
  {
    [v6 addArrangedSubview:v8];
  }

  v9 = [(IOSFloatingControlsViewController *)self view];
  [v9 layoutIfNeeded];

  [(IOSFloatingControlsViewController *)self updateNonFloorPickerControlsVisibleAnimated:1];
  v11 = [(FloatingControlsViewController *)self actionCoordinator];
  v10 = [v11 venuesManager];
  [v10 venueFloorViewControllerDidFinishHiding:v4];
}

- (void)venueFloorViewControllerDidStartHiding:(id)a3
{
  v4 = a3;
  v5 = [(IOSFloatingControlsViewController *)self controlsStackView];
  v6 = [(IOSFloatingControlsViewController *)self venueFloorViewControllerIfLoaded];
  v7 = [v6 closedPlaceholderView];
  [v5 removeArrangedSubview:v7];

  v8 = [(IOSFloatingControlsViewController *)self view];
  [v8 layoutIfNeeded];

  [(IOSFloatingControlsViewController *)self updateNonFloorPickerControlsVisibleForFloorPickerHidden:1 animated:1];
  v10 = [(FloatingControlsViewController *)self actionCoordinator];
  v9 = [v10 venuesManager];
  [v9 venueFloorViewControllerDidStartHiding:v4];
}

- (void)venueFloorViewControllerDidChangeConstraints:(id)a3
{
  v4 = a3;
  v5 = [(IOSFloatingControlsViewController *)self view];
  [v5 layoutIfNeeded];

  v7 = [(FloatingControlsViewController *)self actionCoordinator];
  v6 = [v7 venuesManager];
  [v6 venueFloorViewControllerDidChangeConstraints:v4];
}

- (void)updateNonFloorPickerControlsVisibleForFloorPickerHidden:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  if (a3)
  {

    [(IOSFloatingControlsViewController *)self setNonFloorPickerControlsVisible:1 animated:?];
  }

  else
  {
    v6 = [(IOSFloatingControlsViewController *)self venueFloorViewController];
    -[IOSFloatingControlsViewController setNonFloorPickerControlsVisible:animated:](self, "setNonFloorPickerControlsVisible:animated:", [v6 isOpen] ^ 1, v4);
  }
}

- (void)updateNonFloorPickerControlsVisibleAnimated:(BOOL)a3
{
  v3 = a3;
  v6 = [(IOSFloatingControlsViewController *)self venueFloorViewController];
  if (v6)
  {
    v5 = [(IOSFloatingControlsViewController *)self venueFloorViewController];
    -[IOSFloatingControlsViewController updateNonFloorPickerControlsVisibleForFloorPickerHidden:animated:](self, "updateNonFloorPickerControlsVisibleForFloorPickerHidden:animated:", [v5 isHidden], v3);
  }

  else
  {
    [(IOSFloatingControlsViewController *)self updateNonFloorPickerControlsVisibleForFloorPickerHidden:1 animated:v3];
  }
}

- (void)setNonFloorPickerControlsVisible:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_nonFloorPickerControlsVisible != a3)
  {
    v19 = v4;
    v20 = v5;
    v6 = a4;
    v7 = a3;
    self->_nonFloorPickerControlsVisible = a3;
    v9 = [(FloatingControlsViewController *)self mapView];
    [v9 _setCompassSuppressedForFloorPicker:!v7];

    v10 = 0.0;
    v14 = 3221225472;
    v13 = _NSConcreteStackBlock;
    v15 = sub_1008E6090;
    v16 = &unk_101661650;
    if (v7)
    {
      v10 = 1.0;
    }

    v17 = self;
    v18 = v10;
    v11 = objc_retainBlock(&v13);
    v12 = v11;
    if (v6)
    {
      [UIView _animateUsingDefaultTimingWithOptions:0 animations:v11 completion:0, v13, v14, v15, v16];
    }

    else
    {
      (v11[2])(v11);
    }
  }
}

- (void)setupVenueFloorViewController
{
  v3 = [(IOSFloatingControlsViewController *)self venueFloorViewController];

  if (!v3)
  {
    v4 = [VenueFloorViewController alloc];
    v5 = [(FloatingControlsViewController *)self actionCoordinator];
    v6 = [v5 venuesManager];
    v7 = [(VenueFloorViewController *)v4 initWithDelegate:self venuesManager:v6 visualEffectDisabled:0];
    [(IOSFloatingControlsViewController *)self setVenueFloorViewController:v7];

    v8 = [(IOSFloatingControlsViewController *)self venueFloorViewController];
    v9 = [(FloatingControlsViewController *)self actionCoordinator];
    v10 = [v9 venuesManager];
    [v10 setVenueFloorViewController:v8];

    v11 = [(IOSFloatingControlsViewController *)self venueFloorViewController];
    [v11 setForceHidden:1];

    v12 = [(FloatingControlsViewController *)self blurGroupName];
    v13 = [(IOSFloatingControlsViewController *)self venueFloorViewController];
    [v13 setBlurGroupName:v12];

    v14 = [(IOSFloatingControlsViewController *)self venueFloorViewController];
    [(IOSFloatingControlsViewController *)self addChildViewController:v14];

    v15 = [(IOSFloatingControlsViewController *)self venueFloorViewController];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1008E6334;
    v19[3] = &unk_101661B18;
    v19[4] = self;
    [v15 delayConstraintSetupWhileExecuting:v19];

    v16 = [(IOSFloatingControlsViewController *)self venueFloorViewController];
    [v16 didMoveToParentViewController:self];

    v17 = [(IOSFloatingControlsViewController *)self view];
    [v17 layoutIfNeeded];

    if (([(FloatingControlsViewController *)self visibleControls]& 0x40) != 0)
    {
      v18 = [(IOSFloatingControlsViewController *)self venueFloorViewController];
      [v18 setForceHidden:0 animated:1 completion:0];
    }
  }
}

- (void)didChangeFocusedVenue:(id)a3
{
  v6 = a3;
  if (v6)
  {
    [(IOSFloatingControlsViewController *)self setupVenueFloorViewController];
  }

  v4 = [(IOSFloatingControlsViewController *)self localSearchViewControllerIfLoaded];
  v5 = [v4 browseVenueBusinessController];
  [v5 handleVenueWithFocusDidChange:v6];
}

- (void)mapView:(id)a3 didChangeUserTrackingMode:(int64_t)a4 animated:(BOOL)a5 fromTrackingButton:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v13.receiver = self;
  v13.super_class = IOSFloatingControlsViewController;
  [(FloatingControlsViewController *)&v13 mapView:v10 didChangeUserTrackingMode:a4 animated:v7 fromTrackingButton:v6];
  if (v6)
  {
    if (!a4)
    {
      v12 = [v10 camera];
      v11 = [v12 copy];

      [(IOSFloatingControlsViewController *)self yawPriorToHeadingTracking];
      [v11 setHeading:?];
      [v10 setCamera:v11 animated:1];
      goto LABEL_6;
    }

    if (a4 == 2)
    {
      v11 = [v10 _mapLayer];
      [v11 yaw];
      [(IOSFloatingControlsViewController *)self setYawPriorToHeadingTracking:?];
LABEL_6:
    }
  }
}

- (void)mapView:(id)a3 didChangeMapType:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = IOSFloatingControlsViewController;
  [(FloatingControlsViewController *)&v7 mapView:a3 didChangeMapType:?];
  v6 = [(LocalSearchViewController *)self->_localSearchViewController browseVenueBusinessController];
  [v6 handleMapTypeDidChange:a4];
}

- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4
{
  v4 = a4;
  v8.receiver = self;
  v8.super_class = IOSFloatingControlsViewController;
  v6 = a3;
  [(FloatingControlsViewController *)&v8 mapView:v6 regionDidChangeAnimated:v4];
  v7 = [(LocalSearchViewController *)self->_localSearchViewController refreshSearchHereBusinessController:v8.receiver];
  [v7 handleMapViewRegionDidChange:v6];
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = a4;
  v6 = [v5 identifier];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [v5 identifier];
    v9 = [v8 integerValue];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = [(ButtonsContainerViewController *)self->_buttonsContainerViewController floatingButtonItems];
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          if ([v15 option] == v9)
          {
            v17 = [UITargetedPreview alloc];
            v18 = [v15 button];
            v19 = [v17 initWithView:v18];

            v20 = [UIPointerEffect effectWithPreview:v19];
            +[MapsTheme buttonCornerRadius];
            v21 = [v15 button];
            [v21 frame];
            v22 = [UIPointerShape shapeWithRoundedRect:"shapeWithRoundedRect:cornerRadius:" cornerRadius:?];

            v16 = [UIPointerStyle styleWithEffect:v20 shape:v22];

            goto LABEL_13;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v16 = 0;
LABEL_13:
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v6 = a4;
  v7 = [(IOSFloatingControlsViewController *)self buttonsContainerViewController];
  v8 = [v7 floatingButtonItems];

  v9 = [(FloatingControlsViewController *)self visibleControls];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v41;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v41 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v40 + 1) + 8 * i);
        if (([v15 option] & v9) != 0)
        {
          v16 = [v15 button];

          if (v16)
          {
            v17 = [v15 button];
            [v17 bounds];
            v19 = v18;
            v21 = v20;
            v23 = v22;
            v25 = v24;
            v26 = [(IOSFloatingControlsViewController *)self view];
            [v17 convertRect:v26 toView:{v19, v21, v23, v25}];
            v28 = v27;
            v30 = v29;
            v32 = v31;
            v34 = v33;

            [v6 location];
            v46.x = v35;
            v46.y = v36;
            v47.origin.x = v28;
            v47.origin.y = v30;
            v47.size.width = v32;
            v47.size.height = v34;
            if (CGRectContainsPoint(v47, v46))
            {
              v38 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v15 option]);
              v37 = [UIPointerRegion regionWithRect:v38 identifier:v28, v30, v32, v34];

              goto LABEL_14;
            }
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v37 = 0;
LABEL_14:

  return v37;
}

- (id)macOSStyledFloatingButtonItems
{
  if (_UISolariumEnabled())
  {
    v18 = [[FloatingButtonItem alloc] initWithOption:2048];
    v19[0] = v18;
    v17 = +[FloatingButtonItem separatorItem];
    v19[1] = v17;
    v16 = [[FloatingButtonItem alloc] initWithOption:2];
    v19[2] = v16;
    v15 = [[FloatingButtonItem alloc] initWithOption:1];
    v19[3] = v15;
    v14 = +[FloatingButtonItem separatorItem];
    v19[4] = v14;
    v13 = [[FloatingButtonItem alloc] initWithOption:16];
    v19[5] = v13;
    v2 = [[FloatingButtonItem alloc] initWithOption:32];
    v19[6] = v2;
    v3 = +[FloatingButtonItem separatorItem];
    v19[7] = v3;
    v4 = [[FloatingButtonItem alloc] initWithOption:256];
    v19[8] = v4;
    v5 = +[FloatingButtonItem separatorItem];
    v19[9] = v5;
    v6 = [[FloatingButtonItem alloc] initWithOption:512];
    v19[10] = v6;
    v7 = +[FloatingButtonItem separatorItem];
    v19[11] = v7;
    v8 = [[FloatingButtonItem alloc] initWithOption:1024];
    v19[12] = v8;
    v9 = +[FloatingButtonItem separatorItem];
    v19[13] = v9;
    v10 = [[FloatingButtonItem alloc] initWithOption:4096];
    v19[14] = v10;
    v11 = [NSArray arrayWithObjects:v19 count:15];
  }

  else
  {
    v11 = &__NSArray0__struct;
  }

  return v11;
}

- (void)_invalidateConstraints
{
  if (self->_constraints)
  {
    [NSLayoutConstraint deactivateConstraints:?];
    constraints = self->_constraints;
    self->_constraints = 0;
  }
}

- (void)_deviceOrientationDidChange:(id)a3
{
  [(IOSFloatingControlsViewController *)self _invalidateConstraints];
  [(IOSFloatingControlsViewController *)self _updateConstraintsIfNeeded];
  v5 = [(IOSFloatingControlsViewController *)self buttonsContainerViewControllerIfLoaded];
  v4 = [(IOSFloatingControlsViewController *)self _desiredFloatingButtonItems];
  [v5 updateFloatingButtonItems:v4];
}

- (double)_spacing
{
  if (_UISolariumEnabled())
  {
    v3 = sub_10000FA08(self);
    result = 10.0;
    if (v3 == 5)
    {
      return 8.0;
    }
  }

  else
  {

    [(FloatingControlsViewController *)self margin];
  }

  return result;
}

- (void)setMargin:(double)a3
{
  v7.receiver = self;
  v7.super_class = IOSFloatingControlsViewController;
  [(FloatingControlsViewController *)&v7 setMargin:a3];
  [(IOSFloatingControlsViewController *)self _spacing];
  v5 = v4;
  v6 = [(IOSFloatingControlsViewController *)self controlsStackView];
  [v6 setSpacing:v5];
}

- (void)setBlurGroupName:(id)a3
{
  v4 = [a3 copy];
  v9.receiver = self;
  v9.super_class = IOSFloatingControlsViewController;
  [(FloatingControlsViewController *)&v9 setBlurGroupName:v4];

  v5 = [(FloatingControlsViewController *)self blurGroupName];
  v6 = [(IOSFloatingControlsViewController *)self buttonsContainerViewControllerIfLoaded];
  [v6 setBlurGroupName:v5];

  v7 = [(FloatingControlsViewController *)self blurGroupName];
  v8 = [(IOSFloatingControlsViewController *)self venueFloorViewControllerIfLoaded];
  [v8 setBlurGroupName:v7];
}

- (id)floatingButtonLeadingGuide
{
  v2 = [(IOSFloatingControlsViewController *)self controlsStackViewIfLoaded];
  v3 = [v2 leadingAnchor];

  return v3;
}

- (void)hideControlsIfNeeded:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(FloatingControlsViewController *)self visibleControls];
  if ([(FloatingControlsViewController *)self shouldHide:1 withControlOptions:a3])
  {
    v7 &= ~1uLL;
  }

  if ([(FloatingControlsViewController *)self shouldHide:2 withControlOptions:a3])
  {
    v7 &= ~2uLL;
  }

  if ([(FloatingControlsViewController *)self shouldHide:16 withControlOptions:a3])
  {
    v7 &= ~0x10uLL;
  }

  if ([(FloatingControlsViewController *)self shouldHide:32 withControlOptions:a3])
  {
    v7 &= ~0x20uLL;
  }

  if ([(FloatingControlsViewController *)self shouldHide:64 withControlOptions:a3])
  {
    v7 &= ~0x40uLL;
  }

  if ([(FloatingControlsViewController *)self shouldHide:256 withControlOptions:a3])
  {
    v7 &= ~0x100uLL;
  }

  if ([(FloatingControlsViewController *)self shouldHide:512 withControlOptions:a3])
  {
    v7 &= ~0x200uLL;
  }

  if ([(FloatingControlsViewController *)self shouldHide:1024 withControlOptions:a3])
  {
    v7 &= ~0x400uLL;
  }

  if ([(FloatingControlsViewController *)self shouldHide:4096 withControlOptions:a3])
  {
    v7 &= ~0x1000uLL;
  }

  if ([(FloatingControlsViewController *)self shouldHide:4 withControlOptions:a3])
  {
    v8 = v7 & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    v8 = v7;
  }

  [(IOSFloatingControlsViewController *)self _applyNewVisibleControls:v8 animated:v4];
}

- (void)showControlsIfNeeded:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = [(FloatingControlsViewController *)self _sanitizedControlsFromControls:a3];
  v7 = [(FloatingControlsViewController *)self visibleControls];
  if ([(IOSFloatingControlsViewController *)self shouldShow:2 withControlOptions:v6])
  {
    v7 |= 2uLL;
  }

  v8 = v7 | [(IOSFloatingControlsViewController *)self shouldShow:1 withControlOptions:v6];
  if ([(IOSFloatingControlsViewController *)self shouldShow:16 withControlOptions:v6])
  {
    v8 |= 0x10uLL;
  }

  if ([(IOSFloatingControlsViewController *)self shouldShow:32 withControlOptions:v6])
  {
    v8 |= 0x20uLL;
  }

  if ([(IOSFloatingControlsViewController *)self shouldShow:64 withControlOptions:v6])
  {
    v8 |= 0x40uLL;
  }

  if ([(IOSFloatingControlsViewController *)self shouldShow:256 withControlOptions:v6])
  {
    v8 |= 0x100uLL;
  }

  if ([(IOSFloatingControlsViewController *)self shouldShow:512 withControlOptions:v6])
  {
    v8 |= 0x200uLL;
  }

  if ([(IOSFloatingControlsViewController *)self shouldShow:1024 withControlOptions:v6])
  {
    v8 |= 0x400uLL;
  }

  if ([(IOSFloatingControlsViewController *)self shouldShow:2048 withControlOptions:v6])
  {
    v8 |= 0x800uLL;
  }

  if ([(IOSFloatingControlsViewController *)self shouldShow:4096 withControlOptions:v6])
  {
    v8 |= 0x1000uLL;
  }

  if ([(IOSFloatingControlsViewController *)self shouldShow:4 withControlOptions:v6])
  {
    v9 = v8 | 4;
  }

  else
  {
    v9 = v8;
  }

  [(IOSFloatingControlsViewController *)self _applyNewVisibleControls:v9 animated:v4];
}

- (BOOL)shouldShow:(int64_t)a3 withControlOptions:(int64_t)a4
{
  v7 = [(FloatingControlsViewController *)self visibleControls];
  v8 = a4 & a3;
  if (sub_10000FA08(self) == 5)
  {
    if (v8)
    {
LABEL_3:
      [(IOSFloatingControlsViewController *)self buttonsContainerViewController];

      return 1;
    }
  }

  else if (v8 | v7 & a3)
  {
    goto LABEL_3;
  }

  return 0;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = IOSFloatingControlsViewController;
  [(IOSFloatingControlsViewController *)&v9 viewDidDisappear:a3];
  v4 = [(FloatingControlsViewController *)self actionCoordinator];
  v5 = [v4 venuesManager];
  [v5 removeChangeObserver:self];

  v6 = +[UserInformationManager sharedInstance];
  v7 = [v6 observers];
  [v7 unregisterObserver:self];

  if ([(IOSFloatingControlsViewController *)self _shouldObserveOrientationDidChange])
  {
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 removeObserver:self name:UIDeviceOrientationDidChangeNotification object:0];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = IOSFloatingControlsViewController;
  [(IOSFloatingControlsViewController *)&v5 viewDidAppear:a3];
  if ([(IOSFloatingControlsViewController *)self _shouldObserveOrientationDidChange])
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:self selector:"_deviceOrientationDidChange:" name:UIDeviceOrientationDidChangeNotification object:0];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v12.receiver = self;
  v12.super_class = IOSFloatingControlsViewController;
  [(FloatingControlsViewController *)&v12 viewWillAppear:a3];
  [(IOSFloatingControlsViewController *)self _refreshUserLocationButton];
  [(IOSFloatingControlsViewController *)self _updateUserProfileButtonImage];
  [(IOSFloatingControlsViewController *)self _refreshCompassButton];
  v4 = [(FloatingControlsViewController *)self actionCoordinator];
  v5 = [v4 venuesManager];
  [v5 addChangeObserver:self];

  v6 = +[UserInformationManager sharedInstance];
  v7 = [v6 observers];
  [v7 registerObserver:self queue:&_dispatch_main_q];

  v8 = [(FloatingControlsViewController *)self actionCoordinator];
  v9 = [v8 venuesManager];
  v10 = [v9 venueWithFocus];
  [(IOSFloatingControlsViewController *)self didChangeFocusedVenue:v10];

  [(IOSFloatingControlsViewController *)self _updateMapModeButtonAppearance];
  v11 = +[NSNotificationCenter defaultCenter];
  [v11 addObserver:self selector:"_updateMapModeButtonAppearance" name:@"MKMapViewDidChangeMapTypeNotification" object:0];
}

- (void)_applyNewVisibleControls:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v7 = [(IOSFloatingControlsViewController *)self buttonsContainerViewController];
  v8 = [v7 floatingButtonItems];

  v9 = [v8 countByEnumeratingWithState:&v43 objects:v57 count:16];
  if (!v9)
  {
LABEL_43:

    goto LABEL_44;
  }

  v10 = v9;
  v41 = v4;
  v11 = 0;
  v12 = *v44;
  do
  {
    v13 = 0;
    do
    {
      if (*v44 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v43 + 1) + 8 * v13);
      if (([v14 option] & a3) != 0)
      {
        v15 = [v14 button];

        if (!v15)
        {
          v16 = [v14 option];
          v11 = 1;
          if (v16 <= 255)
          {
            if (v16 > 15)
            {
              if (v16 == 16)
              {
                v18 = [(IOSFloatingControlsViewController *)self mode2DButton];
              }

              else
              {
                if (v16 != 32)
                {
                  goto LABEL_29;
                }

                v18 = [(IOSFloatingControlsViewController *)self mode3DButton];
              }
            }

            else if (v16 == 1)
            {
              v18 = [(IOSFloatingControlsViewController *)self userLocationButton];
            }

            else
            {
              if (v16 != 2)
              {
                goto LABEL_29;
              }

              v18 = [(IOSFloatingControlsViewController *)self settingsButton];
            }
          }

          else if (v16 <= 1023)
          {
            if (v16 == 256)
            {
              v18 = [(IOSFloatingControlsViewController *)self modePedestrianARButton];
            }

            else
            {
              if (v16 != 512)
              {
                goto LABEL_29;
              }

              v18 = [(IOSFloatingControlsViewController *)self ttrButton];
            }
          }

          else
          {
            if (v16 != 1024)
            {
              if (v16 == 2048)
              {
                if (sub_10000FA08(self) != 5 || (_UISolariumEnabled() & 1) == 0)
                {
                  v20 = sub_10006D178();
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                  {
                    v21 = [NSString stringWithFormat:@"User Profile floating control is only meant for use on Mac"];
                    *buf = 136316162;
                    v48 = "[IOSFloatingControlsViewController _applyNewVisibleControls:animated:]";
                    v49 = 2080;
                    v50 = "FloatingControlsViewController.m";
                    v51 = 1024;
                    v52 = 457;
                    v53 = 2080;
                    v54 = "isMac";
                    v55 = 2112;
                    v56 = v21;
                    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", buf, 0x30u);
                  }

                  if (sub_100E03634())
                  {
                    v22 = sub_10006D178();
                    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                    {
                      v23 = +[NSThread callStackSymbols];
                      *buf = 138412290;
                      v48 = v23;
                      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
                    }
                  }
                }

                v24 = [(IOSFloatingControlsViewController *)self userProfileButton];
                [v14 setButton:v24];

                [v14 setHideBackground:{-[IOSFloatingControlsViewController _hideBackgroundForUserProfileItem](self, "_hideBackgroundForUserProfileItem")}];
                v11 = 1;
              }

              else if (v16 == 4096)
              {
                v17 = [(IOSFloatingControlsViewController *)self compassButton];
                [v14 setButton:v17];

                [v14 setHideBackground:_UISolariumEnabled() ^ 1];
              }

              goto LABEL_29;
            }

            v18 = [(IOSFloatingControlsViewController *)self ssaoButton];
          }

          v19 = v18;
          [v14 setButton:v18];
        }
      }

LABEL_29:
      v13 = v13 + 1;
    }

    while (v10 != v13);
    v25 = [v8 countByEnumeratingWithState:&v43 objects:v57 count:16];
    v10 = v25;
  }

  while (v25);

  v4 = v41;
  if (v11)
  {
    v8 = [(IOSFloatingControlsViewController *)self buttonsContainerViewController];
    [v8 refreshControls];
    goto LABEL_43;
  }

LABEL_44:
  if ([(FloatingControlsViewController *)self visibleControls]!= a3)
  {
    [(FloatingControlsViewController *)self setVisibleControls:a3];
    if ((a3 & 4) != 0 && (-[FloatingControlsViewController actionCoordinator](self, "actionCoordinator"), v26 = objc_claimAutoreleasedReturnValue(), v27 = [v26 shouldShowSearchOverlay], v26, v27))
    {
      v28 = [(IOSFloatingControlsViewController *)self localSearchViewController];
      v29 = [v28 view];
      v30 = [v29 superview];

      if (!v30)
      {
        [(IOSFloatingControlsViewController *)self addChildViewController:self->_localSearchViewController];
        v31 = [(IOSFloatingControlsViewController *)self localSearchViewController];
        v32 = [v31 view];
        v33 = [(IOSFloatingControlsViewController *)self _localSearchViewConstraints];
        [(FloatingControlsViewController *)self _addSubview:v32 withConstraints:v33];

        [(LocalSearchViewController *)self->_localSearchViewController didMoveToParentViewController:self];
      }

      v34 = [(IOSFloatingControlsViewController *)self localSearchViewController];
      [v34 setEnable:1];
    }

    else
    {
      v35 = [(IOSFloatingControlsViewController *)self localSearchViewControllerIfLoaded];
      [v35 setEnable:0];

      v36 = [(IOSFloatingControlsViewController *)self localSearchViewControllerIfLoaded];
      [v36 willMoveToParentViewController:0];

      v37 = [(IOSFloatingControlsViewController *)self localSearchViewControllerIfLoaded];
      v38 = [v37 viewIfLoaded];
      [v38 removeFromSuperview];

      v34 = [(IOSFloatingControlsViewController *)self localSearchViewControllerIfLoaded];
      [v34 removeFromParentViewController];
    }

    v39 = [(IOSFloatingControlsViewController *)self venueFloorViewControllerIfLoaded];
    [v39 setForceHidden:(a3 & 0x40) == 0];

    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_1008E7CC8;
    v42[3] = &unk_101661650;
    v42[4] = self;
    v42[5] = a3;
    v40 = objc_retainBlock(v42);
    if (v4)
    {
      [UIView animateWithDuration:6 delay:v40 options:0 animations:0.25 completion:0.0];
    }

    else
    {
      [UIView performWithoutAnimation:v40];
    }
  }
}

@end