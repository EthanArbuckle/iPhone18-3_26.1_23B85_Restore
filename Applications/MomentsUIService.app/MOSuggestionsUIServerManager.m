@interface MOSuggestionsUIServerManager
+ (id)getRemoteProcessIdentifier:(id)a3;
+ (id)sharedInstance;
- (BOOL)addConnection:(id)a3 withId:(id)a4;
- (BOOL)isClientVisibleFor:(id)a3;
- (BOOL)isConnectingProcessAuthorized:(id)a3;
- (BOOL)isVisibleClient:(id)a3;
- (MOSuggestionsUIServerManager)init;
- (id)getAnyVisibleClientId;
- (id)getClientBundleIdentifierFor:(id)a3;
- (id)getClientConnectionPropertiesFor:(id)a3;
- (id)getClientIdentifierFor:(id)a3;
- (id)getClientProxyFor:(id)a3;
- (id)getClientRemoteProcessFor:(id)a3;
- (id)getConnectionHostId:(id)a3;
- (id)getConnectionPropertiesForId:(id)a3;
- (id)getPropertiesForConnection:(id)a3;
- (void)dealloc;
- (void)destroyScene:(id)a3;
- (void)didConnectToSecureWindowWithSession:(id)a3 connectionId:(id)a4 delegate:(id)a5;
- (void)didDisonnectToSecureWindowForConnectionId:(id)a3;
- (void)fetchAssets:(id)a3 withTypes:(id)a4 completion:(id)a5;
- (void)fetchAssets:(id)a3 withTypes:(id)a4 onAssetsCallback:(id)a5;
- (void)getProxyFor:(id)a3 withBlock:(id)a4;
- (void)grantSandboxAccessFor:(id)a3 sender:(id)a4;
- (void)launch;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
- (void)onLockNotification;
- (void)performTask:(unint64_t)a3 suggestion:(id)a4 sender:(id)a5;
- (void)processManager:(id)a3 didRemoveProcess:(id)a4;
- (void)registerForLayoutMonitorForBackgroundStateNotifications;
- (void)registerForLockNotifications;
- (void)removeConnection:(id)a3;
- (void)removeConnectionId:(id)a3;
- (void)requestNotificationAuthIfNeeded;
- (void)requestPickerForSceneIdentiyToken:(id)a3 withOptions:(id)a4;
- (void)sendSuggestionSheetStateUpdate:(unint64_t)a3 sender:(id)a4;
- (void)setupListener;
- (void)terminate;
- (void)updatePickerState:(id)a3 animated:(id)a4;
@end

@implementation MOSuggestionsUIServerManager

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __46__MOSuggestionsUIServerManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_shared;

  return v2;
}

uint64_t __46__MOSuggestionsUIServerManager_sharedInstance__block_invoke()
{
  sharedInstance_shared = objc_opt_new();

  return _objc_release_x1();
}

+ (id)getRemoteProcessIdentifier:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 valueForEntitlement:@"application-identifier"];
    v6 = v5;
    if ((!v5 || !-[__CFString length](v5, "length")) && ([v4 bundleIdentifier], v7 = objc_claimAutoreleasedReturnValue(), v6, (v6 = v7) == 0) || !-[__CFString length](v6, "length"))
    {

      v6 = &stru_100318448;
    }

    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@:%u", v6, [v4 pid]);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (MOSuggestionsUIServerManager)init
{
  v8.receiver = self;
  v8.super_class = MOSuggestionsUIServerManager;
  v2 = [(MOSuggestionsUIServerManager *)&v8 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    clientConnections = v2->_clientConnections;
    v2->_clientConnections = v3;

    v5 = +[NSMutableDictionary dictionary];
    connectionProperties = v2->_connectionProperties;
    v2->_connectionProperties = v5;

    [(MOSuggestionsUIServerManager *)v2 setupListener];
    [(MOSuggestionsUIServerManager *)v2 registerForLockNotifications];
    [(MOSuggestionsUIServerManager *)v2 requestNotificationAuthIfNeeded];
    [(MOSuggestionsUIServerManager *)v2 registerForLayoutMonitorForBackgroundStateNotifications];
  }

  return v2;
}

- (void)dealloc
{
  v3 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Invalidate connection listener", buf, 2u);
  }

  [(BSServiceConnectionListener *)self->_connectionListener invalidate];
  [(FBSDisplayLayoutMonitor *)self->_displayMonitor invalidate];
  v4.receiver = self;
  v4.super_class = MOSuggestionsUIServerManager;
  [(MOSuggestionsUIServerManager *)&v4 dealloc];
}

- (void)didConnectToSecureWindowWithSession:(id)a3 connectionId:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v11 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v9 UUIDString];
      v24 = 138412290;
      v25 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Connected to window, client connection: %@", &v24, 0xCu);
    }

    v13 = [(NSMutableDictionary *)self->_connectionProperties objectForKeyedSubscript:v9];
    v14 = v13;
    if (v13)
    {
      [v13 setActivationState:3];
      [v14 setSession:v8];
      [v14 setDelegate:v10];
      v15 = [v14 pendingPresentationOptions];

      if (v15)
      {
        v16 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          LOWORD(v24) = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Fulfilling previously unfulfillable presentation request", &v24, 2u);
        }

        v17 = [v14 delegate];
        v18 = [v14 pendingPresentationOptions];
        [v17 didReceivePresentationRequestWithOptions:v18];
      }

      else
      {
        v20 = [v14 unfulfilledUpdateState];

        if (!v20)
        {
LABEL_19:
          [v14 setPendingPresentationOptions:0];
          [v14 setUnfulfilledUpdateState:0];
          [v14 setUnfulfilledUpdateIsAnimated:0];
          goto LABEL_20;
        }

        v21 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          LOWORD(v24) = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Fulfilling previously unfulfillable update request", &v24, 2u);
        }

        v17 = [v14 delegate];
        v18 = [v14 unfulfilledUpdateState];
        v22 = [v18 unsignedIntValue];
        v23 = [v14 unfulfilledUpdateIsAnimated];
        [v17 didReceiveUpdateRequestWithState:v22 animated:{objc_msgSend(v23, "BOOLValue")}];
      }

      goto LABEL_19;
    }

    v19 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [MOSuggestionsUIServerManager didConnectToSecureWindowWithSession:connectionId:delegate:];
    }

    [(MOSuggestionsUIServerManager *)self destroyScene:v8];
  }

  else
  {
    [(MOSuggestionsUIServerManager *)self destroyScene:v8];
    v14 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [MOSuggestionsUIServerManager didConnectToSecureWindowWithSession:connectionId:delegate:];
    }
  }

LABEL_20:
}

- (void)didDisonnectToSecureWindowForConnectionId:(id)a3
{
  v4 = a3;
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = [v4 UUIDString];
      *buf = 138412290;
      v21 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%@ Disconnected from window.", buf, 0xCu);
    }

    v6 = [(NSMutableDictionary *)self->_connectionProperties objectForKeyedSubscript:v4];
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
    v9 = v8;
    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = [v4 UUIDString];
        *buf = 138412290;
        v21 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@ Connection state clean-up.", buf, 0xCu);
      }

      v11 = [v6 session];
      [(MOSuggestionsUIServerManager *)self destroyScene:v11];

      v9 = objc_opt_new();
      v12 = [v6 connectionHost];
      [v9 setConnectionHost:v12];

      v13 = [v6 responseQueue];
      [v9 setResponseQueue:v13];

      v14 = [v6 delegate];
      [v9 setDelegate:v14];

      [(NSMutableDictionary *)self->_connectionProperties setObject:v9 forKeyedSubscript:v4];
      v15 = [v9 responseQueue];
      if (v15)
      {
        objc_initWeak(buf, self);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = __74__MOSuggestionsUIServerManager_didDisonnectToSecureWindowForConnectionId___block_invoke;
        block[3] = &unk_100308EB0;
        objc_copyWeak(&v19, buf);
        v17 = v4;
        v18 = v15;
        dispatch_async(v18, block);

        objc_destroyWeak(&v19);
        objc_destroyWeak(buf);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MOSuggestionsUIServerManager didDisonnectToSecureWindowForConnectionId:];
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [MOSuggestionsUIServerManager didDisonnectToSecureWindowForConnectionId:];
  }
}

void __74__MOSuggestionsUIServerManager_didDisonnectToSecureWindowForConnectionId___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained getConnectionHostId:*(a1 + 32)];
  v4 = [v3 remoteTarget];

  [v4 didReceiveStateUpdateRequest:&off_10031A3E0];
  v5 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __74__MOSuggestionsUIServerManager_didDisonnectToSecureWindowForConnectionId___block_invoke_190;
  v6[3] = &unk_100308E88;
  objc_copyWeak(&v8, (a1 + 48));
  v7 = *(a1 + 32);
  dispatch_async(v5, v6);

  objc_destroyWeak(&v8);
}

void __74__MOSuggestionsUIServerManager_didDisonnectToSecureWindowForConnectionId___block_invoke_190(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained removeConnectionId:*(a1 + 32)];
}

- (void)onLockNotification
{
  v3 = SBSGetScreenLockStatus();
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Screen locked - terminating for view security", buf, 2u);
    }

    connectionProperties = self->_connectionProperties;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = __50__MOSuggestionsUIServerManager_onLockNotification__block_invoke;
    v7[3] = &unk_100308F18;
    v7[4] = self;
    [(NSMutableDictionary *)connectionProperties enumerateKeysAndObjectsUsingBlock:v7];
    [(FBSDisplayLayoutMonitor *)self->_displayMonitor invalidate];
    exit(0);
  }

  if (v5)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Screen locked false positive - ignored queued event", buf, 2u);
  }
}

void __50__MOSuggestionsUIServerManager_onLockNotification__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 delegate];
  [v3 getProxyFor:v4 withBlock:&__block_literal_global];
}

- (void)registerForLayoutMonitorForBackgroundStateNotifications
{
  v5 = +[FBSDisplayLayoutMonitorConfiguration configurationForDefaultMainDisplayMonitor];
  [v5 setTransitionHandler:&__block_literal_global_196];
  v3 = [FBSDisplayLayoutMonitor monitorWithConfiguration:v5];
  displayMonitor = self->_displayMonitor;
  self->_displayMonitor = v3;
}

void __87__MOSuggestionsUIServerManager_registerForLayoutMonitorForBackgroundStateNotifications__block_invoke(id a1, FBSDisplayLayoutMonitor *a2, FBSDisplayLayout *a3, FBSDisplayLayoutTransitionContext *a4)
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(FBSDisplayLayout *)a3 elements];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    v8 = SBSDisplayLayoutElementAppSwitcherIdentifier;
    v9 = SBSDisplayLayoutElementHomeScreenIdentifier;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 identifier];
        if ([v12 isEqualToString:v8])
        {
        }

        else
        {
          v13 = [v11 identifier];
          v14 = [v13 isEqualToString:v9];

          if (!v14)
          {
            continue;
          }
        }

        v15 = +[NSNotificationCenter defaultCenter];
        [v15 postNotificationName:@"MOSuggestionSheetVideoPlaybackViewPlaybackShouldPause" object:0];
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

- (void)registerForLockNotifications
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, checkLockedState_bounce, @"com.apple.mobile.keybagd.lock_status", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)requestNotificationAuthIfNeeded
{
  v2 = *(*a1 + 24);
  v3 = 134217984;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "onboardingStatus=%lu", &v3, 0xCu);
}

void __63__MOSuggestionsUIServerManager_requestNotificationAuthIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __63__MOSuggestionsUIServerManager_requestNotificationAuthIfNeeded__block_invoke_cold_1(v3);
  }

  if (![v3 authorizationStatus] && (*(*(*(a1 + 40) + 8) + 24) & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Authorization TCC prompt not yet sent and onboarding status >= getStarted", v6, 2u);
    }

    [*(a1 + 32) requestAuthorizationWithOptions:7 completionHandler:&__block_literal_global_210];
  }
}

void __63__MOSuggestionsUIServerManager_requestNotificationAuthIfNeeded__block_invoke_207(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109378;
    v6[1] = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Request notification authorization complete. granted=%u, error=%@", v6, 0x12u);
  }
}

- (void)setupListener
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __45__MOSuggestionsUIServerManager_setupListener__block_invoke;
  v9[3] = &unk_100308FE8;
  v9[4] = self;
  v3 = [BSServiceConnectionListener listenerWithConfigurator:v9];
  [v3 activate];
  connectionListener = self->_connectionListener;
  self->_connectionListener = v3;
  v5 = v3;

  v6 = +[FBProcessManager sharedInstance];

  [v6 addObserver:self];
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Endpoint ready and awaiting connections", v8, 2u);
  }
}

void __45__MOSuggestionsUIServerManager_setupListener__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setDomain:@"com.apple.moments.ui-services"];
  [v3 setService:@"com.apple.moments.ui-services.presenter"];
  [v3 setDelegate:*(a1 + 32)];
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (listener_didReceiveConnection_withContext__onceToken != -1)
  {
    [MOSuggestionsUIServerManager listener:didReceiveConnection:withContext:];
  }

  v11 = [v9 remoteProcess];
  v12 = [v11 pid];
  v13 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v35) = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Endpoint received new connection request -- pid:%d", buf, 8u);
  }

  objc_initWeak(&location, self);
  if ([(MOSuggestionsUIServerManager *)self isConnectingProcessAuthorized:v11])
  {
    v14 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [MOSuggestionsUIServerManager listener:didReceiveConnection:withContext:];
    }

    v26 = _NSConcreteStackBlock;
    v27 = 3221225472;
    v28 = __74__MOSuggestionsUIServerManager_listener_didReceiveConnection_withContext___block_invoke_288;
    v29 = &unk_1003090B8;
    v30 = self;
    v15 = objc_opt_new();
    v31 = v15;
    objc_copyWeak(&v32, &location);
    [v9 configureConnection:&v26];
    v16 = objc_loadWeakRetained(&location);
    v17 = [v16 addConnection:v9 withId:{v15, v26, v27, v28, v29, v30}];

    if (v17)
    {
      v18 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v24 = [v9 remoteProcess];
        v25 = [MOSuggestionsUIServerManager getRemoteProcessIdentifier:v24];
        *buf = 138412546;
        v35 = v15;
        v36 = 2112;
        v37 = v25;
        _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Activating connection: client:%@, id:%@", buf, 0x16u);
      }

      [v9 activate];
    }

    else
    {
      v20 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = [v9 remoteProcess];
        v22 = [MOSuggestionsUIServerManager getRemoteProcessIdentifier:v21];
        [(MOSuggestionsUIServerManager *)v22 listener:buf didReceiveConnection:v20 withContext:v21];
      }

      [v9 invalidate];
    }

    v23 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [MOSuggestionsUIServerManager listener:didReceiveConnection:withContext:];
    }

    objc_destroyWeak(&v32);
  }

  else
  {
    v19 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [MOSuggestionsUIServerManager listener:didReceiveConnection:withContext:];
    }

    [v9 invalidate];
  }

  objc_destroyWeak(&location);
}

void __74__MOSuggestionsUIServerManager_listener_didReceiveConnection_withContext___block_invoke(id a1)
{
  v5 = [BSMutableServiceInterface interfaceWithIdentifier:@"com.apple.moments.ui-services.presenter"];
  v1 = [BSObjCProtocol protocolForProtocol:&OBJC_PROTOCOL___MOSuggestionsUIServer];
  [v5 setServer:v1];

  v2 = [BSObjCProtocol protocolForProtocol:&OBJC_PROTOCOL___MOSuggestionsUIClient];
  [v5 setClient:v2];

  [v5 setClientMessagingExpectation:1];
  v3 = [v5 copy];
  v4 = listener_didReceiveConnection_withContext____interface;
  listener_didReceiveConnection_withContext____interface = v3;
}

void __74__MOSuggestionsUIServerManager_listener_didReceiveConnection_withContext___block_invoke_288(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTargetQueue:&_dispatch_main_q];
  v4 = +[BSServiceQuality userInitiated];
  [v3 setServiceQuality:v4];

  [v3 setInterface:listener_didReceiveConnection_withContext____interface];
  [v3 setInterfaceTarget:*(a1 + 32)];
  [v3 setUserInfo:*(a1 + 40)];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __74__MOSuggestionsUIServerManager_listener_didReceiveConnection_withContext___block_invoke_2;
  v10[3] = &unk_100309050;
  objc_copyWeak(&v11, (a1 + 48));
  [v3 setInvalidationHandler:v10];
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = __74__MOSuggestionsUIServerManager_listener_didReceiveConnection_withContext___block_invoke_292;
  v8 = &unk_100309050;
  objc_copyWeak(&v9, (a1 + 48));
  [v3 setInterruptionHandler:&v5];
  [v3 setActivationHandler:{&__block_literal_global_295, v5, v6, v7, v8}];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
}

void __74__MOSuggestionsUIServerManager_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __74__MOSuggestionsUIServerManager_listener_didReceiveConnection_withContext___block_invoke_2_cold_1(v3);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained removeConnection:v3];
}

void __74__MOSuggestionsUIServerManager_listener_didReceiveConnection_withContext___block_invoke_292(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __74__MOSuggestionsUIServerManager_listener_didReceiveConnection_withContext___block_invoke_292_cold_1(v3);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained removeConnection:v3];
}

void __74__MOSuggestionsUIServerManager_listener_didReceiveConnection_withContext___block_invoke_293(id a1, BSServiceConnectionContext *a2)
{
  v2 = a2;
  v3 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __74__MOSuggestionsUIServerManager_listener_didReceiveConnection_withContext___block_invoke_293_cold_1(v2);
  }
}

- (BOOL)isConnectingProcessAuthorized:(id)a3
{
  v3 = a3;
  v4 = [v3 valueForEntitlement:@"com.apple.developer.journal.allow"];
  if (v4)
  {
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v3 bundleIdentifier];
      *buf = 138412802;
      v24 = v6;
      v25 = 1024;
      v26 = [v3 pid];
      v27 = 2112;
      v28 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Connection BundleID=%@ pid=%d API entitlements=%@", buf, 0x1Cu);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if ([*(*(&v18 + 1) + 8 * i) isEqualToString:{@"suggestions", v18}])
          {

            v16 = 1;
            goto LABEL_17;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

  v12 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v3 bundleIdentifier];
    v14 = [v3 pid];
    v15 = [v3 valueForEntitlement:@"com.apple.moments.allowSuggestions"];
    *buf = 138412802;
    v24 = v13;
    v25 = 1024;
    v26 = v14;
    v27 = 2112;
    v28 = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Connection BundleID=%@ pid=%d valueFor=%@", buf, 0x1Cu);
  }

  v16 = [v3 hasEntitlement:@"com.apple.moments.allowSuggestions"];
LABEL_17:

  return v16;
}

- (BOOL)addConnection:(id)a3 withId:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 remoteProcess];
  v9 = [MOSuggestionsUIServerManager getRemoteProcessIdentifier:v8];

  if (v6)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10 || v7 == 0;
  v12 = !v11;
  if (v11)
  {
    v23 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [MOSuggestionsUIServerManager addConnection:withId:];
    }
  }

  else
  {
    v13 = [(NSMutableDictionary *)self->_clientConnections objectForKeyedSubscript:v9];

    if (!v13)
    {
      v14 = objc_opt_new();
      [(NSMutableDictionary *)self->_clientConnections setObject:v14 forKeyedSubscript:v9];
    }

    v15 = objc_opt_new();
    [v15 setConnectionHost:v6];
    v16 = [v6 remoteProcess];
    v17 = [v16 bundleIdentifier];

    if (!v17)
    {
      v17 = v9;
    }

    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_attr_make_with_qos_class(v18, QOS_CLASS_USER_INITIATED, 0);

    v20 = [NSString stringWithFormat:@"RSP:%@", v17];
    v21 = dispatch_queue_create([v20 UTF8String], v19);
    [v15 setResponseQueue:v21];

    v22 = [(NSMutableDictionary *)self->_clientConnections objectForKeyedSubscript:v9];
    [v22 addObject:v7];

    [(NSMutableDictionary *)self->_connectionProperties setObject:v15 forKeyedSubscript:v7];
  }

  return v12;
}

- (void)destroyScene:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 description];
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "(destroyScene) destroying scene %@", buf, 0xCu);
    }

    v6 = +[UIApplication sharedApplication];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = __45__MOSuggestionsUIServerManager_destroyScene___block_invoke;
    v7[3] = &unk_1003090E0;
    v8 = v3;
    [v6 requestSceneSessionDestruction:v8 options:0 errorHandler:v7];
  }
}

void __45__MOSuggestionsUIServerManager_destroyScene___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __45__MOSuggestionsUIServerManager_destroyScene___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) description];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(destroyScene) Successfully destroyed scene %@", &v7, 0xCu);
  }
}

- (void)removeConnectionId:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_connectionProperties objectForKeyedSubscript:v4];
    if (v5)
    {
      v6 = [(MOSuggestionsUIServerManager *)self getConnectionHostId:v4];
      [v6 invalidate];

      v7 = [v5 session];
      [(MOSuggestionsUIServerManager *)self destroyScene:v7];

      [(NSMutableDictionary *)self->_connectionProperties removeObjectForKey:v4];
      v8 = [v5 connectionHost];
      v9 = [v8 remoteProcess];
      v10 = [MOSuggestionsUIServerManager getRemoteProcessIdentifier:v9];

      if (v10)
      {
        v11 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v26 = v4;
          v27 = 2112;
          v28 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Connection '%@' removed for '%@'", buf, 0x16u);
        }

        v12 = [(NSMutableDictionary *)self->_clientConnections objectForKeyedSubscript:v10];
        [v12 removeObject:v4];

        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v13 = self->_clientConnections;
        v14 = [(NSMutableDictionary *)v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v21;
LABEL_8:
          v17 = 0;
          while (1)
          {
            if (*v21 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = [(NSMutableDictionary *)self->_clientConnections objectForKeyedSubscript:*(*(&v20 + 1) + 8 * v17), v20];
            v19 = [v18 count];

            if (v19)
            {
              break;
            }

            if (v15 == ++v17)
            {
              v15 = [(NSMutableDictionary *)v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
              if (v15)
              {
                goto LABEL_8;
              }

              break;
            }
          }
        }
      }
    }
  }
}

- (void)removeConnection:(id)a3
{
  v4 = [MOSuggestionsUIServerManager getConnectionIdentifier:a3];
  [(MOSuggestionsUIServerManager *)self removeConnectionId:v4];
}

- (id)getPropertiesForConnection:(id)a3
{
  v4 = [MOSuggestionsUIServerManager getConnectionIdentifier:a3];
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_connectionProperties objectForKeyedSubscript:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isVisibleClient:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v3 pid]);
    v17 = 0;
    v6 = [RBSProcessHandle handleForIdentifier:v5 error:&v17];
    v7 = v17;

    v8 = [v6 currentState];
    v9 = [v8 taskState];

    v10 = [v6 currentState];
    v11 = [v10 endowmentNamespaces];
    v12 = [v11 containsObject:@"com.apple.frontboard.visibility"];

    v13 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v16 = [MOSuggestionsUIServerManager getRemoteProcessIdentifier:v4];
      *buf = 138413058;
      v19 = v16;
      v20 = 1024;
      v21 = v12;
      v22 = 2112;
      v23 = v7;
      v24 = 1024;
      v25 = v9 == 4;
      _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Query client %@ visible=%u (error=%@) isRunning=%u", buf, 0x22u);
    }

    if (v9 == 4)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)getConnectionHostId:(id)a3
{
  if (a3)
  {
    v3 = [(NSMutableDictionary *)self->_connectionProperties objectForKeyedSubscript:?];
    v4 = [v3 connectionHost];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)getConnectionPropertiesForId:(id)a3
{
  if (a3)
  {
    v4 = [(NSMutableDictionary *)self->_connectionProperties objectForKeyedSubscript:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)getAnyVisibleClientId
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = self->_connectionProperties;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [(MOSuggestionsUIServerManager *)self getConnectionHostId:v8, v14];
        v10 = [v9 remoteProcess];
        v11 = [(MOSuggestionsUIServerManager *)self isVisibleClient:v10];

        if (v11)
        {
          v12 = v8;
          goto LABEL_11;
        }
      }

      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)getClientConnectionPropertiesFor:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  connectionProperties = self->_connectionProperties;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __65__MOSuggestionsUIServerManager_getClientConnectionPropertiesFor___block_invoke;
  v9[3] = &unk_100309108;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [(NSMutableDictionary *)connectionProperties enumerateKeysAndObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __65__MOSuggestionsUIServerManager_getClientConnectionPropertiesFor___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v7 = [v9 delegate];
  v8 = *(a1 + 32);

  if (v7 == v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

- (id)getClientRemoteProcessFor:(id)a3
{
  if (a3)
  {
    v3 = [(MOSuggestionsUIServerManager *)self getClientConnectionPropertiesFor:?];
    v4 = [v3 connectionHost];
    v5 = [v4 remoteProcess];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)getClientIdentifierFor:(id)a3
{
  v3 = [(MOSuggestionsUIServerManager *)self getClientRemoteProcessFor:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 bundleIdentifier];
    if (!v5)
    {
      v5 = [v4 valueForEntitlement:@"application-identifier"];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)getClientBundleIdentifierFor:(id)a3
{
  v3 = [(MOSuggestionsUIServerManager *)self getClientRemoteProcessFor:a3];
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [MOSuggestionsUIServerManager getClientBundleIdentifierFor:v3];
  }

  v5 = [v3 bundleIdentifier];

  return v5;
}

- (id)getClientProxyFor:(id)a3
{
  v4 = a3;
  v5 = [(MOSuggestionsUIServerManager *)self getClientConnectionPropertiesFor:v4];
  v6 = [v5 connectionHost];
  v7 = [v6 remoteTarget];

  if (!v7)
  {
    if (v5 && ([v5 brokenPipeState] & 1) == 0)
    {
      v8 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [MOSuggestionsUIServerManager getClientProxyFor:];
      }

      [v5 setBrokenPipeState:1];
    }

    [v4 didReceiveUpdateRequestWithState:0 animated:1];
  }

  if (v5 && [v5 brokenPipeState])
  {
    v9 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Remote proxy target restored", v11, 2u);
    }

    [v5 setBrokenPipeState:0];
  }

  return v7;
}

- (void)getProxyFor:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MOSuggestionsUIServerManager *)self getClientConnectionPropertiesFor:v6];
  v9 = [v8 responseQueue];
  if (v9)
  {
    objc_initWeak(&location, self);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __54__MOSuggestionsUIServerManager_getProxyFor_withBlock___block_invoke;
    v11[3] = &unk_100309130;
    objc_copyWeak(&v14, &location);
    v12 = v6;
    v13 = v7;
    dispatch_async(v9, v11);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else if (v8)
  {
    v10 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [MOSuggestionsUIServerManager getProxyFor:v8 withBlock:v10];
    }
  }
}

void __54__MOSuggestionsUIServerManager_getProxyFor_withBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained getClientProxyFor:*(a1 + 32)];

  v3 = v4;
  if (v4)
  {
    (*(*(a1 + 40) + 16))();
    v3 = v4;
  }
}

- (BOOL)isClientVisibleFor:(id)a3
{
  v4 = a3;
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [MOSuggestionsUIServerManager isClientVisibleFor:];
  }

  v6 = +[MOOnboardingManager sharedInstance];
  v7 = [v6 onboardingFlowCompletionStatus];

  if (v7 > 5 || ((1 << v7) & 0x33) == 0)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = self->_connectionProperties;
    v12 = [(NSMutableDictionary *)v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v9);
          }

          v16 = *(*(&v23 + 1) + 8 * i);
          v17 = [(MOSuggestionsUIServerManager *)self getConnectionHostId:v16, v23];
          v18 = [v17 remoteProcess];
          v19 = [(MOSuggestionsUIServerManager *)self isVisibleClient:v18];

          if (v19)
          {
            v10 = v16 != 0;
            goto LABEL_10;
          }
        }

        v13 = [(NSMutableDictionary *)v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v20 = [(MOSuggestionsUIServerManager *)self getClientConnectionPropertiesFor:v4];
    v9 = v20;
    if (v20)
    {
      v21 = [(NSMutableDictionary *)v20 connectionHost];
      v22 = [v21 remoteProcess];
      v10 = [(MOSuggestionsUIServerManager *)self isVisibleClient:v22];

      goto LABEL_10;
    }
  }

  else
  {
    v9 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
    if (os_log_type_enabled(&v9->super.super, OS_LOG_TYPE_DEBUG))
    {
      [MOSuggestionsUIServerManager isClientVisibleFor:];
    }
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (void)requestPickerForSceneIdentiyToken:(id)a3 withOptions:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = +[BSServiceConnection currentContext];
  v10 = [MOSuggestionsUIServerManager getConnectionIdentifier:v9];

  v11 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [MOSuggestionsUIServerManager requestPickerForSceneIdentiyToken:withOptions:];
  }

  v12 = +[BSServiceConnection currentContext];
  v13 = [(MOSuggestionsUIServerManager *)self getPropertiesForConnection:v12];

  if (!v13)
  {
    v14 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [MOSuggestionsUIServerManager requestPickerForSceneIdentiyToken:withOptions:];
    }

    v15 = +[NSAssertionHandler currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"MOSuggestionsUIServerManager.m" lineNumber:651 description:{@"unexpected picker request from untracked connection (in %s:%d)", "-[MOSuggestionsUIServerManager requestPickerForSceneIdentiyToken:withOptions:]", 651}];
  }

  v16 = [v13 sceneIdentityToken];

  if (v16)
  {
    v17 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [MOSuggestionsUIServerManager requestPickerForSceneIdentiyToken:v13 withOptions:?];
    }
  }

  else
  {
    [v13 setSceneIdentityToken:v7];
    [v13 setActivationState:2];
    v18 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v7 stringRepresentation];
      *buf = 138412290;
      v38 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Activating new scene with token=%@", buf, 0xCu);
    }

    v17 = [[NSUserActivity alloc] initWithActivityType:@"com.apple.MomentsUIService.clientContext"];
    v35 = @"connectionId";
    v36 = v10;
    v20 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    [v17 setUserInfo:v20];

    v21 = [v17 userInfo];
    v22 = [v21 allKeys];
    v23 = [NSSet setWithArray:v22];
    [v17 setRequiredUserInfoKeys:v23];

    v24 = objc_opt_new();
    v25 = [[_UIWindowSceneOverlayPlacement alloc] initWithTargetSceneIdentity:v7];
    [v24 setPlacement:v25];
    v26 = +[UIApplication sharedApplication];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = __78__MOSuggestionsUIServerManager_requestPickerForSceneIdentiyToken_withOptions___block_invoke;
    v33[3] = &unk_1003090E0;
    v34 = v13;
    [v26 requestSceneSessionActivation:0 userActivity:v17 options:v24 errorHandler:v33];
  }

  v27 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [v13 sceneIdentityToken];
    v29 = [v28 stringRepresentation];
    *buf = 138412290;
    v38 = v29;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Received picker presentation request with token=%@", buf, 0xCu);
  }

  v30 = [v13 session];

  if (v30)
  {
    v31 = [v13 delegate];
    [v31 didReceivePresentationRequestWithOptions:v8];
  }

  else
  {
    v32 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "View is not ready to accept presentations.", buf, 2u);
    }

    v31 = [v8 copy];
    [v13 setPendingPresentationOptions:v31];
  }
}

void __78__MOSuggestionsUIServerManager_requestPickerForSceneIdentiyToken_withOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) setSceneIdentityToken:0];
    [*(a1 + 32) setActivationState:0];
    v4 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __78__MOSuggestionsUIServerManager_requestPickerForSceneIdentiyToken_withOptions___block_invoke_cold_1();
    }
  }
}

- (void)updatePickerState:(id)a3 animated:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = +[BSServiceConnection currentContext];
  v10 = [(MOSuggestionsUIServerManager *)self getPropertiesForConnection:v9];

  if (!v10)
  {
    v11 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MOSuggestionsUIServerManager updatePickerState:animated:];
    }

    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"MOSuggestionsUIServerManager.m" lineNumber:695 description:{@"unexpected picker request from untracked connection (in %s:%d)", "-[MOSuggestionsUIServerManager updatePickerState:animated:]", 695}];
  }

  v13 = [v10 session];

  if (v13)
  {
    v14 = [v10 delegate];
    [v14 didReceiveUpdateRequestWithState:objc_msgSend(v7 animated:{"unsignedIntValue"), objc_msgSend(v8, "BOOLValue")}];
  }

  else
  {
    v15 = [v10 activationState];
    v16 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
    v17 = v16;
    if (v15 == 2)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [MOSuggestionsUIServerManager updatePickerState:animated:];
      }

      v18 = [v7 copy];
      [v10 setUnfulfilledUpdateState:v18];

      v14 = [v8 copy];
      [v10 setUnfulfilledUpdateIsAnimated:v14];
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [MOSuggestionsUIServerManager updatePickerState:animated:];
      }

      v19 = [v10 delegate];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = __59__MOSuggestionsUIServerManager_updatePickerState_animated___block_invoke;
      v20[3] = &unk_100309158;
      v21 = v10;
      [(MOSuggestionsUIServerManager *)self getProxyFor:v19 withBlock:v20];

      v14 = v21;
    }
  }
}

void __59__MOSuggestionsUIServerManager_updatePickerState_animated___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v2 currentViewState]);
  [v3 didReceiveStateUpdateRequest:v4];
}

- (void)launch
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Called angel launch specifically", v3, 2u);
  }
}

- (void)terminate
{
  v3 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Terminating Angel connection", v8, 2u);
  }

  v4 = +[BSServiceConnection currentContext];
  v5 = [(MOSuggestionsUIServerManager *)self getPropertiesForConnection:v4];

  v6 = [v5 connectionHost];
  [v6 invalidate];

  v7 = +[BSServiceConnection currentContext];
  [(MOSuggestionsUIServerManager *)self removeConnection:v7];
}

- (void)fetchAssets:(id)a3 withTypes:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 suggestionIdentifier];
    v13 = [v12 UUIDString];
    *buf = 138412290;
    v24 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "(Legacy) server, fetching suggestion assets for suggestion id=%@", buf, 0xCu);
  }

  v14 = +[BSServiceConnection currentContext];
  v15 = [(MOSuggestionsUIServerManager *)self getPropertiesForConnection:v14];

  v16 = [v15 delegate];
  v17 = [v10 requestedTypes];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = __65__MOSuggestionsUIServerManager_fetchAssets_withTypes_completion___block_invoke;
  v20[3] = &unk_100309180;
  v21 = v8;
  v22 = v9;
  v18 = v9;
  v19 = v8;
  [v16 willReturnAssetsForSuggestion:v19 withTypes:v17 completion:v20];
}

void __65__MOSuggestionsUIServerManager_fetchAssets_withTypes_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) baseBundle];
    v6 = [v5 bundleIdentifier];
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "fetchAssets:withTypes:completion completing with assets for suggestion: %@", &v9, 0xCu);
  }

  v7 = *(a1 + 40);
  v8 = [v3 copy];

  (*(v7 + 16))(v7, v8, 0);
}

- (void)fetchAssets:(id)a3 withTypes:(id)a4 onAssetsCallback:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 suggestionIdentifier];
    v13 = [v12 UUIDString];
    *buf = 138412290;
    v24 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " server, fetching suggestion assets for suggestion id=%@", buf, 0xCu);
  }

  v14 = +[BSServiceConnection currentContext];
  v15 = [(MOSuggestionsUIServerManager *)self getPropertiesForConnection:v14];

  v16 = [v15 delegate];
  v17 = [v10 requestedTypes];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = __71__MOSuggestionsUIServerManager_fetchAssets_withTypes_onAssetsCallback___block_invoke;
  v20[3] = &unk_1003091A8;
  v21 = v8;
  v22 = v9;
  v18 = v9;
  v19 = v8;
  [v16 willReturnAssetsForSuggestion:v19 withTypes:v17 onAssetsCallback:v20];
}

void __71__MOSuggestionsUIServerManager_fetchAssets_withTypes_onAssetsCallback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) baseBundle];
    v6 = [v5 bundleIdentifier];
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "fetchAssets:withTypes:onAssetsCallback completing with assets for suggestion: %@", &v9, 0xCu);
  }

  v7 = objc_opt_new();
  v8 = [v3 copy];

  [v7 setAssets:v8];
  (*(*(a1 + 40) + 16))();
}

- (void)performTask:(unint64_t)a3 suggestion:(id)a4 sender:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __62__MOSuggestionsUIServerManager_performTask_suggestion_sender___block_invoke;
  v9[3] = &unk_100309210;
  v10 = a4;
  v11 = a3;
  v8 = v10;
  [(MOSuggestionsUIServerManager *)self getProxyFor:a5 withBlock:v9];
}

void __62__MOSuggestionsUIServerManager_performTask_suggestion_sender___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __62__MOSuggestionsUIServerManager_performTask_suggestion_sender___block_invoke_cold_1(a1);
  }

  v5 = [NSNumber numberWithUnsignedInteger:*(a1 + 40)];
  [v3 performTask:v5 suggestion:*(a1 + 32)];
}

- (void)sendSuggestionSheetStateUpdate:(unint64_t)a3 sender:(id)a4
{
  v6 = a4;
  v7 = [(MOSuggestionsUIServerManager *)self getClientConnectionPropertiesFor:v6];
  if ([v7 currentViewState] != a3)
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [MOSuggestionsUIServerManager sendSuggestionSheetStateUpdate:a3 sender:v8];
    }

    v9 = [NSNumber numberWithUnsignedInteger:a3];
    [v7 setCurrentViewState:a3];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __70__MOSuggestionsUIServerManager_sendSuggestionSheetStateUpdate_sender___block_invoke;
    v11[3] = &unk_100309158;
    v12 = v9;
    v10 = v9;
    [(MOSuggestionsUIServerManager *)self getProxyFor:v6 withBlock:v11];
  }
}

- (void)grantSandboxAccessFor:(id)a3 sender:(id)a4
{
  v6 = a4;
  v7 = [a3 path];
  [v7 fileSystemRepresentation];
  v8 = sandbox_extension_issue_file();
  if (v8)
  {
    v9 = v8;
    v10 = [NSString stringWithUTF8String:v8];
    free(v9);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = __61__MOSuggestionsUIServerManager_grantSandboxAccessFor_sender___block_invoke;
    v12[3] = &unk_100309158;
    v13 = v10;
    v11 = v10;
    [(MOSuggestionsUIServerManager *)self getProxyFor:v6 withBlock:v12];
  }
}

- (void)processManager:(id)a3 didRemoveProcess:(id)a4
{
  v5 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_connectionProperties;
  v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(MOSuggestionsUIServerManager *)self getConnectionHostId:*(*(&v16 + 1) + 8 * i), v16];
        v12 = [v11 remoteProcess];

        if (v12)
        {
          v13 = [v5 pid];
          if (v13 == [v12 pid])
          {
            v14 = _mo_log_facility_get_os_log(&MOLogFacilityUIService);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = [MOSuggestionsUIServerManager getRemoteProcessIdentifier:v12];
              *buf = 138412290;
              v21 = v15;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Client process has ended id=%@", buf, 0xCu);
            }

            goto LABEL_14;
          }
        }
      }

      v8 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
}

- (void)didConnectToSecureWindowWithSession:connectionId:delegate:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)didDisonnectToSecureWindowForConnectionId:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)didDisonnectToSecureWindowForConnectionId:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __63__MOSuggestionsUIServerManager_requestNotificationAuthIfNeeded__block_invoke_cold_1(void *a1)
{
  [a1 authorizationStatus];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)listener:didReceiveConnection:withContext:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)listener:(os_log_t)log didReceiveConnection:(void *)a4 withContext:.cold.4(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Can't add new connection, clientId:%@", buf, 0xCu);
}

void __74__MOSuggestionsUIServerManager_listener_didReceiveConnection_withContext___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = [MOSuggestionsUIServerManager getConnectionIdentifier:a1];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __74__MOSuggestionsUIServerManager_listener_didReceiveConnection_withContext___block_invoke_292_cold_1(uint64_t a1)
{
  v1 = [MOSuggestionsUIServerManager getConnectionIdentifier:a1];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __74__MOSuggestionsUIServerManager_listener_didReceiveConnection_withContext___block_invoke_293_cold_1(uint64_t a1)
{
  v1 = [MOSuggestionsUIServerManager getConnectionIdentifier:a1];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)addConnection:withId:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __45__MOSuggestionsUIServerManager_destroyScene___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)getClientBundleIdentifierFor:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 bundleIdentifier];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)getClientProxyFor:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getProxyFor:(void *)a1 withBlock:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v3 = [a1 connectionHost];
  v4 = [v3 remoteProcess];
  v5 = [MOSuggestionsUIServerManager getRemoteProcessIdentifier:v4];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Can't send message to %@", v6, 0xCu);
}

- (void)requestPickerForSceneIdentiyToken:withOptions:.cold.1()
{
  v0 = +[BSServiceConnection currentContext];
  v1 = [v0 remoteProcess];
  v7 = [MOSuggestionsUIServerManager getRemoteProcessIdentifier:v1];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)requestPickerForSceneIdentiyToken:withOptions:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)requestPickerForSceneIdentiyToken:(void *)a1 withOptions:.cold.3(void *a1)
{
  [a1 activationState];
  v2 = [a1 session];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
}

void __78__MOSuggestionsUIServerManager_requestPickerForSceneIdentiyToken_withOptions___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)updatePickerState:animated:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)updatePickerState:animated:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __62__MOSuggestionsUIServerManager_performTask_suggestion_sender___block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) baseBundle];
  v7 = [v1 bundleIdentifier];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)sendSuggestionSheetStateUpdate:(int)a1 sender:(NSObject *)a2 .cold.1(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "server, acknowledging state transition to %d", v2, 8u);
}

@end