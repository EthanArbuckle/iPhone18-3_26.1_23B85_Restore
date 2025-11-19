@interface AKAuthenticationTrafficController
+ (AKAuthenticationTrafficController)sharedInstance;
- (AKAuthenticationTrafficController)init;
- (BOOL)_hasValuesInMap:(id)a3;
- (BOOL)_isForegroundAuthenticationInProgress;
- (BOOL)_shouldClearLimitedUICapableAuth:(id)a3;
- (BOOL)_shouldClearRequest:(id)a3;
- (BOOL)_shouldClearUICapableAuth:(id)a3;
- (id)_nextClearedRequest;
- (void)_clearNextEligibleRequestWithUpdateBlock:(id)a3;
- (void)_processClearanceRequest:(id)a3 withClient:(id)a4;
- (void)_removeAuthenticationRequestForContext:(id)a3 client:(id)a4;
- (void)_tq_addContext:(id)a3 toAuthenticatingAppsforClient:(id)a4;
- (void)_tq_addContext:(id)a3 toAuthenticatingDaemonsforClient:(id)a4;
- (void)_tq_addContext:(id)a3 toAuthenticatingRequestsforClient:(id)a4;
- (void)_tq_addContext:(id)a3 toRequestDictionary:(id)a4 forClient:(id)a5;
- (void)_tq_invokeTrafficRequest:(id)a3;
- (void)_updateContext:(id)a3 withPassword:(id)a4 forAppleID:(id)a5;
- (void)_updateContextWithCachedPassword:(id)a3;
- (void)beginAuthenticatedRequestWithContext:(id)a3 client:(id)a4 clearanceHandler:(id)a5;
- (void)endAuthenticatedRequestWithContext:(id)a3 client:(id)a4 clearanceHandler:(id)a5;
- (void)endAuthenticationForAppleID:(id)a3 password:(id)a4 error:(id)a5 context:(id)a6 client:(id)a7 clearanceHandler:(id)a8;
- (void)flushCachedPasswords;
- (void)requestClearanceForShieldWithContext:(id)a3 client:(id)a4 completionHandler:(id)a5;
- (void)uplevelAuthenticationForUIWithContext:(id)a3 client:(id)a4 completion:(id)a5;
@end

@implementation AKAuthenticationTrafficController

+ (AKAuthenticationTrafficController)sharedInstance
{
  v5 = &unk_1003748C0;
  location = 0;
  objc_storeStrong(&location, &stru_100325100);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_1003748B8;

  return v2;
}

- (AKAuthenticationTrafficController)init
{
  v23 = a2;
  v24 = 0;
  v22.receiver = self;
  v22.super_class = AKAuthenticationTrafficController;
  v24 = [(AKAuthenticationTrafficController *)&v22 init];
  objc_storeStrong(&v24, v24);
  if (v24)
  {
    v2 = objc_alloc_init(NSMutableArray);
    pendingTrafficRequests = v24->_pendingTrafficRequests;
    v24->_pendingTrafficRequests = v2;
    _objc_release(pendingTrafficRequests);
    v4 = objc_alloc_init(NSMutableDictionary);
    authenticatingApps = v24->_authenticatingApps;
    v24->_authenticatingApps = v4;
    _objc_release(authenticatingApps);
    v6 = objc_alloc_init(NSMutableDictionary);
    authenticatingDaemons = v24->_authenticatingDaemons;
    v24->_authenticatingDaemons = v6;
    _objc_release(authenticatingDaemons);
    v8 = objc_alloc_init(NSMutableDictionary);
    authenticatedServerEndpointRequests = v24->_authenticatedServerEndpointRequests;
    v24->_authenticatedServerEndpointRequests = v8;
    _objc_release(authenticatedServerEndpointRequests);
    v10 = objc_alloc_init(AKExpiringCache);
    expiringCache = v24->_expiringCache;
    v24->_expiringCache = v10;
    _objc_release(expiringCache);
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_attr_make_with_qos_class(v18, QOS_CLASS_USER_INITIATED, 0);
    _objc_release(v18);
    v12 = dispatch_queue_create("AKATCClearanceQueue", v21);
    clearanceQueue = v24->_clearanceQueue;
    v24->_clearanceQueue = v12;
    _objc_release(clearanceQueue);
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_attr_make_with_qos_class(v19, QOS_CLASS_USER_INITIATED, 0);
    _objc_release(v19);
    v14 = dispatch_queue_create("AKAuthTrafficQueue", v20);
    trafficQueue = v24->_trafficQueue;
    v24->_trafficQueue = v14;
    _objc_release(trafficQueue);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v21, 0);
  }

  v17 = _objc_retain(v24);
  objc_storeStrong(&v24, 0);
  return v17;
}

- (void)beginAuthenticatedRequestWithContext:(id)a3 client:(id)a4 clearanceHandler:(id)a5
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = 0;
  objc_storeStrong(&v17, a5);
  queue = v20->_trafficQueue;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_10016DDF4;
  v12 = &unk_1003200A8;
  v13 = _objc_retain(v18);
  v14 = _objc_retain(location[0]);
  v15 = _objc_retain(v20);
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

- (void)endAuthenticatedRequestWithContext:(id)a3 client:(id)a4 clearanceHandler:(id)a5
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = 0;
  objc_storeStrong(&v21, a4);
  v20 = 0;
  objc_storeStrong(&v20, a5);
  v19 = _AKLogSystem();
  v18 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v6 = [NSNumber numberWithUnsignedInt:qos_class_self()];
    sub_10001B098(v24, v6, location[0]);
    _os_log_debug_impl(&_mh_execute_header, v19, v18, "Queueing (traffic) end authenticated event block with qos %@ for %@", v24, 0x16u);
    _objc_release(v6);
  }

  objc_storeStrong(&v19, 0);
  queue = v23->_trafficQueue;
  v9 = _NSConcreteStackBlock;
  v10 = -1073741824;
  v11 = 0;
  v12 = sub_10016E3B8;
  v13 = &unk_1003200A8;
  v14 = _objc_retain(v21);
  v15 = _objc_retain(v23);
  v16 = _objc_retain(location[0]);
  v17 = _objc_retain(v20);
  dispatch_async(queue, &v9);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

- (void)endAuthenticationForAppleID:(id)a3 password:(id)a4 error:(id)a5 context:(id)a6 client:(id)a7 clearanceHandler:(id)a8
{
  v35 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v33 = 0;
  objc_storeStrong(&v33, a4);
  v32 = 0;
  objc_storeStrong(&v32, a5);
  v31 = 0;
  objc_storeStrong(&v31, a6);
  v30 = 0;
  objc_storeStrong(&v30, a7);
  v29 = 0;
  objc_storeStrong(&v29, a8);
  v28 = _AKLogSystem();
  v27 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    v9 = [NSNumber numberWithUnsignedInt:qos_class_self()];
    sub_10001B098(v36, v9, v31);
    _os_log_debug_impl(&_mh_execute_header, v28, v27, "Queueing (traffic) end authentication block with qos %@ for %@", v36, 0x16u);
    _objc_release(v9);
  }

  objc_storeStrong(&v28, 0);
  queue = v35->_trafficQueue;
  v15 = _NSConcreteStackBlock;
  v16 = -1073741824;
  v17 = 0;
  v18 = sub_10016EBD8;
  v19 = &unk_100325150;
  v20 = _objc_retain(v35);
  v21 = _objc_retain(v31);
  v22 = _objc_retain(v30);
  v23 = _objc_retain(v33);
  v24 = _objc_retain(v32);
  v25 = _objc_retain(location[0]);
  v26 = _objc_retain(v29);
  dispatch_async(queue, &v15);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
}

- (void)uplevelAuthenticationForUIWithContext:(id)a3 client:(id)a4 completion:(id)a5
{
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v29 = 0;
  objc_storeStrong(&v29, a4);
  v28 = 0;
  objc_storeStrong(&v28, a5);
  v12 = +[AKFeatureManager sharedManager];
  v13 = [v12 isSilentAuthenticationRequestSerializationEnabled];
  _objc_release(v12);
  if (v13)
  {
    v7 = [v29 bundleID];
    if (v7)
    {
      v5 = _objc_retain(v7);
    }

    else
    {
      v5 = _objc_retain(@"com.apple.ak.unknown");
    }

    v23 = v5;
    _objc_release(v7);
    queue = v31->_trafficQueue;
    v14 = _NSConcreteStackBlock;
    v15 = -1073741824;
    v16 = 0;
    v17 = sub_10016F6E4;
    v18 = &unk_1003200A8;
    v19 = _objc_retain(v31);
    v20 = _objc_retain(v23);
    v21 = _objc_retain(location[0]);
    v22 = _objc_retain(v28);
    dispatch_async(queue, &v14);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v23, 0);
    v24 = 0;
  }

  else
  {
    v27 = _AKLogSystem();
    v26 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      log = v27;
      type = v26;
      sub_10001CEEC(v25);
      _os_log_impl(&_mh_execute_header, log, type, "Silent authentication serialization is disabled, skipping uplevel to UI...", v25, 2u);
    }

    objc_storeStrong(&v27, 0);
    (*(v28 + 2))(v28, 1, 0);
    v24 = 1;
  }

  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

- (void)requestClearanceForShieldWithContext:(id)a3 client:(id)a4 completionHandler:(id)a5
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = 0;
  objc_storeStrong(&v15, a5);
  queue = v18->_trafficQueue;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_10016FB9C;
  v12 = &unk_100320878;
  v13 = _objc_retain(v18);
  v14 = _objc_retain(v15);
  dispatch_async(queue, &v8);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)_removeAuthenticationRequestForContext:(id)a3 client:(id)a4
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v10 = [v17 bundleID];
  if (v10)
  {
    v4 = _objc_retain(v10);
  }

  else
  {
    v4 = _objc_retain(@"com.apple.ak.unknown");
  }

  v16 = v4;
  _objc_release(v10);
  v15 = _AKLogSystem();
  v14 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v20, v16);
    _os_log_debug_impl(&_mh_execute_header, v15, v14, "Removing %@ from authenticating list", v20, 0xCu);
  }

  objc_storeStrong(&v15, 0);
  if ([location[0] _capabilityForUIDisplay] == 3)
  {
    v13 = _AKLogSystem();
    v12 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v13;
      v8 = v12;
      sub_10001CEEC(v11);
      _os_log_impl(&_mh_execute_header, v7, v8, "Surrogate context is done", v11, 2u);
    }

    objc_storeStrong(&v13, 0);
  }

  v5 = [(NSMutableDictionary *)v19->_authenticatingApps objectForKeyedSubscript:v16];
  [v5 removeObject:location[0]];
  _objc_release(v5);
  v6 = [(NSMutableDictionary *)v19->_authenticatingDaemons objectForKeyedSubscript:v16];
  [v6 removeObject:location[0]];
  _objc_release(v6);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)flushCachedPasswords
{
  v7 = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v5 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v5;
    sub_10001CEEC(v4);
    _os_log_impl(&_mh_execute_header, log, type, "Clearing the password cache.", v4, 2u);
  }

  objc_storeStrong(location, 0);
  [(AKExpiringCache *)v7->_expiringCache flushCacheForced:1];
}

- (BOOL)_shouldClearRequest:(id)a3
{
  v75 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v73 = 0;
  v72 = _AKLogSystem();
  v71 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
  {
    v41 = +[AKFeatureManager sharedManager];
    v3 = [v41 isAuthenticatedRequestSerializationEnabled];
    v4 = @"YES";
    if ((v3 & 1) == 0)
    {
      v4 = @"NO";
    }

    v39 = v4;
    v40 = +[AKFeatureManager sharedManager];
    if ([v40 isSilentAuthenticationRequestSerializationEnabled])
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    sub_10001B098(v79, v39, v5);
    _os_log_debug_impl(&_mh_execute_header, v72, v71, "Serialization Feature Flag Summary - Request Serialization: %@, Silent Auth Serialization: %@", v79, 0x16u);
    _objc_release(v40);
    _objc_release(v41);
  }

  objc_storeStrong(&v72, 0);
  v38 = [location[0] authContext];
  _objc_release(v38);
  if (v38)
  {
    v36 = [(AKAuthenticationTrafficController *)v75 surrogateManager];
    v35 = [location[0] clientBundleID];
    v37 = [(AKAuthenticationSurrogateManager *)v36 isSurrogateAuthInProgressForClientBundleID:?];
    _objc_release(v35);
    _objc_release(v36);
    if (v37)
    {
      v70 = _AKLogSystem();
      v69 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
      {
        v34 = [location[0] clientBundleID];
        sub_1000194D4(v78, v34);
        _os_log_debug_impl(&_mh_execute_header, v70, v69, "Denying authentication clearance to client %@ due to pending surrogate auth...", v78, 0xCu);
        _objc_release(v34);
      }

      objc_storeStrong(&v70, 0);
      v73 = 0;
    }

    else
    {
      v30 = objc_opt_class();
      v32 = [location[0] authContext];
      v31 = sub_100171014(v30, v32);
      v33 = [v31 protoAccountContext];
      _objc_release(v33);
      _objc_release(v31);
      _objc_release(v32);
      if (v33)
      {
        v68 = _AKLogSystem();
        v67 = 2;
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
        {
          v28 = v68;
          v29 = v67;
          sub_10001CEEC(v66);
          _os_log_debug_impl(&_mh_execute_header, v28, v29, "Allowing authentication clearance because auth context has a proto account context", v66, 2u);
        }

        objc_storeStrong(&v68, 0);
        v73 = 1;
      }

      else
      {
        v26 = +[AKFeatureManager sharedManager];
        v27 = 0;
        if ([v26 isAuthenticatedRequestSerializationEnabled])
        {
          v27 = [(AKAuthenticationTrafficController *)v75 _hasActiveAuthenticatedRequests];
        }

        _objc_release(v26);
        if (v27)
        {
          v65 = _AKLogSystem();
          v64 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
          {
            v25 = [location[0] clientBundleID];
            sub_1000194D4(v77, v25);
            _os_log_debug_impl(&_mh_execute_header, v65, v64, "Denying authentication clearance to client %@ due to pending authenticated request inflight...", v77, 0xCu);
            _objc_release(v25);
          }

          objc_storeStrong(&v65, 0);
          v73 = 0;
        }

        else
        {
          v23 = +[AKFeatureManager sharedManager];
          v62 = 0;
          v24 = 0;
          if (![v23 isSilentAuthenticationRequestSerializationEnabled])
          {
            v63 = [location[0] authContext];
            v62 = 1;
            v24 = [v63 authenticationType] == 1;
          }

          if (v62)
          {
            _objc_release(v63);
          }

          _objc_release(v23);
          if (v24)
          {
            v61 = _AKLogSystem();
            v60 = 2;
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
            {
              v21 = v61;
              v22 = v60;
              sub_10001CEEC(v59);
              _os_log_debug_impl(&_mh_execute_header, v21, v22, "Clearing silent authentication.", v59, 2u);
            }

            objc_storeStrong(&v61, 0);
            v73 = 1;
          }

          else if ([(AKAuthenticationTrafficController *)v75 _hasActiveAppAuths]|| [(AKAuthenticationTrafficController *)v75 _hasActiveDaemonAuths])
          {
            if ([(AKAuthenticationTrafficController *)v75 _shouldClearUICapableAuth:location[0]])
            {
              v55 = _AKLogSystem();
              v54 = 2;
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
              {
                v17 = v55;
                v18 = v54;
                sub_10001CEEC(v53);
                _os_log_debug_impl(&_mh_execute_header, v17, v18, "Clearing UI capable authentication.", v53, 2u);
              }

              objc_storeStrong(&v55, 0);
              v73 = 1;
            }

            else if ([(AKAuthenticationTrafficController *)v75 _shouldClearLimitedUICapableAuth:location[0]])
            {
              oslog = _AKLogSystem();
              v51 = OS_LOG_TYPE_DEBUG;
              if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
              {
                v15 = oslog;
                v16 = v51;
                sub_10001CEEC(v50);
                _os_log_debug_impl(&_mh_execute_header, v15, v16, "Clearing limited UI capable authentication.", v50, 2u);
              }

              objc_storeStrong(&oslog, 0);
              v73 = 1;
            }
          }

          else
          {
            v58 = _AKLogSystem();
            v57 = 2;
            if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
            {
              v19 = v58;
              v20 = v57;
              sub_10001CEEC(v56);
              _os_log_debug_impl(&_mh_execute_header, v19, v20, "No authentication in progress, all clear!", v56, 2u);
            }

            objc_storeStrong(&v58, 0);
            v73 = 1;
          }
        }
      }
    }
  }

  else
  {
    v13 = +[AKFeatureManager sharedManager];
    v14 = [v13 isAuthenticatedRequestSerializationEnabled];
    _objc_release(v13);
    if (v14)
    {
      if ([(AKAuthenticationTrafficController *)v75 _hasActiveDaemonAuths])
      {
        v46 = _AKLogSystem();
        v45 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
        {
          v10 = [location[0] clientBundleID];
          sub_1000194D4(v76, v10);
          _os_log_debug_impl(&_mh_execute_header, v46, v45, "Denying authenticated request clearance to client %@ due to pending authentications inflight...", v76, 0xCu);
          _objc_release(v10);
        }

        objc_storeStrong(&v46, 0);
        v73 = 0;
      }

      else
      {
        v49 = _AKLogSystem();
        v48 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          v11 = v49;
          v12 = v48;
          sub_10001CEEC(v47);
          _os_log_debug_impl(&_mh_execute_header, v11, v12, "No daemon authentication in progress, all clear!", v47, 2u);
        }

        objc_storeStrong(&v49, 0);
        v73 = 1;
      }
    }

    else
    {
      v44 = _AKLogSystem();
      v43 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        v8 = v44;
        v9 = v43;
        sub_10001CEEC(v42);
        _os_log_debug_impl(&_mh_execute_header, v8, v9, "Clearing an authenticated request, request serialization is disabled.", v42, 2u);
      }

      objc_storeStrong(&v44, 0);
      v73 = 1;
    }
  }

  v7 = v73;
  objc_storeStrong(location, 0);
  return v7 & 1;
}

- (void)_processClearanceRequest:(id)a3 withClient:(id)a4
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18 = _AKLogSystem();
  v17 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    sub_100034214(v25, v21->_pendingTrafficRequests, v21->_authenticatingApps, v21->_authenticatingDaemons, v21->_authenticatedServerEndpointRequests);
    _os_log_debug_impl(&_mh_execute_header, v18, v17, "Starting to process clearence request.  Pending requests: %@\nActive app requests: %@\nActive daemon requests: %@\nActive authenticated requests: %@", v25, 0x2Au);
  }

  objc_storeStrong(&v18, 0);
  v7 = [location[0] authContext];
  v8 = [v7 _capabilityForUIDisplay];
  _objc_release(v7);
  if (v8 == 3)
  {
    v16 = _AKLogSystem();
    v15 = OS_LOG_TYPE_FAULT;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      v6 = [location[0] authContext];
      v5 = [v6 _identifier];
      sub_1000194D4(v24, v5);
      _os_log_fault_impl(&_mh_execute_header, v16, v15, "Traffic Controller received unexpected SurrogateUI auth with ID %@. Ending processing early.", v24, 0xCu);
      _objc_release(v5);
      _objc_release(v6);
    }

    objc_storeStrong(&v16, 0);
    v14 = 1;
  }

  else
  {
    v13 = [(AKAuthenticationTrafficController *)v21 _shouldClearRequest:location[0]];
    if (v13)
    {
      oslog = _AKLogSystem();
      v11 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        sub_1000194D4(v23, location[0]);
        _os_log_debug_impl(&_mh_execute_header, oslog, v11, "Request cleared, invoking: (%@)", v23, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      [(AKAuthenticationTrafficController *)v21 _tq_invokeTrafficRequest:location[0]];
    }

    else
    {
      v10 = _AKLogSystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v4 = [NSNumber numberWithUnsignedInteger:[(NSMutableArray *)v21->_pendingTrafficRequests count]];
        sub_10001B098(v22, v4, location[0]);
        _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Request not cleared, adding to queue (%@) as pending: %@", v22, 0x16u);
        _objc_release(v4);
      }

      objc_storeStrong(&v10, 0);
      [(NSMutableArray *)v21->_pendingTrafficRequests addObject:location[0]];
    }

    v14 = 0;
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_hasValuesInMap:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  v6 = &v5;
  v7 = 0x20000000;
  v8 = 32;
  v9 = 0;
  [location[0] enumerateKeysAndObjectsUsingBlock:?];
  v4 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (BOOL)_shouldClearUICapableAuth:(id)a3
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = [location[0] authContext];
  _objc_release(v13);
  if (v13)
  {
    v11 = [location[0] authContext];
    v19 = 0;
    v12 = 1;
    if ([v11 _capabilityForUIDisplay] != 2)
    {
      v20 = [location[0] authContext];
      v19 = 1;
      v12 = [v20 _performUIOutOfProcess];
    }

    if (v19)
    {
      _objc_release(v20);
    }

    _objc_release(v11);
    if (v12)
    {
      v18 = _AKLogSystem();
      v17 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_1000194D4(v27, location[0]);
        _os_log_debug_impl(&_mh_execute_header, v18, v17, "Detected UI capable auth request: %@", v27, 0xCu);
      }

      objc_storeStrong(&v18, 0);
      authenticatingApps = v23->_authenticatingApps;
      v9 = [location[0] clientBundleID];
      v8 = [(NSMutableDictionary *)authenticatingApps objectForKeyedSubscript:?];
      v10 = [v8 count];
      _objc_release(v8);
      _objc_release(v9);
      if (v10)
      {
        v16 = _AKLogSystem();
        v15 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          sub_10001B098(v26, location[0], v23->_authenticatingApps);
          _os_log_impl(&_mh_execute_header, v16, v15, "Clearing UI capable auth request for %@ while another auth is in progress: %@", v26, 0x16u);
        }

        objc_storeStrong(&v16, 0);
        v24 = 1;
        v21 = 1;
      }

      else
      {
        v24 = 1;
        v21 = 1;
      }
    }

    else
    {
      oslog = _AKLogSystem();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        v6 = [location[0] authContext];
        v4 = [v6 _capabilityForUIDisplay];
        v5 = [location[0] authContext];
        sub_100171B20(v25, v4, [v5 _performUIOutOfProcess]);
        _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "Denying clearance to AuthContext with display capability: %lu, out of process: %d", v25, 0x12u);
        _objc_release(v5);
        _objc_release(v6);
      }

      objc_storeStrong(&oslog, 0);
      v24 = 0;
      v21 = 1;
    }
  }

  else
  {
    v24 = 0;
    v21 = 1;
  }

  objc_storeStrong(location, 0);
  return v24 & 1;
}

- (BOOL)_shouldClearLimitedUICapableAuth:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  if ([(AKAuthenticationTrafficController *)v8 _hasActiveDaemonAuths])
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      sub_1000194D4(v9, v8->_authenticatingDaemons);
      _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "Denying clearance due to pending daemons: %@", v9, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v6 = 0;
  }

  else
  {
    v6 = ![(AKAuthenticationTrafficController *)v8 _isForegroundAuthenticationInProgress];
  }

  v4 = v6;
  objc_storeStrong(location, 0);
  return v4;
}

- (BOOL)_isForegroundAuthenticationInProgress
{
  v11 = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v9 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v12, v11->_authenticatingApps);
    _os_log_debug_impl(&_mh_execute_header, location[0], v9, "Attempting to determine foreground state for apps: %@", v12, 0xCu);
  }

  objc_storeStrong(location, 0);
  v4 = 0;
  v5 = &v4;
  v6 = 0x20000000;
  v7 = 32;
  v8 = 0;
  [(NSMutableDictionary *)v11->_authenticatingApps enumerateKeysAndObjectsUsingBlock:?];
  v3 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v3 & 1;
}

- (void)_tq_invokeTrafficRequest:(id)a3
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = [location[0] clientBundleID];
  v13 = [location[0] authContext];
  _objc_release(v13);
  if (v13)
  {
    v11 = [location[0] authContext];
    v12 = [v11 _capabilityForUIDisplay];
    _objc_release(v11);
    if (v12 == 2)
    {
      v9 = v22;
      v10 = [location[0] context];
      [AKAuthenticationTrafficController _tq_addContext:v9 toAuthenticatingAppsforClient:"_tq_addContext:toAuthenticatingAppsforClient:"];
      _objc_release(v10);
    }

    else
    {
      v7 = v22;
      v8 = [location[0] context];
      [AKAuthenticationTrafficController _tq_addContext:v7 toAuthenticatingDaemonsforClient:"_tq_addContext:toAuthenticatingDaemonsforClient:"];
      _objc_release(v8);
    }
  }

  else
  {
    v6 = [location[0] context];
    _objc_release(v6);
    if (v6)
    {
      v4 = v22;
      v5 = [location[0] context];
      [AKAuthenticationTrafficController _tq_addContext:v4 toAuthenticatingRequestsforClient:"_tq_addContext:toAuthenticatingRequestsforClient:"];
      _objc_release(v5);
    }
  }

  queue = v22->_clearanceQueue;
  v14 = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = sub_100172258;
  v18 = &unk_10031F8B0;
  v19 = _objc_retain(location[0]);
  dispatch_async(queue, &v14);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (void)_tq_addContext:(id)a3 toAuthenticatingAppsforClient:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v9, v6);
    _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "Adding %@ to list of authenticating apps", v9, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(AKAuthenticationTrafficController *)v8 _tq_addContext:location[0] toRequestDictionary:v8->_authenticatingApps forClient:v6];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)_tq_addContext:(id)a3 toAuthenticatingDaemonsforClient:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v9, v6);
    _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "Adding %@ to list of authenticating daemons", v9, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(AKAuthenticationTrafficController *)v8 _tq_addContext:location[0] toRequestDictionary:v8->_authenticatingDaemons forClient:v6];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)_tq_addContext:(id)a3 toAuthenticatingRequestsforClient:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v9, v6);
    _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "Adding %@ to list of authenticated requests clients", v9, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(AKAuthenticationTrafficController *)v8 _tq_addContext:location[0] toRequestDictionary:v8->_authenticatedServerEndpointRequests forClient:v6];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)_tq_addContext:(id)a3 toRequestDictionary:(id)a4 forClient:(id)a5
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = 0;
  objc_storeStrong(&v10, a5);
  v9 = [v11 objectForKeyedSubscript:v10];
  if (v9)
  {
    [v9 addObject:location[0]];
  }

  else
  {
    v13 = location[0];
    v6 = [NSArray arrayWithObjects:&v13 count:1];
    v5 = [(NSArray *)v6 mutableCopy];
    [v11 setObject:? forKeyedSubscript:?];
    _objc_release(v5);
    _objc_release(v6);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)_clearNextEligibleRequestWithUpdateBlock:(id)a3
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(NSMutableArray *)v18->_pendingTrafficRequests count])
  {
    v12 = [(AKAuthenticationTrafficController *)v18 _nextClearedRequest];
    if (v12)
    {
      oslog = _AKLogSystem();
      v10 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        sub_1000194D4(v19, v12);
        _os_log_debug_impl(&_mh_execute_header, oslog, v10, "Cleared a pending request: %@", v19, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      if (location[0])
      {
        (*(location[0] + 2))(location[0], v12);
      }

      [(AKAuthenticationTrafficController *)v18 _tq_invokeTrafficRequest:v12];
      [(NSMutableArray *)v18->_pendingTrafficRequests removeObject:v12];
    }

    else
    {
      v9 = _AKLogSystem();
      v8 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v3 = v9;
        v4 = v8;
        sub_10001CEEC(v7);
        _os_log_debug_impl(&_mh_execute_header, v3, v4, "No pending requests were eligible for clearance...", v7, 2u);
      }

      objc_storeStrong(&v9, 0);
    }

    objc_storeStrong(&v12, 0);
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
      _os_log_debug_impl(&_mh_execute_header, log, type, "No pending requests found.", v14, 2u);
    }

    objc_storeStrong(&v16, 0);
    v13 = 1;
  }

  objc_storeStrong(location, 0);
}

- (id)_nextClearedRequest
{
  v5[2] = self;
  v5[1] = a2;
  pendingTrafficRequests = self->_pendingTrafficRequests;
  v5[0] = _objc_retain(self);
  v4 = [(NSMutableArray *)pendingTrafficRequests aaf_firstObjectPassingTest:?];
  objc_storeStrong(v5, 0);

  return v4;
}

- (void)_updateContext:(id)a3 withPassword:(id)a4 forAppleID:(id)a5
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = 0;
  objc_storeStrong(&v15, a5);
  if (v16)
  {
    v7 = [location[0] _password];
    _objc_release(v7);
    if (v7)
    {
      v14 = 1;
    }

    else if ([location[0] authenticationType] == 2)
    {
      v14 = 1;
    }

    else
    {
      v13 = [location[0] username];
      if (v13 && ([v13 isEqual:v15] & 1) != 0)
      {
        v12 = _AKLogSystem();
        v11 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          log = v12;
          type = v11;
          sub_10001CEEC(v10);
          _os_log_impl(&_mh_execute_header, log, type, "Passing password down to next queued client.", v10, 2u);
        }

        objc_storeStrong(&v12, 0);
        [location[0] _setPassword:v16];
      }

      objc_storeStrong(&v13, 0);
      v14 = 0;
    }
  }

  else
  {
    v14 = 1;
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateContextWithCachedPassword:(id)a3
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  v10 = 1;
  if ([location[0] serviceType] != 2)
  {
    v10 = 1;
    if ([location[0] isContextEligibleForSilentAuth])
    {
      v10 = 1;
      if ([location[0] ignorePasswordCache] != 1)
      {
        v20 = [location[0] _password];
        v19 = 1;
        v10 = v20 != 0;
      }
    }
  }

  if (v19)
  {
    _objc_release(v20);
  }

  v21 = v10;
  if (v10)
  {
    v18 = _AKLogSystem();
    v17 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      log = v18;
      type = v17;
      sub_10001CEEC(v16);
      _os_log_impl(&_mh_execute_header, log, type, "Ignoring password cache", v16, 2u);
    }

    objc_storeStrong(&v18, 0);
    v15 = 1;
  }

  else
  {
    v7 = [location[0] username];
    _objc_release(v7);
    if (v7)
    {
      expiringCache = v23->_expiringCache;
      v6 = [location[0] username];
      v14 = [(AKExpiringCache *)expiringCache objectForKey:?];
      _objc_release(v6);
      if (v14)
      {
        v13 = _AKLogSystem();
        v12 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v3 = v13;
          v4 = v12;
          sub_10001CEEC(v11);
          _os_log_impl(&_mh_execute_header, v3, v4, "Password populated from cache.", v11, 2u);
        }

        objc_storeStrong(&v13, 0);
        [location[0] _setPassword:v14];
      }

      objc_storeStrong(&v14, 0);
    }

    v15 = 0;
  }

  objc_storeStrong(location, 0);
}

@end