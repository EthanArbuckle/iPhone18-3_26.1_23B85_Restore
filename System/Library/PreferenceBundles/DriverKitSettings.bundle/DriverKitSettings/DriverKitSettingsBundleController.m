@interface DriverKitSettingsBundleController
- (id)specifiersWithSpecifier:(id)a3;
- (void)approvalStateDidChange:(BOOL)a3;
- (void)load;
- (void)registerObserver;
- (void)unload;
- (void)unregisterObserver;
@end

@implementation DriverKitSettingsBundleController

- (void)registerObserver
{
  if (!self->_observerRegistered)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Registering observer", v5, 2u);
    }

    v3 = +[DriverManager sharedManager];
    [v3 addObserver:self];

    v4 = +[DriverManager sharedManager];
    [v4 refresh];

    self->_observerRegistered = 1;
  }
}

- (void)unregisterObserver
{
  if (self->_observerRegistered)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Unregistering observer", v4, 2u);
    }

    v3 = +[DriverManager sharedManager];
    [v3 removeObserver:self];

    self->_observerRegistered = 0;
  }
}

- (void)load
{
  [(DriverKitSettingsBundleController *)self registerObserver];
  v3.receiver = self;
  v3.super_class = DriverKitSettingsBundleController;
  [(DriverKitSettingsBundleController *)&v3 load];
}

- (void)unload
{
  [(DriverKitSettingsBundleController *)self unregisterObserver];
  v3.receiver = self;
  v3.super_class = DriverKitSettingsBundleController;
  [(DriverKitSettingsBundleController *)&v3 unload];
}

- (id)specifiersWithSpecifier:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = PSAppSettingsBundleIDKey;
  v7 = [v4 propertyForKey:PSAppSettingsBundleIDKey];

  v8 = +[DriverManager sharedManager];
  [v8 thirdPartyDriverCount];

  [(DriverKitSettingsBundleController *)self registerObserver];
  v9 = +[DriverManager sharedManager];
  v10 = v9;
  if (v7)
  {
    v11 = [v9 driverCountForAppID:v7];
  }

  else
  {
    v11 = [v9 thirdPartyDriverCount];
  }

  v12 = v11;

  if (v12 >= 1)
  {
    v13 = [PSSpecifier groupSpecifierWithID:@"DRIVERS_GROUP"];
    [v5 addObject:v13];
    v14 = LocalizedString(@"DriverKitSettings_FormTitle");
    v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v15 setIdentifier:@"DRIVERS_LINK"];
    [v15 setProperty:v7 forKey:v6];
    [v5 addObject:v15];
  }

  return v5;
}

- (void)approvalStateDidChange:(BOOL)a3
{
  v3 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "was not";
    if (v3)
    {
      v5 = "was";
    }

    *buf = 136446210;
    v8 = v5;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Approval state changed, update %{public}s incremental", buf, 0xCu);
  }

  if (!v3)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1BDC;
    block[3] = &unk_8580;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

@end