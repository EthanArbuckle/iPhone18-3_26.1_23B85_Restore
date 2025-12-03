@interface WeatherOverlay
- (BOOL)_alignToBottom;
- (BOOL)_shouldObserveOrientationDidChange;
- (BOOL)isHidden;
- (ChromeOverlayHosting)host;
- (MapViewProviding)mapViewProvider;
- (double)alpha;
- (id)mapView;
- (id)view;
- (id)weatherLocationDataProvider;
- (void)_deviceOrientationDidChange:(id)change;
- (void)_installInContentView:(id)view;
- (void)_invalidateConstraints;
- (void)_updateConstraintsIfNeeded;
- (void)_updateLayout;
- (void)_updateLocation;
- (void)mapView:(id)view didChangeMapType:(unint64_t)type;
- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated;
- (void)setAlpha:(double)alpha;
- (void)setContainerStyle:(unint64_t)style;
- (void)setHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)setHost:(id)host;
- (void)setMapViewProvider:(id)provider;
- (void)weatherStackViewController:(id)controller openURL:(id)l;
@end

@implementation WeatherOverlay

- (id)weatherLocationDataProvider
{
  locationDataProvider = self->_locationDataProvider;
  if (!locationDataProvider)
  {
    v4 = objc_alloc_init(WeatherLocationDataProvider);
    v5 = self->_locationDataProvider;
    self->_locationDataProvider = v4;

    v6 = [[WeatherMapPanningCoordinator alloc] initWithWeatherLocationDataProvider:self->_locationDataProvider];
    [(WeatherOverlay *)self setMapPanningCoordinator:v6];

    mapPanningCoordinator = [(WeatherOverlay *)self mapPanningCoordinator];
    mapView = [(WeatherOverlay *)self mapView];
    [mapPanningCoordinator handleMapViewRegionDidChange:mapView];

    locationDataProvider = self->_locationDataProvider;
  }

  return locationDataProvider;
}

- (id)mapView
{
  mapViewProvider = [(WeatherOverlay *)self mapViewProvider];
  mapView = [mapViewProvider mapView];

  return mapView;
}

- (MapViewProviding)mapViewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_mapViewProvider);

  return WeakRetained;
}

- (id)view
{
  stackViewController = [(WeatherOverlay *)self stackViewController];
  view = [stackViewController view];

  return view;
}

- (void)_updateLayout
{
  containerStyle = self->_containerStyle;
  v4 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v4 userInterfaceIdiom];

  v6 = _UISolariumEnabled();
  v7 = userInterfaceIdiom == 5;
  v8 = (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 || containerStyle >= 8;
  v9 = 0xA3u >> containerStyle;
  if (v8)
  {
    LOBYTE(v9) = 0;
  }

  if (v6)
  {
    v7 = v9;
  }

  v10 = v7;
  if (self->_hasLeadingEdgeLayout != v10)
  {
    self->_hasLeadingEdgeLayout = v10;
    [(WeatherOverlay *)self _invalidateConstraints];
  }

  [(WeatherOverlay *)self _updateConstraintsIfNeeded];
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

- (void)_updateConstraintsIfNeeded
{
  if (!self->_constraints)
  {
    WeakRetained = objc_loadWeakRetained(&self->_host);
    v4 = [WeakRetained layoutGuideForOverlay:self];

    if (v4)
    {
      _alignToBottom = [(WeatherOverlay *)self _alignToBottom];
      hasLeadingEdgeLayout = self->_hasLeadingEdgeLayout;
      view = [(WeatherOverlay *)self view];
      v8 = view;
      if (hasLeadingEdgeLayout)
      {
        [view leadingAnchor];
      }

      else
      {
        [view trailingAnchor];
      }
      v9 = ;

      if (self->_hasLeadingEdgeLayout)
      {
        [v4 leadingAnchor];
      }

      else
      {
        [v4 trailingAnchor];
      }
      v10 = ;
      view2 = [(WeatherOverlay *)self view];
      v12 = view2;
      if (_alignToBottom)
      {
        bottomAnchor = [view2 bottomAnchor];

        [v4 bottomAnchor];
      }

      else
      {
        bottomAnchor = [view2 topAnchor];

        [v4 topAnchor];
      }
      v14 = ;
      v15 = [v9 constraintEqualToAnchor:v10];
      v19[0] = v15;
      v16 = [bottomAnchor constraintEqualToAnchor:v14];
      v19[1] = v16;
      v17 = [NSArray arrayWithObjects:v19 count:2];
      constraints = self->_constraints;
      self->_constraints = v17;

      [NSLayoutConstraint activateConstraints:self->_constraints];
    }
  }
}

- (BOOL)_alignToBottom
{
  if (!_UISolariumEnabled())
  {
    return 1;
  }

  view = [(WeatherOverlay *)self view];
  v4 = sub_10000FA08(view);

  if (v4 == 5)
  {
    return 1;
  }

  view2 = [(WeatherOverlay *)self view];
  v6 = sub_10000FA08(view2);

  if (v6 == 1)
  {
    return 1;
  }

  view3 = [(WeatherOverlay *)self view];
  if (sub_10000FA08(view3))
  {
    v7 = 0;
  }

  else
  {
    v10 = +[UIDevice currentDevice];
    v7 = [v10 orientation] - 3 < 2;
  }

  return v7;
}

- (BOOL)_shouldObserveOrientationDidChange
{
  if (!_UISolariumEnabled())
  {
    return 0;
  }

  view = [(WeatherOverlay *)self view];
  v4 = sub_10000FA08(view) == 0;

  return v4;
}

- (ChromeOverlayHosting)host
{
  WeakRetained = objc_loadWeakRetained(&self->_host);

  return WeakRetained;
}

- (void)weatherStackViewController:(id)controller openURL:(id)l
{
  lCopy = l;
  v6 = [MapsWebLinkPresenter alloc];
  WeakRetained = objc_loadWeakRetained(&self->_host);
  containingViewController = [WeakRetained containingViewController];
  v9 = [(MapsWebLinkPresenter *)v6 initWithPresentingViewController:containingViewController];

  [(MapsWebLinkPresenter *)v9 presentWebURL:lCopy];
}

- (void)mapView:(id)view didChangeMapType:(unint64_t)type
{
  if (type - 1 < 4 || type == 107)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  stackViewController = [(WeatherOverlay *)self stackViewController];
  [stackViewController setOverrideUserInterfaceStyle:v4];
}

- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated
{
  viewCopy = view;
  if (![(WeatherOverlay *)self isHidden])
  {
    [(WeatherMapPanningCoordinator *)self->_mapPanningCoordinator handleMapViewRegionDidChange:viewCopy];
  }
}

- (void)_updateLocation
{
  mapPanningCoordinator = [(WeatherOverlay *)self mapPanningCoordinator];
  mapView = [(WeatherOverlay *)self mapView];
  [mapPanningCoordinator handleMapViewRegionDidChange:mapView forceUpdate:1];
}

- (void)setMapViewProvider:(id)provider
{
  providerCopy = provider;
  v5 = objc_loadWeakRetained(&self->_mapViewProvider);
  v6 = providerCopy;
  if (v6 | v5)
  {
    obj = v6;
    v7 = [v5 isEqual:v6];

    v6 = obj;
    if ((v7 & 1) == 0)
    {
      objc_storeWeak(&self->_mapViewProvider, obj);
      v6 = obj;
    }
  }
}

- (void)setAlpha:(double)alpha
{
  stackViewController = [(WeatherOverlay *)self stackViewController];
  [stackViewController setOverlayAlpha:alpha];
}

- (double)alpha
{
  stackViewController = [(WeatherOverlay *)self stackViewController];
  [stackViewController overlayAlpha];
  v4 = v3;

  return v4;
}

- (void)setHidden:(BOOL)hidden animated:(BOOL)animated
{
  animatedCopy = animated;
  hiddenCopy = hidden;
  if ([(WeatherOverlay *)self isHidden])
  {
    if (!hiddenCopy)
    {
      locationDataProvider = [(WeatherOverlay *)self locationDataProvider];
      [locationDataProvider coordinate];
      v9 = v8;
      v11 = v10;

      mapPanningCoordinator = [(WeatherOverlay *)self mapPanningCoordinator];
      mapView = [(WeatherOverlay *)self mapView];
      [mapPanningCoordinator handleMapViewRegionDidChange:mapView];

      locationDataProvider2 = [(WeatherOverlay *)self locationDataProvider];
      [locationDataProvider2 coordinate];
      v16 = v15;
      v18 = v17;

      v22.latitude = v9;
      v22.longitude = v11;
      LODWORD(locationDataProvider2) = CLLocationCoordinate2DIsValid(v22);
      v23.latitude = v16;
      v23.longitude = v18;
      if (locationDataProvider2 != CLLocationCoordinate2DIsValid(v23) || v9 != v16 || v11 != v18)
      {
        stackViewController = [(WeatherOverlay *)self stackViewController];
        [stackViewController clearSavedLocation];
      }
    }
  }

  stackViewController2 = [(WeatherOverlay *)self stackViewController];
  [stackViewController2 setOverlayHidden:hiddenCopy animated:animatedCopy];
}

- (BOOL)isHidden
{
  stackViewController = [(WeatherOverlay *)self stackViewController];
  overlayHidden = [stackViewController overlayHidden];

  return overlayHidden;
}

- (void)setContainerStyle:(unint64_t)style
{
  if (self->_containerStyle != style)
  {
    self->_containerStyle = style;
    [(WeatherOverlay *)self _updateLayout];
  }
}

- (void)_deviceOrientationDidChange:(id)change
{
  [(WeatherOverlay *)self _invalidateConstraints];

  [(WeatherOverlay *)self _updateLayout];
}

- (void)_installInContentView:(id)view
{
  viewCopy = view;
  view = [(WeatherOverlay *)self view];
  superview = [view superview];

  if (superview != viewCopy)
  {
    view2 = [(WeatherOverlay *)self view];
    [view2 setTranslatesAutoresizingMaskIntoConstraints:0];

    view3 = [(WeatherOverlay *)self view];
    [viewCopy addSubview:view3];

    [(WeatherOverlay *)self _updateLayout];
  }
}

- (void)setHost:(id)host
{
  obj = host;
  WeakRetained = objc_loadWeakRetained(&self->_host);

  if (WeakRetained != obj)
  {
    stackViewController = self->_stackViewController;
    if (stackViewController)
    {
      parentViewController = [(WeatherStackViewController *)stackViewController parentViewController];

      if (parentViewController)
      {
        [(WeatherStackViewController *)self->_stackViewController willMoveToParentViewController:0];
        if ([(WeatherStackViewController *)self->_stackViewController isViewLoaded])
        {
          view = [(WeatherStackViewController *)self->_stackViewController view];
          [view removeFromSuperview];
        }

        [(WeatherStackViewController *)self->_stackViewController removeFromParentViewController];
        [(WeatherOverlay *)self _invalidateConstraints];
      }
    }

    objc_storeWeak(&self->_host, obj);
    if (obj)
    {
      if (!self->_stackViewController)
      {
        v8 = [WeatherStackViewController alloc];
        weatherLocationDataProvider = [(WeatherOverlay *)self weatherLocationDataProvider];
        v10 = [(WeatherStackViewController *)v8 initWithWeatherLocationDataProvider:weatherLocationDataProvider delegate:self];
        v11 = self->_stackViewController;
        self->_stackViewController = v10;
      }

      containingViewController = [obj containingViewController];
      [(WeatherStackViewController *)self->_stackViewController willMoveToParentViewController:containingViewController];
      [containingViewController addChildViewController:self->_stackViewController];
      overlayContentView = [obj overlayContentView];
      [(WeatherOverlay *)self _installInContentView:overlayContentView];

      [(WeatherStackViewController *)self->_stackViewController didMoveToParentViewController:containingViewController];
    }

    v14 = +[NSNotificationCenter defaultCenter];
    v15 = +[WeatherSettingsManager settingsUpdatedNotification];
    [v14 addObserver:self selector:"_updateLocation" name:v15 object:0];

    if ([(WeatherOverlay *)self _shouldObserveOrientationDidChange])
    {
      v16 = +[NSNotificationCenter defaultCenter];
      [v16 addObserver:self selector:"_deviceOrientationDidChange:" name:UIDeviceOrientationDidChangeNotification object:0];
    }
  }
}

@end