@interface MapViewZoomController
- ($873BFAB23BBB6E2F0B0288ED2F935688)_boundingMapRectForLocation:(id)a3;
- (IOSBasedChromeViewController)chromeViewController;
- (MKMapView)mapView;
- (MapViewZoomController)initWithNavigationDisplay:(id)a3;
- (MapViewZoomControllerDelegate)delegate;
- (double)_horizontalCameraOffset;
- (void)_applyOffsetCameraForOverlay:(BOOL)a3 animated:(BOOL)a4 forced:(BOOL)a5;
- (void)_zoomToDetail:(BOOL)a3 startCameraTracking:(BOOL)a4;
- (void)_zoomToOverview:(BOOL)a3 startCameraTracking:(BOOL)a4;
- (void)dealloc;
- (void)setZoomTo:(unint64_t)a3 startCameraTracking:(BOOL)a4;
- (void)setZoomToTargetWithRect:(id)a3;
- (void)updateCameraForTraits:(id)a3 containerStyle:(unint64_t)a4;
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
  v3 = [(MapViewZoomController *)self chromeViewController];
  v4 = [v3 view];
  [v4 layoutIfNeeded];

  v5 = [(MapViewZoomController *)self chromeViewController];
  [v5 unobscuredMapContentBoundsInContainingView];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v18.origin.x = v7;
  v18.origin.y = v9;
  v18.size.width = v11;
  v18.size.height = v13;
  MidX = CGRectGetMidX(v18);
  v15 = [(MapViewZoomController *)self mapView];
  [v15 frame];
  v16 = MidX - CGRectGetMidX(v19);

  return v16;
}

- (void)_applyOffsetCameraForOverlay:(BOOL)a3 animated:(BOOL)a4 forced:(BOOL)a5
{
  v6 = a4;
  v7 = a3;
  v9 = 0.0;
  if (a3)
  {
    [(MapViewZoomController *)self _horizontalCameraOffset];
    v9 = v10;
  }

  if (a5 || self->_currentCameraOffset != v9)
  {
    self->_currentCameraOffset = v9;
    v11 = &kCAMediaTimingFunctionEaseInEaseOut;
    if (v6)
    {
      v12 = 2.5;
    }

    else
    {
      v12 = 0.0;
    }

    if (!v7)
    {
      v11 = &kCAMediaTimingFunctionDefault;
    }

    v13 = *v11;
    v16 = [(MapViewZoomController *)self mapView];
    v14 = [v16 _mapLayer];
    v15 = [CAMediaTimingFunction functionWithName:v13];

    [v14 setCameraHorizontalOffset:v15 duration:v9 timingFunction:v12];
  }
}

- ($873BFAB23BBB6E2F0B0288ED2F935688)_boundingMapRectForLocation:(id)a3
{
  v4 = a3;
  v5 = [(MapViewZoomController *)self chromeViewController];
  v6 = [v5 routeAnnotationsController];
  [v6 mapRectForRouteRemainingAtLocation:v4];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  UIEdgeInsetsMakeWithEdges();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [(MapViewZoomController *)self mapView];
  [v23 mapRectThatFits:v8 edgePadding:{v10, v12, v14, v16, v18, v20, v22}];
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

- (void)_zoomToOverview:(BOOL)a3 startCameraTracking:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [(MapViewZoomController *)self _applyOffsetCameraForOverlay:1 animated:a3 forced:0];
  if (v4)
  {
    v7 = [(MapViewZoomController *)self navigationDisplay];
    [v7 startMotion:v5];
  }

  v8 = [(MapViewZoomController *)self navigationDisplay];
  [v8 setNavigationCameraMode:1];

  v9 = sub_100798240();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(MapViewZoomController *)self mapView];
    v13 = 136315394;
    v14 = "[MapViewZoomController _zoomToOverview:startCameraTracking:]";
    v15 = 2114;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s, navigationCameraReturnToPuck! on mapView: %{public}@", &v13, 0x16u);
  }

  v11 = [(MapViewZoomController *)self navigationDisplay];
  v12 = [v11 mapView];
  [v12 navigationCameraReturnToPuck];
}

- (void)_zoomToDetail:(BOOL)a3 startCameraTracking:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [(MapViewZoomController *)self _applyOffsetCameraForOverlay:1 animated:a3 forced:0];
  if (v4)
  {
    v7 = [(MapViewZoomController *)self navigationDisplay];
    [v7 startMotion:v5];
  }

  v8 = [(MapViewZoomController *)self navigationDisplay];
  [v8 setNavigationCameraMode:0];

  v9 = sub_100798240();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(MapViewZoomController *)self mapView];
    v13 = 136315394;
    v14 = "[MapViewZoomController _zoomToDetail:startCameraTracking:]";
    v15 = 2114;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s, navigationCameraReturnToPuck! on mapView: %{public}@", &v13, 0x16u);
  }

  v11 = [(MapViewZoomController *)self navigationDisplay];
  v12 = [v11 mapView];
  [v12 navigationCameraReturnToPuck];
}

- (void)updateCameraForTraits:(id)a3 containerStyle:(unint64_t)a4
{
  v9 = a3;
  v6 = (a4 > 7) | (0x1Cu >> a4);
  if (!self->_zoom)
  {
    [(MapViewZoomController *)self _applyOffsetCameraForOverlay:v6 & 1 animated:1 forced:0];
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = [v9 horizontalSizeClass] == 1 && objc_msgSend(v9, "verticalSizeClass") == 1;
    goto LABEL_9;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2;
LABEL_9:
  v8 = [(MapViewZoomController *)self navigationDisplay];
  [v8 setSky:v7];
}

- (void)setZoomToTargetWithRect:(id)a3
{
  var1 = a3.var1.var1;
  var0 = a3.var1.var0;
  v5 = a3.var0.var1;
  v6 = a3.var0.var0;
  self->_zoom = 2;
  v8 = [(MapViewZoomController *)self navigationDisplay];
  [v8 stopCameraMotion];

  v9 = [(MapViewZoomController *)self mapView];
  [v9 animateToVisibleMapRect:1 usingDefaultAnimationDuration:0 completion:{v6, v5, var0, var1}];

  v10 = [(MapViewZoomController *)self delegate];
  [v10 mapViewZoomController:self didChangeMapViewZoom:self->_zoom];
}

- (void)setZoomTo:(unint64_t)a3 startCameraTracking:(BOOL)a4
{
  if (self->_zoom != a3)
  {
    v4 = a4;
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
      if (a3 >= 3)
      {
        v11 = [NSString stringWithFormat:@"MapViewZoom(%lu)", a3];
      }

      else
      {
        v11 = off_10165F240[a3];
      }

      v12 = [(MapViewZoomController *)self mapView];
      *buf = 138544130;
      v15 = v10;
      v16 = 2114;
      v17 = v11;
      v18 = 1024;
      v19 = v4;
      v20 = 2114;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Changing zoom from %{public}@ to %{public}@, startCameraTracking: %d on mapView: %{public}@", buf, 0x26u);
    }

    self->_zoom = a3;
    if (a3 == 2)
    {
      self->_zoom = 0;
    }

    else
    {
      if (a3 == 1)
      {
        [(MapViewZoomController *)self _zoomToOverview:1 startCameraTracking:v4];
LABEL_17:
        v13 = [(MapViewZoomController *)self delegate];
        [v13 mapViewZoomController:self didChangeMapViewZoom:self->_zoom];

        return;
      }

      if (a3)
      {
        goto LABEL_17;
      }
    }

    [(MapViewZoomController *)self _zoomToDetail:1 startCameraTracking:v4];
    goto LABEL_17;
  }
}

- (MKMapView)mapView
{
  v2 = [(MapViewZoomController *)self chromeViewController];
  v3 = [v2 mapView];

  return v3;
}

- (MapViewZoomController)initWithNavigationDisplay:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = MapViewZoomController;
  v6 = [(MapViewZoomController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_navigationDisplay, a3);
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