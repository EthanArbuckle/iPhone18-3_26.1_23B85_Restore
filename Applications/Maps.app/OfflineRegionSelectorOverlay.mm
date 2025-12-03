@interface OfflineRegionSelectorOverlay
- (ChromeOverlayHosting)host;
- (GEOMapRegion)currentMapRegion;
- (MapViewProviding)mapViewProvider;
- (OfflineRegionSelectorActionCoordination)regionSelectorDelegate;
- (OfflineRegionSelectorOverlay)initWithRegion:(id)region;
- (void)_setInitialMapRegion;
- (void)setHost:(id)host;
- (void)setMapRegion:(id)region;
- (void)setMapViewProvider:(id)provider;
- (void)setRegionSelectorDelegate:(id)delegate;
@end

@implementation OfflineRegionSelectorOverlay

- (MapViewProviding)mapViewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_mapViewProvider);

  return WeakRetained;
}

- (OfflineRegionSelectorActionCoordination)regionSelectorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_regionSelectorDelegate);

  return WeakRetained;
}

- (ChromeOverlayHosting)host
{
  WeakRetained = objc_loadWeakRetained(&self->_host);

  return WeakRetained;
}

- (void)setHost:(id)host
{
  obj = host;
  WeakRetained = objc_loadWeakRetained(&self->_host);

  v5 = obj;
  if (WeakRetained != obj)
  {
    overlayView = self->_overlayView;
    if (overlayView)
    {
      [(OfflineRegionSelectorOverlayView *)overlayView removeFromSuperview];
    }

    objc_storeWeak(&self->_host, obj);
    v5 = obj;
    if (obj)
    {
      if (!self->_overlayView)
      {
        v7 = [[OfflineRegionSelectorOverlayView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
        v8 = self->_overlayView;
        self->_overlayView = v7;

        regionSelectorDelegate = [(OfflineRegionSelectorOverlay *)self regionSelectorDelegate];
        [(OfflineRegionSelectorOverlayView *)self->_overlayView setRegionSelectorDelegate:regionSelectorDelegate];

        [(OfflineRegionSelectorOverlayView *)self->_overlayView setTranslatesAutoresizingMaskIntoConstraints:0];
        [(OfflineRegionSelectorOverlayView *)self->_overlayView setAccessibilityIdentifier:@"OfflineRegionSelector"];
      }

      viewportLayoutGuide = [obj viewportLayoutGuide];
      [(OfflineRegionSelectorOverlayView *)self->_overlayView setViewportLayoutGuide:viewportLayoutGuide];

      overlayContentView = [obj overlayContentView];
      [overlayContentView addSubview:self->_overlayView];

      v12 = self->_overlayView;
      overlayContentView2 = [obj overlayContentView];
      LODWORD(v14) = 1148846080;
      v15 = [(OfflineRegionSelectorOverlayView *)v12 _maps_constraintsEqualToEdgesOfView:overlayContentView2 insets:UIEdgeInsetsZero.top priority:UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right, v14];
      allConstraints = [v15 allConstraints];
      [NSLayoutConstraint activateConstraints:allConstraints];

      overlayContentView3 = [obj overlayContentView];
      [overlayContentView3 layoutIfNeeded];

      [(OfflineRegionSelectorOverlay *)self _setInitialMapRegion];
      v5 = obj;
    }
  }
}

- (GEOMapRegion)currentMapRegion
{
  mapViewProvider = [(OfflineRegionSelectorOverlay *)self mapViewProvider];
  mapView = [mapViewProvider mapView];
  [(OfflineRegionSelectorOverlayView *)self->_overlayView selectedRectFrame];
  [mapView convertRect:self->_overlayView toMapRectFromView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [[GEOMapRegion alloc] initWithMapRect:{v6, v8, v10, v12}];

  return v13;
}

- (void)setMapRegion:(id)region
{
  regionCopy = region;
  mapViewProvider = [(OfflineRegionSelectorOverlay *)self mapViewProvider];
  mapView = [mapViewProvider mapView];
  GEOMapRectForMapRegion();
  [mapView convertMapRect:self->_overlayView toRectToView:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(OfflineRegionSelectorOverlayView *)self->_overlayView setInitialSelectedRect:0 animated:v7, v9, v11, v13];
}

- (void)_setInitialMapRegion
{
  GEOMapRectForMapRegion();
  v4 = v3;
  viewportLayoutGuide = [(OfflineRegionSelectorOverlayView *)self->_overlayView viewportLayoutGuide];
  [viewportLayoutGuide layoutFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  mapViewProvider = [(OfflineRegionSelectorOverlay *)self mapViewProvider];
  mapView = [mapViewProvider mapView];
  [mapView centerCoordinate];
  MKMapPointForCoordinate(v33);
  MKMapRectMakeWithZoomLevel();
  v17 = v16;

  if (v4 >= v17)
  {
    mapViewProvider2 = [(OfflineRegionSelectorOverlay *)self mapViewProvider];
    mapView2 = [mapViewProvider2 mapView];
    GEOMapRectForMapRegion();
    [mapView2 convertMapRect:self->_overlayView toRectToView:?];
    v7 = v24;
    v9 = v25;
    v11 = v26;
    v13 = v27;

    v18 = sub_10003D9F4();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      mapRegion = self->_mapRegion;
      v29 = 138412290;
      v30 = *&mapRegion;
      v19 = "Using map region for initial region selector framing: %@";
      v20 = v18;
      v21 = 12;
      goto LABEL_6;
    }
  }

  else
  {
    v18 = sub_10003D9F4();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v29 = 134218240;
      v30 = v4;
      v31 = 2048;
      v32 = v17;
      v19 = "Using viewport frame for initial region selector framing: mapRect width (%f) is below minimum width (%f)";
      v20 = v18;
      v21 = 22;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, v19, &v29, v21);
    }
  }

  [(OfflineRegionSelectorOverlayView *)self->_overlayView setInitialSelectedRect:1 animated:v7, v9, v11, v13];
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

- (void)setRegionSelectorDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = objc_loadWeakRetained(&self->_regionSelectorDelegate);
  v6 = delegateCopy;
  if (v6 | v5)
  {
    obj = v6;
    v7 = [v5 isEqual:v6];

    v6 = obj;
    if ((v7 & 1) == 0)
    {
      v8 = objc_storeWeak(&self->_regionSelectorDelegate, obj);
      [(OfflineRegionSelectorOverlayView *)self->_overlayView setRegionSelectorDelegate:obj];

      v6 = obj;
    }
  }
}

- (OfflineRegionSelectorOverlay)initWithRegion:(id)region
{
  regionCopy = region;
  v9.receiver = self;
  v9.super_class = OfflineRegionSelectorOverlay;
  v6 = [(OfflineRegionSelectorOverlay *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapRegion, region);
  }

  return v7;
}

@end