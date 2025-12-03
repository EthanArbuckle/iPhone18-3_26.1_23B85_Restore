@interface NavigationIntentCapturer
- (NavigationIntentCapturer)initWithMapService:(id)service;
- (void)captureStartNavigationIntent;
- (void)captureUserAction:(int)action;
- (void)mapsSession:(id)session didChangeState:(unint64_t)state;
- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession;
- (void)setNavigationSession:(id)session;
@end

@implementation NavigationIntentCapturer

- (void)mapsSession:(id)session didChangeState:(unint64_t)state
{
  sessionCopy = session;
  navigationSession = [(NavigationIntentCapturer *)self navigationSession];

  if (state == 1 && navigationSession == sessionCopy)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100CA97D4;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession
{
  toSessionCopy = toSession;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = toSessionCopy;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [(NavigationIntentCapturer *)self setNavigationSession:v7];
}

- (void)setNavigationSession:(id)session
{
  sessionCopy = session;
  navigationSession = self->_navigationSession;
  if (navigationSession != sessionCopy)
  {
    v7 = sessionCopy;
    [(NavigationSession *)navigationSession unregisterObserver:self];
    objc_storeStrong(&self->_navigationSession, session);
    [(NavigationSession *)self->_navigationSession registerObserver:self];
    sessionCopy = v7;
  }
}

- (void)captureUserAction:(int)action
{
  v3 = *&action;
  if (action == 9016 || action == 3001)
  {
    navigationSession = [(NavigationIntentCapturer *)self navigationSession];
    configuration = [navigationSession configuration];
    startNavigationDetails = [configuration startNavigationDetails];
    selectedRouteIndex = [startNavigationDetails selectedRouteIndex];
  }

  else
  {
    selectedRouteIndex = 0xFFFFFFFFLL;
  }

  navigationSession2 = [(NavigationIntentCapturer *)self navigationSession];
  sessionInitiator = [navigationSession2 sessionInitiator];

  if (sessionInitiator == 2)
  {
    v15 = +[CarDisplayController sharedInstance];
    chromeViewController = [v15 chromeViewController];
    [chromeViewController captureUserAction:v3 selectedRouteIndex:selectedRouteIndex];
  }

  else
  {
    v15 = [GEORouteDetails routeDetailsWithResultIndex:selectedRouteIndex];
    chromeViewController = [(NavigationIntentCapturer *)self mapService];
    navigationSession3 = [(NavigationIntentCapturer *)self navigationSession];
    currentTransportType = [navigationSession3 currentTransportType];
    if ((currentTransportType - 1) >= 5)
    {
      v14 = 0;
    }

    else
    {
      v14 = (currentTransportType + 300);
    }

    [chromeViewController captureUserAction:v3 onTarget:v14 eventValue:0 routeDetails:v15];
  }
}

- (void)captureStartNavigationIntent
{
  navigationSession = [(NavigationIntentCapturer *)self navigationSession];
  currentRouteCollection = [navigationSession currentRouteCollection];
  currentRoute = [currentRouteCollection currentRoute];

  if ([currentRoute source] != 2 && objc_msgSend(currentRoute, "source") != 3)
  {
    origin = [currentRoute origin];
    destination = [currentRoute destination];
    geoMapItem = [origin geoMapItem];
    v8 = [CLPlacemark placemarkWithGEOMapItem:geoMapItem];

    geoMapItem2 = [destination geoMapItem];
    v10 = [CLPlacemark placemarkWithGEOMapItem:geoMapItem2];

    location = [v8 location];
    [location coordinate];
    if (CLLocationCoordinate2DIsValid(v18))
    {
      location2 = [v10 location];
      [location2 coordinate];
      v13 = CLLocationCoordinate2DIsValid(v19);

      if (!v13)
      {
LABEL_10:

        goto LABEL_11;
      }

      location = [(NavigationIntentCapturer *)self navigationSession];
      configuration = [location configuration];
      if ([configuration isETAOnlyMode])
      {
        v15 = 9016;
      }

      else
      {
        v15 = 3001;
      }

      [(NavigationIntentCapturer *)self captureUserAction:v15];
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (NavigationIntentCapturer)initWithMapService:(id)service
{
  serviceCopy = service;
  v9.receiver = self;
  v9.super_class = NavigationIntentCapturer;
  v6 = [(NavigationIntentCapturer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapService, service);
  }

  return v7;
}

@end