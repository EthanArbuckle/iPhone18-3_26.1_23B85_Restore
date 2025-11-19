@interface NavigationIntentCapturer
- (NavigationIntentCapturer)initWithMapService:(id)a3;
- (void)captureStartNavigationIntent;
- (void)captureUserAction:(int)a3;
- (void)mapsSession:(id)a3 didChangeState:(unint64_t)a4;
- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5;
- (void)setNavigationSession:(id)a3;
@end

@implementation NavigationIntentCapturer

- (void)mapsSession:(id)a3 didChangeState:(unint64_t)a4
{
  v6 = a3;
  v7 = [(NavigationIntentCapturer *)self navigationSession];

  if (a4 == 1 && v7 == v6)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100CA97D4;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5
{
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [(NavigationIntentCapturer *)self setNavigationSession:v7];
}

- (void)setNavigationSession:(id)a3
{
  v5 = a3;
  navigationSession = self->_navigationSession;
  if (navigationSession != v5)
  {
    v7 = v5;
    [(NavigationSession *)navigationSession unregisterObserver:self];
    objc_storeStrong(&self->_navigationSession, a3);
    [(NavigationSession *)self->_navigationSession registerObserver:self];
    v5 = v7;
  }
}

- (void)captureUserAction:(int)a3
{
  v3 = *&a3;
  if (a3 == 9016 || a3 == 3001)
  {
    v5 = [(NavigationIntentCapturer *)self navigationSession];
    v6 = [v5 configuration];
    v7 = [v6 startNavigationDetails];
    v8 = [v7 selectedRouteIndex];
  }

  else
  {
    v8 = 0xFFFFFFFFLL;
  }

  v9 = [(NavigationIntentCapturer *)self navigationSession];
  v10 = [v9 sessionInitiator];

  if (v10 == 2)
  {
    v15 = +[CarDisplayController sharedInstance];
    v11 = [v15 chromeViewController];
    [v11 captureUserAction:v3 selectedRouteIndex:v8];
  }

  else
  {
    v15 = [GEORouteDetails routeDetailsWithResultIndex:v8];
    v11 = [(NavigationIntentCapturer *)self mapService];
    v12 = [(NavigationIntentCapturer *)self navigationSession];
    v13 = [v12 currentTransportType];
    if ((v13 - 1) >= 5)
    {
      v14 = 0;
    }

    else
    {
      v14 = (v13 + 300);
    }

    [v11 captureUserAction:v3 onTarget:v14 eventValue:0 routeDetails:v15];
  }
}

- (void)captureStartNavigationIntent
{
  v3 = [(NavigationIntentCapturer *)self navigationSession];
  v4 = [v3 currentRouteCollection];
  v16 = [v4 currentRoute];

  if ([v16 source] != 2 && objc_msgSend(v16, "source") != 3)
  {
    v5 = [v16 origin];
    v6 = [v16 destination];
    v7 = [v5 geoMapItem];
    v8 = [CLPlacemark placemarkWithGEOMapItem:v7];

    v9 = [v6 geoMapItem];
    v10 = [CLPlacemark placemarkWithGEOMapItem:v9];

    v11 = [v8 location];
    [v11 coordinate];
    if (CLLocationCoordinate2DIsValid(v18))
    {
      v12 = [v10 location];
      [v12 coordinate];
      v13 = CLLocationCoordinate2DIsValid(v19);

      if (!v13)
      {
LABEL_10:

        goto LABEL_11;
      }

      v11 = [(NavigationIntentCapturer *)self navigationSession];
      v14 = [v11 configuration];
      if ([v14 isETAOnlyMode])
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

- (NavigationIntentCapturer)initWithMapService:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NavigationIntentCapturer;
  v6 = [(NavigationIntentCapturer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapService, a3);
  }

  return v7;
}

@end