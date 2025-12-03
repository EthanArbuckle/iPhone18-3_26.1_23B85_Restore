@interface MapViewZoomController
- ($873BFAB23BBB6E2F0B0288ED2F935688)_boundingMapRectForLocation:(id)location;
- (IOSBasedChromeViewController)chromeViewController;
- (MKMapView)mapView;
- (MapViewZoomController)initWithNavigationDisplay:(id)display;
- (MapViewZoomControllerDelegate)delegate;
- (double)_horizontalCameraOffset;
- (void)_applyOffsetCameraForOverlay:(BOOL)overlay animated:(BOOL)animated forced:(BOOL)forced;
- (void)_zoomToDetail:(BOOL)detail startCameraTracking:(BOOL)tracking;
- (void)_zoomToOverview:(BOOL)overview startCameraTracking:(BOOL)tracking;
- (void)dealloc;
- (void)setZoomTo:(unint64_t)to startCameraTracking:(BOOL)tracking;
- (void)setZoomToTargetWithRect:(id)rect;
- (void)updateCameraForTraits:(id)traits containerStyle:(unint64_t)style;
@end

@implementation MapViewZoomController

- (IOSBasedChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (MapViewZoomControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (double)_horizontalCameraOffset
{
  chromeViewController = [(MapViewZoomController *)self chromeViewController];
  view = [chromeViewController view];
  [view layoutIfNeeded];

  chromeViewController2 = [(MapViewZoomController *)self chromeViewController];
  [chromeViewController2 unobscuredMapContentBoundsInContainingView];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v18.origin.x = v7;
  v18.origin.y = v9;
  v18.size.width = v11;
  v18.size.height = v13;
  MidX = CGRectGetMidX(v18);
  mapView = [(MapViewZoomController *)self mapView];
  [mapView frame];
  v16 = MidX - CGRectGetMidX(v19);

  return v16;
}

- (void)_applyOffsetCameraForOverlay:(BOOL)overlay animated:(BOOL)animated forced:(BOOL)forced
{
  animatedCopy = animated;
  overlayCopy = overlay;
  v9 = 0.0;
  if (overlay)
  {
    [(MapViewZoomController *)self _horizontalCameraOffset];
    v9 = v10;
  }

  if (forced || self->_currentCameraOffset != v9)
  {
    self->_currentCameraOffset = v9;
    v11 = &kCAMediaTimingFunctionEaseInEaseOut;
    if (animatedCopy)
    {
      v12 = 2.5;
    }

    else
    {
      v12 = 0.0;
    }

    if (!overlayCopy)
    {
      v11 = &kCAMediaTimingFunctionDefault;
    }

    v13 = *v11;
    mapView = [(MapViewZoomController *)self mapView];
    _mapLayer = [mapView _mapLayer];
    v15 = [CAMediaTimingFunction functionWithName:v13];

    [_mapLayer setCameraHorizontalOffset:v15 duration:v9 timingFunction:v12];
  }
}

- ($873BFAB23BBB6E2F0B0288ED2F935688)_boundingMapRectForLocation:(id)location
{
  locationCopy = location;
  chromeViewController = [(MapViewZoomController *)self chromeViewController];
  routeAnnotationsController = [chromeViewController routeAnnotationsController];
  [routeAnnotationsController mapRectForRouteRemainingAtLocation:locationCopy];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  UIEdgeInsetsMakeWithEdges();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  mapView = [(MapViewZoomController *)self mapView];
  [mapView mapRectThatFits:v8 edgePadding:{v10, v12, v14, v16, v18, v20, v22}];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = v25;
  v33 = v27;
  v34 = v29;
  v35 = v31;
  result.var1.var1 = v35;
  result.var1.var0 = v34;
  result.var0.var1 = v33;
  result.var0.var0 = v32;
  return result;
}

- (void)_zoomToOverview:(BOOL)overview startCameraTracking:(BOOL)tracking
{
  trackingCopy = tracking;
  overviewCopy = overview;
  [(MapViewZoomController *)self _applyOffsetCameraForOverlay:1 animated:overview forced:0];
  if (trackingCopy)
  {
    navigationDisplay = [(MapViewZoomController *)self navigationDisplay];
    [navigationDisplay startMotion:overviewCopy];
  }

  navigationDisplay2 = [(MapViewZoomController *)self navigationDisplay];
  [navigationDisplay2 setNavigationCameraMode:1];

  v9 = sub_100798240();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    mapView = [(MapViewZoomController *)self mapView];
    v13 = 136315394;
    v14 = "[MapViewZoomController _zoomToOverview:startCameraTracking:]";
    v15 = 2114;
    v16 = mapView;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s, navigationCameraReturnToPuck! on mapView: %{public}@", &v13, 0x16u);
  }

  navigationDisplay3 = [(MapViewZoomController *)self navigationDisplay];
  mapView2 = [navigationDisplay3 mapView];
  [mapView2 navigationCameraReturnToPuck];
}

- (void)_zoomToDetail:(BOOL)detail startCameraTracking:(BOOL)tracking
{
  trackingCopy = tracking;
  detailCopy = detail;
  [(MapViewZoomController *)self _applyOffsetCameraForOverlay:1 animated:detail forced:0];
  if (trackingCopy)
  {
    navigationDisplay = [(MapViewZoomController *)self navigationDisplay];
    [navigationDisplay startMotion:detailCopy];
  }

  navigationDisplay2 = [(MapViewZoomController *)self navigationDisplay];
  [navigationDisplay2 setNavigationCameraMode:0];

  v9 = sub_100798240();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    mapView = [(MapViewZoomController *)self mapView];
    v13 = 136315394;
    v14 = "[MapViewZoomController _zoomToDetail:startCameraTracking:]";
    v15 = 2114;
    v16 = mapView;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s, navigationCameraReturnToPuck! on mapView: %{public}@", &v13, 0x16u);
  }

  navigationDisplay3 = [(MapViewZoomController *)self navigationDisplay];
  mapView2 = [navigationDisplay3 mapView];
  [mapView2 navigationCameraReturnToPuck];
}

- (void)updateCameraForTraits:(id)traits containerStyle:(unint64_t)style
{
  traitsCopy = traits;
  v6 = (style > 7) | (0x1Cu >> style);
  if (!self->_zoom)
  {
    [(MapViewZoomController *)self _applyOffsetCameraForOverlay:v6 & 1 animated:1 forced:0];
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = [traitsCopy horizontalSizeClass] == 1 && objc_msgSend(traitsCopy, "verticalSizeClass") == 1;
    goto LABEL_9;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2;
LABEL_9:
  navigationDisplay = [(MapViewZoomController *)self navigationDisplay];
  [navigationDisplay setSky:v7];
}

- (void)setZoomToTargetWithRect:(id)rect
{
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v5 = rect.var0.var1;
  v6 = rect.var0.var0;
  self->_zoom = 2;
  navigationDisplay = [(MapViewZoomController *)self navigationDisplay];
  [navigationDisplay stopCameraMotion];

  mapView = [(MapViewZoomController *)self mapView];
  [mapView animateToVisibleMapRect:1 usingDefaultAnimationDuration:0 completion:{v6, v5, var0, var1}];

  delegate = [(MapViewZoomController *)self delegate];
  [delegate mapViewZoomController:self didChangeMapViewZoom:self->_zoom];
}

- (void)setZoomTo:(unint64_t)to startCameraTracking:(BOOL)tracking
{
  if (self->_zoom != to)
  {
    trackingCopy = tracking;
    v7 = sub_100798240();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      zoom = self->_zoom;
      if (zoom >= 3)
      {
        v9 = [NSString stringWithFormat:@"MapViewZoom(%lu)", self->_zoom];
      }

      else
      {
        v9 = off_10165F240[zoom];
      }

      v10 = v9;
      if (to >= 3)
      {
        v11 = [NSString stringWithFormat:@"MapViewZoom(%lu)", to];
      }

      else
      {
        v11 = off_10165F240[to];
      }

      mapView = [(MapViewZoomController *)self mapView];
      *buf = 138544130;
      v15 = v10;
      v16 = 2114;
      v17 = v11;
      v18 = 1024;
      v19 = trackingCopy;
      v20 = 2114;
      v21 = mapView;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Changing zoom from %{public}@ to %{public}@, startCameraTracking: %d on mapView: %{public}@", buf, 0x26u);
    }

    self->_zoom = to;
    if (to == 2)
    {
      self->_zoom = 0;
    }

    else
    {
      if (to == 1)
      {
        [(MapViewZoomController *)self _zoomToOverview:1 startCameraTracking:trackingCopy];
LABEL_17:
        delegate = [(MapViewZoomController *)self delegate];
        [delegate mapViewZoomController:self didChangeMapViewZoom:self->_zoom];

        return;
      }

      if (to)
      {
        goto LABEL_17;
      }
    }

    [(MapViewZoomController *)self _zoomToDetail:1 startCameraTracking:trackingCopy];
    goto LABEL_17;
  }
}

- (MKMapView)mapView
{
  chromeViewController = [(MapViewZoomController *)self chromeViewController];
  mapView = [chromeViewController mapView];

  return mapView;
}

- (MapViewZoomController)initWithNavigationDisplay:(id)display
{
  displayCopy = display;
  v10.receiver = self;
  v10.super_class = MapViewZoomController;
  v6 = [(MapViewZoomController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_navigationDisplay, display);
    v8 = +[MNNavigationService sharedService];
    [v8 registerObserver:v7];
  }

  return v7;
}

- (void)dealloc
{
  [(MapViewZoomController *)self _applyOffsetCameraForOverlay:0 animated:0 forced:1];
  v3 = +[MNNavigationService sharedService];
  [v3 unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = MapViewZoomController;
  [(MapViewZoomController *)&v4 dealloc];
}

@end