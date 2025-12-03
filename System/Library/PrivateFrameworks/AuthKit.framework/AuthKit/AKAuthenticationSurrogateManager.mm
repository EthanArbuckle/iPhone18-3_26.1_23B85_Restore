@interface AKAuthenticationSurrogateManager
- (AKAuthenticationSurrogateManager)initWithDelegate:(id)delegate;
- (BOOL)_isClientWaitingForSurrogateAuth:(id)auth;
- (BOOL)_launchAppleIDSettingsForContext:(id)context withCheckinID:(id)d;
- (BOOL)hasRegisteredSurrogateForContext:(id)context;
- (BOOL)isSurrogateAuthInProgressForClientBundleID:(id)d;
- (id)_fetchSurrogateForClientBundleID:(id)d;
- (id)_fetchSurrogateWithRegistrationID:(id)d;
- (void)_clearSurrogate:(id)surrogate;
- (void)_handleError:(id)error logMessage:(id)message withUIWorkBlock:(id)block;
- (void)_stopWaitingForCheckInWithContext:(id)context andError:(id)error;
- (void)_waitForSurrogateCheckInWithContext:(id)context withUIWorkBlock:(id)block client:(id)client andCheckInID:(id)d;
- (void)performUIWorkWithSurrogateContext:(id)context uiWorkBlock:(id)block;
- (void)registerUISurrogateContext:(id)context client:(id)client completion:(id)completion;
- (void)unregisterUISurrogateForContext:(id)context;
- (void)waitForRemoteViewServiceWithContext:(id)context client:(id)client uiWorkBlock:(id)block;
- (void)waitForSettingsWithContext:(id)context client:(id)client requireFullUICapability:(BOOL)capability allowRedirectToSettings:(BOOL)settings uiWorkBlock:(id)block;
@end

@implementation AKAuthenticationSurrogateManager

- (AKAuthenticationSurrogateManager)initWithDelegate:(id)delegate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  v3 = selfCopy;
  selfCopy = 0;
  v21.receiver = v3;
  v21.super_class = AKAuthenticationSurrogateManager;
  selfCopy = [(AKAuthenticationSurrogateManager *)&v21 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeWeak(&selfCopy->_delegate, location[0]);
    v4 = +[AKAccountManager sharedInstance];
    accountManager = selfCopy->_accountManager;
    selfCopy->_accountManager = v4;
    _objc_release(accountManager);
    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("AKUISurrogateQueue", v20);
    surrogateQueue = selfCopy->_surrogateQueue;
    selfCopy->_surrogateQueue = v6;
    _objc_release(surrogateQueue);
    _objc_release(v20);
    v8 = objc_opt_new();
    surrogateCheckinIDLock = selfCopy->_surrogateCheckinIDLock;
    selfCopy->_surrogateCheckinIDLock = v8;
    _objc_release(surrogateCheckinIDLock);
    v10 = objc_opt_new();
    settingsRedirectThrottleLock = selfCopy->_settingsRedirectThrottleLock;
    selfCopy->_settingsRedirectThrottleLock = v10;
    _objc_release(settingsRedirectThrottleLock);
    v12 = objc_opt_new();
    settingsLauncher = selfCopy->_settingsLauncher;
    selfCopy->_settingsLauncher = v12;
    _objc_release(settingsLauncher);
    v14 = +[NSMutableDictionary dictionary];
    inProgressSurrogates = selfCopy->_inProgressSurrogates;
    selfCopy->_inProgressSurrogates = v14;
    _objc_release(inProgressSurrogates);
    v16 = objc_opt_new();
    surrogateIDGenerator = selfCopy->_surrogateIDGenerator;
    selfCopy->_surrogateIDGenerator = v16;
    _objc_release(surrogateIDGenerator);
  }

  v19 = _objc_retain(selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v19;
}

- (BOOL)hasRegisteredSurrogateForContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  [(NSLock *)selfCopy->_surrogateCheckinIDLock lock];
  inProgressSurrogates = selfCopy->_inProgressSurrogates;
  _identifier = [location[0] _identifier];
  v6 = [(NSMutableDictionary *)inProgressSurrogates objectForKeyedSubscript:?];
  surrogateContext = [v6 surrogateContext];
  v8 = surrogateContext != 0;
  _objc_release(surrogateContext);
  _objc_release(v6);
  _objc_release(_identifier);
  [(NSLock *)selfCopy->_surrogateCheckinIDLock unlock];
  objc_storeStrong(location, 0);
  return v8;
}

- (BOOL)isSurrogateAuthInProgressForClientBundleID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v6 = [(AKAuthenticationSurrogateManager *)selfCopy _fetchSurrogateForClientBundleID:location[0]];
  surrogateContext = [v6 surrogateContext];
  v5 = surrogateContext != 0;
  _objc_release(surrogateContext);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return v5;
}

- (void)waitForRemoteViewServiceWithContext:(id)context client:(id)client uiWorkBlock:(id)block
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v18 = 0;
  objc_storeStrong(&v18, client);
  v17 = 0;
  objc_storeStrong(&v17, block);
  queue = selfCopy->_surrogateQueue;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_100053B34;
  v12 = &unk_1003204B8;
  v13 = _objc_retain(selfCopy);
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

- (void)waitForSettingsWithContext:(id)context client:(id)client requireFullUICapability:(BOOL)capability allowRedirectToSettings:(BOOL)settings uiWorkBlock:(id)block
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v26 = 0;
  objc_storeStrong(&v26, client);
  capabilityCopy = capability;
  settingsCopy = settings;
  v23 = 0;
  objc_storeStrong(&v23, block);
  queue = selfCopy->_surrogateQueue;
  v12 = _NSConcreteStackBlock;
  v13 = -1073741824;
  v14 = 0;
  v15 = sub_100054590;
  v16 = &unk_100320508;
  v17 = _objc_retain(selfCopy);
  v18 = _objc_retain(v26);
  v20 = _objc_retain(v23);
  v21 = settingsCopy;
  v19 = _objc_retain(location[0]);
  v22 = capabilityCopy;
  dispatch_async(queue, &v12);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

- (void)performUIWorkWithSurrogateContext:(id)context uiWorkBlock:(id)block
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v14 = 0;
  objc_storeStrong(&v14, block);
  queue = selfCopy->_surrogateQueue;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_100055084;
  v10 = &unk_100320558;
  v11 = _objc_retain(selfCopy);
  v12 = _objc_retain(location[0]);
  v13 = _objc_retain(v14);
  dispatch_async(queue, &v6);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)registerUISurrogateContext:(id)context client:(id)client completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v18 = 0;
  objc_storeStrong(&v18, client);
  v17 = 0;
  objc_storeStrong(&v17, completion);
  queue = selfCopy->_surrogateQueue;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_1000556DC;
  v12 = &unk_1003200A8;
  v13 = _objc_retain(location[0]);
  v14 = _objc_retain(selfCopy);
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

- (void)unregisterUISurrogateForContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  _identifier = [location[0] _identifier];
  [(NSLock *)selfCopy->_surrogateCheckinIDLock lock];
  inProgressSurrogates = [(AKAuthenticationSurrogateManager *)selfCopy inProgressSurrogates];
  v11 = [(NSMutableDictionary *)inProgressSurrogates objectForKeyedSubscript:_identifier];
  _objc_release(inProgressSurrogates);
  [(NSLock *)selfCopy->_surrogateCheckinIDLock unlock];
  if (v11)
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      surrogateClient = [v11 surrogateClient];
      surrogateRegistrationID = [v11 surrogateRegistrationID];
      sub_10001B098(v15, surrogateClient, surrogateRegistrationID);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "UI surrogate for client %@ with surrogate ID %@ is checking out.", v15, 0x16u);
      _objc_release(surrogateRegistrationID);
      _objc_release(surrogateClient);
    }

    objc_storeStrong(&oslog, 0);
    surrogateCompletion = [v11 surrogateCompletion];
    _objc_release(surrogateCompletion);
    if (surrogateCompletion)
    {
      surrogateCompletion2 = [v11 surrogateCompletion];
      surrogateCompletion2[2](surrogateCompletion2, 0);
      _objc_release(surrogateCompletion2);
    }

    [(AKAuthenticationSurrogateManager *)selfCopy _clearSurrogate:v11];
  }

  else
  {
    v10 = _AKLogSystem();
    v9 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v16, _identifier);
      _os_log_error_impl(&_mh_execute_header, v10, v9, "Context with identifier %@ has no registered UI surrogate.", v16, 0xCu);
    }

    objc_storeStrong(&v10, 0);
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&_identifier, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_isClientWaitingForSurrogateAuth:(id)auth
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, auth);
  v5 = selfCopy;
  bundleID = [location[0] bundleID];
  v3 = [(AKAuthenticationSurrogateManager *)v5 _fetchSurrogateForClientBundleID:?];
  v7 = v3 != 0;
  _objc_release(v3);
  _objc_release(bundleID);
  objc_storeStrong(location, 0);
  return v7;
}

- (void)_waitForSurrogateCheckInWithContext:(id)context withUIWorkBlock:(id)block client:(id)client andCheckInID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v18 = 0;
  objc_storeStrong(&v18, block);
  v17 = 0;
  objc_storeStrong(&v17, client);
  v16 = 0;
  objc_storeStrong(&v16, d);
  v15 = _AKLogSystem();
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    sub_10001B098(v21, v17, v16);
    _os_log_impl(&_mh_execute_header, v15, v14, "Waiting for UI surrogate for client %@ with surrogate ID %@ to check in...", v21, 0x16u);
  }

  objc_storeStrong(&v15, 0);
  [(NSLock *)selfCopy->_surrogateCheckinIDLock lock];
  v13 = objc_opt_new();
  [v13 setPendingClientUIWork:v18];
  [v13 setPendingBGContext:location[0]];
  bundleID = [v17 bundleID];
  [v13 setPendingClientBundle:?];
  _objc_release(bundleID);
  [v13 setSurrogateRegistrationID:v16];
  v7 = v13;
  inProgressSurrogates = [(AKAuthenticationSurrogateManager *)selfCopy inProgressSurrogates];
  _identifier = [location[0] _identifier];
  [(NSMutableDictionary *)inProgressSurrogates setObject:v7 forKeyedSubscript:?];
  _objc_release(_identifier);
  _objc_release(inProgressSurrogates);
  [(NSLock *)selfCopy->_surrogateCheckinIDLock unlock];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)_stopWaitingForCheckInWithContext:(id)context andError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v15 = 0;
  objc_storeStrong(&v15, error);
  [(NSLock *)selfCopy->_surrogateCheckinIDLock lock];
  inProgressSurrogates = [(AKAuthenticationSurrogateManager *)selfCopy inProgressSurrogates];
  _identifier = [location[0] _identifier];
  v14 = [(NSMutableDictionary *)inProgressSurrogates objectForKeyedSubscript:?];
  _objc_release(_identifier);
  _objc_release(inProgressSurrogates);
  if (v14)
  {
    v13 = _AKLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      surrogateClient = [v14 surrogateClient];
      surrogateRegistrationID = [v14 surrogateRegistrationID];
      sub_10001B098(v18, surrogateClient, surrogateRegistrationID);
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Stop waiting for UI surrogate for client %@ with surrogate ID %@!", v18, 0x16u);
      _objc_release(surrogateRegistrationID);
      _objc_release(surrogateClient);
    }

    objc_storeStrong(&v13, 0);
    surrogateCompletion = [v14 surrogateCompletion];
    _objc_release(surrogateCompletion);
    if (surrogateCompletion)
    {
      surrogateCompletion2 = [v14 surrogateCompletion];
      surrogateCompletion2[2](surrogateCompletion2, 0, v15);
      _objc_release(surrogateCompletion2);
    }

    inProgressSurrogates2 = [(AKAuthenticationSurrogateManager *)selfCopy inProgressSurrogates];
    _identifier2 = [location[0] _identifier];
    [(NSMutableDictionary *)inProgressSurrogates2 setObject:0 forKeyedSubscript:?];
    _objc_release(_identifier2);
    _objc_release(inProgressSurrogates2);
  }

  [(NSLock *)selfCopy->_surrogateCheckinIDLock unlock];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleError:(id)error logMessage:(id)message withUIWorkBlock:(id)block
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v24 = 0;
  objc_storeStrong(&v24, message);
  v23 = 0;
  objc_storeStrong(&v23, block);
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
  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
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

- (id)_fetchSurrogateForClientBundleID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v16 = 0;
  [(NSLock *)selfCopy->_surrogateCheckinIDLock lock];
  memset(__b, 0, sizeof(__b));
  inProgressSurrogates = [(AKAuthenticationSurrogateManager *)selfCopy inProgressSurrogates];
  obj = [(NSMutableDictionary *)inProgressSurrogates allValues];
  _objc_release(inProgressSurrogates);
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
      pendingClientBundle = [v15 pendingClientBundle];
      v6 = [pendingClientBundle isEqualToString:location[0]];
      _objc_release(pendingClientBundle);
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
  [(NSLock *)selfCopy->_surrogateCheckinIDLock unlock];
  v4 = _objc_retain(v16);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (id)_fetchSurrogateWithRegistrationID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v16 = 0;
  [(NSLock *)selfCopy->_surrogateCheckinIDLock lock];
  memset(__b, 0, sizeof(__b));
  inProgressSurrogates = [(AKAuthenticationSurrogateManager *)selfCopy inProgressSurrogates];
  obj = [(NSMutableDictionary *)inProgressSurrogates allValues];
  _objc_release(inProgressSurrogates);
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
      surrogateRegistrationID = [v15 surrogateRegistrationID];
      v6 = [surrogateRegistrationID isEqual:location[0]];
      _objc_release(surrogateRegistrationID);
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
  [(NSLock *)selfCopy->_surrogateCheckinIDLock unlock];
  v4 = _objc_retain(v16);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (void)_clearSurrogate:(id)surrogate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, surrogate);
  [(NSLock *)selfCopy->_surrogateCheckinIDLock lock];
  inProgressSurrogates = [(AKAuthenticationSurrogateManager *)selfCopy inProgressSurrogates];
  v5 = [(NSMutableDictionary *)inProgressSurrogates allKeysForObject:location[0]];
  firstObject = [v5 firstObject];
  _objc_release(v5);
  _objc_release(inProgressSurrogates);
  if (firstObject)
  {
    inProgressSurrogates2 = [(AKAuthenticationSurrogateManager *)selfCopy inProgressSurrogates];
    [(NSMutableDictionary *)inProgressSurrogates2 setObject:0 forKeyedSubscript:firstObject];
    _objc_release(inProgressSurrogates2);
    selfCopy->_settingsSurrogationInProgress = 0;
  }

  else
  {
    v7 = _AKLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      surrogateClient = [location[0] surrogateClient];
      sub_1000194D4(v11, surrogateClient);
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error: Attempted to clear surrogate that is no longer in progress with ID %@.", v11, 0xCu);
      _objc_release(surrogateClient);
    }

    objc_storeStrong(&v7, 0);
  }

  [(NSLock *)selfCopy->_surrogateCheckinIDLock unlock];
  objc_storeStrong(&firstObject, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_launchAppleIDSettingsForContext:(id)context withCheckinID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v11 = 0;
  objc_storeStrong(&v11, d);
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
    v14 = [(AKAuthenticationSettingsLauncher *)selfCopy->_settingsLauncher launchSettingsForContext:location[0] withCheckinID:v11];
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  return v14 & 1;
}

@end