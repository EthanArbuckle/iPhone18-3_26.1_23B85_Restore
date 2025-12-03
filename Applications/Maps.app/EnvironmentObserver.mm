@interface EnvironmentObserver
- (EnvironmentObserver)init;
- (MKMapView)mapView;
- (void)dealloc;
- (void)updateCurrentEnvironmentName;
@end

@implementation EnvironmentObserver

- (EnvironmentObserver)init
{
  v6.receiver = self;
  v6.super_class = EnvironmentObserver;
  v2 = [(EnvironmentObserver *)&v6 init];
  if (v2)
  {
    v3 = +[GEOPlatform sharedPlatform];
    isInternalInstall = [v3 isInternalInstall];

    if (isInternalInstall)
    {
      _GEOConfigAddDelegateListenerForKey();
      _GEOConfigAddDelegateListenerForKey();

      _GEOConfigAddDelegateListenerForKey();
      _GEOConfigAddDelegateListenerForKey();
    }
  }

  return v2;
}

- (void)updateCurrentEnvironmentName
{
  v3 = GEOConfigGetDictionary();
  v4 = [v3 objectForKeyedSubscript:GEOResourceManifestEnvironmentKey];
  if (!v4)
  {
    GEOConfigGetValueWithSourceString();
    v4 = 0;
  }

  Integer = GEOConfigGetInteger();
  if (Integer == 2)
  {
    goto LABEL_6;
  }

  if (Integer != 1)
  {
    BOOL = 0;
    goto LABEL_15;
  }

  if (v4)
  {
LABEL_6:
    BOOL = 1;
  }

  else
  {
    mapView = [(EnvironmentObserver *)self mapView];
    if ([mapView _isUsingDevResourceStyleSheet])
    {
      BOOL = 1;
    }

    else
    {
      v8 = +[GEOPlatform sharedPlatform];
      if ([v8 isInternalInstall])
      {
        BOOL = GEOConfigGetBOOL();
      }

      else
      {
        BOOL = 0;
      }
    }
  }

LABEL_15:
  mapView2 = [(EnvironmentObserver *)self mapView];
  [mapView2 _setShowsCurrentEnvironmentName:BOOL];
}

- (MKMapView)mapView
{
  WeakRetained = objc_loadWeakRetained(&self->_mapView);

  return WeakRetained;
}

- (void)dealloc
{
  GEOConfigRemoveDelegateListenerForAllKeys();
  v3.receiver = self;
  v3.super_class = EnvironmentObserver;
  [(EnvironmentObserver *)&v3 dealloc];
}

@end