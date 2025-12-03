@interface AKAppleIDPushHelperService
+ (id)sharedService;
- (AKAppleIDPushHelperService)init;
- (BOOL)_canProceedWithArmingForMessage:(id)message account:(id)account;
- (BOOL)_isPrimaryAccount:(id)account;
- (BOOL)_messageSupportsAlerts:(id)alerts;
- (BOOL)_queryDelegatesForSuppressAction:(id)action;
- (BOOL)_shouldProcessPushMessage:(id)message withAccount:(id)account;
- (id)_akPCSAuthPushHandler;
- (id)_publicAPSToken;
- (id)_pushCommandsPostingCFUserNotification;
- (id)publicAPSTokenString;
- (void)_armDeviceWithMessage:(id)message account:(id)account notificationResult:(unint64_t)result;
- (void)_ensureDesiredAPSEnvironmentIsInUse:(id)use;
- (void)_generateLoginCodeForAccount:(id)account withIncomingMessage:(id)message;
- (void)_notifyDelegatesOfMessageActivation:(id)activation result:(unint64_t)result;
- (void)_notifyDelegatesOfMessageActivation:(id)activation result:(unint64_t)result payload:(id)payload;
- (void)_performCommandForMessage:(id)message forAccount:(id)account;
- (void)_processMessageWithDelegates:(id)delegates;
- (void)_startPasswordResetFlowForAccount:(id)account;
- (void)_unsafe_presentMessage:(id)message forAccount:(id)account;
- (void)_unsafe_processPushMessage:(id)message;
- (void)_unsafe_showLoginNotificationWithCode:(id)code incomingMessage:(id)message piggy:(BOOL)piggy;
- (void)_unsafe_showNotificationForMessage:(id)message account:(id)account responseHandler:(id)handler;
- (void)_unsafe_tearDownNotificationWithID:(id)d;
- (void)_unsafe_teardownCurrentLoginNotification;
- (void)connection:(id)connection didChangeConnectedStatus:(BOOL)status;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)connectionDidReconnect:(id)reconnect;
- (void)dealloc;
- (void)setDelegates:(id)delegates;
- (void)showPigCode:(id)code withIncomingMessage:(id)message;
- (void)startWithDelegates:(id)delegates;
- (void)tearDownLoginNotifications;
@end

@implementation AKAppleIDPushHelperService

+ (id)sharedService
{
  v5 = &unk_100374938;
  location = 0;
  objc_storeStrong(&location, &stru_100325348);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_100374930;

  return v2;
}

- (AKAppleIDPushHelperService)init
{
  location = &v19;
  v18 = a2;
  v19 = 0;
  v17.receiver = self;
  v17.super_class = AKAppleIDPushHelperService;
  v19 = [(AKAppleIDPushHelperService *)&v17 init];
  objc_storeStrong(&v19, v19);
  if (v19)
  {
    v2 = +[AKAccountManager sharedInstance];
    accountManager = v19->_accountManager;
    v19->_accountManager = v2;
    _objc_release(accountManager);
    v4 = objc_alloc_init(NSMutableDictionary);
    notificationsByPushID = v19->_notificationsByPushID;
    v19->_notificationsByPushID = v4;
    _objc_release(notificationsByPushID);
    v6 = dispatch_semaphore_create(0);
    apsTokenSemaphore = v19->_apsTokenSemaphore;
    v19->_apsTokenSemaphore = v6;
    _objc_release(apsTokenSemaphore);
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.authkit.pushServiceQueue", v15);
    pushServiceQueue = v19->_pushServiceQueue;
    v19->_pushServiceQueue = v8;
    _objc_release(pushServiceQueue);
    _objc_release(v15);
    v10 = [NSSet setWithObjects:@"com.apple.idmsauth", 0];
    pushTopics = v19->_pushTopics;
    v19->_pushTopics = v10;
    _objc_release(pushTopics);
  }

  v13 = &v19;
  v14 = _objc_retain(v19);
  objc_storeStrong(v13, 0);
  return v14;
}

- (void)startWithDelegates:(id)delegates
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegates);
  if (getenv("__OSINSTALL_ENVIRONMENT"))
  {
    v47 = _AKLogSystem();
    v46 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      log = v47;
      type = v46;
      sub_10001CEEC(v45);
      _os_log_impl(&_mh_execute_header, log, type, "We are running in recovery. Leaving APS alone.", v45, 2u);
    }

    objc_storeStrong(&v47, 0);
    v44 = 1;
  }

  else if (getenv("__AKSYNCBUBBLE"))
  {
    v43 = _AKLogSystem();
    v42 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v43;
      v14 = v42;
      sub_10001CEEC(v41);
      _os_log_impl(&_mh_execute_header, v13, v14, "We are running in the sync bubble. Leaving APS alone.", v41, 2u);
    }

    objc_storeStrong(&v43, 0);
    v44 = 1;
  }

  else
  {
    queue = selfCopy->_pushServiceQueue;
    v35 = _NSConcreteStackBlock;
    v36 = -1073741824;
    v37 = 0;
    v38 = sub_100178D34;
    v39 = &unk_10031F8B0;
    v40 = _objc_retain(selfCopy);
    dispatch_async(queue, &v35);
    v34 = 0uLL;
    v12 = _AKSignpostLogSystem();
    *&v33 = _AKSignpostCreate();
    *(&v33 + 1) = v3;
    _objc_release(v12);
    v32 = _AKSignpostLogSystem();
    v31 = 1;
    v30 = v33;
    if (v33 && v30 != -1 && os_signpost_enabled(v32))
    {
      v8 = v32;
      v9 = v31;
      spid = v30;
      sub_10001CEEC(v29);
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, v9, spid, "APSTokenEnvironment", " enableTelemetry=YES ", v29, 2u);
    }

    objc_storeStrong(&v32, 0);
    v28 = _AKSignpostLogSystem();
    v27 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      sub_100036FE8(v50, v33);
      _os_log_impl(&_mh_execute_header, v28, v27, "BEGIN [%lld]: APSTokenEnvironment  enableTelemetry=YES ", v50, 0xCu);
    }

    objc_storeStrong(&v28, 0);
    v34 = v33;
    v7 = +[AKURLBag sharedBag];
    v6 = AKURLBagKeyAPSEnvironment;
    v20 = _NSConcreteStackBlock;
    v21 = -1073741824;
    v22 = 0;
    v23 = sub_100178F78;
    v24 = &unk_100325370;
    v26 = v34;
    v25 = _objc_retain(selfCopy);
    [v7 environmentValueForKey:v6 completion:&v20];
    _objc_release(v7);
    [(AKAppleIDPushHelperService *)selfCopy setDelegates:location[0]];
    oslog = _AKLogSystem();
    v18 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v4 = oslog;
      v5 = v18;
      sub_10001CEEC(v17);
      _os_log_impl(&_mh_execute_header, v4, v5, "Push service started", v17, 2u);
    }

    objc_storeStrong(&oslog, 0);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v40, 0);
    v44 = 0;
  }

  objc_storeStrong(location, 0);
}

- (void)setDelegates:(id)delegates
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegates);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v8, location[0]);
    _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "Updating push delegates: %@", v8, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v3 = [location[0] copy];
  pushDelegates = selfCopy->_pushDelegates;
  selfCopy->_pushDelegates = v3;
  _objc_release(pushDelegates);
  objc_storeStrong(location, 0);
}

- (void)_notifyDelegatesOfMessageActivation:(id)activation result:(unint64_t)result
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, activation);
  resultCopy = result;
  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [NSNumber numberWithUnsignedInteger:resultCopy];
    sub_1000194D4(v20, v10);
    _os_log_impl(&_mh_execute_header, oslog, type, "Will notify delegates of notification action: %@", v20, 0xCu);
    _objc_release(v10);
  }

  objc_storeStrong(&oslog, 0);
  memset(__b, 0, sizeof(__b));
  obj = _objc_retain(selfCopy->_pushDelegates);
  v9 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v19 count:16];
  if (v9)
  {
    v5 = *__b[2];
    v6 = 0;
    v7 = v9;
    while (1)
    {
      v4 = v6;
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(__b[1] + 8 * v6);
      if (objc_opt_respondsToSelector())
      {
        [v13 didRespondToMessage:location[0] withResult:resultCopy];
      }

      ++v6;
      if (v4 + 1 >= v7)
      {
        v6 = 0;
        v7 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v19 count:16];
        if (!v7)
        {
          break;
        }
      }
    }
  }

  _objc_release(obj);
  objc_storeStrong(location, 0);
}

- (void)_notifyDelegatesOfMessageActivation:(id)activation result:(unint64_t)result payload:(id)payload
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, activation);
  resultCopy = result;
  v18 = 0;
  objc_storeStrong(&v18, payload);
  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [NSNumber numberWithUnsignedInteger:resultCopy];
    sub_1000194D4(v23, v11);
    _os_log_impl(&_mh_execute_header, oslog, type, "Will notify delegates of notification action: %@", v23, 0xCu);
    _objc_release(v11);
  }

  objc_storeStrong(&oslog, 0);
  memset(__b, 0, sizeof(__b));
  v9 = _objc_retain(selfCopy->_pushDelegates);
  v10 = [(NSArray *)v9 countByEnumeratingWithState:__b objects:v22 count:16];
  if (v10)
  {
    v6 = *__b[2];
    v7 = 0;
    v8 = v10;
    while (1)
    {
      v5 = v7;
      if (*__b[2] != v6)
      {
        objc_enumerationMutation(v9);
      }

      v15 = *(__b[1] + 8 * v7);
      if (objc_opt_respondsToSelector())
      {
        [v15 didRespondToMessage:location[0] result:resultCopy payload:v18];
      }

      ++v7;
      if (v5 + 1 >= v8)
      {
        v7 = 0;
        v8 = [(NSArray *)v9 countByEnumeratingWithState:__b objects:v22 count:16];
        if (!v8)
        {
          break;
        }
      }
    }
  }

  _objc_release(v9);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_queryDelegatesForSuppressAction:(id)action
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, action);
  v21 = _AKLogSystem();
  v20 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    log = v21;
    type = v20;
    sub_10001CEEC(v19);
    _os_log_impl(&_mh_execute_header, log, type, "Will query delegates of intent to show notification", v19, 2u);
  }

  objc_storeStrong(&v21, 0);
  v18 = 0;
  memset(__b, 0, sizeof(__b));
  obj = _objc_retain(selfCopy->_pushDelegates);
  v11 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v25 count:16];
  if (v11)
  {
    v7 = *__b[2];
    v8 = 0;
    v9 = v11;
    while (1)
    {
      v6 = v8;
      if (*__b[2] != v7)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(__b[1] + 8 * v8);
      if (objc_opt_respondsToSelector())
      {
        v15 = [v17 shouldSuppressPushMessage:location[0]];
        v18 = (v18 | v15 & 1) != 0;
      }

      ++v8;
      if (v6 + 1 >= v9)
      {
        v8 = 0;
        v9 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v25 count:16];
        if (!v9)
        {
          break;
        }
      }
    }
  }

  _objc_release(obj);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    if (v18)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    sub_1000194D4(v24, v3);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Did notify delegates of intent to show notification, suppression elected: %@", v24, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v5 = v18;
  objc_storeStrong(location, 0);
  return v5;
}

- (void)_processMessageWithDelegates:(id)delegates
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegates);
  v28 = _AKLogSystem();
  v27 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    log = v28;
    type = v27;
    sub_10001CEEC(v26);
    _os_log_impl(&_mh_execute_header, log, type, "Will ask delegates to process push payload", v26, 2u);
  }

  objc_storeStrong(&v28, 0);
  memset(__b, 0, sizeof(__b));
  obj = _objc_retain(selfCopy->_pushDelegates);
  v11 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v31 count:16];
  if (v11)
  {
    v7 = *__b[2];
    v8 = 0;
    v9 = v11;
    while (1)
    {
      v6 = v8;
      if (*__b[2] != v7)
      {
        objc_enumerationMutation(obj);
      }

      v25 = *(__b[1] + 8 * v8);
      queue = dispatch_get_global_queue(33, 0);
      v17 = _NSConcreteStackBlock;
      v18 = -1073741824;
      v19 = 0;
      v20 = sub_100179E60;
      v21 = &unk_10031F078;
      v22 = _objc_retain(v25);
      v23 = _objc_retain(location[0]);
      dispatch_async(queue, &v17);
      _objc_release(queue);
      objc_storeStrong(&v23, 0);
      objc_storeStrong(&v22, 0);
      ++v8;
      if (v6 + 1 >= v9)
      {
        v8 = 0;
        v9 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v31 count:16];
        if (!v9)
        {
          break;
        }
      }
    }
  }

  _objc_release(obj);
  oslog = _AKLogSystem();
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog;
    v4 = v15;
    sub_10001CEEC(v14);
    _os_log_impl(&_mh_execute_header, v3, v4, "Did ask delegates to process push payload", v14, 2u);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(location, 0);
}

- (void)_ensureDesiredAPSEnvironmentIsInUse:(id)use
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, use);
  if (location[0])
  {
    queue = selfCopy->_pushServiceQueue;
    v6 = _NSConcreteStackBlock;
    v7 = -1073741824;
    v8 = 0;
    v9 = sub_10017A044;
    v10 = &unk_10031F078;
    v11 = _objc_retain(location[0]);
    v12 = _objc_retain(selfCopy);
    dispatch_sync(queue, &v6);
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v11, 0);
    v13 = 0;
  }

  else
  {
    v16 = _AKLogSystem();
    v15 = 2;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      log = v16;
      type = v15;
      sub_10001CEEC(v14);
      _os_log_debug_impl(&_mh_execute_header, log, type, "Server is not providing an APS env override.", v14, 2u);
    }

    objc_storeStrong(&v16, 0);
    v13 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)dealloc
{
  selfCopy = self;
  location[1] = a2;
  if (self->_apsConnection)
  {
    location[0] = _AKLogSystem();
    v6 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      log = location[0];
      type = v6;
      sub_10001CEEC(v5);
      _os_log_impl(&_mh_execute_header, log, type, "Shutting down APS connection...", v5, 2u);
    }

    objc_storeStrong(location, 0);
    [(APSConnection *)selfCopy->_apsConnection shutdown];
    [(APSConnection *)selfCopy->_apsConnection setDelegate:0];
    objc_storeStrong(&selfCopy->_apsConnection, 0);
  }

  v4.receiver = selfCopy;
  v4.super_class = AKAppleIDPushHelperService;
  [(AKAppleIDPushHelperService *)&v4 dealloc];
}

- (void)connection:(id)connection didChangeConnectedStatus:(BOOL)status
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, connection);
  statusCopy = status;
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006A654(v8, statusCopy);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "APNS status changed: %d", v8, 8u);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(location, 0);
}

- (void)connectionDidReconnect:(id)reconnect
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, reconnect);
  v7 = _AKLogSystem();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    log = v7;
    type = v6;
    sub_10001CEEC(v5);
    _os_log_impl(&_mh_execute_header, log, type, "APNS reconnected", v5, 2u);
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, connection);
  v32 = 0;
  objc_storeStrong(&v32, token);
  if (objc_opt_respondsToSelector())
  {
    v28 = objc_alloc_init(AKPushTokenKeychainWrapper);
    fetchToken = [v28 fetchToken];
    if ([fetchToken isEqual:v32])
    {
      v26 = _AKLogSystem();
      v25 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v15 = v26;
        v16 = v25;
        sub_10001CEEC(v24);
        _os_log_debug_impl(&_mh_execute_header, v15, v16, "Public token matches cached token, returning...", v24, 2u);
      }

      objc_storeStrong(&v26, 0);
      v23 = _AKLogSystem();
      v22 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        aaf_toHexString = [fetchToken aaf_toHexString];
        aaf_toHexString2 = [v32 aaf_toHexString];
        sub_10001B098(v37, aaf_toHexString, aaf_toHexString2);
        _os_log_debug_impl(&_mh_execute_header, v23, v22, "cachedToken: %@, publicToken: %@", v37, 0x16u);
        _objc_release(aaf_toHexString2);
        _objc_release(aaf_toHexString);
      }

      objc_storeStrong(&v23, 0);
      v29 = 1;
    }

    else
    {
      [v28 updateToken:v32];
      v21 = _AKLogSystem();
      v20 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        aaf_toHexString3 = [v32 aaf_toHexString];
        sub_1000194D4(v36, aaf_toHexString3);
        _os_log_debug_impl(&_mh_execute_header, v21, v20, "APS says we have a new public token! %@", v36, 0xCu);
        _objc_release(aaf_toHexString3);
      }

      objc_storeStrong(&v21, 0);
      dispatch_semaphore_signal(selfCopy->_apsTokenSemaphore);
      memset(__b, 0, sizeof(__b));
      v10 = _objc_retain(selfCopy->_pushDelegates);
      v11 = [(NSArray *)v10 countByEnumeratingWithState:__b objects:v35 count:16];
      if (v11)
      {
        v7 = *__b[2];
        v8 = 0;
        v9 = v11;
        while (1)
        {
          v6 = v8;
          if (*__b[2] != v7)
          {
            objc_enumerationMutation(v10);
          }

          v19 = *(__b[1] + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            v4 = v19;
            aaf_toHexString4 = [v32 aaf_toHexString];
            [v4 didReceiveNewPublicToken:?];
            _objc_release(aaf_toHexString4);
          }

          ++v8;
          if (v6 + 1 >= v9)
          {
            v8 = 0;
            v9 = [(NSArray *)v10 countByEnumeratingWithState:__b objects:v35 count:16];
            if (!v9)
            {
              break;
            }
          }
        }
      }

      _objc_release(v10);
      v29 = 0;
    }

    objc_storeStrong(&fetchToken, 0);
    objc_storeStrong(&v28, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v38, v32);
      _os_log_error_impl(&_mh_execute_header, oslog, type, "Unable to convert public token to hex string: %@", v38, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v29 = 1;
  }

  objc_storeStrong(&v32, 0);
  objc_storeStrong(location, 0);
}

- (id)publicAPSTokenString
{
  _publicAPSToken = [(AKAppleIDPushHelperService *)self _publicAPSToken];
  aaf_toHexString = [_publicAPSToken aaf_toHexString];
  _objc_release(_publicAPSToken);

  return aaf_toHexString;
}

- (id)_publicAPSToken
{
  selfCopy = self;
  location[1] = a2;
  if (+[AKDevice didConfirmDeviceWasActivated])
  {
    v41 = 0uLL;
    v12 = _AKSignpostLogSystem();
    *&v40 = _AKSignpostCreate();
    *(&v40 + 1) = v2;
    _objc_release(v12);
    v39 = _AKSignpostLogSystem();
    v38 = 1;
    v37 = v40;
    if (v40 && v37 != -1 && os_signpost_enabled(v39))
    {
      v9 = v39;
      v10 = v38;
      spid = v37;
      sub_10001CEEC(v36);
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, v10, spid, "APSTokenPopulate", " enableTelemetry=YES ", v36, 2u);
    }

    objc_storeStrong(&v39, 0);
    v35 = _AKSignpostLogSystem();
    v34 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      sub_100036FE8(v48, v40);
      _os_log_impl(&_mh_execute_header, v35, v34, "BEGIN [%lld]: APSTokenPopulate  enableTelemetry=YES ", v48, 0xCu);
    }

    objc_storeStrong(&v35, 0);
    v41 = v40;
    v27 = 0;
    v28 = &v27;
    v29 = 838860800;
    v30 = 48;
    v31 = sub_100003EAC;
    v32 = sub_100011470;
    v33 = 0;
    queue = selfCopy->_pushServiceQueue;
    v21 = _NSConcreteStackBlock;
    v22 = -1073741824;
    v23 = 0;
    v24 = sub_10017B3C4;
    v25 = &unk_100321010;
    v26[1] = &v27;
    v26[0] = _objc_retain(selfCopy);
    dispatch_sync(queue, &v21);
    v20 = _AKSignpostGetNanoseconds() / 1000000000.0;
    v19 = _AKSignpostLogSystem();
    v18 = 2;
    v17 = v41;
    if (v41 && v17 != -1 && os_signpost_enabled(v19))
    {
      v5 = v19;
      v6 = v18;
      v7 = v17;
      sub_10001CEEC(v16);
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v7, "APSTokenPopulate", "", v16, 2u);
    }

    objc_storeStrong(&v19, 0);
    oslog = _AKSignpostLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_100034384(v47, v41, *&v20);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:APSTokenPopulate ", v47, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    v46 = _objc_retain(v28[5]);
    objc_storeStrong(v26, 0);
    _Block_object_dispose(&v27, 8);
    objc_storeStrong(&v33, 0);
  }

  else
  {
    location[0] = _AKLogSystem();
    v43 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      log = location[0];
      type = v43;
      sub_10001CEEC(v42);
      _os_log_impl(&_mh_execute_header, log, type, "Unable to confirm this device was activated, skipping APS Token fetch.", v42, 2u);
    }

    objc_storeStrong(location, 0);
    v46 = 0;
  }

  v3 = v46;

  return v3;
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, connection);
  v29 = 0;
  objc_storeStrong(&v29, message);
  v27 = _os_activity_create(&_mh_execute_header, "akd/received-push-message", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v28 = v27;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v27, &state);
  v25 = _AKLogSystem();
  v24 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v29;
    userInfo = [v29 userInfo];
    sub_10001B098(v32, v11, userInfo);
    _os_log_impl(&_mh_execute_header, v25, v24, "Received push message: %@. Contents: %@", v32, 0x16u);
    _objc_release(userInfo);
  }

  objc_storeStrong(&v25, 0);
  pushTopics = selfCopy->_pushTopics;
  topic = [v29 topic];
  v8 = [(NSSet *)pushTopics containsObject:?];
  _objc_release(topic);
  if (v8)
  {
    if ([v29 isTracingEnabled])
    {
      [location[0] confirmReceiptForMessage:v29];
    }

    queue = selfCopy->_pushServiceQueue;
    v13 = _NSConcreteStackBlock;
    v14 = -1073741824;
    v15 = 0;
    v16 = sub_10017BBB8;
    v17 = &unk_10031F078;
    v18 = _objc_retain(v29);
    v19 = _objc_retain(selfCopy);
    dispatch_async(queue, &v13);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v18, 0);
    v20 = 0;
  }

  else
  {
    v23 = _AKLogSystem();
    v22 = 16;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v5 = v23;
      v6 = v22;
      sub_10001CEEC(v21);
      _os_log_error_impl(&_mh_execute_header, v5, v6, "Push message is not for the IDMS topic. Ignoring!", v21, 2u);
    }

    objc_storeStrong(&v23, 0);
    v20 = 1;
  }

  os_activity_scope_leave(&state);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

- (void)_unsafe_processPushMessage:(id)message
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message);
  dispatch_assert_queue_V2(selfCopy->_pushServiceQueue);
  if (location[0])
  {
    v42 = 0;
    v41 = 0;
    if ([location[0] isValidMessage])
    {
      v40 = _AKLogSystem();
      v39 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        sub_1000194D4(v50, location[0]);
        _os_log_debug_impl(&_mh_execute_header, v40, v39, "Attempting to process %@", v50, 0xCu);
      }

      objc_storeStrong(&v40, 0);
      altDSID = [location[0] altDSID];
      v3 = [(AKAccountManager *)selfCopy->_accountManager authKitAccountWithAltDSID:altDSID error:0];
      v4 = v42;
      v42 = v3;
      _objc_release(v4);
      v41 = [(AKAppleIDPushHelperService *)selfCopy _shouldProcessPushMessage:location[0] withAccount:v42];
      objc_storeStrong(&altDSID, 0);
    }

    if (v41)
    {
      if ([location[0] command] == 400 || objc_msgSend(location[0], "command") == 410)
      {
        v37 = _AKLogSystem();
        v36 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v18 = v37;
          v19 = v36;
          sub_10001CEEC(v35);
          _os_log_impl(&_mh_execute_header, v18, v19, "Received push command to tear down notification.", v35, 2u);
        }

        objc_storeStrong(&v37, 0);
        v17 = +[AKFollowUpManagerFactory sharedAuthKitFollowupManager];
        previousMessageId = [location[0] previousMessageId];
        v34 = [v17 pendingFollowUpWithMessageId:?];
        _objc_release(previousMessageId);
        _objc_release(v17);
        if ([v34 count])
        {
          v15 = +[AKFollowUpManagerFactory sharedAuthKitFollowupManager];
          [v15 tearDownFollowUpsWithItems:v34];
          _objc_release(v15);
        }

        else
        {
          v13 = selfCopy;
          previousMessageId2 = [location[0] previousMessageId];
          [(AKAppleIDPushHelperService *)v13 _unsafe_tearDownNotificationWithID:?];
          _objc_release(previousMessageId2);
        }

        objc_storeStrong(&v34, 0);
      }

      else if ([location[0] command] == 900)
      {
        v33 = _AKLogSystem();
        v32 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v11 = v33;
          v12 = v32;
          sub_10001CEEC(v31);
          _os_log_impl(&_mh_execute_header, v11, v12, "Received push command to refresh AKURLBag", v31, 2u);
        }

        objc_storeStrong(&v33, 0);
        +[NSXPCConnection beginTransaction];
        v9 = +[AKURLBagService sharedBagService];
        [v9 clearCache];
        _objc_release(v9);
        v10 = +[AKURLBagService sharedBagService];
        [v10 fetchURLBagForAltDSID:0 completion:&stru_100325390];
        _objc_release(v10);
      }

      else
      {
        v30 = [(AKAppleIDPushHelperService *)selfCopy _messageSupportsAlerts:location[0]];
        if (v30)
        {
          v29 = [(AKAppleIDPushHelperService *)selfCopy _queryDelegatesForSuppressAction:location[0]];
          if ((v29 & 1) != 0 && ([location[0] command] == 700 || objc_msgSend(location[0], "command") == 100))
          {
            v28 = _AKLogSystem();
            v27 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              v7 = v28;
              v8 = v27;
              sub_10001CEEC(v26);
              _os_log_impl(&_mh_execute_header, v7, v8, "Processing a supressed command, tearing down previous HSA2 alerts", v26, 2u);
            }

            objc_storeStrong(&v28, 0);
            [(AKAppleIDPushHelperService *)selfCopy _unsafe_teardownCurrentLoginNotification];
          }

          v30 = (v29 & 1) == 0;
        }

        if (v30)
        {
          [(AKAppleIDPushHelperService *)selfCopy _unsafe_presentMessage:location[0] forAccount:v42];
        }

        else
        {
          v25 = _AKLogSystem();
          v24 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v5 = v25;
            v6 = v24;
            sub_10001CEEC(v23);
            _os_log_impl(&_mh_execute_header, v5, v6, "Incoming message alert suppressed", v23, 2u);
          }

          objc_storeStrong(&v25, 0);
          [(AKAppleIDPushHelperService *)selfCopy _processMessageWithDelegates:location[0]];
        }
      }
    }

    else
    {
      oslog = _AKLogSystem();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        sub_1000194D4(v49, location[0]);
        _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "Discarding message as ineligible: %@", v49, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
    }

    objc_storeStrong(&v42, 0);
    v43 = 0;
  }

  else
  {
    v46 = _AKLogSystem();
    v45 = 2;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      log = v46;
      type = v45;
      sub_10001CEEC(v44);
      _os_log_debug_impl(&_mh_execute_header, log, type, "All queued push messages processed, we're done!", v44, 2u);
    }

    objc_storeStrong(&v46, 0);
    v43 = 1;
  }

  objc_storeStrong(location, 0);
}

- (id)_akPCSAuthPushHandler
{
  selfCopy = self;
  v8[1] = a2;
  if (!self->_pcsAuthPushHandler)
  {
    v8[0] = +[AKAccountManager sharedInstance];
    v7 = +[AKWebSessionPCSKeyProvider sharedInstance];
    v2 = [AKPCSAuthPushHandler alloc];
    v3 = [(AKPCSAuthPushHandler *)v2 initWithAccountManager:v8[0] webSessionPCSKeyProvider:v7];
    pcsAuthPushHandler = selfCopy->_pcsAuthPushHandler;
    selfCopy->_pcsAuthPushHandler = v3;
    _objc_release(pcsAuthPushHandler);
    objc_storeStrong(&v7, 0);
    objc_storeStrong(v8, 0);
  }

  v5 = selfCopy->_pcsAuthPushHandler;

  return v5;
}

- (BOOL)_shouldProcessPushMessage:(id)message withAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message);
  v42 = 0;
  objc_storeStrong(&v42, account);
  if (([location[0] command] == 300 || objc_msgSend(location[0], "command") == 310) && (v21 = -[AKAccountManager altDSIDForAccount:](selfCopy->_accountManager, "altDSIDForAccount:", v42), v20 = -[AKAccountManager altDSIDforPrimaryiCloudAccount](selfCopy->_accountManager, "altDSIDforPrimaryiCloudAccount"), v22 = objc_msgSend(v21, "isEqualToString:"), _objc_release(v20), _objc_release(v21), !v22))
  {
    v41 = _AKLogSystem();
    v40 = 16;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      log = v41;
      type = v40;
      sub_10001CEEC(v39);
      _os_log_error_impl(&_mh_execute_header, log, type, "Password reset push message is only allowed for primary account iCloud account, suppressing...", v39, 2u);
    }

    objc_storeStrong(&v41, 0);
    v45 = 0;
    v38 = 1;
  }

  else
  {
    v36 = 0;
    v17 = 0;
    if ([location[0] requiresPasscode])
    {
      v37 = +[AKDevice currentDevice];
      v36 = 1;
      v17 = [v37 isProtectedWithPasscode] == 0;
    }

    if (v36)
    {
      _objc_release(v37);
    }

    if (v17)
    {
      v35 = _AKLogSystem();
      v34 = 16;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v15 = v35;
        v16 = v34;
        sub_10001CEEC(v33);
        _os_log_error_impl(&_mh_execute_header, v15, v16, "Push message required a passcode but current device does not have one, suppressing...", v33, 2u);
      }

      objc_storeStrong(&v35, 0);
      v45 = 0;
      v38 = 1;
    }

    else if ([location[0] command] == 700 || v42)
    {
      v30 = [location[0] command] == 1900;
      v30 = (v30 | ([location[0] command] == 2000)) != 0;
      if (!v30 || [(AKAppleIDPushHelperService *)selfCopy _isPrimaryAccount:v42])
      {
        _pushCommandsPostingCFUserNotification = [(AKAppleIDPushHelperService *)selfCopy _pushCommandsPostingCFUserNotification];
        v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [location[0] command]);
        v11 = [_pushCommandsPostingCFUserNotification containsObject:?];
        _objc_release(v9);
        _objc_release(_pushCommandsPostingCFUserNotification);
        if (v11 & 1) != 0 && (v7 = +[AKDevice currentDevice](AKDevice, "currentDevice"), v8 = [v7 isInRestrictedSharingMode], _objc_release(v7), (v8))
        {
          v26 = _AKLogSystem();
          v25 = 16;
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v5 = v26;
            v6 = v25;
            sub_10001CEEC(v24);
            _os_log_error_impl(&_mh_execute_header, v5, v6, "Push message requires posting a CFUserNotification and the device is in restricted sharing mode, suppressing...", v24, 2u);
          }

          objc_storeStrong(&v26, 0);
          v45 = 0;
          v38 = 1;
        }

        else
        {
          v45 = 1;
          v38 = 1;
        }
      }

      else
      {
        v29 = _AKLogSystem();
        v28 = 16;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v12 = v29;
          v13 = v28;
          sub_10001CEEC(v27);
          _os_log_error_impl(&_mh_execute_header, v12, v13, "Push message is only allowed for primary account, suppressing...", v27, 2u);
        }

        objc_storeStrong(&v29, 0);
        v45 = 0;
        v38 = 1;
      }
    }

    else
    {
      v32 = _AKLogSystem();
      v31 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        altDSID = [location[0] altDSID];
        sub_10001CE98(v46, 1752392040, altDSID);
        _os_log_error_impl(&_mh_execute_header, v32, v31, "Push message is for an unknown altDSID %{mask.hash}@, suppressing...", v46, 0x16u);
        _objc_release(altDSID);
      }

      objc_storeStrong(&v32, 0);
      v45 = 0;
      v38 = 1;
    }
  }

  objc_storeStrong(&v42, 0);
  objc_storeStrong(location, 0);
  return v45 & 1;
}

- (void)_unsafe_presentMessage:(id)message forAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message);
  v18 = 0;
  objc_storeStrong(&v18, account);
  dispatch_assert_queue_V2(selfCopy[5]);
  v17 = _AKLogSystem();
  v16 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v21, location[0]);
    _os_log_impl(&_mh_execute_header, v17, v16, "Showing alert for message %@.", v21, 0xCu);
  }

  objc_storeStrong(&v17, 0);
  v6 = selfCopy;
  v4 = location[0];
  v5 = v18;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_10017CE94;
  v12 = &unk_1003253B8;
  v13 = _objc_retain(selfCopy);
  v14 = _objc_retain(location[0]);
  v15 = _objc_retain(v18);
  [(dispatch_queue_t *)v6 _unsafe_showNotificationForMessage:v4 account:v5 responseHandler:&v8];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)_armDeviceWithMessage:(id)message account:(id)account notificationResult:(unint64_t)result
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message);
  v17 = 0;
  objc_storeStrong(&v17, account);
  v16[1] = result;
  _akPCSAuthPushHandler = [(AKAppleIDPushHelperService *)selfCopy _akPCSAuthPushHandler];
  v7 = location[0];
  v9 = _NSConcreteStackBlock;
  v10 = -1073741824;
  v11 = 0;
  v12 = sub_10017D324;
  v13 = &unk_1003253E0;
  v14 = _objc_retain(selfCopy);
  v15 = _objc_retain(location[0]);
  v16[0] = _objc_retain(v17);
  [_akPCSAuthPushHandler armDeviceWithPCSAuthorizationContextForMessage:v7 completion:?];
  _objc_release(_akPCSAuthPushHandler);
  objc_storeStrong(v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_messageSupportsAlerts:(id)alerts
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, alerts);
  alertTitle = [location[0] alertTitle];
  v6 = 0;
  v5 = 0;
  if (alertTitle)
  {
    alertBody = [location[0] alertBody];
    v6 = 1;
    v5 = alertBody != 0;
  }

  v9 = v5;
  if (v6)
  {
    _objc_release(alertBody);
  }

  _objc_release(alertTitle);
  objc_storeStrong(location, 0);
  return v9;
}

- (void)_performCommandForMessage:(id)message forAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message);
  v14 = 0;
  objc_storeStrong(&v14, account);
  command = [location[0] command];
  if (command == 100)
  {
    [(AKAppleIDPushHelperService *)selfCopy _generateLoginCodeForAccount:v14 withIncomingMessage:location[0]];
  }

  else if (command == 300 || command == 310)
  {
    [(AKAppleIDPushHelperService *)selfCopy _startPasswordResetFlowForAccount:v14];
  }

  else
  {
    v13 = _AKLogSystem();
    v12 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [location[0] command]);
      sub_1000194D4(v17, v6);
      _os_log_impl(&_mh_execute_header, v13, v12, "No action to be done for push command %@.", v17, 0xCu);
      _objc_release(v6);
    }

    objc_storeStrong(&v13, 0);
  }

  v11 = _AKLogSystem();
  v10 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v11;
    v5 = v10;
    sub_10001CEEC(v9);
    _os_log_impl(&_mh_execute_header, v4, v5, "Processed all known commands, notifying delegates", v9, 2u);
  }

  objc_storeStrong(&v11, 0);
  [(AKAppleIDPushHelperService *)selfCopy _processMessageWithDelegates:location[0]];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)_generateLoginCodeForAccount:(id)account withIncomingMessage:(id)message
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v22 = 0;
  objc_storeStrong(&v22, message);
  v21 = _AKLogSystem();
  v20 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    username = [location[0] username];
    sub_1000194D4(v25, username);
    _os_log_impl(&_mh_execute_header, v21, v20, "Trying to generate login code now for %@...", v25, 0xCu);
    _objc_release(username);
  }

  objc_storeStrong(&v21, 0);
  v19 = 0;
  v17 = 0;
  v4 = [AKAppleIDCodeGenerator generateLoginCode:&v17];
  objc_storeStrong(&v19, v17);
  v18 = v4;
  queue = selfCopy->_pushServiceQueue;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_10017DA54;
  v12 = &unk_100320000;
  v13 = _objc_retain(v19);
  v14 = _objc_retain(selfCopy);
  v15 = _objc_retain(v18);
  v16 = _objc_retain(v22);
  dispatch_async(queue, &v8);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)showPigCode:(id)code withIncomingMessage:(id)message
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, code);
  v19 = 0;
  objc_storeStrong(&v19, message);
  v18 = _AKLogSystem();
  v17 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    log = v18;
    type = v17;
    sub_10001CEEC(v16);
    _os_log_impl(&_mh_execute_header, log, type, "Will display piggy notification...", v16, 2u);
  }

  objc_storeStrong(&v18, 0);
  queue = selfCopy->_pushServiceQueue;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_10017DF58;
  v12 = &unk_10031F050;
  v13 = _objc_retain(selfCopy);
  v14 = _objc_retain(location[0]);
  v15 = _objc_retain(v19);
  dispatch_async(queue, &v8);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

- (void)tearDownLoginNotifications
{
  v8[2] = self;
  v8[1] = a2;
  queue = self->_pushServiceQueue;
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_10017E05C;
  v7 = &unk_10031F8B0;
  v8[0] = _objc_retain(self);
  dispatch_sync(queue, &v3);
  objc_storeStrong(v8, 0);
}

- (void)_unsafe_showLoginNotificationWithCode:(id)code incomingMessage:(id)message piggy:(BOOL)piggy
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, code);
  v19 = 0;
  objc_storeStrong(&v19, message);
  piggyCopy = piggy;
  [(AKAppleIDPushHelperService *)selfCopy _unsafe_teardownCurrentLoginNotification];
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%06u", [location[0] unsignedIntValue]);
  activeCode = selfCopy->_activeCode;
  selfCopy->_activeCode = v5;
  _objc_release(activeCode);
  messageId = [v19 messageId];
  loginCodeNotificationID = selfCopy->_loginCodeNotificationID;
  selfCopy->_loginCodeNotificationID = messageId;
  _objc_release(loginCodeNotificationID);
  v9 = [AKPushMessageNotificationPresenter alloc];
  v17 = [(AKPushMessageNotificationPresenter *)v9 initWithMessage:v19];
  [(NSMutableDictionary *)selfCopy->_notificationsByPushID setObject:v17 forKeyedSubscript:selfCopy->_loginCodeNotificationID];
  v14 = v17;
  v12 = location[0];
  v13 = piggyCopy;
  v15 = _objc_retain(selfCopy);
  v16 = _objc_retain(v19);
  [(AKPushMessageNotificationPresenter *)v14 presentLoginNotificationWithCode:v12 piggy:v13 completionHandler:?];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

- (void)_unsafe_teardownCurrentLoginNotification
{
  selfCopy = self;
  oslog[1] = a2;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v4, selfCopy->_loginCodeNotificationID);
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "Tearing down login notification: %@", v4, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  [(AKAppleIDPushHelperService *)selfCopy _unsafe_tearDownNotificationWithID:selfCopy->_loginCodeNotificationID];
}

- (void)_unsafe_tearDownNotificationWithID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  dispatch_assert_queue_V2(selfCopy->_pushServiceQueue);
  if (location[0])
  {
    if ([location[0] isEqualToString:selfCopy->_loginCodeNotificationID])
    {
      v7 = _AKLogSystem();
      v6 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000194D4(v12, selfCopy->_loginCodeNotificationID);
        _os_log_impl(&_mh_execute_header, v7, v6, "Will tear down current notification, with ID: %@", v12, 0xCu);
      }

      objc_storeStrong(&v7, 0);
      objc_storeStrong(&selfCopy->_loginCodeNotificationID, 0);
      objc_storeStrong(&selfCopy->_activeCode, 0);
    }

    else
    {
      oslog = _AKLogSystem();
      v4 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000194D4(v11, location[0]);
        _os_log_impl(&_mh_execute_header, oslog, v4, "Will tear down notification with ID: %@", v11, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
    }

    v3 = [(NSMutableDictionary *)selfCopy->_notificationsByPushID objectForKeyedSubscript:location[0]];
    [v3 tearDown];
    [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
    objc_storeStrong(&v3, 0);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)_startPasswordResetFlowForAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v13 = _AKLogSystem();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v17, location[0]);
    _os_log_impl(&_mh_execute_header, v13, v12, "Will take user to password-reset flow in Settings for %@...", v17, 0xCu);
  }

  objc_storeStrong(&v13, 0);
  v11 = [(AKAccountManager *)selfCopy->_accountManager altDSIDForAccount:location[0]];
  v10 = [(AKAccountManager *)selfCopy->_accountManager iCloudAccountForAltDSID:v11];
  v9 = 0;
  if ([(AKAppleIDPushHelperService *)selfCopy _isPrimaryAccount:location[0]]|| !v10)
  {
    objc_storeStrong(&v9, @"prefs:root=APPLE_ACCOUNT&aaaction=resetPassword");
  }

  else
  {
    identifier = [v10 identifier];
    v3 = [NSString stringWithFormat:@"prefs:root=ACCOUNTS_AND_PASSWORDS&path=%@&aaaction=resetPassword", identifier];
    v4 = v9;
    v9 = v3;
    _objc_release(v4);
    _objc_release(identifier);
  }

  if (v9)
  {
    v8 = [NSURL URLWithString:v9];
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v16, v8);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Using the following URL for iForgot redirect: %@", v16, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v5 = +[LSApplicationWorkspace defaultWorkspace];
    [v5 openSensitiveURL:v8 withOptions:0];
    _objc_release(v5);
    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)_unsafe_showNotificationForMessage:(id)message account:(id)account responseHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message);
  v44 = 0;
  objc_storeStrong(&v44, account);
  v43 = 0;
  objc_storeStrong(&v43, handler);
  dispatch_assert_queue_V2(selfCopy->_pushServiceQueue);
  if ([(AKAppleIDPushHelperService *)selfCopy _canProceedWithArmingForMessage:location[0] account:v44])
  {
    if ([location[0] command] == 100)
    {
      v21 = [NSBundle bundleWithIdentifier:?];
      v20 = [NSBundle localizedStringForKey:v21 value:"localizedStringForKey:value:table:" table:@"WALRUS_2FA_ARMING_NOTIFICATION_TITLE"];
      [location[0] setSecondaryTitleCDP:?];
      _objc_release(v20);
      _objc_release(v21);
      v22 = [AKDevice deviceSpecificLocalizedStringWithKey:@"WALRUS_2FA_ARMING_NOTIFICATION_BODY"];
      [location[0] setSecondaryBodyCDP:?];
      _objc_release(v22);
      v24 = [NSBundle bundleWithIdentifier:@"com.apple.AuthKit"];
      v23 = [(NSBundle *)v24 localizedStringForKey:@"LOGIN_CODE_ALERT_MESSAGE_FOOTER_DEFAULT" value:&stru_100330538 table:@"Localizable"];
      [location[0] setSecondaryFooter:?];
      _objc_release(v23);
      _objc_release(v24);
    }

    else if ([location[0] command] == 2000)
    {
      v15 = [NSBundle bundleWithIdentifier:?];
      v14 = [NSBundle localizedStringForKey:v15 value:"localizedStringForKey:value:table:" table:@"WALRUS_DIRECT_ARMING_NOTIFICATION_TITLE"];
      [location[0] setAlertTitle:?];
      _objc_release(v14);
      _objc_release(v15);
      v16 = [AKDevice deviceSpecificLocalizedStringWithKey:@"WALRUS_DIRECT_ARMING_NOTIFICATION_BODY"];
      [location[0] setAlertBody:?];
      _objc_release(v16);
      v18 = [NSBundle bundleWithIdentifier:@"com.apple.AuthKit"];
      v17 = [(NSBundle *)v18 localizedStringForKey:@"WALRUS_DIRECT_ARMING_NOTIFICATION_LOCKSCREEN_TITLE" value:&stru_100330538 table:@"Localizable"];
      [location[0] setLockScreenTitle:?];
      _objc_release(v17);
      _objc_release(v18);
      v19 = [AKDevice deviceSpecificLocalizedStringWithKey:@"WALRUS_DIRECT_ARMING_NOTIFICATION_LOCKSCREEN_BODY"];
      [location[0] setLockScreenBody:?];
      _objc_release(v19);
    }
  }

  v13 = 1;
  if ([location[0] command] != 100)
  {
    v13 = [location[0] command] == 700;
  }

  v42 = v13;
  if (v13)
  {
    [(AKAppleIDPushHelperService *)selfCopy _unsafe_teardownCurrentLoginNotification];
    messageId = [location[0] messageId];
    loginCodeNotificationID = selfCopy->_loginCodeNotificationID;
    selfCopy->_loginCodeNotificationID = messageId;
    _objc_release(loginCodeNotificationID);
    v41 = _AKLogSystem();
    v40 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      sub_1000194D4(v48, selfCopy->_loginCodeNotificationID);
      _os_log_debug_impl(&_mh_execute_header, v41, v40, "Active login notification id: %@", v48, 0xCu);
    }

    objc_storeStrong(&v41, 0);
  }

  if ([location[0] command] == 1600)
  {
    [(AKAppleIDPushHelperService *)selfCopy _unsafe_tearDownNotificationWithID:selfCopy->_appleCareNotificationID];
    messageId2 = [location[0] messageId];
    appleCareNotificationID = selfCopy->_appleCareNotificationID;
    selfCopy->_appleCareNotificationID = messageId2;
    _objc_release(appleCareNotificationID);
  }

  messageId3 = [location[0] messageId];
  v12 = [(NSMutableDictionary *)selfCopy->_notificationsByPushID objectForKeyedSubscript:messageId3];
  _objc_release(v12);
  if (v12)
  {
    v38 = _AKLogSystem();
    v37 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      sub_1000194D4(v47, messageId3);
      _os_log_debug_impl(&_mh_execute_header, v38, v37, "An alert is already being presented for push ID %@. Skipping alert presentation.", v47, 0xCu);
    }

    objc_storeStrong(&v38, 0);
    v36 = 1;
  }

  else
  {
    v9 = [AKPushMessageNotificationPresenter alloc];
    v35 = [(AKPushMessageNotificationPresenter *)v9 initWithMessage:location[0]];
    [(NSMutableDictionary *)selfCopy->_notificationsByPushID setObject:v35 forKeyedSubscript:messageId3];
    +[NSXPCConnection beginTransaction];
    v11 = v35;
    v10 = v44;
    v27 = _NSConcreteStackBlock;
    v28 = -1073741824;
    v29 = 0;
    v30 = sub_10017F19C;
    v31 = &unk_100323BF8;
    v32 = _objc_retain(selfCopy);
    v33 = _objc_retain(messageId3);
    v34 = _objc_retain(v43);
    [(AKPushMessageNotificationPresenter *)v11 presentMessageWithAccount:v10 completionHandler:&v27];
    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v33, 0);
    objc_storeStrong(&v32, 0);
    objc_storeStrong(&v35, 0);
    v36 = 0;
  }

  objc_storeStrong(&messageId3, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_canProceedWithArmingForMessage:(id)message account:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message);
  v27 = 0;
  objc_storeStrong(&v27, account);
  if ([location[0] command] != 2000 && objc_msgSend(location[0], "command") != 100)
  {
LABEL_18:
    v30 = 0;
    goto LABEL_19;
  }

  if (![(AKAppleIDPushHelperService *)selfCopy _isPrimaryAccount:v27])
  {
    v26 = _AKLogSystem();
    v25 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      log = v26;
      type = v25;
      sub_10001CEEC(v24);
      _os_log_impl(&_mh_execute_header, log, type, "Account is not primary, do not proceed with arming.", v24, 2u);
    }

    objc_storeStrong(&v26, 0);
    goto LABEL_18;
  }

  walrusWebAccessInfo = [location[0] walrusWebAccessInfo];
  _objc_release(walrusWebAccessInfo);
  if (!walrusWebAccessInfo)
  {
    v23 = _AKLogSystem();
    v22 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v23;
      v10 = v22;
      sub_10001CEEC(v21);
      _os_log_impl(&_mh_execute_header, v9, v10, "Web access info not provided, do not proceed with arming.", v21, 2u);
    }

    objc_storeStrong(&v23, 0);
    goto LABEL_18;
  }

  if (!+[AKCDPFactory isEligibleToArmDeviceForPCSAuth])
  {
    v20 = _AKLogSystem();
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v20;
      v8 = v19;
      sub_10001CEEC(v18);
      _os_log_impl(&_mh_execute_header, v7, v8, "Account is ineligible, do not proceed with arming.", v18, 2u);
    }

    objc_storeStrong(&v20, 0);
    goto LABEL_18;
  }

  v17 = _AKLogSystem();
  v16 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v17;
    v6 = v16;
    sub_10001CEEC(v15);
    _os_log_impl(&_mh_execute_header, v5, v6, "Push may proceed with PCS arming.", v15, 2u);
  }

  objc_storeStrong(&v17, 0);
  v30 = 1;
LABEL_19:
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
  return v30 & 1;
}

- (BOOL)_isPrimaryAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v7 = [(AKAccountManager *)selfCopy->_accountManager altDSIDForAccount:location[0]];
  v6 = [(AKAccountManager *)selfCopy->_accountManager iCloudAccountForAltDSID:v7];
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v10, v6);
    _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "Found matching iCloud account %@ for push.", v10, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v4 = [(AKAccountManager *)selfCopy->_accountManager isPrimaryiCloudAccount:v6];
  objc_storeStrong(&v6, HIDWORD(v4));
  objc_storeStrong(&v7, HIDWORD(v4));
  objc_storeStrong(location, HIDWORD(v4));
  return v4;
}

- (id)_pushCommandsPostingCFUserNotification
{
  selfCopy = self;
  v3 = a2;
  return [NSArray arrayWithObjects:&off_1003391A8, &off_1003391C0, &off_1003391D8, &off_1003391F0, &off_100339208, 0];
}

@end