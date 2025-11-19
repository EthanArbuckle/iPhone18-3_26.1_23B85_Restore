@interface OfflineMapsDownloadFeatureTipSource
- (BOOL)_allowToShowTip;
- (GEOObserverHashTable)observers;
- (OfflineMapsDownloadFeatureTipSource)initWithIsActive:(BOOL)a3;
- (void)_didOpenUserProfile:(id)a3;
- (void)_dismissTip;
- (void)_markAsShown;
- (void)_notifyObservers;
- (void)_showDownloadTipModelWithDisplayName:(id)a3;
- (void)setActive:(BOOL)a3;
- (void)subscriptionInfosDidChange:(id)a3;
@end

@implementation OfflineMapsDownloadFeatureTipSource

- (GEOObserverHashTable)observers
{
  observers = self->_observers;
  if (!observers)
  {
    v4 = self;
    objc_sync_enter(v4);
    v5 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___HomeDataProvidingObserver queue:0];
    v6 = self->_observers;
    self->_observers = v5;

    objc_sync_exit(v4);
    observers = self->_observers;
  }

  return observers;
}

- (void)_didOpenUserProfile:(id)a3
{
  if ([(OfflineMapsDownloadFeatureTipSource *)self showFeature])
  {

    [(OfflineMapsDownloadFeatureTipSource *)self _dismissTip];
  }
}

- (void)subscriptionInfosDidChange:(id)a3
{
  v9 = a3;
  if (![(OfflineMapsDownloadFeatureTipSource *)self showFeature]&& [(OfflineMapsDownloadFeatureTipSource *)self _allowToShowTip])
  {
    v4 = [v9 lastObject];
    v5 = [v4 state];
    v6 = [v5 downloadState];

    if (v6 == 2)
    {
      v7 = [v4 subscription];
      v8 = [v7 displayName];
      [(OfflineMapsDownloadFeatureTipSource *)self _showDownloadTipModelWithDisplayName:v8];
    }
  }
}

- (void)_showDownloadTipModelWithDisplayName:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(ImageIconWithBackgroundConfiguration);
  [(ImageIconWithBackgroundConfiguration *)v5 setIconSize:35.0, 35.0];
  [(ImageIconWithBackgroundConfiguration *)v5 setCornerRadius:17.5];
  v6 = +[UIColor whiteColor];
  [(ImageIconWithBackgroundConfiguration *)v5 setTintColor:v6];

  v7 = [UIColor colorNamed:@"ProfileGrayColor"];
  [(ImageIconWithBackgroundConfiguration *)v5 setBackgroundColor:v7];

  v8 = [UIImage systemImageNamed:@"icloud.slash.fill"];
  v9 = [v8 _maps_imageIconWithBackgroundConfiguration:v5];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"[Offline] download tip title" value:@"localized string not found" table:@"Offline"];
  v12 = [NSString stringWithFormat:v11, v4];

  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"[Offline] download tip subtitle" value:@"localized string not found" table:@"Offline"];

  objc_initWeak(location, self);
  v15 = [FeatureDiscoveryModel alloc];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100A69BF4;
  v23[3] = &unk_101661B98;
  objc_copyWeak(&v24, location);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100A69C38;
  v21[3] = &unk_101661B98;
  objc_copyWeak(&v22, location);
  LOBYTE(v18) = 1;
  v16 = [(FeatureDiscoveryModel *)v15 initWithImage:v9 title:v12 subtitle:v14 actionTitle:0 actionHandler:0 bodyTapHandler:0 displayedHandler:v23 dismissHandler:v21 disableAffordanceAfterAction:v18];
  model = self->_model;
  self->_model = v16;

  [(FeatureDiscoveryModel *)self->_model setIsTipMode:1];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100A69C7C;
  block[3] = &unk_101661B98;
  objc_copyWeak(&v20, location);
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&v24);
  objc_destroyWeak(location);
}

- (void)_markAsShown
{
  v6 = +[NSDate date];
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 setObject:v6 forKey:@"OfflineMapsDownloadingTipLastDisplayedTimeKey"];

  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 integerForKey:@"OfflineMapsDownloadingTipDisplayedCountKey"];

  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 setInteger:v4 + 1 forKey:@"OfflineMapsDownloadingTipDisplayedCountKey"];
}

- (BOOL)_allowToShowTip
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"OfflineMapsUserHasOpenedOfflineManagementScreenKey"];

  if (v3)
  {
    v4 = sub_100A69FA0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(v19) = 0;
      v5 = "already opened the OfflineScreen, won't show the tip";
      v6 = v4;
      v7 = 2;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, v5, &v19, v7);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v8 = +[NSUserDefaults standardUserDefaults];
  v9 = [v8 integerForKey:@"OfflineMapsDownloadingTipDisplayedCountKey"];

  UInteger = GEOConfigGetUInteger();
  if (v9 >= UInteger)
  {
    v17 = UInteger;
    v4 = sub_100A69FA0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v19 = 134217984;
      v20 = v17;
      v5 = "already displayed maximum number of time, won't show the tip. The maximum is %ld";
      v6 = v4;
      v7 = 12;
      goto LABEL_12;
    }

LABEL_13:
    v16 = 0;
    goto LABEL_16;
  }

  v11 = +[NSUserDefaults standardUserDefaults];
  v4 = [v11 objectForKey:@"OfflineMapsDownloadingTipLastDisplayedTimeKey"];

  v12 = +[NSDate date];
  v13 = v12;
  if (v4 && ([v12 timeIntervalSinceDate:v4], v14 < 86400.0))
  {
    v15 = sub_100A69FA0();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "already displayed tip today, won't show the tip", &v19, 2u);
    }

    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

LABEL_16:
  return v16;
}

- (void)_dismissTip
{
  [(OfflineMapsDownloadFeatureTipSource *)self setShowFeature:0];

  [(OfflineMapsDownloadFeatureTipSource *)self _notifyObservers];
}

- (void)_notifyObservers
{
  if (self->_active)
  {
    [(GEOObserverHashTable *)self->_observers homeDataProvidingObjectDidUpdate:self];
  }
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    v4 = a3;
    self->_active = a3;
    v6 = +[MapsOfflineUIHelper sharedHelper];
    v7 = v6;
    if (v4)
    {
      [v6 addObserver:self];

      v9 = +[NSNotificationCenter defaultCenter];
      v8 = +[_TtC4Maps34UserProfileContaineeViewController userProfileDidOpenProfilePageNotification];
      [v9 addObserver:self selector:"_didOpenUserProfile:" name:v8 object:0];
    }

    else
    {
      [v6 removeObserver:self];

      v9 = +[NSNotificationCenter defaultCenter];
      [v9 removeObserver:self];
    }
  }
}

- (OfflineMapsDownloadFeatureTipSource)initWithIsActive:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = OfflineMapsDownloadFeatureTipSource;
  v4 = [(OfflineMapsDownloadFeatureTipSource *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(OfflineMapsDownloadFeatureTipSource *)v4 setActive:v3];
  }

  return v5;
}

@end