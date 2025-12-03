@interface IOSFloatingControlsViewController
- (BOOL)_alignStackToBottom;
- (BOOL)_hideBackgroundForUserProfileItem;
- (BOOL)_shouldObserveOrientationDidChange;
- (BOOL)lacksSearchResultsInVenue:(id)venue forFloorOrdinal:(signed __int16)ordinal;
- (BOOL)shouldShow:(int64_t)show withControlOptions:(int64_t)options;
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
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (id)venueFloorViewControllerConstraintsForViewWhenOpen:(id)open;
- (void)_applyNewVisibleControls:(int64_t)controls animated:(BOOL)animated;
- (void)_configureButton:(id)button withImage:(id)image pointSize:(double)size weight:(int64_t)weight;
- (void)_configureButton:(id)button withSymbolImageName:(id)name;
- (void)_configureButton:(id)button withSymbolImageName:(id)name pointSize:(double)size weight:(int64_t)weight;
- (void)_deviceOrientationDidChange:(id)change;
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
- (void)didChangeFocusedVenue:(id)venue;
- (void)enterPedestrianAR:(id)r;
- (void)hideControlsIfNeeded:(int64_t)needed animated:(BOOL)animated;
- (void)localSearchViewControllerDidSelectRefreshSearchHere:(id)here;
- (void)localSearchViewShouldBeVisibleDidChange:(id)change;
- (void)mapView:(id)view didChangeMapType:(unint64_t)type;
- (void)mapView:(id)view didChangeUserTrackingMode:(int64_t)mode animated:(BOOL)animated fromTrackingButton:(BOOL)button;
- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated;
- (void)setBlurGroupName:(id)name;
- (void)setMargin:(double)margin;
- (void)setNonFloorPickerControlsVisible:(BOOL)visible animated:(BOOL)animated;
- (void)setRefreshViewEnable:(BOOL)enable;
- (void)setSearchSession:(id)session;
- (void)setupVenueFloorViewController;
- (void)showControlsIfNeeded:(int64_t)needed animated:(BOOL)animated;
- (void)toggleSSAO;
- (void)updateNonFloorPickerControlsVisibleAnimated:(BOOL)animated;
- (void)updateNonFloorPickerControlsVisibleForFloorPickerHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)updateTheme;
- (void)venueFloorViewControllerDidChangeConstraints:(id)constraints;
- (void)venueFloorViewControllerDidClose:(id)close;
- (void)venueFloorViewControllerDidFinishHiding:(id)hiding;
- (void)venueFloorViewControllerDidFinishShowing:(id)showing;
- (void)venueFloorViewControllerDidOpen:(id)open;
- (void)venueFloorViewControllerDidStartHiding:(id)hiding;
- (void)venueFloorViewControllerDidStartShowing:(id)showing;
- (void)viewControllerDidSelectBrowseVenue:(id)venue;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
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

      view = [(IOSFloatingControlsViewController *)self view];
      [view addSubview:self->_controlsStackView];

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

    sizeDebugLabel = [(IOSFloatingControlsViewController *)self sizeDebugLabel];
    [sizeDebugLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    v5 = +[UIColor blackColor];
    sizeDebugLabel2 = [(IOSFloatingControlsViewController *)self sizeDebugLabel];
    [sizeDebugLabel2 setBackgroundColor:v5];

    v7 = +[UIColor whiteColor];
    sizeDebugLabel3 = [(IOSFloatingControlsViewController *)self sizeDebugLabel];
    [sizeDebugLabel3 setTextColor:v7];

    sizeDebugLabel4 = [(IOSFloatingControlsViewController *)self sizeDebugLabel];
    [sizeDebugLabel4 setText:@"0x0"];

    view = [(IOSFloatingControlsViewController *)self view];
    sizeDebugLabel5 = [(IOSFloatingControlsViewController *)self sizeDebugLabel];
    [view addSubview:sizeDebugLabel5];
  }

  view2 = [(IOSFloatingControlsViewController *)self view];
  [view2 _mapkit_addPointerInteractionWithDelegate:self];
}

- (ButtonsContainerViewController)buttonsContainerViewController
{
  if ([(IOSFloatingControlsViewController *)self isViewLoaded])
  {
    buttonsContainerViewController = self->_buttonsContainerViewController;
    if (!buttonsContainerViewController)
    {
      v4 = [ButtonsContainerViewController alloc];
      _desiredFloatingButtonItems = [(IOSFloatingControlsViewController *)self _desiredFloatingButtonItems];
      v6 = [(ButtonsContainerViewController *)v4 initWithFloatingButtonItems:_desiredFloatingButtonItems];
      v7 = self->_buttonsContainerViewController;
      self->_buttonsContainerViewController = v6;

      blurGroupName = [(FloatingControlsViewController *)self blurGroupName];
      [(ButtonsContainerViewController *)self->_buttonsContainerViewController setBlurGroupName:blurGroupName];

      [(IOSFloatingControlsViewController *)self addChildViewController:self->_buttonsContainerViewController];
      controlsStackView = [(IOSFloatingControlsViewController *)self controlsStackView];
      view = [(ButtonsContainerViewController *)self->_buttonsContainerViewController view];
      [controlsStackView addArrangedSubview:view];

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
  buttonsContainerViewControllerIfLoaded = [(IOSFloatingControlsViewController *)self buttonsContainerViewControllerIfLoaded];
  if (buttonsContainerViewControllerIfLoaded)
  {
    theme = [(IOSFloatingControlsViewController *)self theme];
    controlTintColor = [theme controlTintColor];
    view = [buttonsContainerViewControllerIfLoaded view];
    [view setTintColor:controlTintColor];
  }

  venueFloorViewControllerIfLoaded = [(IOSFloatingControlsViewController *)self venueFloorViewControllerIfLoaded];
  if (venueFloorViewControllerIfLoaded)
  {
    theme2 = [(IOSFloatingControlsViewController *)self theme];
    controlTintColor2 = [theme2 controlTintColor];
    view2 = [venueFloorViewControllerIfLoaded view];
    [view2 setTintColor:controlTintColor2];
  }
}

- (void)_refreshUserLocationButton
{
  userLocationButton = self->_userLocationButton;
  if (userLocationButton)
  {
    mapView = [(_MapsUserTrackingButton *)userLocationButton mapView];

    if (!mapView)
    {
      mapView2 = [(FloatingControlsViewController *)self mapView];
      [(_MapsUserTrackingButton *)self->_userLocationButton setMapView:mapView2];
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
    floatingButtonItems = [(ButtonsContainerViewController *)self->_buttonsContainerViewController floatingButtonItems];
    v6 = [floatingButtonItems countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(floatingButtonItems);
          }

          v10 = *(*(&v11 + 1) + 8 * i);
          if ([v10 option] == 2048)
          {
            [v10 setHideBackground:v4 != 0];
            goto LABEL_15;
          }
        }

        v7 = [floatingButtonItems countByEnumeratingWithState:&v11 objects:v15 count:16];
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
    mapView = [(MKCompassButton *)compassButton mapView];

    if (!mapView)
    {
      mapView2 = [(FloatingControlsViewController *)self mapView];
      [(MKCompassButton *)self->_compassButton setMapView:mapView2];
    }
  }
}

- (void)viewDidLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = IOSFloatingControlsViewController;
  [(FloatingControlsViewController *)&v8 viewDidLayoutSubviews];
  mapView = [(FloatingControlsViewController *)self mapView];
  [mapView bounds];
  v9.width = v4;
  v9.height = v5;
  v6 = NSStringFromCGSize(v9);
  sizeDebugLabel = [(IOSFloatingControlsViewController *)self sizeDebugLabel];
  [sizeDebugLabel setText:v6];
}

- (BOOL)_shouldObserveOrientationDidChange
{
  if (!_UISolariumEnabled())
  {
    return 0;
  }

  view = [(IOSFloatingControlsViewController *)self view];
  v4 = sub_10000FA08(view) == 0;

  return v4;
}

- (id)_desiredFloatingButtonItems
{
  if ([(IOSFloatingControlsViewController *)self _alignStackToBottom]|| (_UISolariumEnabled() & 1) == 0)
  {
    floatingButtonItems = [(IOSFloatingControlsViewController *)self floatingButtonItems];
  }

  else
  {
    floatingButtonItems = [(IOSFloatingControlsViewController *)self macOSStyledFloatingButtonItems];
  }

  return floatingButtonItems;
}

- (BOOL)_alignStackToBottom
{
  v3 = +[UIDevice currentDevice];
  orientation = [v3 orientation];

  if (sub_10000FA08(self) || (orientation - 3) >= 2)
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
    _alignStackToBottom = [(IOSFloatingControlsViewController *)self _alignStackToBottom];
    trailingAnchor = [(UIStackView *)self->_controlsStackView trailingAnchor];
    view = [(IOSFloatingControlsViewController *)self view];
    [view trailingAnchor];
    v22 = v24 = trailingAnchor;
    v5 = [trailingAnchor constraintEqualToAnchor:?];
    v21 = v5;
    if (_alignStackToBottom)
    {
      v26[0] = v5;
      topAnchor = [(UIStackView *)self->_controlsStackView topAnchor];
      view2 = [(IOSFloatingControlsViewController *)self view];
      topAnchor2 = [view2 topAnchor];
      v9 = sub_100019A44();
      [(FloatingControlsViewController *)self compassDiameter];
      v11 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:v10 + v9 * 2.0];
      v26[1] = v11;
      bottomAnchor = [(UIStackView *)self->_controlsStackView bottomAnchor];
      view3 = [(IOSFloatingControlsViewController *)self view];
      bottomAnchor2 = [view3 bottomAnchor];
      v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v26[2] = v15;
      v16 = v26;
    }

    else
    {
      v25[0] = v5;
      topAnchor = [(UIStackView *)self->_controlsStackView topAnchor];
      view2 = [(IOSFloatingControlsViewController *)self view];
      topAnchor2 = [view2 topAnchor];
      v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v25[1] = v11;
      bottomAnchor = [(UIStackView *)self->_controlsStackView bottomAnchor];
      view3 = [(IOSFloatingControlsViewController *)self view];
      bottomAnchor2 = [view3 bottomAnchor];
      v17 = sub_100019A44();
      [(FloatingControlsViewController *)self compassDiameter];
      v15 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2 constant:-(v18 + v17 * 2.0)];
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
  mapView = [(FloatingControlsViewController *)self mapView];

  if (mapView)
  {
    _mapModeButtonImageNameForCurrentMapType = [(IOSFloatingControlsViewController *)self _mapModeButtonImageNameForCurrentMapType];
    [(IOSFloatingControlsViewController *)self _mapModeButtonPointSizeForCurrentMapType];
    v5 = v4;
    _imageSymbolWeight = [(IOSFloatingControlsViewController *)self _imageSymbolWeight];
    [(IOSFloatingControlsViewController *)self _setMapModeButtonAXIdentifier];
    [(IOSFloatingControlsViewController *)self _configureButton:self->_settingsButton withSymbolImageName:_mapModeButtonImageNameForCurrentMapType pointSize:_imageSymbolWeight weight:v5];
  }
}

- (id)_mapModeButtonImageNameForCurrentMapType
{
  mapView = [(FloatingControlsViewController *)self mapView];
  if (mapView)
  {
    v4 = mapView;
    [mapView _cartographicConfiguration];

    if (v10 == 1)
    {
      return @"globe.americas.fill";
    }

    if (v10)
    {
      return @"map.fill";
    }
  }

  mapView2 = [(FloatingControlsViewController *)self mapView];
  if (!mapView2)
  {
    return @"map.fill";
  }

  v6 = mapView2;
  [mapView2 _cartographicConfiguration];

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
    mapView = [(FloatingControlsViewController *)self mapView];
    v5 = mapView;
    if (mapView)
    {
      [mapView _cartographicConfiguration];
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
  _mapModeAXIdentifierForCurrentMapType = [(IOSFloatingControlsViewController *)self _mapModeAXIdentifierForCurrentMapType];
  v3 = [@"SettingsButton." stringByAppendingString:_mapModeAXIdentifierForCurrentMapType];
  [(UIButton *)self->_settingsButton setAccessibilityIdentifier:v3];
}

- (id)_mapModeAXIdentifierForCurrentMapType
{
  mapView = [(FloatingControlsViewController *)self mapView];
  if (mapView)
  {
    v4 = mapView;
    [mapView _cartographicConfiguration];

    if (v10 == 1)
    {
      return @"Satellite";
    }

    if (v10)
    {
      return @"Explore";
    }
  }

  mapView2 = [(FloatingControlsViewController *)self mapView];
  if (!mapView2)
  {
    return @"Explore";
  }

  v6 = mapView2;
  [mapView2 _cartographicConfiguration];

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
  controlsStackViewIfLoaded = [(IOSFloatingControlsViewController *)self controlsStackViewIfLoaded];

  if (controlsStackViewIfLoaded)
  {
    controlsStackViewIfLoaded2 = [(IOSFloatingControlsViewController *)self controlsStackViewIfLoaded];
    [controlsStackViewIfLoaded2 frame];
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

- (void)_configureButton:(id)button withImage:(id)image pointSize:(double)size weight:(int64_t)weight
{
  buttonCopy = button;
  [buttonCopy setImage:image forState:0];
  if (_UISolariumEnabled())
  {
    +[_TtC4Maps23MapsDesignConstantsShim defaultButtonTintColor];
  }

  else
  {
    +[MapsTheme floatingControlsTintColor];
  }
  v9 = ;
  [buttonCopy setTintColor:v9];

  v10 = [UIImageSymbolConfiguration configurationWithPointSize:weight weight:size];
  [buttonCopy setPreferredSymbolConfiguration:v10 forImageInState:0];
}

- (void)_configureButton:(id)button withSymbolImageName:(id)name pointSize:(double)size weight:(int64_t)weight
{
  buttonCopy = button;
  v11 = [UIImage _systemImageNamed:name];
  [(IOSFloatingControlsViewController *)self _configureButton:buttonCopy withImage:v11 pointSize:weight weight:size];
}

- (void)_configureButton:(id)button withSymbolImageName:(id)name
{
  nameCopy = name;
  buttonCopy = button;
  _imageSymbolWeight = [(IOSFloatingControlsViewController *)self _imageSymbolWeight];
  [(IOSFloatingControlsViewController *)self _pointSize];
  [(IOSFloatingControlsViewController *)self _configureButton:buttonCopy withSymbolImageName:nameCopy pointSize:_imageSymbolWeight weight:?];
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
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(IOSFloatingControlsViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v12 = selfCopy;
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
    actionCoordinator = [(FloatingControlsViewController *)self actionCoordinator];
    [(UIButton *)v9 addTarget:actionCoordinator action:"toggleSSAO" forControlEvents:64];

    [(IOSFloatingControlsViewController *)self _configureButton:self->_ssaoButton withSymbolImageName:@"s.circle.fill"];
    [(UIButton *)self->_ssaoButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = sub_100035D80(self);
    heightAnchor = [(UIButton *)self->_ssaoButton heightAnchor];
    v13 = [heightAnchor constraintEqualToConstant:v11];
    v18[0] = v13;
    widthAnchor = [(UIButton *)self->_ssaoButton widthAnchor];
    v15 = [widthAnchor constraintEqualToConstant:v11];
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
    topMostPresentedViewController = [(IOSFloatingControlsViewController *)self topMostPresentedViewController];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1008E3CF4;
    v18[3] = &unk_101661B98;
    objc_copyWeak(&v19, &location);
    [MapsRadarButtonHelper configureWithButton:v9 presentationViewController:topMostPresentedViewController actionHandler:v18];

    v11 = sub_100035D80(self);
    heightAnchor = [(UIButton *)self->_ttrButton heightAnchor];
    v13 = [heightAnchor constraintEqualToConstant:v11];
    v21[0] = v13;
    widthAnchor = [(UIButton *)self->_ttrButton widthAnchor];
    v15 = [widthAnchor constraintEqualToConstant:v11];
    v21[1] = v15;
    v16 = [NSArray arrayWithObjects:v21 count:2];
    [NSLayoutConstraint activateConstraints:v16];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
    ttrButton = self->_ttrButton;
  }

  return ttrButton;
}

- (void)enterPedestrianAR:(id)r
{
  rCopy = r;
  actionCoordinator = [(FloatingControlsViewController *)self actionCoordinator];
  [actionCoordinator enterPedestrianAR:rCopy];

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
    heightAnchor = [(UIButton *)self->_modePedestrianARButton heightAnchor];
    v10 = [heightAnchor constraintEqualToConstant:sub_100035D80(self)];
    v16[0] = v10;
    widthAnchor = [(UIButton *)self->_modePedestrianARButton widthAnchor];
    heightAnchor2 = [(UIButton *)self->_modePedestrianARButton heightAnchor];
    v13 = [widthAnchor constraintEqualToAnchor:heightAnchor2];
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
    actionCoordinator = [(FloatingControlsViewController *)self actionCoordinator];
    [(UIButton *)v9 addTarget:actionCoordinator action:"select3dMode" forControlEvents:64];

    [(IOSFloatingControlsViewController *)self _configureButton:self->_mode3DButton withSymbolImageName:@"view.3d"];
    [(UIButton *)self->_mode3DButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = sub_100035D80(self);
    heightAnchor = [(UIButton *)self->_mode3DButton heightAnchor];
    v13 = [heightAnchor constraintEqualToConstant:v11];
    v18[0] = v13;
    widthAnchor = [(UIButton *)self->_mode3DButton widthAnchor];
    v15 = [widthAnchor constraintEqualToConstant:v11];
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
    actionCoordinator = [(FloatingControlsViewController *)self actionCoordinator];
    [(UIButton *)v9 addTarget:actionCoordinator action:"exit3dMode" forControlEvents:64];

    [(IOSFloatingControlsViewController *)self _configureButton:self->_mode2DButton withSymbolImageName:@"view.2d"];
    [(UIButton *)self->_mode2DButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = sub_100035D80(self);
    heightAnchor = [(UIButton *)self->_mode2DButton heightAnchor];
    v13 = [heightAnchor constraintEqualToConstant:v11];
    v18[0] = v13;
    widthAnchor = [(UIButton *)self->_mode2DButton widthAnchor];
    v15 = [widthAnchor constraintEqualToConstant:v11];
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
    imageView = [(UIButton *)self->_userProfileButton imageView];
    [imageView setContentMode:1];

    imageView2 = [(UIButton *)self->_userProfileButton imageView];
    [imageView2 setClipsToBounds:1];

    v8 = self->_userProfileButton;
    actionCoordinator = [(FloatingControlsViewController *)self actionCoordinator];
    [(UIButton *)v8 addTarget:actionCoordinator action:"openUserProfile" forEvents:64];

    [(IOSFloatingControlsViewController *)self _updateUserProfileButtonImage];
    v10 = sub_100035D80(self);
    heightAnchor = [(UIButton *)self->_userProfileButton heightAnchor];
    v12 = [heightAnchor constraintEqualToConstant:v10];
    v17[0] = v12;
    widthAnchor = [(UIButton *)self->_userProfileButton widthAnchor];
    v14 = [widthAnchor constraintEqualToConstant:v10];
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
  isLocationServicesAuthorizationNeeded = [v2 isLocationServicesAuthorizationNeeded];

  if (isLocationServicesAuthorizationNeeded)
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
      domain = [v6 domain];
      code = [v6 code];
      localizedDescription = [v6 localizedDescription];
      v13 = localizedDescription;
      if (localizedDescription)
      {
        v14 = localizedDescription;
      }

      else
      {
        v14 = @"no description available";
      }

      localizedRecoverySuggestion = [v6 localizedRecoverySuggestion];
      v16 = localizedRecoverySuggestion;
      v17 = @"no recovery suggestion available";
      *buf = 138413058;
      v23 = domain;
      if (localizedRecoverySuggestion)
      {
        v17 = localizedRecoverySuggestion;
      }

      v24 = 2048;
      v25 = code;
      v26 = 2112;
      v27 = v14;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Location Services not available, error domain => %@ code => %ld, description => %@, recovery suggestion => %@", buf, 0x2Au);
    }

    domain2 = [v6 domain];
    v19 = [domain2 isEqualToString:MKLocationErrorDomain];

    if (v19)
    {
      code2 = [v6 code];
      if (code2 == 2)
      {
        v5 = +[UIApplication sharedMapsDelegate];
        [v5 showLocationServicesAlertWithError:v6];
      }

      else
      {
        if (code2)
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
  actionCoordinator = [(FloatingControlsViewController *)self actionCoordinator];
  [actionCoordinator viewControllerOpenSettings:self];

  openSettingsDelegate = [(FloatingControlsViewController *)self openSettingsDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    openSettingsDelegate2 = [(FloatingControlsViewController *)self openSettingsDelegate];
    [openSettingsDelegate2 viewControllerOpenSettings:self];
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
    _mapModeButtonImageNameForCurrentMapType = [(IOSFloatingControlsViewController *)self _mapModeButtonImageNameForCurrentMapType];
    [(IOSFloatingControlsViewController *)self _mapModeButtonPointSizeForCurrentMapType];
    [(IOSFloatingControlsViewController *)self _configureButton:self->_settingsButton withSymbolImageName:_mapModeButtonImageNameForCurrentMapType pointSize:[(IOSFloatingControlsViewController *)self _imageSymbolWeight] weight:v10];
    [(UIButton *)self->_settingsButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = sub_100035D80(self);
    heightAnchor = [(UIButton *)self->_settingsButton heightAnchor];
    v13 = [heightAnchor constraintEqualToConstant:v11];
    v18[0] = v13;
    widthAnchor = [(UIButton *)self->_settingsButton widthAnchor];
    v15 = [widthAnchor constraintEqualToConstant:v11];
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
    mapView = [(FloatingControlsViewController *)self mapView];
    v5 = [MKCompassButton compassButtonWithMapView:mapView];
    v6 = self->_compassButton;
    self->_compassButton = v5;

    [(MKCompassButton *)self->_compassButton setCompassVisibility:2];
    v7 = sub_100035D80(self);
    heightAnchor = [(MKCompassButton *)self->_compassButton heightAnchor];
    v9 = [heightAnchor constraintEqualToConstant:v7];
    v14[0] = v9;
    widthAnchor = [(MKCompassButton *)self->_compassButton widthAnchor];
    v11 = [widthAnchor constraintEqualToConstant:v7];
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
    mapView = [(FloatingControlsViewController *)self mapView];
    v5 = [_MapsUserTrackingButton buttonWithMapView:mapView applyDefaultImageIfNeeded:0];
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
    heightAnchor = [(_MapsUserTrackingButton *)self->_userLocationButton heightAnchor];
    v23 = [heightAnchor constraintEqualToConstant:v21];
    v28[0] = v23;
    widthAnchor = [(_MapsUserTrackingButton *)self->_userLocationButton widthAnchor];
    v25 = [widthAnchor constraintEqualToConstant:v21];
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
    view = [(LocalSearchViewController *)localSearchViewController view];
    trailingAnchor = [view trailingAnchor];
    controlsStackView = [(IOSFloatingControlsViewController *)self controlsStackView];
    leadingAnchor = [controlsStackView leadingAnchor];
    [(FloatingControlsViewController *)self margin];
    v9 = [trailingAnchor constraintEqualToAnchor:leadingAnchor constant:-v8];
    v16[0] = v9;
    topAnchor = [view topAnchor];
    controlsStackView2 = [(IOSFloatingControlsViewController *)self controlsStackView];
    topAnchor2 = [controlsStackView2 topAnchor];
    v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
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

- (void)localSearchViewShouldBeVisibleDidChange:(id)change
{
  localSearchViewController = [(IOSFloatingControlsViewController *)self localSearchViewController];
  view = [localSearchViewController view];
  [view alpha];
  v7 = v6;

  localSearchViewController2 = [(IOSFloatingControlsViewController *)self localSearchViewController];
  shouldBeVisible = [localSearchViewController2 shouldBeVisible];

  if ((((v7 != 1.0) ^ shouldBeVisible) & 1) == 0)
  {
    if (shouldBeVisible)
    {
      localSearchViewController3 = [(IOSFloatingControlsViewController *)self localSearchViewController];
      view2 = [localSearchViewController3 view];
      [view2 layoutIfNeeded];
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1008E52F8;
    v12[3] = &unk_101661AE0;
    v12[4] = self;
    v13 = shouldBeVisible;
    [UIView _animateUsingDefaultTimingWithOptions:0 animations:v12 completion:0];
  }
}

- (void)viewControllerDidSelectBrowseVenue:(id)venue
{
  actionCoordinator = [(FloatingControlsViewController *)self actionCoordinator];
  venuesManager = [actionCoordinator venuesManager];
  [venuesManager presentPlaceCardForVenueWithFocusAndAddToHistory:1 source:7 centeringOnVenue:0];
}

- (void)localSearchViewControllerDidSelectRefreshSearchHere:(id)here
{
  actionCoordinator = [(FloatingControlsViewController *)self actionCoordinator];
  shouldShowSearchOverlay = [actionCoordinator shouldShowSearchOverlay];

  if (shouldShowSearchOverlay)
  {
    actionCoordinator2 = [(FloatingControlsViewController *)self actionCoordinator];
    [actionCoordinator2 refreshCurrentSearch];
  }
}

- (VKVenueFeatureMarker)venueWithFocus
{
  actionCoordinator = [(FloatingControlsViewController *)self actionCoordinator];
  venuesManager = [actionCoordinator venuesManager];
  venueWithFocus = [venuesManager venueWithFocus];

  return venueWithFocus;
}

- (void)setSearchSession:(id)session
{
  sessionCopy = session;
  localSearchViewController = [(IOSFloatingControlsViewController *)self localSearchViewController];
  refreshSearchHereBusinessController = [localSearchViewController refreshSearchHereBusinessController];
  [refreshSearchHereBusinessController setSearchSession:sessionCopy];
}

- (void)setRefreshViewEnable:(BOOL)enable
{
  enableCopy = enable;
  localSearchViewController = [(IOSFloatingControlsViewController *)self localSearchViewController];
  [localSearchViewController setEnable:enableCopy];
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

- (BOOL)lacksSearchResultsInVenue:(id)venue forFloorOrdinal:(signed __int16)ordinal
{
  ordinalCopy = ordinal;
  venueCopy = venue;
  actionCoordinator = [(FloatingControlsViewController *)self actionCoordinator];
  venuesManager = [actionCoordinator venuesManager];
  if ([venuesManager hasSearchResultsInVenueForAnyFloorOrdinal:venueCopy])
  {
    actionCoordinator2 = [(FloatingControlsViewController *)self actionCoordinator];
    venuesManager2 = [actionCoordinator2 venuesManager];
    v11 = [venuesManager2 hasSearchResultsInVenue:venueCopy forFloorOrdinal:ordinalCopy] ^ 1;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (id)venueFloorViewControllerConstraintsForViewWhenOpen:(id)open
{
  openCopy = open;
  view = [openCopy view];
  leadingAnchor = [view leadingAnchor];
  controlsStackView = [(IOSFloatingControlsViewController *)self controlsStackView];
  leadingAnchor2 = [controlsStackView leadingAnchor];
  v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v36[0] = v7;
  view2 = [openCopy view];
  trailingAnchor = [view2 trailingAnchor];
  controlsStackView2 = [(IOSFloatingControlsViewController *)self controlsStackView];
  trailingAnchor2 = [controlsStackView2 trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v36[1] = v12;
  v31 = [NSArray arrayWithObjects:v36 count:2];

  LODWORD(trailingAnchor2) = [(IOSFloatingControlsViewController *)self _alignStackToBottom];
  v33 = openCopy;
  view3 = [openCopy view];
  v30 = view3;
  if (trailingAnchor2)
  {
    bottomAnchor = [view3 bottomAnchor];
    view4 = [(IOSFloatingControlsViewController *)self view];
    bottomAnchor2 = [view4 bottomAnchor];
    v28 = bottomAnchor;
    v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v35[0] = v16;
    view5 = [openCopy view];
    topAnchor = [view5 topAnchor];
    view6 = [(IOSFloatingControlsViewController *)self view];
    topAnchor2 = [view6 topAnchor];
    v21 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
    v35[1] = v21;
    v22 = v35;
  }

  else
  {
    topAnchor3 = [view3 topAnchor];
    view4 = [(IOSFloatingControlsViewController *)self view];
    bottomAnchor2 = [view4 topAnchor];
    v28 = topAnchor3;
    v16 = [topAnchor3 constraintEqualToAnchor:bottomAnchor2];
    v34[0] = v16;
    view5 = [openCopy view];
    topAnchor = [view5 bottomAnchor];
    view6 = [(IOSFloatingControlsViewController *)self view];
    topAnchor2 = [view6 bottomAnchor];
    v21 = [topAnchor constraintLessThanOrEqualToAnchor:topAnchor2];
    v34[1] = v21;
    v22 = v34;
  }

  v24 = [NSArray arrayWithObjects:v22 count:2];
  v25 = [v31 arrayByAddingObjectsFromArray:v24];

  return v25;
}

- (void)venueFloorViewControllerDidClose:(id)close
{
  closeCopy = close;
  [(IOSFloatingControlsViewController *)self updateNonFloorPickerControlsVisibleAnimated:1];
  actionCoordinator = [(FloatingControlsViewController *)self actionCoordinator];
  venuesManager = [actionCoordinator venuesManager];
  [venuesManager venueFloorViewControllerDidClose:closeCopy];
}

- (void)venueFloorViewControllerDidOpen:(id)open
{
  openCopy = open;
  [(IOSFloatingControlsViewController *)self updateNonFloorPickerControlsVisibleAnimated:1];
  actionCoordinator = [(FloatingControlsViewController *)self actionCoordinator];
  venuesManager = [actionCoordinator venuesManager];
  [venuesManager venueFloorViewControllerDidOpen:openCopy];
}

- (void)venueFloorViewControllerDidFinishShowing:(id)showing
{
  showingCopy = showing;
  [(IOSFloatingControlsViewController *)self updateNonFloorPickerControlsVisibleAnimated:1];
  actionCoordinator = [(FloatingControlsViewController *)self actionCoordinator];
  venuesManager = [actionCoordinator venuesManager];
  [venuesManager venueFloorViewControllerDidFinishShowing:showingCopy];
}

- (void)venueFloorViewControllerDidStartShowing:(id)showing
{
  showingCopy = showing;
  view = [(IOSFloatingControlsViewController *)self view];
  [view layoutIfNeeded];

  [(IOSFloatingControlsViewController *)self updateNonFloorPickerControlsVisibleForFloorPickerHidden:0 animated:1];
  actionCoordinator = [(FloatingControlsViewController *)self actionCoordinator];
  venuesManager = [actionCoordinator venuesManager];
  [venuesManager venueFloorViewControllerDidStartShowing:showingCopy];
}

- (void)venueFloorViewControllerDidFinishHiding:(id)hiding
{
  hidingCopy = hiding;
  _alignStackToBottom = [(IOSFloatingControlsViewController *)self _alignStackToBottom];
  controlsStackView = [(IOSFloatingControlsViewController *)self controlsStackView];
  venueFloorViewControllerIfLoaded = [(IOSFloatingControlsViewController *)self venueFloorViewControllerIfLoaded];
  closedPlaceholderView = [venueFloorViewControllerIfLoaded closedPlaceholderView];
  if (_alignStackToBottom)
  {
    [controlsStackView insertArrangedSubview:closedPlaceholderView atIndex:0];
  }

  else
  {
    [controlsStackView addArrangedSubview:closedPlaceholderView];
  }

  view = [(IOSFloatingControlsViewController *)self view];
  [view layoutIfNeeded];

  [(IOSFloatingControlsViewController *)self updateNonFloorPickerControlsVisibleAnimated:1];
  actionCoordinator = [(FloatingControlsViewController *)self actionCoordinator];
  venuesManager = [actionCoordinator venuesManager];
  [venuesManager venueFloorViewControllerDidFinishHiding:hidingCopy];
}

- (void)venueFloorViewControllerDidStartHiding:(id)hiding
{
  hidingCopy = hiding;
  controlsStackView = [(IOSFloatingControlsViewController *)self controlsStackView];
  venueFloorViewControllerIfLoaded = [(IOSFloatingControlsViewController *)self venueFloorViewControllerIfLoaded];
  closedPlaceholderView = [venueFloorViewControllerIfLoaded closedPlaceholderView];
  [controlsStackView removeArrangedSubview:closedPlaceholderView];

  view = [(IOSFloatingControlsViewController *)self view];
  [view layoutIfNeeded];

  [(IOSFloatingControlsViewController *)self updateNonFloorPickerControlsVisibleForFloorPickerHidden:1 animated:1];
  actionCoordinator = [(FloatingControlsViewController *)self actionCoordinator];
  venuesManager = [actionCoordinator venuesManager];
  [venuesManager venueFloorViewControllerDidStartHiding:hidingCopy];
}

- (void)venueFloorViewControllerDidChangeConstraints:(id)constraints
{
  constraintsCopy = constraints;
  view = [(IOSFloatingControlsViewController *)self view];
  [view layoutIfNeeded];

  actionCoordinator = [(FloatingControlsViewController *)self actionCoordinator];
  venuesManager = [actionCoordinator venuesManager];
  [venuesManager venueFloorViewControllerDidChangeConstraints:constraintsCopy];
}

- (void)updateNonFloorPickerControlsVisibleForFloorPickerHidden:(BOOL)hidden animated:(BOOL)animated
{
  animatedCopy = animated;
  if (hidden)
  {

    [(IOSFloatingControlsViewController *)self setNonFloorPickerControlsVisible:1 animated:?];
  }

  else
  {
    venueFloorViewController = [(IOSFloatingControlsViewController *)self venueFloorViewController];
    -[IOSFloatingControlsViewController setNonFloorPickerControlsVisible:animated:](self, "setNonFloorPickerControlsVisible:animated:", [venueFloorViewController isOpen] ^ 1, animatedCopy);
  }
}

- (void)updateNonFloorPickerControlsVisibleAnimated:(BOOL)animated
{
  animatedCopy = animated;
  venueFloorViewController = [(IOSFloatingControlsViewController *)self venueFloorViewController];
  if (venueFloorViewController)
  {
    venueFloorViewController2 = [(IOSFloatingControlsViewController *)self venueFloorViewController];
    -[IOSFloatingControlsViewController updateNonFloorPickerControlsVisibleForFloorPickerHidden:animated:](self, "updateNonFloorPickerControlsVisibleForFloorPickerHidden:animated:", [venueFloorViewController2 isHidden], animatedCopy);
  }

  else
  {
    [(IOSFloatingControlsViewController *)self updateNonFloorPickerControlsVisibleForFloorPickerHidden:1 animated:animatedCopy];
  }
}

- (void)setNonFloorPickerControlsVisible:(BOOL)visible animated:(BOOL)animated
{
  if (self->_nonFloorPickerControlsVisible != visible)
  {
    v19 = v4;
    v20 = v5;
    animatedCopy = animated;
    visibleCopy = visible;
    self->_nonFloorPickerControlsVisible = visible;
    mapView = [(FloatingControlsViewController *)self mapView];
    [mapView _setCompassSuppressedForFloorPicker:!visibleCopy];

    v10 = 0.0;
    v14 = 3221225472;
    v13 = _NSConcreteStackBlock;
    v15 = sub_1008E6090;
    v16 = &unk_101661650;
    if (visibleCopy)
    {
      v10 = 1.0;
    }

    selfCopy = self;
    v18 = v10;
    v11 = objc_retainBlock(&v13);
    v12 = v11;
    if (animatedCopy)
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
  venueFloorViewController = [(IOSFloatingControlsViewController *)self venueFloorViewController];

  if (!venueFloorViewController)
  {
    v4 = [VenueFloorViewController alloc];
    actionCoordinator = [(FloatingControlsViewController *)self actionCoordinator];
    venuesManager = [actionCoordinator venuesManager];
    v7 = [(VenueFloorViewController *)v4 initWithDelegate:self venuesManager:venuesManager visualEffectDisabled:0];
    [(IOSFloatingControlsViewController *)self setVenueFloorViewController:v7];

    venueFloorViewController2 = [(IOSFloatingControlsViewController *)self venueFloorViewController];
    actionCoordinator2 = [(FloatingControlsViewController *)self actionCoordinator];
    venuesManager2 = [actionCoordinator2 venuesManager];
    [venuesManager2 setVenueFloorViewController:venueFloorViewController2];

    venueFloorViewController3 = [(IOSFloatingControlsViewController *)self venueFloorViewController];
    [venueFloorViewController3 setForceHidden:1];

    blurGroupName = [(FloatingControlsViewController *)self blurGroupName];
    venueFloorViewController4 = [(IOSFloatingControlsViewController *)self venueFloorViewController];
    [venueFloorViewController4 setBlurGroupName:blurGroupName];

    venueFloorViewController5 = [(IOSFloatingControlsViewController *)self venueFloorViewController];
    [(IOSFloatingControlsViewController *)self addChildViewController:venueFloorViewController5];

    venueFloorViewController6 = [(IOSFloatingControlsViewController *)self venueFloorViewController];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1008E6334;
    v19[3] = &unk_101661B18;
    v19[4] = self;
    [venueFloorViewController6 delayConstraintSetupWhileExecuting:v19];

    venueFloorViewController7 = [(IOSFloatingControlsViewController *)self venueFloorViewController];
    [venueFloorViewController7 didMoveToParentViewController:self];

    view = [(IOSFloatingControlsViewController *)self view];
    [view layoutIfNeeded];

    if (([(FloatingControlsViewController *)self visibleControls]& 0x40) != 0)
    {
      venueFloorViewController8 = [(IOSFloatingControlsViewController *)self venueFloorViewController];
      [venueFloorViewController8 setForceHidden:0 animated:1 completion:0];
    }
  }
}

- (void)didChangeFocusedVenue:(id)venue
{
  venueCopy = venue;
  if (venueCopy)
  {
    [(IOSFloatingControlsViewController *)self setupVenueFloorViewController];
  }

  localSearchViewControllerIfLoaded = [(IOSFloatingControlsViewController *)self localSearchViewControllerIfLoaded];
  browseVenueBusinessController = [localSearchViewControllerIfLoaded browseVenueBusinessController];
  [browseVenueBusinessController handleVenueWithFocusDidChange:venueCopy];
}

- (void)mapView:(id)view didChangeUserTrackingMode:(int64_t)mode animated:(BOOL)animated fromTrackingButton:(BOOL)button
{
  buttonCopy = button;
  animatedCopy = animated;
  viewCopy = view;
  v13.receiver = self;
  v13.super_class = IOSFloatingControlsViewController;
  [(FloatingControlsViewController *)&v13 mapView:viewCopy didChangeUserTrackingMode:mode animated:animatedCopy fromTrackingButton:buttonCopy];
  if (buttonCopy)
  {
    if (!mode)
    {
      camera = [viewCopy camera];
      _mapLayer = [camera copy];

      [(IOSFloatingControlsViewController *)self yawPriorToHeadingTracking];
      [_mapLayer setHeading:?];
      [viewCopy setCamera:_mapLayer animated:1];
      goto LABEL_6;
    }

    if (mode == 2)
    {
      _mapLayer = [viewCopy _mapLayer];
      [_mapLayer yaw];
      [(IOSFloatingControlsViewController *)self setYawPriorToHeadingTracking:?];
LABEL_6:
    }
  }
}

- (void)mapView:(id)view didChangeMapType:(unint64_t)type
{
  v7.receiver = self;
  v7.super_class = IOSFloatingControlsViewController;
  [(FloatingControlsViewController *)&v7 mapView:view didChangeMapType:?];
  browseVenueBusinessController = [(LocalSearchViewController *)self->_localSearchViewController browseVenueBusinessController];
  [browseVenueBusinessController handleMapTypeDidChange:type];
}

- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v8.receiver = self;
  v8.super_class = IOSFloatingControlsViewController;
  viewCopy = view;
  [(FloatingControlsViewController *)&v8 mapView:viewCopy regionDidChangeAnimated:animatedCopy];
  v7 = [(LocalSearchViewController *)self->_localSearchViewController refreshSearchHereBusinessController:v8.receiver];
  [v7 handleMapViewRegionDidChange:viewCopy];
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  regionCopy = region;
  identifier = [regionCopy identifier];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    identifier2 = [regionCopy identifier];
    integerValue = [identifier2 integerValue];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    floatingButtonItems = [(ButtonsContainerViewController *)self->_buttonsContainerViewController floatingButtonItems];
    v11 = [floatingButtonItems countByEnumeratingWithState:&v24 objects:v28 count:16];
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
            objc_enumerationMutation(floatingButtonItems);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          if ([v15 option] == integerValue)
          {
            v17 = [UITargetedPreview alloc];
            button = [v15 button];
            v19 = [v17 initWithView:button];

            v20 = [UIPointerEffect effectWithPreview:v19];
            +[MapsTheme buttonCornerRadius];
            button2 = [v15 button];
            [button2 frame];
            v22 = [UIPointerShape shapeWithRoundedRect:"shapeWithRoundedRect:cornerRadius:" cornerRadius:?];

            v16 = [UIPointerStyle styleWithEffect:v20 shape:v22];

            goto LABEL_13;
          }
        }

        v12 = [floatingButtonItems countByEnumeratingWithState:&v24 objects:v28 count:16];
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

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  requestCopy = request;
  buttonsContainerViewController = [(IOSFloatingControlsViewController *)self buttonsContainerViewController];
  floatingButtonItems = [buttonsContainerViewController floatingButtonItems];

  visibleControls = [(FloatingControlsViewController *)self visibleControls];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v10 = floatingButtonItems;
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
        if (([v15 option] & visibleControls) != 0)
        {
          button = [v15 button];

          if (button)
          {
            button2 = [v15 button];
            [button2 bounds];
            v19 = v18;
            v21 = v20;
            v23 = v22;
            v25 = v24;
            view = [(IOSFloatingControlsViewController *)self view];
            [button2 convertRect:view toView:{v19, v21, v23, v25}];
            v28 = v27;
            v30 = v29;
            v32 = v31;
            v34 = v33;

            [requestCopy location];
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

- (void)_deviceOrientationDidChange:(id)change
{
  [(IOSFloatingControlsViewController *)self _invalidateConstraints];
  [(IOSFloatingControlsViewController *)self _updateConstraintsIfNeeded];
  buttonsContainerViewControllerIfLoaded = [(IOSFloatingControlsViewController *)self buttonsContainerViewControllerIfLoaded];
  _desiredFloatingButtonItems = [(IOSFloatingControlsViewController *)self _desiredFloatingButtonItems];
  [buttonsContainerViewControllerIfLoaded updateFloatingButtonItems:_desiredFloatingButtonItems];
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

- (void)setMargin:(double)margin
{
  v7.receiver = self;
  v7.super_class = IOSFloatingControlsViewController;
  [(FloatingControlsViewController *)&v7 setMargin:margin];
  [(IOSFloatingControlsViewController *)self _spacing];
  v5 = v4;
  controlsStackView = [(IOSFloatingControlsViewController *)self controlsStackView];
  [controlsStackView setSpacing:v5];
}

- (void)setBlurGroupName:(id)name
{
  v4 = [name copy];
  v9.receiver = self;
  v9.super_class = IOSFloatingControlsViewController;
  [(FloatingControlsViewController *)&v9 setBlurGroupName:v4];

  blurGroupName = [(FloatingControlsViewController *)self blurGroupName];
  buttonsContainerViewControllerIfLoaded = [(IOSFloatingControlsViewController *)self buttonsContainerViewControllerIfLoaded];
  [buttonsContainerViewControllerIfLoaded setBlurGroupName:blurGroupName];

  blurGroupName2 = [(FloatingControlsViewController *)self blurGroupName];
  venueFloorViewControllerIfLoaded = [(IOSFloatingControlsViewController *)self venueFloorViewControllerIfLoaded];
  [venueFloorViewControllerIfLoaded setBlurGroupName:blurGroupName2];
}

- (id)floatingButtonLeadingGuide
{
  controlsStackViewIfLoaded = [(IOSFloatingControlsViewController *)self controlsStackViewIfLoaded];
  leadingAnchor = [controlsStackViewIfLoaded leadingAnchor];

  return leadingAnchor;
}

- (void)hideControlsIfNeeded:(int64_t)needed animated:(BOOL)animated
{
  animatedCopy = animated;
  visibleControls = [(FloatingControlsViewController *)self visibleControls];
  if ([(FloatingControlsViewController *)self shouldHide:1 withControlOptions:needed])
  {
    visibleControls &= ~1uLL;
  }

  if ([(FloatingControlsViewController *)self shouldHide:2 withControlOptions:needed])
  {
    visibleControls &= ~2uLL;
  }

  if ([(FloatingControlsViewController *)self shouldHide:16 withControlOptions:needed])
  {
    visibleControls &= ~0x10uLL;
  }

  if ([(FloatingControlsViewController *)self shouldHide:32 withControlOptions:needed])
  {
    visibleControls &= ~0x20uLL;
  }

  if ([(FloatingControlsViewController *)self shouldHide:64 withControlOptions:needed])
  {
    visibleControls &= ~0x40uLL;
  }

  if ([(FloatingControlsViewController *)self shouldHide:256 withControlOptions:needed])
  {
    visibleControls &= ~0x100uLL;
  }

  if ([(FloatingControlsViewController *)self shouldHide:512 withControlOptions:needed])
  {
    visibleControls &= ~0x200uLL;
  }

  if ([(FloatingControlsViewController *)self shouldHide:1024 withControlOptions:needed])
  {
    visibleControls &= ~0x400uLL;
  }

  if ([(FloatingControlsViewController *)self shouldHide:4096 withControlOptions:needed])
  {
    visibleControls &= ~0x1000uLL;
  }

  if ([(FloatingControlsViewController *)self shouldHide:4 withControlOptions:needed])
  {
    v8 = visibleControls & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    v8 = visibleControls;
  }

  [(IOSFloatingControlsViewController *)self _applyNewVisibleControls:v8 animated:animatedCopy];
}

- (void)showControlsIfNeeded:(int64_t)needed animated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = [(FloatingControlsViewController *)self _sanitizedControlsFromControls:needed];
  visibleControls = [(FloatingControlsViewController *)self visibleControls];
  if ([(IOSFloatingControlsViewController *)self shouldShow:2 withControlOptions:v6])
  {
    visibleControls |= 2uLL;
  }

  v8 = visibleControls | [(IOSFloatingControlsViewController *)self shouldShow:1 withControlOptions:v6];
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

  [(IOSFloatingControlsViewController *)self _applyNewVisibleControls:v9 animated:animatedCopy];
}

- (BOOL)shouldShow:(int64_t)show withControlOptions:(int64_t)options
{
  visibleControls = [(FloatingControlsViewController *)self visibleControls];
  v8 = options & show;
  if (sub_10000FA08(self) == 5)
  {
    if (v8)
    {
LABEL_3:
      [(IOSFloatingControlsViewController *)self buttonsContainerViewController];

      return 1;
    }
  }

  else if (v8 | visibleControls & show)
  {
    goto LABEL_3;
  }

  return 0;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v9.receiver = self;
  v9.super_class = IOSFloatingControlsViewController;
  [(IOSFloatingControlsViewController *)&v9 viewDidDisappear:disappear];
  actionCoordinator = [(FloatingControlsViewController *)self actionCoordinator];
  venuesManager = [actionCoordinator venuesManager];
  [venuesManager removeChangeObserver:self];

  v6 = +[UserInformationManager sharedInstance];
  observers = [v6 observers];
  [observers unregisterObserver:self];

  if ([(IOSFloatingControlsViewController *)self _shouldObserveOrientationDidChange])
  {
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 removeObserver:self name:UIDeviceOrientationDidChangeNotification object:0];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = IOSFloatingControlsViewController;
  [(IOSFloatingControlsViewController *)&v5 viewDidAppear:appear];
  if ([(IOSFloatingControlsViewController *)self _shouldObserveOrientationDidChange])
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:self selector:"_deviceOrientationDidChange:" name:UIDeviceOrientationDidChangeNotification object:0];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v12.receiver = self;
  v12.super_class = IOSFloatingControlsViewController;
  [(FloatingControlsViewController *)&v12 viewWillAppear:appear];
  [(IOSFloatingControlsViewController *)self _refreshUserLocationButton];
  [(IOSFloatingControlsViewController *)self _updateUserProfileButtonImage];
  [(IOSFloatingControlsViewController *)self _refreshCompassButton];
  actionCoordinator = [(FloatingControlsViewController *)self actionCoordinator];
  venuesManager = [actionCoordinator venuesManager];
  [venuesManager addChangeObserver:self];

  v6 = +[UserInformationManager sharedInstance];
  observers = [v6 observers];
  [observers registerObserver:self queue:&_dispatch_main_q];

  actionCoordinator2 = [(FloatingControlsViewController *)self actionCoordinator];
  venuesManager2 = [actionCoordinator2 venuesManager];
  venueWithFocus = [venuesManager2 venueWithFocus];
  [(IOSFloatingControlsViewController *)self didChangeFocusedVenue:venueWithFocus];

  [(IOSFloatingControlsViewController *)self _updateMapModeButtonAppearance];
  v11 = +[NSNotificationCenter defaultCenter];
  [v11 addObserver:self selector:"_updateMapModeButtonAppearance" name:@"MKMapViewDidChangeMapTypeNotification" object:0];
}

- (void)_applyNewVisibleControls:(int64_t)controls animated:(BOOL)animated
{
  animatedCopy = animated;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  buttonsContainerViewController = [(IOSFloatingControlsViewController *)self buttonsContainerViewController];
  floatingButtonItems = [buttonsContainerViewController floatingButtonItems];

  v9 = [floatingButtonItems countByEnumeratingWithState:&v43 objects:v57 count:16];
  if (!v9)
  {
LABEL_43:

    goto LABEL_44;
  }

  v10 = v9;
  v41 = animatedCopy;
  v11 = 0;
  v12 = *v44;
  do
  {
    v13 = 0;
    do
    {
      if (*v44 != v12)
      {
        objc_enumerationMutation(floatingButtonItems);
      }

      v14 = *(*(&v43 + 1) + 8 * v13);
      if (([v14 option] & controls) != 0)
      {
        button = [v14 button];

        if (!button)
        {
          option = [v14 option];
          v11 = 1;
          if (option <= 255)
          {
            if (option > 15)
            {
              if (option == 16)
              {
                mode2DButton = [(IOSFloatingControlsViewController *)self mode2DButton];
              }

              else
              {
                if (option != 32)
                {
                  goto LABEL_29;
                }

                mode2DButton = [(IOSFloatingControlsViewController *)self mode3DButton];
              }
            }

            else if (option == 1)
            {
              mode2DButton = [(IOSFloatingControlsViewController *)self userLocationButton];
            }

            else
            {
              if (option != 2)
              {
                goto LABEL_29;
              }

              mode2DButton = [(IOSFloatingControlsViewController *)self settingsButton];
            }
          }

          else if (option <= 1023)
          {
            if (option == 256)
            {
              mode2DButton = [(IOSFloatingControlsViewController *)self modePedestrianARButton];
            }

            else
            {
              if (option != 512)
              {
                goto LABEL_29;
              }

              mode2DButton = [(IOSFloatingControlsViewController *)self ttrButton];
            }
          }

          else
          {
            if (option != 1024)
            {
              if (option == 2048)
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

                userProfileButton = [(IOSFloatingControlsViewController *)self userProfileButton];
                [v14 setButton:userProfileButton];

                [v14 setHideBackground:{-[IOSFloatingControlsViewController _hideBackgroundForUserProfileItem](self, "_hideBackgroundForUserProfileItem")}];
                v11 = 1;
              }

              else if (option == 4096)
              {
                compassButton = [(IOSFloatingControlsViewController *)self compassButton];
                [v14 setButton:compassButton];

                [v14 setHideBackground:_UISolariumEnabled() ^ 1];
              }

              goto LABEL_29;
            }

            mode2DButton = [(IOSFloatingControlsViewController *)self ssaoButton];
          }

          v19 = mode2DButton;
          [v14 setButton:mode2DButton];
        }
      }

LABEL_29:
      v13 = v13 + 1;
    }

    while (v10 != v13);
    v25 = [floatingButtonItems countByEnumeratingWithState:&v43 objects:v57 count:16];
    v10 = v25;
  }

  while (v25);

  animatedCopy = v41;
  if (v11)
  {
    floatingButtonItems = [(IOSFloatingControlsViewController *)self buttonsContainerViewController];
    [floatingButtonItems refreshControls];
    goto LABEL_43;
  }

LABEL_44:
  if ([(FloatingControlsViewController *)self visibleControls]!= controls)
  {
    [(FloatingControlsViewController *)self setVisibleControls:controls];
    if ((controls & 4) != 0 && (-[FloatingControlsViewController actionCoordinator](self, "actionCoordinator"), v26 = objc_claimAutoreleasedReturnValue(), v27 = [v26 shouldShowSearchOverlay], v26, v27))
    {
      localSearchViewController = [(IOSFloatingControlsViewController *)self localSearchViewController];
      view = [localSearchViewController view];
      superview = [view superview];

      if (!superview)
      {
        [(IOSFloatingControlsViewController *)self addChildViewController:self->_localSearchViewController];
        localSearchViewController2 = [(IOSFloatingControlsViewController *)self localSearchViewController];
        view2 = [localSearchViewController2 view];
        _localSearchViewConstraints = [(IOSFloatingControlsViewController *)self _localSearchViewConstraints];
        [(FloatingControlsViewController *)self _addSubview:view2 withConstraints:_localSearchViewConstraints];

        [(LocalSearchViewController *)self->_localSearchViewController didMoveToParentViewController:self];
      }

      localSearchViewController3 = [(IOSFloatingControlsViewController *)self localSearchViewController];
      [localSearchViewController3 setEnable:1];
    }

    else
    {
      localSearchViewControllerIfLoaded = [(IOSFloatingControlsViewController *)self localSearchViewControllerIfLoaded];
      [localSearchViewControllerIfLoaded setEnable:0];

      localSearchViewControllerIfLoaded2 = [(IOSFloatingControlsViewController *)self localSearchViewControllerIfLoaded];
      [localSearchViewControllerIfLoaded2 willMoveToParentViewController:0];

      localSearchViewControllerIfLoaded3 = [(IOSFloatingControlsViewController *)self localSearchViewControllerIfLoaded];
      viewIfLoaded = [localSearchViewControllerIfLoaded3 viewIfLoaded];
      [viewIfLoaded removeFromSuperview];

      localSearchViewController3 = [(IOSFloatingControlsViewController *)self localSearchViewControllerIfLoaded];
      [localSearchViewController3 removeFromParentViewController];
    }

    venueFloorViewControllerIfLoaded = [(IOSFloatingControlsViewController *)self venueFloorViewControllerIfLoaded];
    [venueFloorViewControllerIfLoaded setForceHidden:(controls & 0x40) == 0];

    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_1008E7CC8;
    v42[3] = &unk_101661650;
    v42[4] = self;
    v42[5] = controls;
    v40 = objc_retainBlock(v42);
    if (animatedCopy)
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