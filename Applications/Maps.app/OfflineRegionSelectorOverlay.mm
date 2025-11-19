@interface OfflineRegionSelectorOverlay
- (ChromeOverlayHosting)host;
- (GEOMapRegion)currentMapRegion;
- (MapViewProviding)mapViewProvider;
- (OfflineRegionSelectorActionCoordination)regionSelectorDelegate;
- (OfflineRegionSelectorOverlay)initWithRegion:(id)a3;
- (void)_setInitialMapRegion;
- (void)setHost:(id)a3;
- (void)setMapRegion:(id)a3;
- (void)setMapViewProvider:(id)a3;
- (void)setRegionSelectorDelegate:(id)a3;
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

- (void)setHost:(id)a3
{
  obj = a3;
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

        v9 = [(OfflineRegionSelectorOverlay *)self regionSelectorDelegate];
        [(OfflineRegionSelectorOverlayView *)self->_overlayView setRegionSelectorDelegate:v9];

        [(OfflineRegionSelectorOverlayView *)self->_overlayView setTranslatesAutoresizingMaskIntoConstraints:0];
        [(OfflineRegionSelectorOverlayView *)self->_overlayView setAccessibilityIdentifier:@"OfflineRegionSelector"];
      }

      v10 = [obj viewportLayoutGuide];
      [(OfflineRegionSelectorOverlayView *)self->_overlayView setViewportLayoutGuide:v10];

      v11 = [obj overlayContentView];
      [v11 addSubview:self->_overlayView];

      v12 = self->_overlayView;
      v13 = [obj overlayContentView];
      LODWORD(v14) = 1148846080;
      v15 = [(OfflineRegionSelectorOverlayView *)v12 _maps_constraintsEqualToEdgesOfView:v13 insets:UIEdgeInsetsZero.top priority:UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right, v14];
      v16 = [v15 allConstraints];
      [NSLayoutConstraint activateConstraints:v16];

      v17 = [obj overlayContentView];
      [v17 layoutIfNeeded];

      [(OfflineRegionSelectorOverlay *)self _setInitialMapRegion];
      v5 = obj;
    }
  }
}

- (GEOMapRegion)currentMapRegion
{
  v3 = [(OfflineRegionSelectorOverlay *)self mapViewProvider];
  v4 = [v3 mapView];
  [(OfflineRegionSelectorOverlayView *)self->_overlayView selectedRectFrame];
  [v4 convertRect:self->_overlayView toMapRectFromView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [[GEOMapRegion alloc] initWithMapRect:{v6, v8, v10, v12}];

  return v13;
}

- (void)setMapRegion:(id)a3
{
  v14 = a3;
  v4 = [(OfflineRegionSelectorOverlay *)self mapViewProvider];
  v5 = [v4 mapView];
  GEOMapRectForMapRegion();
  [v5 convertMapRect:self->_overlayView toRectToView:?];
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
  v5 = [(OfflineRegionSelectorOverlayView *)self->_overlayView viewportLayoutGuide];
  [v5 layoutFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(OfflineRegionSelectorOverlay *)self mapViewProvider];
  v15 = [v14 mapView];
  [v15 centerCoordinate];
  MKMapPointForCoordinate(v33);
  MKMapRectMakeWithZoomLevel();
  v17 = v16;

  if (v4 >= v17)
  {
    v22 = [(OfflineRegionSelectorOverlay *)self mapViewProvider];
    v23 = [v22 mapView];
    GEOMapRectForMapRegion();
    [v23 convertMapRect:self->_overlayView toRectToView:?];
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

- (void)setRegionSelectorDelegate:(id)a3
{
  v4 = a3;
  v5 = objc_loadWeakRetained(&self->_regionSelectorDelegate);
  v6 = v4;
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

- (OfflineRegionSelectorOverlay)initWithRegion:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = OfflineRegionSelectorOverlay;
  v6 = [(OfflineRegionSelectorOverlay *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapRegion, a3);
  }

  return v7;
}

@end