@interface AKAuthorizationSessionManager
+ (id)sharedInstance;
- (AKAuthorizationSessionManager)init;
- (BOOL)_hasSessionTimedOutForRequest:(id)request;
- (id)_activeSessionForContext:(id)context client:(id)client;
- (id)_clientBundleIDForContext:(id)context client:(id)client;
- (id)clientForContext:(id)context;
- (id)userResponseWithContext:(id)context forClient:(id)client;
- (void)beginSessionWithContext:(id)context client:(id)client completion:(id)completion;
- (void)continueSessionWithContext:(id)context client:(id)client completion:(id)completion;
- (void)endSessionWithContext:(id)context client:(id)client completion:(id)completion;
- (void)updateUserResponse:(id)response withContext:(id)context forClient:(id)client;
@end

@implementation AKAuthorizationSessionManager

+ (id)sharedInstance
{
  v5 = &unk_1003746B0;
  location = 0;
  objc_storeStrong(&location, &stru_100321058);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_1003746A8;

  return v2;
}

- (AKAuthorizationSessionManager)init
{
  v13 = a2;
  v14 = 0;
  v12.receiver = self;
  v12.super_class = AKAuthorizationSessionManager;
  v14 = [(AKAuthorizationSessionManager *)&v12 init];
  objc_storeStrong(&v14, v14);
  if (v14)
  {
    v2 = objc_alloc_init(NSMutableDictionary);
    activeSessions = v14->_activeSessions;
    v14->_activeSessions = v2;
    _objc_release(activeSessions);
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("AKAuthorizationClearanceQueue", v10);
    clearanceQueue = v14->_clearanceQueue;
    v14->_clearanceQueue = v4;
    _objc_release(clearanceQueue);
    _objc_release(v10);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("AKAuthorizationTrafficQueue", v11);
    trafficQueue = v14->_trafficQueue;
    v14->_trafficQueue = v6;
    _objc_release(trafficQueue);
    _objc_release(v11);
  }

  v9 = _objc_retain(v14);
  objc_storeStrong(&v14, 0);
  return v9;
}

- (id)clientForContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  _sessionID = [location[0] _sessionID];
  _objc_release(_sessionID);
  if (_sessionID)
  {
    v24 = _AKLogSiwa();
    v23 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      sub_100036FE8(v32, [(NSMutableDictionary *)selfCopy->_activeSessions count]);
      _os_log_impl(&_mh_execute_header, v24, v23, "Number of active sessions: %lu", v32, 0xCu);
    }

    objc_storeStrong(&v24, 0);
    v22 = _AKLogSiwa();
    v21 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      _sessionID2 = [location[0] _sessionID];
      sub_1000194D4(v31, _sessionID2);
      _os_log_impl(&_mh_execute_header, v22, v21, "Looking for client with session ID: %@", v31, 0xCu);
      _objc_release(_sessionID2);
    }

    objc_storeStrong(&v22, 0);
    v14 = 0;
    v15 = &v14;
    v16 = 838860800;
    v17 = 48;
    v18 = sub_1000038D4;
    v19 = sub_100011140;
    v20 = 0;
    activeSessions = selfCopy->_activeSessions;
    v8 = _NSConcreteStackBlock;
    v9 = -1073741824;
    v10 = 0;
    v11 = sub_100076AE8;
    v12 = &unk_100321080;
    v13[0] = _objc_retain(location[0]);
    v13[1] = &v14;
    [(NSMutableDictionary *)activeSessions enumerateKeysAndObjectsUsingBlock:&v8];
    v30 = _objc_retain(v15[5]);
    v25 = 1;
    objc_storeStrong(v13, 0);
    _Block_object_dispose(&v14, 8);
    objc_storeStrong(&v20, 0);
  }

  else
  {
    v27 = _AKLogSiwa();
    v26 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v33, location[0]);
      _os_log_impl(&_mh_execute_header, v27, v26, "Session ID is nil for context: %@", v33, 0xCu);
    }

    objc_storeStrong(&v27, 0);
    v30 = 0;
    v25 = 1;
  }

  objc_storeStrong(location, 0);
  v3 = v30;

  return v3;
}

- (void)beginSessionWithContext:(id)context client:(id)client completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v38 = 0;
  objc_storeStrong(&v38, client);
  v37 = 0;
  objc_storeStrong(&v37, completion);
  v31[0] = 0;
  v31[1] = v31;
  v32 = 838860800;
  v33 = 48;
  v34 = sub_1000038D4;
  v35 = sub_100011140;
  v36 = 0;
  v25[0] = 0;
  v25[1] = v25;
  v26 = 838860800;
  v27 = 48;
  v28 = sub_1000038D4;
  v29 = sub_100011140;
  v30 = 0;
  queue = selfCopy->_trafficQueue;
  v16 = _NSConcreteStackBlock;
  v17 = -1073741824;
  v18 = 0;
  v19 = sub_1000770B8;
  v20 = &unk_1003210A8;
  v21 = _objc_retain(v38);
  v24[0] = _objc_retain(v37);
  v22 = _objc_retain(selfCopy);
  v23 = _objc_retain(location[0]);
  v24[1] = v25;
  v24[2] = v31;
  dispatch_sync(queue, &v16);
  clearanceQueue = selfCopy->_clearanceQueue;
  v9 = _NSConcreteStackBlock;
  v10 = -1073741824;
  v11 = 0;
  v12 = sub_10007779C;
  v13 = &unk_1003210D0;
  v14 = v25;
  v15 = v31;
  dispatch_sync(clearanceQueue, &v9);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(v24, 0);
  objc_storeStrong(&v21, 0);
  _Block_object_dispose(v25, 8);
  objc_storeStrong(&v30, 0);
  _Block_object_dispose(v31, 8);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
}

- (void)endSessionWithContext:(id)context client:(id)client completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v18 = 0;
  objc_storeStrong(&v18, client);
  v17 = 0;
  objc_storeStrong(&v17, completion);
  queue = selfCopy->_trafficQueue;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_1000779E8;
  v12 = &unk_1003200A8;
  v13 = _objc_retain(location[0]);
  v14 = _objc_retain(selfCopy);
  v15 = _objc_retain(v18);
  v16 = _objc_retain(v17);
  dispatch_sync(queue, &v8);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)continueSessionWithContext:(id)context client:(id)client completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v68 = 0;
  objc_storeStrong(&v68, client);
  v67 = 0;
  objc_storeStrong(&v67, completion);
  v66 = [(AKAuthorizationSessionManager *)selfCopy _clientBundleIDForContext:location[0] client:v68];
  if (v66)
  {
    v55 = [(NSMutableDictionary *)selfCopy->_activeSessions objectForKeyedSubscript:v66];
    if (v55)
    {
      userResponse = [v55 userResponse];
      selectedRequest = [userResponse selectedRequest];
      requestIdentifier = [selectedRequest requestIdentifier];
      uUIDString = [requestIdentifier UUIDString];
      _objc_release(requestIdentifier);
      _objc_release(selectedRequest);
      _objc_release(userResponse);
      _continuationRequestIdentifier = [location[0] _continuationRequestIdentifier];
      v14 = [uUIDString isEqualToString:?];
      _objc_release(_continuationRequestIdentifier);
      if (v14)
      {
        v36 = [(AKAuthorizationSessionManager *)selfCopy _hasSessionTimedOutForRequest:v55];
        if ((v36 & 1) == 1)
        {
          oslog = _AKLogSiwa();
          v34 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
          {
            sub_1000194D4(v71, v66);
            _os_log_debug_impl(&_mh_execute_header, oslog, v34, "AuthorizationSessionManager - Active request session timed out for %@", v71, 0xCu);
          }

          objc_storeStrong(&oslog, 0);
          clearanceQueue = selfCopy->_clearanceQueue;
          v28 = _NSConcreteStackBlock;
          v29 = -1073741824;
          v30 = 0;
          v31 = sub_1000788C4;
          v32 = &unk_100320EC8;
          v33 = _objc_retain(v67);
          dispatch_sync(clearanceQueue, &v28);
          [(NSMutableDictionary *)selfCopy->_activeSessions removeObjectForKey:v66];
          v56 = 1;
          objc_storeStrong(&v33, 0);
        }

        else
        {
          v5 = selfCopy->_clearanceQueue;
          v21 = _NSConcreteStackBlock;
          v22 = -1073741824;
          v23 = 0;
          v24 = sub_10007893C;
          v25 = &unk_100320530;
          v27 = _objc_retain(v67);
          v26 = _objc_retain(v55);
          dispatch_sync(v5, &v21);
          objc_storeStrong(&v26, 0);
          objc_storeStrong(&v27, 0);
          v56 = 0;
        }
      }

      else
      {
        v45 = _AKLogSiwa();
        v44 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          v8 = v45;
          v9 = v44;
          sub_10001CEEC(v43);
          _os_log_debug_impl(&_mh_execute_header, v8, v9, "AuthorizationSessionManager - _continuationRequestIdentifier does not match the requestIdentifier", v43, 2u);
        }

        objc_storeStrong(&v45, 0);
        v7 = selfCopy->_clearanceQueue;
        v37 = _NSConcreteStackBlock;
        v38 = -1073741824;
        v39 = 0;
        v40 = sub_10007884C;
        v41 = &unk_100320EC8;
        v42 = _objc_retain(v67);
        dispatch_sync(v7, &v37);
        v56 = 1;
        objc_storeStrong(&v42, 0);
      }

      objc_storeStrong(&uUIDString, 0);
    }

    else
    {
      v54 = _AKLogSiwa();
      v53 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
      {
        sub_1000194D4(v72, v66);
        _os_log_debug_impl(&_mh_execute_header, v54, v53, "AuthorizationSessionManager - No active request for %@", v72, 0xCu);
      }

      objc_storeStrong(&v54, 0);
      v15 = selfCopy->_clearanceQueue;
      v47 = _NSConcreteStackBlock;
      v48 = -1073741824;
      v49 = 0;
      v50 = sub_1000787D4;
      v51 = &unk_100320EC8;
      v52 = _objc_retain(v67);
      dispatch_sync(v15, &v47);
      v56 = 1;
      objc_storeStrong(&v52, 0);
    }

    objc_storeStrong(&v55, 0);
  }

  else
  {
    v65 = _AKLogSiwa();
    v64 = 2;
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
    {
      log = v65;
      type = v64;
      sub_10001CEEC(v63);
      _os_log_debug_impl(&_mh_execute_header, log, type, "AuthorizationSessionManager - Client bundle ID is nil.", v63, 2u);
    }

    objc_storeStrong(&v65, 0);
    queue = selfCopy->_clearanceQueue;
    v57 = _NSConcreteStackBlock;
    v58 = -1073741824;
    v59 = 0;
    v60 = sub_10007875C;
    v61 = &unk_100320EC8;
    v62 = _objc_retain(v67);
    dispatch_sync(queue, &v57);
    v56 = 1;
    objc_storeStrong(&v62, 0);
  }

  objc_storeStrong(&v66, 0);
  objc_storeStrong(&v67, 0);
  objc_storeStrong(&v68, 0);
  objc_storeStrong(location, 0);
}

- (void)updateUserResponse:(id)response withContext:(id)context forClient:(id)client
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v12 = 0;
  objc_storeStrong(&v12, context);
  v11 = 0;
  objc_storeStrong(&v11, client);
  v10 = _AKLogSiwa();
  v9 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_10001B098(v16, location[0], v12);
    _os_log_debug_impl(&_mh_execute_header, v10, v9, "AuthorizationSessionManager - Setting user response %@\n for context - %@", v16, 0x16u);
  }

  objc_storeStrong(&v10, 0);
  v8 = [(AKAuthorizationSessionManager *)selfCopy _activeSessionForContext:v12 client:v11];
  if (v8)
  {
    [v8 setUserResponse:location[0]];
  }

  else
  {
    oslog = _AKLogSiwa();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v15, v12);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "AuthorizationSessionManager - No active session for %@", v15, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (id)userResponseWithContext:(id)context forClient:(id)client
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v11 = 0;
  objc_storeStrong(&v11, client);
  v10 = _AKLogSiwa();
  v9 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v16, location[0]);
    _os_log_debug_impl(&_mh_execute_header, v10, v9, "AuthorizationSessionManager - Getting user response for context - %@", v16, 0xCu);
  }

  objc_storeStrong(&v10, 0);
  v8 = [(AKAuthorizationSessionManager *)selfCopy _activeSessionForContext:location[0] client:v11];
  if (v8)
  {
    userResponse = [v8 userResponse];
  }

  else
  {
    oslog = _AKLogSiwa();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v15, location[0]);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "AuthorizationSessionManager - No active session for %@", v15, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    userResponse = 0;
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  v4 = userResponse;

  return v4;
}

- (BOOL)_hasSessionTimedOutForRequest:(id)request
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v9 = +[NSDate date];
  requestTime = [location[0] requestTime];
  [(NSDate *)v9 timeIntervalSinceDate:?];
  v10 = v3;
  _objc_release(requestTime);
  _objc_release(v9);
  context = [location[0] context];
  [context _authSessionTimeoutInterval];
  v12 = 0;
  if (v4 <= 0.0)
  {
    v7 = 900.0;
  }

  else
  {
    context2 = [location[0] context];
    v12 = 1;
    [context2 _authSessionTimeoutInterval];
    v7 = v5;
  }

  if (v12)
  {
    _objc_release(context2);
  }

  _objc_release(context);
  objc_storeStrong(location, 0);
  return v10 > v7;
}

- (id)_clientBundleIDForContext:(id)context client:(id)client
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v13 = 0;
  objc_storeStrong(&v13, client);
  bundleID = [v13 bundleID];
  v10 = 0;
  v9 = 0;
  if ([location[0] _isWebLogin])
  {
    _proxiedClientServiceID = [location[0] _proxiedClientServiceID];
    v10 = 1;
    v9 = _proxiedClientServiceID != 0;
  }

  if (v10)
  {
    _objc_release(_proxiedClientServiceID);
  }

  if (v9)
  {
    _proxiedClientServiceID2 = [location[0] _proxiedClientServiceID];
    v5 = bundleID;
    bundleID = _proxiedClientServiceID2;
    _objc_release(v5);
  }

  v7 = _objc_retain(bundleID);
  objc_storeStrong(&bundleID, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);

  return v7;
}

- (id)_activeSessionForContext:(id)context client:(id)client
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v8 = 0;
  objc_storeStrong(&v8, client);
  v7 = [(AKAuthorizationSessionManager *)selfCopy _clientBundleIDForContext:location[0] client:v8];
  v6 = [(NSMutableDictionary *)selfCopy->_activeSessions objectForKeyedSubscript:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);

  return v6;
}

@end