@interface SettingsController
- (BOOL)canToggleLabels;
- (BOOL)canToggleTraffic;
- (BOOL)in3DMode;
- (BOOL)showsLabels;
- (BOOL)showsTraffic;
- (IOSBasedChromeViewController)chrome;
- (MKMapAttribution)mapAttribution;
- (SettingsController)init;
- (int64_t)bestMapViewModeForViewMode:(int64_t)a3 ignoringLabelPreference:(BOOL)a4;
- (int64_t)mapViewMode;
- (int64_t)selectedViewMode;
- (void)_offlineStateChanged;
- (void)_openURL:(id)a3;
- (void)_userDefaultsDidChange;
- (void)presentAttributions;
- (void)proceedToEnvironmentsSelector;
- (void)setMapViewMode:(int64_t)a3 animated:(BOOL)a4;
- (void)setSelectedViewMode:(int64_t)a3 animated:(BOOL)a4;
- (void)setUserDesiresLabels:(BOOL)a3 shouldForceUpdateMapViewDisplayOptions:(BOOL)a4;
- (void)setUserDesiresTraffic:(BOOL)a3 shouldForceUpdateMapViewDisplayOptions:(BOOL)a4;
- (void)toggleAirQualityIndex;
- (void)toggleLabels;
- (void)toggleTraffic;
- (void)toggleWeather;
@end

@implementation SettingsController

- (SettingsController)init
{
  v7.receiver = self;
  v7.super_class = SettingsController;
  v2 = [(SettingsController *)&v7 init];
  if (v2)
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v2->_showsEnvironments = [v3 BOOLForKey:@"ShowEnvironmentInfoInSettings"];

    v2->_showsRadarComposer = 1;
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"_userDefaultsDidChange" name:NSUserDefaultsDidChangeNotification object:0];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v2 selector:"_offlineStateChanged" name:@"UsingOfflineMapsStateChangedNotification" object:0];
  }

  return v2;
}

- (void)_userDefaultsDidChange
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 BOOLForKey:@"ShowEnvironmentInfoInSettings"];

  showsEnvironments = self->_showsEnvironments;
  self->_showsEnvironments = v4;
  if (showsEnvironments != v4)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 postNotificationName:@"SettingsControllerDidChange" object:self];
  }
}

- (int64_t)bestMapViewModeForViewMode:(int64_t)a3 ignoringLabelPreference:(BOOL)a4
{
  v4 = a4;
  v7 = [(SettingsController *)self userDesiresLabels];
  if (v4)
  {
    v8 = (a3 & 0xFFFFFFFFFFFFFFFBLL) == 1;
  }

  else
  {
    v8 = v7;
  }

  if ([objc_opt_class() deviceSupportsGlobe])
  {
    v9 = 1;
  }

  else
  {
    v9 = [(SettingsController *)self in3DMode];
  }

  v10 = 0;
  if (a3 <= 7 && a3 != 4)
  {
    v11 = 1;
    if (!v8)
    {
      v11 = 2;
    }

    v12 = 5;
    if (!v8)
    {
      v12 = 6;
    }

    if (v9)
    {
      v11 = v12;
    }

    if (((a3 - 1) & 0xFFFFFFFFFFFFFFFALL) != 0)
    {
      return a3;
    }

    else
    {
      return v11;
    }
  }

  return v10;
}

- (void)setSelectedViewMode:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  if (a3 > 7)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_101215550[a3];
  }

  if (((v6 - 1) & 0xFFFFFFFFFFFFFFFALL) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 2;
  }

  [MapsSettings setSelectedViewMode:v7];
  v8 = [(SettingsController *)self bestMapViewModeForViewMode:v7];
  v9 = sub_100798408();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (v7 < 8 && ((0xEFu >> v7) & 1) != 0)
    {
      v10 = off_10164CC58[v7];
    }

    else
    {
      v10 = [NSString stringWithFormat:@"<Unknown: %ld>", v7];
    }

    v11 = v10;
    v12 = v8 + 1;
    if (v8 + 1) < 9 && ((0x1DFu >> v12))
    {
      v13 = off_10164CC98[v12];
    }

    else
    {
      v13 = [NSString stringWithFormat:@"<Unknown: %ld>", v8];
    }

    *buf = 138543618;
    v15 = v11;
    v16 = 2114;
    v17 = v13;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Selected view mode was %{public}@; setting best view mode %{public}@", buf, 0x16u);
  }

  [(SettingsController *)self setMapViewMode:v8 animated:v4];
}

- (int64_t)selectedViewMode
{
  v2 = [(SettingsController *)self mapViewMode];
  if (v2 > 7)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_101215550[v2];
  }

  if (((v3 - 1) & 0xFFFFFFFFFFFFFFFALL) != 0)
  {
    return v3;
  }

  else
  {
    return 2;
  }
}

- (void)setMapViewMode:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  self->_userRequestingViewModeChange = 1;
  v7 = [(SettingsController *)self chrome];
  v8 = [v7 topIOSBasedContext];

  v9 = objc_opt_respondsToSelector();
  v10 = sub_100798408();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v11)
    {
      v12 = a3 + 1;
      if (a3 + 1) < 9 && ((0x1DFu >> v12))
      {
        v13 = off_10164CC98[v12];
      }

      else
      {
        v13 = [NSString stringWithFormat:@"<Unknown: %ld>", a3];
      }

      *buf = 138543618;
      v19 = v13;
      v20 = 2114;
      v21 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Updating view mode to %{public}@ on context %{public}@", buf, 0x16u);
    }

    [v8 updateViewMode:a3 animated:v4];
  }

  else
  {
    if (v11)
    {
      v14 = a3 + 1;
      if (a3 + 1) < 9 && ((0x1DFu >> v14))
      {
        v15 = off_10164CC98[v14];
      }

      else
      {
        v15 = [NSString stringWithFormat:@"<Unknown: %ld>", a3];
      }

      v16 = [(SettingsController *)self chrome];
      *buf = 138543618;
      v19 = v15;
      v20 = 2114;
      v21 = v16;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Updating view mode to %{public}@ on chrome %{public}@", buf, 0x16u);
    }

    v17 = [(SettingsController *)self chrome];
    [v17 updateViewMode:a3 animated:v4];
  }

  self->_userRequestingViewModeChange = 0;
}

- (int64_t)mapViewMode
{
  v2 = [(SettingsController *)self chrome];
  v3 = [v2 displayedViewMode];

  return v3;
}

- (BOOL)in3DMode
{
  v3 = [(SettingsController *)self chrome];
  v4 = [v3 mapView];
  if ([v4 _canEnter3DMode])
  {
    v5 = [(SettingsController *)self chrome];
    v6 = [v5 mapView];
    v7 = [v6 _isPitched];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setUserDesiresTraffic:(BOOL)a3 shouldForceUpdateMapViewDisplayOptions:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(SettingsController *)self userDesiresTraffic]== a3)
  {
    if (!v4)
    {
      return;
    }
  }

  else
  {
    [MapsSettings setUserDesiresTraffic:v5];
  }

  v7 = [(SettingsController *)self chrome];
  [v7 updateMapViewDisplayOptions];
}

- (void)setUserDesiresLabels:(BOOL)a3 shouldForceUpdateMapViewDisplayOptions:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(SettingsController *)self userDesiresLabels]== a3)
  {
    if (!v4)
    {
      return;
    }
  }

  else
  {
    [MapsSettings setUserDesiresLabels:v5];
  }

  v7 = [(SettingsController *)self chrome];
  [v7 updateMapViewDisplayOptions];
}

- (void)presentAttributions
{
  v3 = [(SettingsController *)self mapAttribution];
  v4 = [v3 plainTextFileURL];
  if (GEOConfigGetBOOL() && v4 && (+[GEONetworkObserver sharedNetworkObserver](GEONetworkObserver, "sharedNetworkObserver"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isNetworkReachable], v5, (v6 & 1) == 0))
  {
    v8 = sub_100798408();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Attempting to present attribution details, but network is offline. Presenting cached plain-text version instead", v12, 2u);
    }

    v9 = [(SettingsController *)self chrome];
    v10 = [v9 appCoordinator];
    v11 = [v10 baseActionCoordinator];

    [v11 viewController:0 openPlainTextFileURL:v4];
  }

  else
  {
    v7 = [v3 url];
    if (v7)
    {
      [(SettingsController *)self _openURL:v7];
    }
  }
}

- (void)_openURL:(id)a3
{
  v4 = a3;
  v5 = [(SettingsController *)self chrome];
  v6 = [v5 appCoordinator];
  v7 = [v6 baseActionCoordinator];

  [v7 viewController:0 openURL:v4];
}

- (void)proceedToEnvironmentsSelector
{
  v2 = [UINavigationController alloc];
  v3 = [[EnvironmentsViewController alloc] initWithStyle:1];
  v5 = [v2 initWithRootViewController:v3];

  v4 = +[UIApplication sharedMapsDelegate];
  [v4 presentViewController:v5 animated:1];
}

- (BOOL)canToggleTraffic
{
  v2 = [(SettingsController *)self chrome];
  v3 = [v2 displayedViewMode];

  return ((v3 - 1) & 0xFFFFFFFFFFFFFFFALL) == 0;
}

- (BOOL)canToggleLabels
{
  v2 = [(SettingsController *)self chrome];
  v3 = [v2 displayedViewMode];

  return ((v3 - 1) & 0xFFFFFFFFFFFFFFFALL) == 0;
}

- (MKMapAttribution)mapAttribution
{
  v3 = +[UITraitCollection _currentTraitCollection];
  v4 = [(SettingsController *)self chrome];
  v5 = [v4 traitCollection];
  [UITraitCollection _setCurrentTraitCollection:v5];

  v6 = [(SettingsController *)self chrome];
  v7 = [v6 mapView];
  v13[0] = NSFontAttributeName;
  v8 = +[UIFont system11];
  v14[0] = v8;
  v13[1] = NSForegroundColorAttributeName;
  v9 = +[UIColor labelColor];
  v14[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  v11 = [v7 mapAttributionWithStringAttributes:v10 underlineText:1];

  [UITraitCollection _setCurrentTraitCollection:v3];

  return v11;
}

- (void)toggleAirQualityIndex
{
  v2 = [(SettingsController *)self showsAirQualityIndex]^ 1;

  [MapsSettings setShowsAirQualityIndex:v2];
}

- (void)toggleWeather
{
  v2 = [(SettingsController *)self showsWeather]^ 1;

  [MapsSettings setShowsWeather:v2];
}

- (void)toggleTraffic
{
  if ([(SettingsController *)self canToggleTraffic])
  {
    v3 = [(SettingsController *)self showsLabels];
    v4 = [(SettingsController *)self showsTraffic];
    [(SettingsController *)self setShouldChangeViewModeForTraffic:1];
    [(SettingsController *)self setShowsTraffic:v4 ^ 1];
    [(SettingsController *)self setShouldChangeViewModeForTraffic:0];
    if ((v4 & 1) == 0 && (v3 & 1) == 0)
    {

      [(SettingsController *)self setShowsLabels:1];
    }
  }
}

- (void)toggleLabels
{
  if ([(SettingsController *)self canToggleLabels])
  {
    v3 = [(SettingsController *)self showsLabels];
    [(SettingsController *)self setShouldChangeViewModeForLabels:1];
    [(SettingsController *)self setShowsLabels:v3 ^ 1];

    [(SettingsController *)self setShouldChangeViewModeForLabels:0];
  }
}

- (BOOL)showsTraffic
{
  v2 = [(SettingsController *)self chrome];
  v3 = [v2 mapView];
  v4 = [v3 showsTraffic];

  return v4;
}

- (BOOL)showsLabels
{
  v2 = [(SettingsController *)self chrome];
  v3 = [v2 displayedViewMode];

  return (v3 + 1 < 9) & (0x157u >> (v3 + 1));
}

- (void)_offlineStateChanged
{
  v4 = +[MapsOfflineUIHelper sharedHelper];
  if ([v4 isUsingOfflineMaps])
  {
    v3 = [(SettingsController *)self selectedViewMode];

    if (v3 == 2)
    {

      [(SettingsController *)self setMapViewMode:0 animated:0];
    }
  }

  else
  {
  }
}

- (IOSBasedChromeViewController)chrome
{
  WeakRetained = objc_loadWeakRetained(&self->_chrome);

  return WeakRetained;
}

@end