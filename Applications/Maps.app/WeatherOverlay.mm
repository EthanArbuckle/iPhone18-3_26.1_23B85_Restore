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
- (void)_deviceOrientationDidChange:(id)a3;
- (void)_installInContentView:(id)a3;
- (void)_invalidateConstraints;
- (void)_updateConstraintsIfNeeded;
- (void)_updateLayout;
- (void)_updateLocation;
- (void)mapView:(id)a3 didChangeMapType:(unint64_t)a4;
- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4;
- (void)setAlpha:(double)a3;
- (void)setContainerStyle:(unint64_t)a3;
- (void)setHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setHost:(id)a3;
- (void)setMapViewProvider:(id)a3;
- (void)weatherStackViewController:(id)a3 openURL:(id)a4;
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

    v7 = [(WeatherOverlay *)self mapPanningCoordinator];
    v8 = [(WeatherOverlay *)self mapView];
    [v7 handleMapViewRegionDidChange:v8];

    locationDataProvider = self->_locationDataProvider;
  }

  return locationDataProvider;
}

- (id)mapView
{
  v2 = [(WeatherOverlay *)self mapViewProvider];
  v3 = [v2 mapView];

  return v3;
}

- (MapViewProviding)mapViewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_mapViewProvider);

  return WeakRetained;
}

- (id)view
{
  v2 = [(WeatherOverlay *)self stackViewController];
  v3 = [v2 view];

  return v3;
}

- (void)_updateLayout
{
  containerStyle = self->_containerStyle;
  v4 = +[UIDevice currentDevice];
  v5 = [v4 userInterfaceIdiom];

  v6 = _UISolariumEnabled();
  v7 = v5 == 5;
  v8 = (v5 & 0xFFFFFFFFFFFFFFFBLL) == 1 || containerStyle >= 8;
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
      v5 = [(WeatherOverlay *)self _alignToBottom];
      hasLeadingEdgeLayout = self->_hasLeadingEdgeLayout;
      v7 = [(WeatherOverlay *)self view];
      v8 = v7;
      if (hasLeadingEdgeLayout)
      {
        [v7 leadingAnchor];
      }

      else
      {
        [v7 trailingAnchor];
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
      v11 = [(WeatherOverlay *)self view];
      v12 = v11;
      if (v5)
      {
        v13 = [v11 bottomAnchor];

        [v4 bottomAnchor];
      }

      else
      {
        v13 = [v11 topAnchor];

        [v4 topAnchor];
      }
      v14 = ;
      v15 = [v9 constraintEqualToAnchor:v10];
      v19[0] = v15;
      v16 = [v13 constraintEqualToAnchor:v14];
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

  v3 = [(WeatherOverlay *)self view];
  v4 = sub_10000FA08(v3);

  if (v4 == 5)
  {
    return 1;
  }

  v5 = [(WeatherOverlay *)self view];
  v6 = sub_10000FA08(v5);

  if (v6 == 1)
  {
    return 1;
  }

  v9 = [(WeatherOverlay *)self view];
  if (sub_10000FA08(v9))
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

  v3 = [(WeatherOverlay *)self view];
  v4 = sub_10000FA08(v3) == 0;

  return v4;
}

- (ChromeOverlayHosting)host
{
  WeakRetained = objc_loadWeakRetained(&self->_host);

  return WeakRetained;
}

- (void)weatherStackViewController:(id)a3 openURL:(id)a4
{
  v5 = a4;
  v6 = [MapsWebLinkPresenter alloc];
  WeakRetained = objc_loadWeakRetained(&self->_host);
  v8 = [WeakRetained containingViewController];
  v9 = [(MapsWebLinkPresenter *)v6 initWithPresentingViewController:v8];

  [(MapsWebLinkPresenter *)v9 presentWebURL:v5];
}

- (void)mapView:(id)a3 didChangeMapType:(unint64_t)a4
{
  if (a4 - 1 < 4 || a4 == 107)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(WeatherOverlay *)self stackViewController];
  [v5 setOverrideUserInterfaceStyle:v4];
}

- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4
{
  v5 = a3;
  if (![(WeatherOverlay *)self isHidden])
  {
    [(WeatherMapPanningCoordinator *)self->_mapPanningCoordinator handleMapViewRegionDidChange:v5];
  }
}

- (void)_updateLocation
{
  v4 = [(WeatherOverlay *)self mapPanningCoordinator];
  v3 = [(WeatherOverlay *)self mapView];
  [v4 handleMapViewRegionDidChange:v3 forceUpdate:1];
}

- (void)setMapViewProvider:(id)a3
{
  v4 = a3;
  v5 = objc_loadWeakRetained(&self->_mapViewProvider);
  v6 = v4;
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

- (void)setAlpha:(double)a3
{
  v4 = [(WeatherOverlay *)self stackViewController];
  [v4 setOverlayAlpha:a3];
}

- (double)alpha
{
  v2 = [(WeatherOverlay *)self stackViewController];
  [v2 overlayAlpha];
  v4 = v3;

  return v4;
}

- (void)setHidden:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(WeatherOverlay *)self isHidden])
  {
    if (!v5)
    {
      v7 = [(WeatherOverlay *)self locationDataProvider];
      [v7 coordinate];
      v9 = v8;
      v11 = v10;

      v12 = [(WeatherOverlay *)self mapPanningCoordinator];
      v13 = [(WeatherOverlay *)self mapView];
      [v12 handleMapViewRegionDidChange:v13];

      v14 = [(WeatherOverlay *)self locationDataProvider];
      [v14 coordinate];
      v16 = v15;
      v18 = v17;

      v22.latitude = v9;
      v22.longitude = v11;
      LODWORD(v14) = CLLocationCoordinate2DIsValid(v22);
      v23.latitude = v16;
      v23.longitude = v18;
      if (v14 != CLLocationCoordinate2DIsValid(v23) || v9 != v16 || v11 != v18)
      {
        v19 = [(WeatherOverlay *)self stackViewController];
        [v19 clearSavedLocation];
      }
    }
  }

  v20 = [(WeatherOverlay *)self stackViewController];
  [v20 setOverlayHidden:v5 animated:v4];
}

- (BOOL)isHidden
{
  v2 = [(WeatherOverlay *)self stackViewController];
  v3 = [v2 overlayHidden];

  return v3;
}

- (void)setContainerStyle:(unint64_t)a3
{
  if (self->_containerStyle != a3)
  {
    self->_containerStyle = a3;
    [(WeatherOverlay *)self _updateLayout];
  }
}

- (void)_deviceOrientationDidChange:(id)a3
{
  [(WeatherOverlay *)self _invalidateConstraints];

  [(WeatherOverlay *)self _updateLayout];
}

- (void)_installInContentView:(id)a3
{
  v8 = a3;
  v4 = [(WeatherOverlay *)self view];
  v5 = [v4 superview];

  if (v5 != v8)
  {
    v6 = [(WeatherOverlay *)self view];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

    v7 = [(WeatherOverlay *)self view];
    [v8 addSubview:v7];

    [(WeatherOverlay *)self _updateLayout];
  }
}

- (void)setHost:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_host);

  if (WeakRetained != obj)
  {
    stackViewController = self->_stackViewController;
    if (stackViewController)
    {
      v6 = [(WeatherStackViewController *)stackViewController parentViewController];

      if (v6)
      {
        [(WeatherStackViewController *)self->_stackViewController willMoveToParentViewController:0];
        if ([(WeatherStackViewController *)self->_stackViewController isViewLoaded])
        {
          v7 = [(WeatherStackViewController *)self->_stackViewController view];
          [v7 removeFromSuperview];
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
        v9 = [(WeatherOverlay *)self weatherLocationDataProvider];
        v10 = [(WeatherStackViewController *)v8 initWithWeatherLocationDataProvider:v9 delegate:self];
        v11 = self->_stackViewController;
        self->_stackViewController = v10;
      }

      v12 = [obj containingViewController];
      [(WeatherStackViewController *)self->_stackViewController willMoveToParentViewController:v12];
      [v12 addChildViewController:self->_stackViewController];
      v13 = [obj overlayContentView];
      [(WeatherOverlay *)self _installInContentView:v13];

      [(WeatherStackViewController *)self->_stackViewController didMoveToParentViewController:v12];
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