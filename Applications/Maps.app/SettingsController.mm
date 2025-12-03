@interface SettingsController
- (BOOL)canToggleLabels;
- (BOOL)canToggleTraffic;
- (BOOL)in3DMode;
- (BOOL)showsLabels;
- (BOOL)showsTraffic;
- (IOSBasedChromeViewController)chrome;
- (MKMapAttribution)mapAttribution;
- (SettingsController)init;
- (int64_t)bestMapViewModeForViewMode:(int64_t)mode ignoringLabelPreference:(BOOL)preference;
- (int64_t)mapViewMode;
- (int64_t)selectedViewMode;
- (void)_offlineStateChanged;
- (void)_openURL:(id)l;
- (void)_userDefaultsDidChange;
- (void)presentAttributions;
- (void)proceedToEnvironmentsSelector;
- (void)setMapViewMode:(int64_t)mode animated:(BOOL)animated;
- (void)setSelectedViewMode:(int64_t)mode animated:(BOOL)animated;
- (void)setUserDesiresLabels:(BOOL)labels shouldForceUpdateMapViewDisplayOptions:(BOOL)options;
- (void)setUserDesiresTraffic:(BOOL)traffic shouldForceUpdateMapViewDisplayOptions:(BOOL)options;
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

- (int64_t)bestMapViewModeForViewMode:(int64_t)mode ignoringLabelPreference:(BOOL)preference
{
  preferenceCopy = preference;
  userDesiresLabels = [(SettingsController *)self userDesiresLabels];
  if (preferenceCopy)
  {
    v8 = (mode & 0xFFFFFFFFFFFFFFFBLL) == 1;
  }

  else
  {
    v8 = userDesiresLabels;
  }

  if ([objc_opt_class() deviceSupportsGlobe])
  {
    in3DMode = 1;
  }

  else
  {
    in3DMode = [(SettingsController *)self in3DMode];
  }

  v10 = 0;
  if (mode <= 7 && mode != 4)
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

    if (in3DMode)
    {
      v11 = v12;
    }

    if (((mode - 1) & 0xFFFFFFFFFFFFFFFALL) != 0)
    {
      return mode;
    }

    else
    {
      return v11;
    }
  }

  return v10;
}

- (void)setSelectedViewMode:(int64_t)mode animated:(BOOL)animated
{
  animatedCopy = animated;
  if (mode > 7)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_101215550[mode];
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

  [(SettingsController *)self setMapViewMode:v8 animated:animatedCopy];
}

- (int64_t)selectedViewMode
{
  mapViewMode = [(SettingsController *)self mapViewMode];
  if (mapViewMode > 7)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_101215550[mapViewMode];
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

- (void)setMapViewMode:(int64_t)mode animated:(BOOL)animated
{
  animatedCopy = animated;
  self->_userRequestingViewModeChange = 1;
  chrome = [(SettingsController *)self chrome];
  topIOSBasedContext = [chrome topIOSBasedContext];

  v9 = objc_opt_respondsToSelector();
  v10 = sub_100798408();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v11)
    {
      v12 = mode + 1;
      if (mode + 1) < 9 && ((0x1DFu >> v12))
      {
        mode = off_10164CC98[v12];
      }

      else
      {
        mode = [NSString stringWithFormat:@"<Unknown: %ld>", mode];
      }

      *buf = 138543618;
      v19 = mode;
      v20 = 2114;
      v21 = topIOSBasedContext;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Updating view mode to %{public}@ on context %{public}@", buf, 0x16u);
    }

    [topIOSBasedContext updateViewMode:mode animated:animatedCopy];
  }

  else
  {
    if (v11)
    {
      v14 = mode + 1;
      if (mode + 1) < 9 && ((0x1DFu >> v14))
      {
        mode2 = off_10164CC98[v14];
      }

      else
      {
        mode2 = [NSString stringWithFormat:@"<Unknown: %ld>", mode];
      }

      chrome2 = [(SettingsController *)self chrome];
      *buf = 138543618;
      v19 = mode2;
      v20 = 2114;
      v21 = chrome2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Updating view mode to %{public}@ on chrome %{public}@", buf, 0x16u);
    }

    chrome3 = [(SettingsController *)self chrome];
    [chrome3 updateViewMode:mode animated:animatedCopy];
  }

  self->_userRequestingViewModeChange = 0;
}

- (int64_t)mapViewMode
{
  chrome = [(SettingsController *)self chrome];
  displayedViewMode = [chrome displayedViewMode];

  return displayedViewMode;
}

- (BOOL)in3DMode
{
  chrome = [(SettingsController *)self chrome];
  mapView = [chrome mapView];
  if ([mapView _canEnter3DMode])
  {
    chrome2 = [(SettingsController *)self chrome];
    mapView2 = [chrome2 mapView];
    _isPitched = [mapView2 _isPitched];
  }

  else
  {
    _isPitched = 0;
  }

  return _isPitched;
}

- (void)setUserDesiresTraffic:(BOOL)traffic shouldForceUpdateMapViewDisplayOptions:(BOOL)options
{
  optionsCopy = options;
  trafficCopy = traffic;
  if ([(SettingsController *)self userDesiresTraffic]== traffic)
  {
    if (!optionsCopy)
    {
      return;
    }
  }

  else
  {
    [MapsSettings setUserDesiresTraffic:trafficCopy];
  }

  chrome = [(SettingsController *)self chrome];
  [chrome updateMapViewDisplayOptions];
}

- (void)setUserDesiresLabels:(BOOL)labels shouldForceUpdateMapViewDisplayOptions:(BOOL)options
{
  optionsCopy = options;
  labelsCopy = labels;
  if ([(SettingsController *)self userDesiresLabels]== labels)
  {
    if (!optionsCopy)
    {
      return;
    }
  }

  else
  {
    [MapsSettings setUserDesiresLabels:labelsCopy];
  }

  chrome = [(SettingsController *)self chrome];
  [chrome updateMapViewDisplayOptions];
}

- (void)presentAttributions
{
  mapAttribution = [(SettingsController *)self mapAttribution];
  plainTextFileURL = [mapAttribution plainTextFileURL];
  if (GEOConfigGetBOOL() && plainTextFileURL && (+[GEONetworkObserver sharedNetworkObserver](GEONetworkObserver, "sharedNetworkObserver"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isNetworkReachable], v5, (v6 & 1) == 0))
  {
    v8 = sub_100798408();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Attempting to present attribution details, but network is offline. Presenting cached plain-text version instead", v12, 2u);
    }

    chrome = [(SettingsController *)self chrome];
    appCoordinator = [chrome appCoordinator];
    baseActionCoordinator = [appCoordinator baseActionCoordinator];

    [baseActionCoordinator viewController:0 openPlainTextFileURL:plainTextFileURL];
  }

  else
  {
    v7 = [mapAttribution url];
    if (v7)
    {
      [(SettingsController *)self _openURL:v7];
    }
  }
}

- (void)_openURL:(id)l
{
  lCopy = l;
  chrome = [(SettingsController *)self chrome];
  appCoordinator = [chrome appCoordinator];
  baseActionCoordinator = [appCoordinator baseActionCoordinator];

  [baseActionCoordinator viewController:0 openURL:lCopy];
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
  chrome = [(SettingsController *)self chrome];
  displayedViewMode = [chrome displayedViewMode];

  return ((displayedViewMode - 1) & 0xFFFFFFFFFFFFFFFALL) == 0;
}

- (BOOL)canToggleLabels
{
  chrome = [(SettingsController *)self chrome];
  displayedViewMode = [chrome displayedViewMode];

  return ((displayedViewMode - 1) & 0xFFFFFFFFFFFFFFFALL) == 0;
}

- (MKMapAttribution)mapAttribution
{
  v3 = +[UITraitCollection _currentTraitCollection];
  chrome = [(SettingsController *)self chrome];
  traitCollection = [chrome traitCollection];
  [UITraitCollection _setCurrentTraitCollection:traitCollection];

  chrome2 = [(SettingsController *)self chrome];
  mapView = [chrome2 mapView];
  v13[0] = NSFontAttributeName;
  v8 = +[UIFont system11];
  v14[0] = v8;
  v13[1] = NSForegroundColorAttributeName;
  v9 = +[UIColor labelColor];
  v14[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  v11 = [mapView mapAttributionWithStringAttributes:v10 underlineText:1];

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
    showsLabels = [(SettingsController *)self showsLabels];
    showsTraffic = [(SettingsController *)self showsTraffic];
    [(SettingsController *)self setShouldChangeViewModeForTraffic:1];
    [(SettingsController *)self setShowsTraffic:showsTraffic ^ 1];
    [(SettingsController *)self setShouldChangeViewModeForTraffic:0];
    if ((showsTraffic & 1) == 0 && (showsLabels & 1) == 0)
    {

      [(SettingsController *)self setShowsLabels:1];
    }
  }
}

- (void)toggleLabels
{
  if ([(SettingsController *)self canToggleLabels])
  {
    showsLabels = [(SettingsController *)self showsLabels];
    [(SettingsController *)self setShouldChangeViewModeForLabels:1];
    [(SettingsController *)self setShowsLabels:showsLabels ^ 1];

    [(SettingsController *)self setShouldChangeViewModeForLabels:0];
  }
}

- (BOOL)showsTraffic
{
  chrome = [(SettingsController *)self chrome];
  mapView = [chrome mapView];
  showsTraffic = [mapView showsTraffic];

  return showsTraffic;
}

- (BOOL)showsLabels
{
  chrome = [(SettingsController *)self chrome];
  displayedViewMode = [chrome displayedViewMode];

  return (displayedViewMode + 1 < 9) & (0x157u >> (displayedViewMode + 1));
}

- (void)_offlineStateChanged
{
  v4 = +[MapsOfflineUIHelper sharedHelper];
  if ([v4 isUsingOfflineMaps])
  {
    selectedViewMode = [(SettingsController *)self selectedViewMode];

    if (selectedViewMode == 2)
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