@interface StatusIndicatorManager
- (StatusIndicatorDelegate)delegate;
- (StatusIndicatorManager)initWithDelegate:(id)delegate;
- (void)dealloc;
- (void)locationManagerApprovalDidChange:(id)change;
- (void)setIndicatorType:(unint64_t)type;
- (void)updateIndicatorType;
- (void)valueChangedForGEOConfigKey:(id)key;
@end

@implementation StatusIndicatorManager

- (StatusIndicatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateIndicatorType
{
  if ((GEOConfigGetBOOL() & 1) == 0)
  {
    goto LABEL_17;
  }

  v3 = MKCurrentNetworkConnectionFailureDiagnosis();
  v4 = +[MapsOfflineUIHelper sharedHelper];
  isUsingForcedOfflineMaps = [v4 isUsingForcedOfflineMaps];

  if (isUsingForcedOfflineMaps)
  {
    selfCopy8 = self;
    v7 = 8;
    goto LABEL_18;
  }

  v8 = +[MapsOfflineUIHelper sharedHelper];
  isUsingOfflineMaps = [v8 isUsingOfflineMaps];

  if (isUsingOfflineMaps)
  {
    selfCopy8 = self;
    v7 = 7;
    goto LABEL_18;
  }

  switch(v3)
  {
    case 1:
      selfCopy8 = self;
      v7 = 3;
      goto LABEL_18;
    case 2:
      selfCopy8 = self;
      v7 = 4;
      goto LABEL_18;
    case 3:
      selfCopy8 = self;
      v7 = 2;
      goto LABEL_18;
  }

  v10 = +[MKLocationManager sharedLocationManager];
  isLocationServicesPossiblyAvailable = [v10 isLocationServicesPossiblyAvailable];

  if ((isLocationServicesPossiblyAvailable & 1) == 0)
  {
    selfCopy8 = self;
    v7 = 5;
    goto LABEL_18;
  }

  v12 = +[MKLocationManager sharedLocationManager];
  if ([v12 isAuthorizedForPreciseLocation])
  {

LABEL_17:
    selfCopy8 = self;
    v7 = 1;
    goto LABEL_18;
  }

  waitingForAuthorization = self->_waitingForAuthorization;

  if (waitingForAuthorization)
  {
    goto LABEL_17;
  }

  selfCopy8 = self;
  v7 = 6;
LABEL_18:

  [(StatusIndicatorManager *)selfCopy8 setIndicatorType:v7];
}

- (void)valueChangedForGEOConfigKey:(id)key
{
  if (key.var0 == 641 && key.var1 == &unk_1016439D8 || key.var0 == 569 && key.var1 == &unk_101642C20)
  {
    [(StatusIndicatorManager *)self updateIndicatorType];
  }
}

- (void)setIndicatorType:(unint64_t)type
{
  if (self->_indicatorType != type)
  {
    self->_indicatorType = type;
    delegate = [(StatusIndicatorManager *)self delegate];
    [delegate statusIndicatorTypeChanged:{-[StatusIndicatorManager indicatorType](self, "indicatorType")}];

    +[MapsAnalyticStateProvider updatePreciseLocationInformation];
  }
}

- (void)locationManagerApprovalDidChange:(id)change
{
  changeCopy = change;
  v5 = +[MKLocationManager sharedLocationManager];
  locationProvider = [v5 locationProvider];
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1006EA6D0;
  v9[3] = &unk_101661340;
  objc_copyWeak(&v11, &location);
  v7 = locationProvider;
  v10 = v7;
  v8 = objc_retainBlock(v9);
  if (+[NSThread isMainThread])
  {
    (v8[2])(v8);
  }

  else
  {
    dispatch_async(&_dispatch_main_q, v8);
  }

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)dealloc
{
  v3 = +[GEONetworkObserver sharedNetworkObserver];
  [v3 removeNetworkReachableObserver:self];

  v4.receiver = self;
  v4.super_class = StatusIndicatorManager;
  [(StatusIndicatorManager *)&v4 dealloc];
}

- (StatusIndicatorManager)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = StatusIndicatorManager;
  v5 = [(StatusIndicatorManager *)&v16 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = [[RadiosPreferences alloc] initWithQueue:&_dispatch_main_q];
    radioPreferences = v6->_radioPreferences;
    v6->_radioPreferences = v7;

    [(RadiosPreferences *)v6->_radioPreferences setDelegate:v6];
    v9 = +[MKLocationManager sharedLocationManager];
    locationProvider = [v9 locationProvider];
    v6->_initialLocationProviderClass = objc_opt_class();

    v11 = +[GEONetworkObserver sharedNetworkObserver];
    [v11 addNetworkReachableObserver:v6 selector:"updateIndicatorType"];

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v6 selector:"updateIndicatorType" name:@"UsingOfflineMapsStateChangedNotification" object:0];

    _GEOConfigAddDelegateListenerForKey();
    _GEOConfigAddDelegateListenerForKey();

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v6 selector:"locationManagerApprovalDidChange:" name:MKLocationManagerApprovalDidChangeNotification object:0];

    v6->_indicatorType = 0;
    v14 = +[MKLocationManager sharedLocationManager];
    v6->_waitingForAuthorization = [v14 isAuthorizationNotDetermined];

    [(StatusIndicatorManager *)v6 updateIndicatorType];
  }

  return v6;
}

@end