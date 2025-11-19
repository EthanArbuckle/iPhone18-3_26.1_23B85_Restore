@interface AKAuthenticationSurrogateManager
- (AKAuthenticationSurrogateManager)initWithDelegate:(id)a3;
- (BOOL)_isClientWaitingForSurrogateAuth:(id)a3;
- (BOOL)_launchAppleIDSettingsForContext:(id)a3 withCheckinID:(id)a4;
- (BOOL)hasRegisteredSurrogateForContext:(id)a3;
- (BOOL)isSurrogateAuthInProgressForClientBundleID:(id)a3;
- (id)_fetchSurrogateForClientBundleID:(id)a3;
- (id)_fetchSurrogateWithRegistrationID:(id)a3;
- (void)_clearSurrogate:(id)a3;
- (void)_handleError:(id)a3 logMessage:(id)a4 withUIWorkBlock:(id)a5;
- (void)_stopWaitingForCheckInWithContext:(id)a3 andError:(id)a4;
- (void)_waitForSurrogateCheckInWithContext:(id)a3 withUIWorkBlock:(id)a4 client:(id)a5 andCheckInID:(id)a6;
- (void)performUIWorkWithSurrogateContext:(id)a3 uiWorkBlock:(id)a4;
- (void)registerUISurrogateContext:(id)a3 client:(id)a4 completion:(id)a5;
- (void)unregisterUISurrogateForContext:(id)a3;
- (void)waitForRemoteViewServiceWithContext:(id)a3 client:(id)a4 uiWorkBlock:(id)a5;
- (void)waitForSettingsWithContext:(id)a3 client:(id)a4 requireFullUICapability:(BOOL)a5 allowRedirectToSettings:(BOOL)a6 uiWorkBlock:(id)a7;
@end

@implementation AKAuthenticationSurrogateManager

- (AKAuthenticationSurrogateManager)initWithDelegate:(id)a3
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v23;
  v23 = 0;
  v21.receiver = v3;
  v21.super_class = AKAuthenticationSurrogateManager;
  v23 = [(AKAuthenticationSurrogateManager *)&v21 init];
  objc_storeStrong(&v23, v23);
  if (v23)
  {
    objc_storeWeak(&v23->_delegate, location[0]);
    v4 = +[AKAccountManager sharedInstance];
    accountManager = v23->_accountManager;
    v23->_accountManager = v4;
    _objc_release(accountManager);
    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("AKUISurrogateQueue", v20);
    surrogateQueue = v23->_surrogateQueue;
    v23->_surrogateQueue = v6;
    _objc_release(surrogateQueue);
    _objc_release(v20);
    v8 = objc_opt_new();
    surrogateCheckinIDLock = v23->_surrogateCheckinIDLock;
    v23->_surrogateCheckinIDLock = v8;
    _objc_release(surrogateCheckinIDLock);
    v10 = objc_opt_new();
    settingsRedirectThrottleLock = v23->_settingsRedirectThrottleLock;
    v23->_settingsRedirectThrottleLock = v10;
    _objc_release(settingsRedirectThrottleLock);
    v12 = objc_opt_new();
    settingsLauncher = v23->_settingsLauncher;
    v23->_settingsLauncher = v12;
    _objc_release(settingsLauncher);
    v14 = +[NSMutableDictionary dictionary];
    inProgressSurrogates = v23->_inProgressSurrogates;
    v23->_inProgressSurrogates = v14;
    _objc_release(inProgressSurrogates);
    v16 = objc_opt_new();
    surrogateIDGenerator = v23->_surrogateIDGenerator;
    v23->_surrogateIDGenerator = v16;
    _objc_release(surrogateIDGenerator);
  }

  v19 = _objc_retain(v23);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v23, 0);
  return v19;
}

- (BOOL)hasRegisteredSurrogateForContext:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(NSLock *)v10->_surrogateCheckinIDLock lock];
  inProgressSurrogates = v10->_inProgressSurrogates;
  v7 = [location[0] _identifier];
  v6 = [(NSMutableDictionary *)inProgressSurrogates objectForKeyedSubscript:?];
  v3 = [v6 surrogateContext];
  v8 = v3 != 0;
  _objc_release(v3);
  _objc_release(v6);
  _objc_release(v7);
  [(NSLock *)v10->_surrogateCheckinIDLock unlock];
  objc_storeStrong(location, 0);
  return v8;
}

- (BOOL)isSurrogateAuthInProgressForClientBundleID:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [(AKAuthenticationSurrogateManager *)v8 _fetchSurrogateForClientBundleID:location[0]];
  v3 = [v6 surrogateContext];
  v5 = v3 != 0;
  _objc_release(v3);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return v5;
}

- (void)waitForRemoteViewServiceWithContext:(id)a3 client:(id)a4 uiWorkBlock:(id)a5
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = 0;
  objc_storeStrong(&v17, a5);
  queue = v20->_surrogateQueue;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_100053B34;
  v12 = &unk_1003204B8;
  v13 = _objc_retain(v20);
  v14 = _objc_retain(v18);
  v16 = _objc_retain(v17);
  v15 = _objc_retain(location[0]);
  dispatch_async(queue, &v8);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)waitForSettingsWithContext:(id)a3 client:(id)a4 requireFullUICapability:(BOOL)a5 allowRedirectToSettings:(BOOL)a6 uiWorkBlock:(id)a7
{
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v26 = 0;
  objc_storeStrong(&v26, a4);
  v25 = a5;
  v24 = a6;
  v23 = 0;
  objc_storeStrong(&v23, a7);
  queue = v28->_surrogateQueue;
  v12 = _NSConcreteStackBlock;
  v13 = -1073741824;
  v14 = 0;
  v15 = sub_100054590;
  v16 = &unk_100320508;
  v17 = _objc_retain(v28);
  v18 = _objc_retain(v26);
  v20 = _objc_retain(v23);
  v21 = v24;
  v19 = _objc_retain(location[0]);
  v22 = v25;
  dispatch_async(queue, &v12);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

- (void)performUIWorkWithSurrogateContext:(id)a3 uiWorkBlock:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  queue = v16->_surrogateQueue;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_100055084;
  v10 = &unk_100320558;
  v11 = _objc_retain(v16);
  v12 = _objc_retain(location[0]);
  v13 = _objc_retain(v14);
  dispatch_async(queue, &v6);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)registerUISurrogateContext:(id)a3 client:(id)a4 completion:(id)a5
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = 0;
  objc_storeStrong(&v17, a5);
  queue = v20->_surrogateQueue;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_1000556DC;
  v12 = &unk_1003200A8;
  v13 = _objc_retain(location[0]);
  v14 = _objc_retain(v20);
  v15 = _objc_retain(v18);
  v16 = _objc_retain(v17);
  dispatch_async(queue, &v8);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)unregisterUISurrogateForContext:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = [location[0] _identifier];
  [(NSLock *)v14->_surrogateCheckinIDLock lock];
  v7 = [(AKAuthenticationSurrogateManager *)v14 inProgressSurrogates];
  v11 = [(NSMutableDictionary *)v7 objectForKeyedSubscript:v12];
  _objc_release(v7);
  [(NSLock *)v14->_surrogateCheckinIDLock unlock];
  if (v11)
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v11 surrogateClient];
      v5 = [v11 surrogateRegistrationID];
      sub_10001B098(v15, v6, v5);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "UI surrogate for client %@ with surrogate ID %@ is checking out.", v15, 0x16u);
      _objc_release(v5);
      _objc_release(v6);
    }

    objc_storeStrong(&oslog, 0);
    v4 = [v11 surrogateCompletion];
    _objc_release(v4);
    if (v4)
    {
      v3 = [v11 surrogateCompletion];
      v3[2](v3, 0);
      _objc_release(v3);
    }

    [(AKAuthenticationSurrogateManager *)v14 _clearSurrogate:v11];
  }

  else
  {
    v10 = _AKLogSystem();
    v9 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v16, v12);
      _os_log_error_impl(&_mh_execute_header, v10, v9, "Context with identifier %@ has no registered UI surrogate.", v16, 0xCu);
    }

    objc_storeStrong(&v10, 0);
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_isClientWaitingForSurrogateAuth:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = v9;
  v6 = [location[0] bundleID];
  v3 = [(AKAuthenticationSurrogateManager *)v5 _fetchSurrogateForClientBundleID:?];
  v7 = v3 != 0;
  _objc_release(v3);
  _objc_release(v6);
  objc_storeStrong(location, 0);
  return v7;
}

- (void)_waitForSurrogateCheckInWithContext:(id)a3 withUIWorkBlock:(id)a4 client:(id)a5 andCheckInID:(id)a6
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = 0;
  objc_storeStrong(&v17, a5);
  v16 = 0;
  objc_storeStrong(&v16, a6);
  v15 = _AKLogSystem();
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    sub_10001B098(v21, v17, v16);
    _os_log_impl(&_mh_execute_header, v15, v14, "Waiting for UI surrogate for client %@ with surrogate ID %@ to check in...", v21, 0x16u);
  }

  objc_storeStrong(&v15, 0);
  [(NSLock *)v20->_surrogateCheckinIDLock lock];
  v13 = objc_opt_new();
  [v13 setPendingClientUIWork:v18];
  [v13 setPendingBGContext:location[0]];
  v6 = [v17 bundleID];
  [v13 setPendingClientBundle:?];
  _objc_release(v6);
  [v13 setSurrogateRegistrationID:v16];
  v7 = v13;
  v9 = [(AKAuthenticationSurrogateManager *)v20 inProgressSurrogates];
  v8 = [location[0] _identifier];
  [(NSMutableDictionary *)v9 setObject:v7 forKeyedSubscript:?];
  _objc_release(v8);
  _objc_release(v9);
  [(NSLock *)v20->_surrogateCheckinIDLock unlock];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)_stopWaitingForCheckInWithContext:(id)a3 andError:(id)a4
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  [(NSLock *)v17->_surrogateCheckinIDLock lock];
  v12 = [(AKAuthenticationSurrogateManager *)v17 inProgressSurrogates];
  v11 = [location[0] _identifier];
  v14 = [(NSMutableDictionary *)v12 objectForKeyedSubscript:?];
  _objc_release(v11);
  _objc_release(v12);
  if (v14)
  {
    v13 = _AKLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v14 surrogateClient];
      v8 = [v14 surrogateRegistrationID];
      sub_10001B098(v18, v9, v8);
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Stop waiting for UI surrogate for client %@ with surrogate ID %@!", v18, 0x16u);
      _objc_release(v8);
      _objc_release(v9);
    }

    objc_storeStrong(&v13, 0);
    v7 = [v14 surrogateCompletion];
    _objc_release(v7);
    if (v7)
    {
      v6 = [v14 surrogateCompletion];
      v6[2](v6, 0, v15);
      _objc_release(v6);
    }

    v5 = [(AKAuthenticationSurrogateManager *)v17 inProgressSurrogates];
    v4 = [location[0] _identifier];
    [(NSMutableDictionary *)v5 setObject:0 forKeyedSubscript:?];
    _objc_release(v4);
    _objc_release(v5);
  }

  [(NSLock *)v17->_surrogateCheckinIDLock unlock];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleError:(id)a3 logMessage:(id)a4 withUIWorkBlock:(id)a5
{
  v26 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v24 = 0;
  objc_storeStrong(&v24, a4);
  v23 = 0;
  objc_storeStrong(&v23, a5);
  v22 = [NSString stringWithFormat:@" AKAuthenticationSurrogateManager Error: %@", location[0]];
  v21 = _AKLogSystem();
  v20 = 16;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    log = v21;
    type = v20;
    v9 = [v24 stringByAppendingString:v22];
    v19 = _objc_retain(v9);
    sub_1000194D4(v27, v19);
    _os_log_error_impl(&_mh_execute_header, log, type, "%@", v27, 0xCu);
    _objc_release(v9);
    objc_storeStrong(&v19, 0);
  }

  objc_storeStrong(&v21, 0);
  WeakRetained = objc_loadWeakRetained(&v26->_delegate);
  queue = [WeakRetained uiWorkQueue];
  v12 = _NSConcreteStackBlock;
  v13 = -1073741824;
  v14 = 0;
  v15 = sub_100056808;
  v16 = &unk_100320530;
  v18 = _objc_retain(v23);
  v17 = _objc_retain(location[0]);
  dispatch_async(queue, &v12);
  _objc_release(queue);
  _objc_release(WeakRetained);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

- (id)_fetchSurrogateForClientBundleID:(id)a3
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  [(NSLock *)v18->_surrogateCheckinIDLock lock];
  memset(__b, 0, sizeof(__b));
  v11 = [(AKAuthenticationSurrogateManager *)v18 inProgressSurrogates];
  obj = [(NSMutableDictionary *)v11 allValues];
  _objc_release(v11);
  v13 = [obj countByEnumeratingWithState:__b objects:v19 count:16];
  if (v13)
  {
    v8 = *__b[2];
    v9 = 0;
    v10 = v13;
    while (1)
    {
      v7 = v9;
      if (*__b[2] != v8)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(__b[1] + 8 * v9);
      v5 = [v15 pendingClientBundle];
      v6 = [v5 isEqualToString:location[0]];
      _objc_release(v5);
      if (v6)
      {
        break;
      }

      ++v9;
      if (v7 + 1 >= v10)
      {
        v9 = 0;
        v10 = [obj countByEnumeratingWithState:__b objects:v19 count:16];
        if (!v10)
        {
          goto LABEL_9;
        }
      }
    }

    objc_storeStrong(&v16, v15);
  }

LABEL_9:
  _objc_release(obj);
  [(NSLock *)v18->_surrogateCheckinIDLock unlock];
  v4 = _objc_retain(v16);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (id)_fetchSurrogateWithRegistrationID:(id)a3
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  [(NSLock *)v18->_surrogateCheckinIDLock lock];
  memset(__b, 0, sizeof(__b));
  v11 = [(AKAuthenticationSurrogateManager *)v18 inProgressSurrogates];
  obj = [(NSMutableDictionary *)v11 allValues];
  _objc_release(v11);
  v13 = [obj countByEnumeratingWithState:__b objects:v19 count:16];
  if (v13)
  {
    v8 = *__b[2];
    v9 = 0;
    v10 = v13;
    while (1)
    {
      v7 = v9;
      if (*__b[2] != v8)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(__b[1] + 8 * v9);
      v5 = [v15 surrogateRegistrationID];
      v6 = [v5 isEqual:location[0]];
      _objc_release(v5);
      if (v6)
      {
        break;
      }

      ++v9;
      if (v7 + 1 >= v10)
      {
        v9 = 0;
        v10 = [obj countByEnumeratingWithState:__b objects:v19 count:16];
        if (!v10)
        {
          goto LABEL_9;
        }
      }
    }

    objc_storeStrong(&v16, v15);
  }

LABEL_9:
  _objc_release(obj);
  [(NSLock *)v18->_surrogateCheckinIDLock unlock];
  v4 = _objc_retain(v16);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (void)_clearSurrogate:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(NSLock *)v10->_surrogateCheckinIDLock lock];
  v6 = [(AKAuthenticationSurrogateManager *)v10 inProgressSurrogates];
  v5 = [(NSMutableDictionary *)v6 allKeysForObject:location[0]];
  v8 = [v5 firstObject];
  _objc_release(v5);
  _objc_release(v6);
  if (v8)
  {
    v4 = [(AKAuthenticationSurrogateManager *)v10 inProgressSurrogates];
    [(NSMutableDictionary *)v4 setObject:0 forKeyedSubscript:v8];
    _objc_release(v4);
    v10->_settingsSurrogationInProgress = 0;
  }

  else
  {
    v7 = _AKLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v3 = [location[0] surrogateClient];
      sub_1000194D4(v11, v3);
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error: Attempted to clear surrogate that is no longer in progress with ID %@.", v11, 0xCu);
      _objc_release(v3);
    }

    objc_storeStrong(&v7, 0);
  }

  [(NSLock *)v10->_surrogateCheckinIDLock unlock];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_launchAppleIDSettingsForContext:(id)a3 withCheckinID:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  if ([location[0] _capabilityForUIDisplay] == 4)
  {
    v10 = _AKLogSystem();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      log = v10;
      type = v9;
      sub_10001CEEC(v8);
      _os_log_impl(&_mh_execute_header, log, type, "Settings redirect not supported by context", v8, 2u);
    }

    objc_storeStrong(&v10, 0);
    v14 = 1;
  }

  else
  {
    v14 = [(AKAuthenticationSettingsLauncher *)v13->_settingsLauncher launchSettingsForContext:location[0] withCheckinID:v11];
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  return v14 & 1;
}

@end