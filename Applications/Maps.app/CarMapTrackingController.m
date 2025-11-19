@interface CarMapTrackingController
- (BOOL)canRotateForHeading;
- (BOOL)hasRenderedSomething;
- (BOOL)isCurrentlyRotated;
- (CarMapTrackingControllerDelegate)delegate;
- (int64_t)userTrackingMode;
- (void)_mapViewNotified:(id)a3;
- (void)_setUserTrackingMode:(int64_t)a3 animated:(BOOL)a4 fromTrackingButton:(BOOL)a5;
- (void)dealloc;
- (void)setForcedTrackingMode:(int64_t)a3;
- (void)setMapView:(id)a3;
- (void)setUseForcedTrackingMode:(BOOL)a3;
@end

@implementation CarMapTrackingController

- (int64_t)userTrackingMode
{
  if (self->_useForcedTrackingMode)
  {
    return self->_forcedTrackingMode;
  }

  else
  {
    return [(MKMapView *)self->_mapView userTrackingMode];
  }
}

- (CarMapTrackingControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)hasRenderedSomething
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  mapView = self->_mapView;

  return [(MKMapView *)mapView hasRenderedSomething];
}

- (BOOL)isCurrentlyRotated
{
  if (self->_useForcedTrackingMode)
  {
    return 0;
  }

  else
  {
    return [(MKMapView *)self->_mapView isCurrentlyRotated];
  }
}

- (BOOL)canRotateForHeading
{
  if (self->_useForcedTrackingMode)
  {
    return 0;
  }

  else
  {
    return [(MKMapView *)self->_mapView canRotateForHeading];
  }
}

- (void)setUseForcedTrackingMode:(BOOL)a3
{
  if (self->_useForcedTrackingMode != a3)
  {
    self->_useForcedTrackingMode = a3;
    if (a3)
    {
      v4 = +[NSNotificationCenter defaultCenter];
      [v4 postNotificationName:MKUserTrackingViewModeDidChangeNotification object:self];

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained trackingController:self changedToForcedTrackingMode:self->_forcedTrackingMode];
    }
  }
}

- (void)setForcedTrackingMode:(int64_t)a3
{
  if (self->_forcedTrackingMode != a3)
  {
    self->_forcedTrackingMode = a3;
    if (self->_useForcedTrackingMode)
    {
      v4 = +[NSNotificationCenter defaultCenter];
      [v4 postNotificationName:MKUserTrackingViewModeDidChangeNotification object:self];

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained trackingController:self changedToForcedTrackingMode:self->_forcedTrackingMode];
    }
  }
}

- (void)_setUserTrackingMode:(int64_t)a3 animated:(BOOL)a4 fromTrackingButton:(BOOL)a5
{
  if (self->_useForcedTrackingMode)
  {
    [(CarMapTrackingController *)self setForcedTrackingMode:a3, a4, a5];
  }

  else
  {
    [(MKMapView *)self->_mapView _setUserTrackingMode:a3 animated:a4 fromTrackingButton:a5];
  }

  v6 = +[CarDisplayController sharedInstance];
  v5 = [v6 chromeViewController];
  [v5 setNeedsUpdateMapInsets];
}

- (void)_mapViewNotified:(id)a3
{
  v4 = a3;
  v7 = +[NSNotificationCenter defaultCenter];
  v5 = [v4 name];
  v6 = [v4 userInfo];

  [v7 postNotificationName:v5 object:self userInfo:v6];
}

- (void)setMapView:(id)a3
{
  v9 = a3;
  if (self->_mapView)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 removeObserver:self name:MKUserTrackingViewModeDidChangeNotification object:self->_mapView];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 removeObserver:self name:MKUserTrackingViewDidUpdateUserLocationNotification object:self->_mapView];
  }

  objc_storeStrong(&self->_mapView, a3);
  if (v9)
  {
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:self selector:"_mapViewNotified:" name:MKUserTrackingViewModeDidChangeNotification object:self->_mapView];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:self selector:"_mapViewNotified:" name:MKUserTrackingViewDidUpdateUserLocationNotification object:self->_mapView];
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:MKUserTrackingViewModeDidChangeNotification object:self->_mapView];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:MKUserTrackingViewDidUpdateUserLocationNotification object:self->_mapView];

  v5.receiver = self;
  v5.super_class = CarMapTrackingController;
  [(CarMapTrackingController *)&v5 dealloc];
}

@end