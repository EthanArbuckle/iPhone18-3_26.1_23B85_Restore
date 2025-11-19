@interface CLAuthWithPreciseSettingBaseViewController
- (id)demandCreateLocationManager;
- (id)mapView:(id)a3 rendererForOverlay:(id)a4;
- (void)configureMapView;
- (void)loadView;
- (void)mapView:(id)a3 didUpdateUserLocation:(id)a4;
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
  v3 = [(CLAuthBaseViewController *)self locationDictionary];
  v4 = [v3 valueForKey:@"CLAuthPromptShowOnlyHerePill"];
  if ([v4 BOOLValue])
  {
    v5 = [(CLAuthBaseViewController *)self clientDict];
    v6 = [CLLocationManager interestZonesIdentifierListForLocationDictionary:v5];
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

  v9 = [(CLAuthBaseViewController *)self clientDict];
  v10 = [CLLocationManager correctiveCompensationStatusForLocationDictionary:v9];

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
  v3 = [(CLAuthBaseViewController *)self mapView];
  [v3 setShowsUserLocation:1];

  v4 = [(CLAuthBaseViewController *)self mapView];
  [v4 setLayoutMargins:{25.0, 25.0, 25.0, 25.0}];
}

- (void)mapView:(id)a3 didUpdateUserLocation:(id)a4
{
  v6 = a4;
  v5 = [v6 location];
  [(CLAuthWithPreciseSettingBaseViewController *)self setCurrentLocation:v5];

  [(CLAuthWithPreciseSettingBaseViewController *)self updateMapZoomAccordinglyForPreciseSetting];
}

- (void)updateMapZoomAccordinglyForPreciseSetting
{
  v3 = [(CLAuthBaseViewController *)self mapView];
  v4 = [v3 mapType];

  if (v4 == 105)
  {
    v5 = [(CLAuthBaseViewController *)self mapView];
    [v5 setMapType:0];
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10000396C;
  v24[3] = &unk_10000C1E8;
  v24[4] = self;
  [UIView animateWithDuration:196608 delay:v24 options:0 animations:6.0 completion:0.0];
  if ([(CLAuthWithPreciseSettingBaseViewController *)self pillButtonState]== 1)
  {
    v6 = [(CLAuthBaseViewController *)self mapView];
    v7 = [(CLAuthWithPreciseSettingBaseViewController *)self currentOverlay];
    [v6 removeOverlay:v7];

    [(CLAuthWithPreciseSettingBaseViewController *)self setCurrentOverlay:0];
    v8 = [(CLAuthBaseViewController *)self locManager];
    [v8 setDesiredAccuracy:-1.0];
  }

  else if ([(CLAuthWithPreciseSettingBaseViewController *)self pillButtonState]== 2)
  {
    v8 = [(CLAuthBaseViewController *)self locManager];
    [v8 setDesiredAccuracy:6380000.0];
  }

  else
  {
    if ([(CLAuthWithPreciseSettingBaseViewController *)self pillButtonState]!= 3)
    {
      return;
    }

    v9 = [(CLAuthBaseViewController *)self mapView];
    v10 = [(CLAuthWithPreciseSettingBaseViewController *)self currentOverlay];
    [v9 removeOverlay:v10];

    v11 = [(CLAuthWithPreciseSettingBaseViewController *)self currentLocation];
    [v11 coordinate];
    v13 = v12;
    v14 = [(CLAuthWithPreciseSettingBaseViewController *)self currentLocation];
    [v14 coordinate];
    v16 = CLLocationCoordinate2DMake(v13, v15);
    v8 = [MKCircle circleWithCenterCoordinate:v16.latitude radius:v16.longitude, 150.0];

    [(CLAuthWithPreciseSettingBaseViewController *)self setCurrentOverlay:v8];
    v17 = [(CLAuthBaseViewController *)self mapView];
    v18 = [(CLAuthWithPreciseSettingBaseViewController *)self currentOverlay];
    [v17 addOverlay:v18];

    v19 = [(CLAuthBaseViewController *)self locManager];
    [v19 setDesiredAccuracy:-1.0];

    v20 = [(CLAuthWithPreciseSettingBaseViewController *)self currentLocation];
    [v20 coordinate];
    v22 = v21;
    v23 = [(CLAuthWithPreciseSettingBaseViewController *)self currentLocation];
    [v23 coordinate];
    [CLLocationManager updatePromptedLatitude:v22 longitude:?];
  }
}

- (id)mapView:(id)a3 rendererForOverlay:(id)a4
{
  v4 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[MKCircleRenderer alloc] initWithCircle:v4];
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
  v3 = [(CLAuthWithPreciseSettingBaseViewController *)self pillButtonState];
  v4 = [(CLAuthBaseViewController *)self locationDictionary];
  v5 = [v4 valueForKey:@"CLAuthPromptShowOnlyHerePill"];
  v6 = [v5 BOOLValue];

  if (v3 == 1)
  {
    v7 = 2;
  }

  else if (v3 != 2 || v6 != 1)
  {
    if ((v3 != 2) | v6 & 1)
    {
      v7 = v3 == 3;
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
  v8 = [(CLAuthWithPreciseSettingBaseViewController *)self pillButtonState];

  [CLLocationManager updatePillButtonChoiceForOutstandingPrompt:v8];
}

- (id)demandCreateLocationManager
{
  v2 = [CLLocationManager alloc];
  v3 = [objc_opt_class() effectiveBundlePath];
  v4 = [v2 initWithEffectiveBundlePath:v3];

  return v4;
}

- (void)viewWillLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = CLAuthWithPreciseSettingBaseViewController;
  [(CLAuthBaseViewController *)&v2 viewWillLayoutSubviews];
}

@end