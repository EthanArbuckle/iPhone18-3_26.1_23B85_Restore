@interface BuddyActivationConfiguration
+ (id)currentConfiguration;
- (BOOL)_supportsCellularActivationForMethod:(unint64_t)a3;
- (BOOL)hasActivated;
- (BOOL)isActivated;
- (BOOL)supportsCellularActivation;
- (BuddyActivationConfiguration)init;
- (BuddyActivationConfiguration)initWithBuddyPreferencesExcludedFromBackup:(id)a3;
- (unint64_t)cellularActivationMethod;
- (void)_activationStateChanged;
- (void)addDelegate:(id)a3;
- (void)connectionAvailability:(id)a3 availableConnections:(id)a4;
- (void)connectionStateChanged:(id)a3 connection:(int)a4 dataConnectionStatusInfo:(id)a5;
- (void)notifyDelegatesConfigurationChanged:(BOOL)a3;
- (void)notifyDelegatesConfigurationChanged:(BOOL)a3 isActivated:(BOOL)a4;
- (void)removeDelegate:(id)a3;
@end

@implementation BuddyActivationConfiguration

+ (id)currentConfiguration
{
  v5 = &unk_1003A7530;
  location = 0;
  objc_storeStrong(&location, &stru_10032F7C0);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_1003A7538;

  return v2;
}

- (BuddyActivationConfiguration)init
{
  v3 = [BYPreferencesController buddyPreferencesExcludedFromBackup:a2];
  location = [(BuddyActivationConfiguration *)self initWithBuddyPreferencesExcludedFromBackup:v3];
  objc_storeStrong(&location, location);

  v4 = location;
  objc_storeStrong(&location, 0);
  return v4;
}

- (BuddyActivationConfiguration)initWithBuddyPreferencesExcludedFromBackup:(id)a3
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v24;
  v24 = 0;
  v22.receiver = v3;
  v22.super_class = BuddyActivationConfiguration;
  v4 = [(BuddyActivationConfiguration *)&v22 init];
  v24 = v4;
  objc_storeStrong(&v24, v4);
  if (v4)
  {
    v5 = objc_alloc_init(NSMutableSet);
    [v24 setDelegates:v5];

    v6 = dispatch_queue_create("Activation Configuration Delegates Queue", 0);
    [v24 setDelegateQueue:v6];

    v7 = dispatch_queue_create("Telephony Queue", 0);
    [v24 setTelephonyQueue:v7];

    v8 = [CoreTelephonyClient alloc];
    v9 = [v24 telephonyQueue];
    v10 = [v8 initWithQueue:v9];
    [v24 setTelephonyClient:v10];

    v11 = v24;
    v12 = [v24 telephonyClient];
    [v12 setDelegate:v11];

    [v24 setBuddyPreferencesExcludedFromBackup:location[0]];
    [v24 setCellularActivationMethod:0];
    [v24 setActivationMethodChanged:1];
    v13 = dispatch_queue_create("Activation State Queue", 0);
    [v24 setActivationStateQueue:v13];

    v14 = [v24 activationStateQueue];
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_100249C44;
    v20 = &unk_10032B0D0;
    v21 = v24;
    dispatch_async(v14, &v17);

    [v24 _registerForActivationStateNotification];
    objc_storeStrong(&v21, 0);
  }

  v15 = v24;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v24, 0);
  return v15;
}

- (void)addDelegate:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyActivationConfiguration *)v12 delegateQueue];
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100249D98;
  v8 = &unk_10032B838;
  v9 = v12;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)removeDelegate:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyActivationConfiguration *)v12 delegateQueue];
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100249EFC;
  v8 = &unk_10032B838;
  v9 = v12;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)notifyDelegatesConfigurationChanged:(BOOL)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  v3 = [(BuddyActivationConfiguration *)self delegateQueue];
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10024A02C;
  v8 = &unk_10032B688;
  v9 = v13;
  v10 = v11;
  dispatch_async(v3, &v4);

  objc_storeStrong(&v9, 0);
}

- (void)notifyDelegatesConfigurationChanged:(BOOL)a3 isActivated:(BOOL)a4
{
  v16 = self;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v4 = [(BuddyActivationConfiguration *)self delegateQueue];
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_10024A164;
  v9 = &unk_10032C7B8;
  v10 = v16;
  v11 = v14;
  v12 = v13;
  dispatch_async(v4, &v5);

  objc_storeStrong(&v10, 0);
}

- (BOOL)isActivated
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  oslog[1] = 0;
  v2 = MAEGetActivationStateWithError();
  objc_storeStrong(location, 0);
  v10 = v2;
  if (location[0])
  {
    oslog[0] = _BYLoggingFacility();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v7 = 0;
      v5 = 0;
      if (_BYIsInternalInstall())
      {
        v3 = location[0];
      }

      else if (location[0])
      {
        v8 = [location[0] domain];
        v7 = 1;
        v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v8, [location[0] code]);
        v6 = v3;
        v5 = 1;
      }

      else
      {
        v3 = 0;
      }

      sub_100071CBC(buf, v3);
      _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Failed to get activation state: %{public}@", buf, 0xCu);
      if (v5)
      {
      }

      if (v7)
      {
      }
    }

    objc_storeStrong(oslog, 0);
    v12 = 0;
  }

  else
  {
    v12 = ([v10 isEqualToString:kMAActivationStateUnactivated] ^ 1) & 1;
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  return v12 & 1;
}

- (BOOL)hasActivated
{
  v16 = self;
  v15 = a2;
  v10 = 0;
  v11 = &v10;
  v12 = 0x20000000;
  v13 = 32;
  v14 = 0;
  v2 = [(BuddyActivationConfiguration *)self activationStateQueue];
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10024A5F0;
  v8 = &unk_10032C290;
  v9[1] = &v10;
  v9[0] = v16;
  dispatch_sync(v2, &v4);

  LOBYTE(v2) = *(v11 + 24);
  objc_storeStrong(v9, 0);
  _Block_object_dispose(&v10, 8);
  return v2 & 1;
}

- (BOOL)supportsCellularActivation
{
  v2 = [(BuddyActivationConfiguration *)self cellularActivationMethod];
  if (v2)
  {
    if (v2 - 1 < 2)
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (unint64_t)cellularActivationMethod
{
  v35 = self;
  location[1] = a2;
  if ([(BuddyActivationConfiguration *)self activationMethodChanged])
  {
    location[0] = _BYLoggingFacility();
    v33 = 2;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
    {
      v2 = location[0];
      v3 = v33;
      sub_10006AA68(buf);
      _os_log_debug_impl(&_mh_execute_header, v2, v3, "Updating cellular activation method...", buf, 2u);
    }

    objc_storeStrong(location, 0);
    v31 = 0;
    v30 = 0;
    v4 = [(BuddyActivationConfiguration *)v35 telephonyClient];
    obj = 0;
    v5 = [(CoreTelephonyClient *)v4 getConnectionAvailability:0 connectionType:9 error:&obj];
    objc_storeStrong(&v30, obj);
    v29 = v5;

    if (v29)
    {
      if ([v29 available])
      {
        v31 = 2;
      }
    }

    else
    {
      oslog = _BYLoggingFacility();
      v26 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 0;
        v22 = 0;
        if (_BYIsInternalInstall())
        {
          v6 = v30;
        }

        else if (v30)
        {
          v25 = [v30 domain];
          v24 = 1;
          v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v25, [v30 code]);
          v23 = v6;
          v22 = 1;
        }

        else
        {
          v6 = 0;
        }

        sub_100071CBC(v38, v6);
        _os_log_impl(&_mh_execute_header, oslog, v26, "Unable to get availability status to see if cellular activation is supported: %{public}@", v38, 0xCu);
        if (v22)
        {
        }

        if (v24)
        {
        }
      }

      objc_storeStrong(&oslog, 0);
    }

    v7 = [(BuddyActivationConfiguration *)v35 telephonyClient];
    v20 = v30;
    v8 = [(CoreTelephonyClient *)v7 usingBootstrapDataService:&v20];
    objc_storeStrong(&v30, v20);
    v21 = v8;

    if (v21)
    {
      if ([v21 BOOLValue])
      {
        v31 = 1;
      }
    }

    else
    {
      v19 = _BYLoggingFacility();
      v18 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v16 = 0;
        v14 = 0;
        if (_BYIsInternalInstall())
        {
          v9 = v30;
        }

        else if (v30)
        {
          v17 = [v30 domain];
          v16 = 1;
          v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v17, [v30 code]);
          v15 = v9;
          v14 = 1;
        }

        else
        {
          v9 = 0;
        }

        sub_100071CBC(v37, v9);
        _os_log_error_impl(&_mh_execute_header, v19, v18, "Unable to get bootstrap status to see if cellular activation is supported: %{public}@", v37, 0xCu);
        if (v14)
        {
        }

        if (v16)
        {
        }
      }

      objc_storeStrong(&v19, 0);
    }

    v13 = v31 != v35->_cellularActivationMethod;
    v35->_cellularActivationMethod = v31;
    if (v13 || (byte_1003A7528 & 1) == 0)
    {
      v12 = _BYLoggingFacility();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [(BuddyActivationConfiguration *)v35 _supportsCellularActivationForMethod:v31];
        sub_1001CE624(v36, v10 & 1, v31);
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Supports Cellular Activation: %d (method is %ld)", v36, 0x12u);
      }

      objc_storeStrong(&v12, 0);
      byte_1003A7528 = 1;
    }

    [(BuddyActivationConfiguration *)v35 setActivationMethodChanged:0];
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v30, 0);
  }

  return v35->_cellularActivationMethod;
}

- (BOOL)_supportsCellularActivationForMethod:(unint64_t)a3
{
  if (a3)
  {
    if (a3 - 1 < 2)
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (void)_activationStateChanged
{
  v9 = self;
  v8[1] = a2;
  v2 = dispatch_get_global_queue(0, 0);
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_10024ACE0;
  v7 = &unk_10032B0D0;
  v8[0] = v9;
  dispatch_async(v2, &block);

  objc_storeStrong(v8, 0);
}

- (void)connectionStateChanged:(id)a3 connection:(int)a4 dataConnectionStatusInfo:(id)a5
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = a4;
  v7 = 0;
  objc_storeStrong(&v7, a5);
  [(BuddyActivationConfiguration *)v10 setActivationMethodChanged:1];
  [(BuddyActivationConfiguration *)v10 notifyDelegatesConfigurationChanged:0];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)connectionAvailability:(id)a3 availableConnections:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [(BuddyActivationConfiguration *)v7 setActivationMethodChanged:1];
  [(BuddyActivationConfiguration *)v7 notifyDelegatesConfigurationChanged:0];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

@end