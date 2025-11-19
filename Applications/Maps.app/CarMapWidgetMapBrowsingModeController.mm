@interface CarMapWidgetMapBrowsingModeController
- (BOOL)hidesStatusBanner;
- (CarMapWidgetMapBrowsingModeController)init;
- (id)desiredCards;
- (void)_sceneDidBecomeActive:(id)a3;
- (void)_sceneWillEnterForeground:(id)a3;
- (void)applyMapSettingsAndTrackingAnimated:(BOOL)a3;
- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)carDisplayConfigDidChangeNotification:(id)a3;
- (void)configureCard:(id)a3 forKey:(id)a4;
- (void)dealloc;
- (void)preciseLocationOffButtonCard:(id)a3 visibilityUpdated:(BOOL)a4;
- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
@end

@implementation CarMapWidgetMapBrowsingModeController

- (void)carDisplayConfigDidChangeNotification:(id)a3
{
  v3 = [(CarMapWidgetMapBrowsingModeController *)self carChromeViewController];
  [v3 setNeedsUpdateComponent:@"statusBanner" animated:0];
}

- (void)applyMapSettingsAndTrackingAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CarBasicMapBrowsingModeController *)self chromeViewController];
  v6 = [v5 isCurrentContext:self];

  if (v6)
  {
    v13 = [[ChromeMapSettings alloc] initWithType:1 userInterfaceIdiom:3];
    if ([(ChromeMapSettings *)v13 trackingMode])
    {
      v7 = [(ChromeMapSettings *)v13 trackingMode];
    }

    else
    {
      v7 = 2;
    }

    v8 = [(CarBasicMapBrowsingModeController *)self trackingController];
    [v8 setForcedTrackingMode:v7];

    v9 = [(CarBasicMapBrowsingModeController *)self chromeViewController];
    [(ChromeMapSettings *)v13 setDelegate:v9];

    v10 = [(CarBasicMapBrowsingModeController *)self chromeViewController];
    v11 = [v10 mapView];
    [(ChromeMapSettings *)v13 setMapView:v11];

    [(ChromeMapSettings *)v13 setTrackingMode:v7];
    [(CarMapWidgetMapBrowsingModeController *)self setMapSettings:v13];
    v12 = [(CarMapWidgetMapBrowsingModeController *)self mapSettings];
    [v12 applyToMapViewAnimated:v3 duration:0 completion:-1.0];
  }
}

- (void)_sceneDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = sub_10061F220();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v16 = 134349570;
    v17 = self;
    v18 = 2080;
    v19 = "[CarMapWidgetMapBrowsingModeController _sceneDidBecomeActive:]";
    v20 = 2112;
    v21 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] %s:%@", &v16, 0x20u);
  }

  v6 = [v4 object];
  v7 = [(CarBasicMapBrowsingModeController *)self chromeViewController];
  v8 = [v7 _maps_uiScene];

  v9 = sub_10061F220();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v6 == v8)
  {
    if (v10)
    {
      v16 = 134349056;
      v17 = self;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] Our scene became active; reloading map settings", &v16, 0xCu);
    }

    v14 = [(CarMapWidgetMapBrowsingModeController *)self carChromeViewController];
    v15 = [v14 defaultMapSettings];
    [v15 reload];

    [(CarMapWidgetMapBrowsingModeController *)self applyMapSettingsAndTrackingAnimated:0];
  }

  else
  {
    if (v10)
    {
      v11 = [v4 object];
      v12 = [(CarBasicMapBrowsingModeController *)self chromeViewController];
      v13 = [v12 _maps_uiScene];
      v16 = 134349570;
      v17 = self;
      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] Scene active notification was for a different scene (%@ != %@); ignoring", &v16, 0x20u);
    }
  }
}

- (void)_sceneWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = sub_10061F220();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v16 = 134349570;
    v17 = self;
    v18 = 2080;
    v19 = "[CarMapWidgetMapBrowsingModeController _sceneWillEnterForeground:]";
    v20 = 2112;
    v21 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] %s:%@", &v16, 0x20u);
  }

  v6 = [v4 object];
  v7 = [(CarBasicMapBrowsingModeController *)self chromeViewController];
  v8 = [v7 _maps_uiScene];

  v9 = sub_10061F220();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v6 == v8)
  {
    if (v10)
    {
      v16 = 134349056;
      v17 = self;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] Our scene entered the foreground; reloading map settings", &v16, 0xCu);
    }

    v14 = [(CarMapWidgetMapBrowsingModeController *)self carChromeViewController];
    v15 = [v14 defaultMapSettings];
    [v15 reload];

    [(CarMapWidgetMapBrowsingModeController *)self applyMapSettingsAndTrackingAnimated:0];
  }

  else
  {
    if (v10)
    {
      v11 = [v4 object];
      v12 = [(CarBasicMapBrowsingModeController *)self chromeViewController];
      v13 = [v12 _maps_uiScene];
      v16 = 134349570;
      v17 = self;
      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] Scene foreground notification was for a different scene (%@ != %@); ignoring", &v16, 0x20u);
    }
  }
}

- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = CarMapWidgetMapBrowsingModeController;
  v7 = a4;
  [(CarBasicMapBrowsingModeController *)&v13 resignTopContextInChromeViewController:v6 withAnimation:v7];
  v8 = sub_10061F220();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 134349314;
    v15 = self;
    v16 = 2080;
    v17 = "[CarMapWidgetMapBrowsingModeController resignTopContextInChromeViewController:withAnimation:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] %s", buf, 0x16u);
  }

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 removeObserver:self];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10061F680;
  v11[3] = &unk_101661A90;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  [v7 addPreparation:v11];
}

- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v14.receiver = self;
  v14.super_class = CarMapWidgetMapBrowsingModeController;
  v6 = a4;
  [(CarBasicMapBrowsingModeController *)&v14 becomeTopContextInChromeViewController:a3 withAnimation:v6];
  v7 = sub_10061F220();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134349314;
    v16 = self;
    v17 = 2080;
    v18 = "[CarMapWidgetMapBrowsingModeController becomeTopContextInChromeViewController:withAnimation:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] %s", buf, 0x16u);
  }

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 addObserver:self selector:"_sceneWillEnterForeground:" name:UISceneWillEnterForegroundNotification object:0];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 addObserver:self selector:"_sceneDidBecomeActive:" name:UISceneDidActivateNotification object:0];

  v10 = +[NSNotificationCenter defaultCenter];
  [v10 addObserver:self selector:"locationManagerApprovalDidChange:" name:MKLocationManagerApprovalDidChangeNotification object:0];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10061F988;
  v13[3] = &unk_101661B18;
  v13[4] = self;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10061FA04;
  v11[3] = &unk_1016574C0;
  v11[4] = self;
  v12 = [v6 isAnimated];
  [v6 addPreparation:v13 animations:&stru_101624250 completion:v11];
}

- (void)preciseLocationOffButtonCard:(id)a3 visibilityUpdated:(BOOL)a4
{
  v5 = [(CarBasicMapBrowsingModeController *)self chromeViewController:a3];
  v6 = [v5 isCurrentContext:self];

  if (v6)
  {
    v8 = [(CarMapWidgetMapBrowsingModeController *)self carChromeViewController];
    [v8 updateCardsForContext:self animated:1];
  }

  else
  {
    v7 = sub_100006E1C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "mapBrowsing mode tried to update precise location off visibility, but it is not the current mode.", buf, 2u);
    }
  }
}

- (BOOL)hidesStatusBanner
{
  v2 = [(CarMapWidgetMapBrowsingModeController *)self carChromeViewController];
  v3 = [v2 sceneType];
  if (v3 > 6 || ((1 << v3) & 0x72) == 0)
  {

    return 0;
  }

  else
  {

    return +[CarDisplayConfigAuxiliaryTask centerConsoleSceneCount]!= 0;
  }
}

- (void)configureCard:(id)a3 forKey:(id)a4
{
  v15 = a3;
  if ([a4 isEqualToString:@"PreciseLocationOffButton"])
  {
    v6 = [(CarMapWidgetMapBrowsingModeController *)self preciseLocationOffButtonCardController];
    [v15 setContent:v6];

    v7 = objc_alloc_init(CarCardLayout);
    [(CarCardLayout *)v7 setEdgePosition:1];
    [(CarCardLayout *)v7 setCornerPosition:0];
    [(CarCardLayout *)v7 setPrimaryAxis:0];
    [(CarCardLayout *)v7 setPinnedEdges:0];
    [(CarCardLayout *)v7 setPrimaryAxisFillMode:2];
    LODWORD(v8) = 1148846080;
    [(CarCardLayout *)v7 setPrimaryAxisFillModePriority:v8];
    [(CarCardLayout *)v7 setSecondaryAxisFillMode:0];
    LODWORD(v9) = 1.0;
    [(CarCardLayout *)v7 setSecondaryAxisFillModePriority:v9];
    [(CarCardLayout *)v7 setMargins:*&qword_10193E338, *&qword_10193E338, *&qword_10193E338, *&qword_10193E338];
    [(CarCardLayout *)v7 setFlipForRightHandDrive:1];
    v10 = v7;
    v11 = [(CarCardLayout *)v10 primaryAxis];
    v12 = [(CarCardLayout *)v10 cornerPosition];
    if (v11 == 1)
    {
      if (v12 == 4 || [(CarCardLayout *)v10 cornerPosition]== 1 || [(CarCardLayout *)v10 edgePosition]== 2)
      {
        v13 = 8;
      }

      else
      {
        v13 = 0;
      }

      if ([(CarCardLayout *)v10 cornerPosition]== 8 || [(CarCardLayout *)v10 cornerPosition]== 2 || [(CarCardLayout *)v10 edgePosition]== 8)
      {
        v13 |= 2uLL;
      }

      if ([(CarCardLayout *)v10 edgePosition]== 1)
      {
        v13 |= 4uLL;
      }

      v14 = v13 | ([(CarCardLayout *)v10 edgePosition]== 4);
    }

    else
    {
      v14 = v12 == 4 || [(CarCardLayout *)v10 cornerPosition]== 8 || [(CarCardLayout *)v10 edgePosition]== 4;
      if ([(CarCardLayout *)v10 cornerPosition]== 1 || [(CarCardLayout *)v10 cornerPosition]== 2 || [(CarCardLayout *)v10 edgePosition]== 1)
      {
        v14 |= 4uLL;
      }

      if ([(CarCardLayout *)v10 edgePosition]== 2)
      {
        v14 |= 8uLL;
      }

      if ([(CarCardLayout *)v10 edgePosition]== 8)
      {
        v14 |= 2uLL;
      }
    }

    [(CarCardLayout *)v10 setEdgesAffectingMapInsets:v14];
    [(CarCardLayout *)v10 setHorizontallyCenterMapInsets:0];
    [v15 setLayout:v10];

    [v15 setAccessoryType:0];
  }
}

- (id)desiredCards
{
  if ([(CarPreciseLocationOffButtonCardViewController *)self->_preciseLocationOffButtonCardController shouldBeVisible])
  {
    v4 = @"PreciseLocationOffButton";
    v2 = [NSArray arrayWithObjects:&v4 count:1];
  }

  else
  {
    v2 = &__NSArray0__struct;
  }

  return v2;
}

- (void)dealloc
{
  v3 = sub_10061F220();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = CarMapWidgetMapBrowsingModeController;
  [(CarMapWidgetMapBrowsingModeController *)&v4 dealloc];
}

- (CarMapWidgetMapBrowsingModeController)init
{
  v8.receiver = self;
  v8.super_class = CarMapWidgetMapBrowsingModeController;
  v2 = [(CarMapWidgetMapBrowsingModeController *)&v8 init];
  if (v2)
  {
    v3 = sub_10061F220();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v10 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Initializing", buf, 0xCu);
    }

    v4 = [[CarPreciseLocationOffButtonCardViewController alloc] initWithDelegate:v2];
    preciseLocationOffButtonCardController = v2->_preciseLocationOffButtonCardController;
    v2->_preciseLocationOffButtonCardController = v4;

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v2 selector:"carDisplayConfigDidChangeNotification:" name:@"CarDisplayConfigDidChangeNotification" object:0];
  }

  return v2;
}

@end