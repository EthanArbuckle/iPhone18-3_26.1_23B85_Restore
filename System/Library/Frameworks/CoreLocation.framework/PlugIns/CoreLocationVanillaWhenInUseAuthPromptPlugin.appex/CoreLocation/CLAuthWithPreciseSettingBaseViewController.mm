@interface CLAuthWithPreciseSettingBaseViewController
- (id)demandCreateLocationManager;
- (id)mapView:(id)view rendererForOverlay:(id)overlay;
- (void)configureMapView;
- (void)loadView;
- (void)mapView:(id)view didUpdateUserLocation:(id)location;
- (void)pillButtonToggled;
- (void)updateMapZoomAccordinglyForPreciseSetting;
- (void)viewWillLayoutSubviews;
@end

@implementation CLAuthWithPreciseSettingBaseViewController

- (void)loadView
{
  v11.receiver = self;
  v11.super_class = CLAuthWithPreciseSettingBaseViewController;
  [(CLAuthBaseViewController *)&v11 loadView];
  [(CLAuthWithPreciseSettingBaseViewController *)self setPillButtonState:0];
  locationDictionary = [(CLAuthBaseViewController *)self locationDictionary];
  v4 = [locationDictionary valueForKey:@"CLAuthPromptShowOnlyHerePill"];
  if ([v4 BOOLValue])
  {
    clientDict = [(CLAuthBaseViewController *)self clientDict];
    v6 = [CLLocationManager interestZonesIdentifierListForLocationDictionary:clientDict];
    v7 = [v6 count];

    if (v7)
    {
      v8 = 3;
      goto LABEL_8;
    }
  }

  else
  {
  }

  clientDict2 = [(CLAuthBaseViewController *)self clientDict];
  v10 = [CLLocationManager correctiveCompensationStatusForLocationDictionary:clientDict2];

  if (v10)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

LABEL_8:
  [(CLAuthWithPreciseSettingBaseViewController *)self setPillButtonState:v8];
  [CLLocationManager updatePillButtonChoiceForOutstandingPrompt:[(CLAuthWithPreciseSettingBaseViewController *)self pillButtonState]];
}

- (void)configureMapView
{
  v5.receiver = self;
  v5.super_class = CLAuthWithPreciseSettingBaseViewController;
  [(CLAuthBaseViewController *)&v5 configureMapView];
  mapView = [(CLAuthBaseViewController *)self mapView];
  [mapView setShowsUserLocation:1];

  mapView2 = [(CLAuthBaseViewController *)self mapView];
  [mapView2 setLayoutMargins:{25.0, 25.0, 25.0, 25.0}];
}

- (void)mapView:(id)view didUpdateUserLocation:(id)location
{
  locationCopy = location;
  location = [locationCopy location];
  [(CLAuthWithPreciseSettingBaseViewController *)self setCurrentLocation:location];

  [(CLAuthWithPreciseSettingBaseViewController *)self updateMapZoomAccordinglyForPreciseSetting];
}

- (void)updateMapZoomAccordinglyForPreciseSetting
{
  mapView = [(CLAuthBaseViewController *)self mapView];
  mapType = [mapView mapType];

  if (mapType == 105)
  {
    mapView2 = [(CLAuthBaseViewController *)self mapView];
    [mapView2 setMapType:0];
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10000396C;
  v24[3] = &unk_10000C1E8;
  v24[4] = self;
  [UIView animateWithDuration:196608 delay:v24 options:0 animations:6.0 completion:0.0];
  if ([(CLAuthWithPreciseSettingBaseViewController *)self pillButtonState]== 1)
  {
    mapView3 = [(CLAuthBaseViewController *)self mapView];
    currentOverlay = [(CLAuthWithPreciseSettingBaseViewController *)self currentOverlay];
    [mapView3 removeOverlay:currentOverlay];

    [(CLAuthWithPreciseSettingBaseViewController *)self setCurrentOverlay:0];
    locManager = [(CLAuthBaseViewController *)self locManager];
    [locManager setDesiredAccuracy:-1.0];
  }

  else if ([(CLAuthWithPreciseSettingBaseViewController *)self pillButtonState]== 2)
  {
    locManager = [(CLAuthBaseViewController *)self locManager];
    [locManager setDesiredAccuracy:6380000.0];
  }

  else
  {
    if ([(CLAuthWithPreciseSettingBaseViewController *)self pillButtonState]!= 3)
    {
      return;
    }

    mapView4 = [(CLAuthBaseViewController *)self mapView];
    currentOverlay2 = [(CLAuthWithPreciseSettingBaseViewController *)self currentOverlay];
    [mapView4 removeOverlay:currentOverlay2];

    currentLocation = [(CLAuthWithPreciseSettingBaseViewController *)self currentLocation];
    [currentLocation coordinate];
    v13 = v12;
    currentLocation2 = [(CLAuthWithPreciseSettingBaseViewController *)self currentLocation];
    [currentLocation2 coordinate];
    v16 = CLLocationCoordinate2DMake(v13, v15);
    locManager = [MKCircle circleWithCenterCoordinate:v16.latitude radius:v16.longitude, 150.0];

    [(CLAuthWithPreciseSettingBaseViewController *)self setCurrentOverlay:locManager];
    mapView5 = [(CLAuthBaseViewController *)self mapView];
    currentOverlay3 = [(CLAuthWithPreciseSettingBaseViewController *)self currentOverlay];
    [mapView5 addOverlay:currentOverlay3];

    locManager2 = [(CLAuthBaseViewController *)self locManager];
    [locManager2 setDesiredAccuracy:-1.0];

    currentLocation3 = [(CLAuthWithPreciseSettingBaseViewController *)self currentLocation];
    [currentLocation3 coordinate];
    v22 = v21;
    currentLocation4 = [(CLAuthWithPreciseSettingBaseViewController *)self currentLocation];
    [currentLocation4 coordinate];
    [CLLocationManager updatePromptedLatitude:v22 longitude:?];
  }
}

- (id)mapView:(id)view rendererForOverlay:(id)overlay
{
  overlayCopy = overlay;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[MKCircleRenderer alloc] initWithCircle:overlayCopy];
    v6 = +[UIColor systemBlackColor];
    v7 = [v6 colorWithAlphaComponent:0.8];
    [v5 setStrokeColor:v7];

    v8 = +[UIColor systemGrayColor];
    v9 = [v8 colorWithAlphaComponent:0.5];
    [v5 setFillColor:v9];

    [v5 setLineWidth:0.5];
    [v5 setLineDashPhase:0.2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)pillButtonToggled
{
  pillButtonState = [(CLAuthWithPreciseSettingBaseViewController *)self pillButtonState];
  locationDictionary = [(CLAuthBaseViewController *)self locationDictionary];
  v5 = [locationDictionary valueForKey:@"CLAuthPromptShowOnlyHerePill"];
  bOOLValue = [v5 BOOLValue];

  if (pillButtonState == 1)
  {
    v7 = 2;
  }

  else if (pillButtonState != 2 || bOOLValue != 1)
  {
    if ((pillButtonState != 2) | bOOLValue & 1)
    {
      v7 = pillButtonState == 3;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 3;
  }

  [(CLAuthWithPreciseSettingBaseViewController *)self setPillButtonState:v7];
  [(CLAuthWithPreciseSettingBaseViewController *)self updateMapZoomAccordinglyForPreciseSetting];
  pillButtonState2 = [(CLAuthWithPreciseSettingBaseViewController *)self pillButtonState];

  [CLLocationManager updatePillButtonChoiceForOutstandingPrompt:pillButtonState2];
}

- (id)demandCreateLocationManager
{
  v2 = [CLLocationManager alloc];
  effectiveBundlePath = [objc_opt_class() effectiveBundlePath];
  v4 = [v2 initWithEffectiveBundlePath:effectiveBundlePath];

  return v4;
}

- (void)viewWillLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = CLAuthWithPreciseSettingBaseViewController;
  [(CLAuthBaseViewController *)&v2 viewWillLayoutSubviews];
}

@end