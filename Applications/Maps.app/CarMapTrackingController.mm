@interface CarMapTrackingController
- (BOOL)canRotateForHeading;
- (BOOL)hasRenderedSomething;
- (BOOL)isCurrentlyRotated;
- (CarMapTrackingControllerDelegate)delegate;
- (int64_t)userTrackingMode;
- (void)_mapViewNotified:(id)notified;
- (void)_setUserTrackingMode:(int64_t)mode animated:(BOOL)animated fromTrackingButton:(BOOL)button;
- (void)dealloc;
- (void)setForcedTrackingMode:(int64_t)mode;
- (void)setMapView:(id)view;
- (void)setUseForcedTrackingMode:(BOOL)mode;
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

- (void)setUseForcedTrackingMode:(BOOL)mode
{
  if (self->_useForcedTrackingMode != mode)
  {
    self->_useForcedTrackingMode = mode;
    if (mode)
    {
      v4 = +[NSNotificationCenter defaultCenter];
      [v4 postNotificationName:MKUserTrackingViewModeDidChangeNotification object:self];

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained trackingController:self changedToForcedTrackingMode:self->_forcedTrackingMode];
    }
  }
}

- (void)setForcedTrackingMode:(int64_t)mode
{
  if (self->_forcedTrackingMode != mode)
  {
    self->_forcedTrackingMode = mode;
    if (self->_useForcedTrackingMode)
    {
      v4 = +[NSNotificationCenter defaultCenter];
      [v4 postNotificationName:MKUserTrackingViewModeDidChangeNotification object:self];

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained trackingController:self changedToForcedTrackingMode:self->_forcedTrackingMode];
    }
  }
}

- (void)_setUserTrackingMode:(int64_t)mode animated:(BOOL)animated fromTrackingButton:(BOOL)button
{
  if (self->_useForcedTrackingMode)
  {
    [(CarMapTrackingController *)self setForcedTrackingMode:mode, animated, button];
  }

  else
  {
    [(MKMapView *)self->_mapView _setUserTrackingMode:mode animated:animated fromTrackingButton:button];
  }

  v6 = +[CarDisplayController sharedInstance];
  chromeViewController = [v6 chromeViewController];
  [chromeViewController setNeedsUpdateMapInsets];
}

- (void)_mapViewNotified:(id)notified
{
  notifiedCopy = notified;
  v7 = +[NSNotificationCenter defaultCenter];
  name = [notifiedCopy name];
  userInfo = [notifiedCopy userInfo];

  [v7 postNotificationName:name object:self userInfo:userInfo];
}

- (void)setMapView:(id)view
{
  viewCopy = view;
  if (self->_mapView)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 removeObserver:self name:MKUserTrackingViewModeDidChangeNotification object:self->_mapView];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 removeObserver:self name:MKUserTrackingViewDidUpdateUserLocationNotification object:self->_mapView];
  }

  objc_storeStrong(&self->_mapView, view);
  if (viewCopy)
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