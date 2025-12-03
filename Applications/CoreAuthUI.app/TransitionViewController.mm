@interface TransitionViewController
+ (id)rootController;
- (BOOL)_canTearDown;
- (BOOL)_internalBooleanDefaultNamed:(id)named;
- (BOOL)_isRootControllerClass;
- (BOOL)_shouldCancelForApplicationChange;
- (BOOL)_shouldRegisterForApplicationChange;
- (NSString)description;
- (TransitionViewController)initWithInternalInfo:(id)info mechanism:(id)mechanism backoffCounter:(id)counter remoteUIHost:(id)host allowsLandscape:(BOOL)landscape;
- (TransitionViewController)initWithInternalInfo:(id)info parent:(id)parent allowsLandscape:(BOOL)landscape;
- (TransitionViewController)initWithRequestID:(id)d endpoint:(id)endpoint;
- (TransitionViewController)initWithRequestID:(id)d endpoint:(id)endpoint presentationMode:(int64_t)mode;
- (TransitionViewController)initWithRequestID:(id)d endpoint:(id)endpoint remoteAlertPresentationMode:(int64_t)mode;
- (id)_allSceneSessions;
- (id)localizedCallerName;
- (int)_preferredStatusBarVisibility;
- (int64_t)preferredStatusBarStyle;
- (unint64_t)supportedInterfaceOrientations;
- (void)_cancelForApplicationChangeIfNeeded;
- (void)_destroyAllSceneSessions;
- (void)_destroyCurrentSceneSession;
- (void)_destroyScenesSessions:(id)sessions;
- (void)_dismissChild:(id)child andRoot:(BOOL)root reason:(id)reason completion:(id)completion;
- (void)_dismissRootWithReason:(id)reason completion:(id)completion;
- (void)_handleHomeButtonPressed;
- (void)_invalidateConnection;
- (void)_mechanismEvent:(int64_t)event value:(id)value reply:(id)reply;
- (void)_performOnMainQueueWhenAppeared:(id)appeared;
- (void)_resetUI;
- (void)_setActivityWatchdog;
- (void)_setupConnection;
- (void)_setupRemoteAlert;
- (void)_tearDown;
- (void)_tearDownIfNeeded;
- (void)_viewDidDisappear;
- (void)authMethodWithReply:(id)reply;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)dealloc;
- (void)didReceiveAuthenticationData;
- (void)dismissChildWithCompletionHandler:(id)handler;
- (void)dismissRemoteUIWithIdleEndpoint:(id)endpoint wasInvalidated:(BOOL)invalidated completionHandler:(id)handler;
- (void)handleButtonActions:(id)actions;
- (void)handleSceneButton:(int64_t)button;
- (void)mechanismEvent:(int64_t)event value:(id)value reply:(id)reply;
- (void)noteActivatedWithPresentationMode:(int64_t)mode;
- (void)sceneDeactivated;
- (void)transitionToController:(int64_t)controller internalInfo:(id)info completionHandler:(id)handler;
- (void)uiCancel;
- (void)uiCancelWithError:(id)error;
- (void)uiDismissed;
- (void)uiEvent:(int64_t)event options:(id)options;
- (void)uiFailureWithError:(id)error;
- (void)uiFallback;
- (void)uiOpenURL:(id)l;
- (void)uiSuccessWithResult:(id)result;
- (void)viewDidLoad;
- (void)viewModelDidReceiveAuthenticationDataWithInternalInfo:(id)info mechanism:(id)mechanism;
@end

@implementation TransitionViewController

- (TransitionViewController)initWithRequestID:(id)d endpoint:(id)endpoint
{
  endpointCopy = endpoint;
  dCopy = d;
  v8 = +[LACDevice sharedInstance];
  usesFrontBoardServicesForRemoteUI = [v8 usesFrontBoardServicesForRemoteUI];

  if (usesFrontBoardServicesForRemoteUI)
  {
    v10 = 2;
  }

  else
  {
    v10 = endpointCopy != 0;
  }

  v11 = [(TransitionViewController *)self initWithRequestID:dCopy endpoint:endpointCopy presentationMode:v10];

  return v11;
}

- (TransitionViewController)initWithRequestID:(id)d endpoint:(id)endpoint remoteAlertPresentationMode:(int64_t)mode
{
  v6 = [(TransitionViewController *)self initWithRequestID:d endpoint:endpoint presentationMode:1];
  v7 = v6;
  if (v6)
  {
    v6->_remoteAlertPresentationMode = mode;
    [(TransitionViewController *)v6 _setupRemoteAlert];
  }

  return v7;
}

- (TransitionViewController)initWithRequestID:(id)d endpoint:(id)endpoint presentationMode:(int64_t)mode
{
  dCopy = d;
  dCopy2 = d;
  endpointCopy = endpoint;
  v24.receiver = self;
  v24.super_class = TransitionViewController;
  v11 = [(TransitionViewController *)&v24 init];
  if (!v11)
  {
    goto LABEL_26;
  }

  v11->_allowsLandscape = (LACUserInterfaceSupportedOrientations() & 5) != 0;
  v11->_instanceId = +[TransitionViewController newInstanceId];
  objc_storeStrong(&v11->_requestID, dCopy);
  v11->_presentationMode = mode;
  objc_storeStrong(&v11->_connectionEndpoint, endpoint);
  WeakRetained = objc_loadWeakRetained(&qword_1000B0330);

  if (!WeakRetained)
  {
    goto LABEL_11;
  }

  if (![(TransitionViewController *)v11 _isRootControllerClass])
  {
    goto LABEL_12;
  }

  _shouldSkipStaleRootControllerRecovery = [(TransitionViewController *)v11 _shouldSkipStaleRootControllerRecovery];
  v14 = LALogForCategory();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
  if (!_shouldSkipStaleRootControllerRecovery)
  {
    if (v15)
    {
      sub_10006A2CC();
    }

LABEL_11:
    objc_storeWeak(&qword_1000B0330, v11);
    goto LABEL_12;
  }

  if (v15)
  {
    sub_10006A378();
  }

LABEL_12:
  v16 = LALogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_loadWeakRetained(&qword_1000B0330);
    if (v11 == v17)
    {
      dCopy = @"will become a new root VC";
    }

    else
    {
      dCopy = objc_loadWeakRetained(&qword_1000B0330);
      dCopy = [NSString stringWithFormat:@"root VC: %@", dCopy];
    }

    *buf = 138543618;
    v26 = v11;
    v27 = 2114;
    v28 = dCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Initializing %{public}@, %{public}@", buf, 0x16u);
    if (v11 != v17)
    {
    }
  }

  if (v11->_presentationMode == 2)
  {
    goto LABEL_20;
  }

  v19 = objc_loadWeakRetained(&qword_1000B0330);
  v20 = v19;
  if (v11 == v19)
  {
    v21 = [(TransitionViewController *)v11 isMemberOfClass:objc_opt_class()];

    if ((v21 & 1) == 0)
    {
LABEL_20:
      [(TransitionViewController *)v11 _setupConnection];
    }
  }

  else
  {
  }

  if ([(TransitionViewController *)v11 _shouldRegisterForApplicationChange])
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v11, sub_10000E0B8, CLFApplicationDidChangeNotification, 0, 0);
  }

LABEL_26:

  return v11;
}

- (void)dealloc
{
  v3 = LALogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10006A408();
  }

  if ([(TransitionViewController *)self _shouldRegisterForApplicationChange])
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, CLFApplicationDidChangeNotification, 0);
  }

  v5.receiver = self;
  v5.super_class = TransitionViewController;
  [(TransitionViewController *)&v5 dealloc];
}

- (BOOL)_isRootControllerClass
{
  if (([(TransitionViewController *)self isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    return 1;
  }

  return [(TransitionViewController *)self isRemoteViewController];
}

- (void)_resetUI
{
  disappearedNotification = self->_disappearedNotification;
  self->_disappearedNotification = 0;

  appearedNotification = self->_appearedNotification;
  self->_appearedNotification = 0;

  self->_hasRequestedReset = 1;
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000E2B8;
  v5[3] = &unk_1000963B8;
  objc_copyWeak(&v6, &location);
  [(TransitionViewController *)self dismissRemoteUIWithIdleEndpoint:0 wasInvalidated:1 completionHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)_setupRemoteAlert
{
  remoteAlertPresentationMode = self->_remoteAlertPresentationMode;
  if (remoteAlertPresentationMode - 2 >= 4)
  {
    if (remoteAlertPresentationMode != 1)
    {
      remoteAlertPresentationMode = remoteAlertPresentationMode == 0;
      goto LABEL_8;
    }
  }

  else
  {
    remoteAlertPresentationMode = 2;
  }

  v4 = LALogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "We are in multiscreen environment. Initializing TransitionViewModel.", v11, 2u);
  }

  v5 = +[_TtC10CoreAuthUI19TransitionViewModel shared];
  viewModel = self->_viewModel;
  self->_viewModel = v5;

  delegates = [(TransitionViewModel *)self->_viewModel delegates];
  [delegates addObject:self];

LABEL_8:
  v8 = self->_viewModel;
  if (v8)
  {
    delegates2 = [(TransitionViewModel *)v8 delegates];
    v10 = [delegates2 count];

    if (v10 >= remoteAlertPresentationMode)
    {
      [(TransitionViewModel *)self->_viewModel setupConnection];
    }
  }

  else
  {
    [(TransitionViewController *)self _setupConnection];
  }
}

- (void)_setupConnection
{
  objc_initWeak(&location, self);
  if (qword_1000B0338)
  {
    [qword_1000B0338 suspend];
  }

  else if (!self->_connectionEndpoint)
  {
    v3 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.LocalAuthentication.RemoteUIHost" options:0];
    v4 = qword_1000B0338;
    qword_1000B0338 = v3;

    v5 = [LAInternalProtocols interfaceWithInternalProtocol:&OBJC_PROTOCOL___LACRemoteUIHost];
    [qword_1000B0338 setRemoteObjectInterface:v5];
  }

  if (self->_connectionEndpoint)
  {
    v6 = [[NSXPCConnection alloc] initWithListenerEndpoint:self->_connectionEndpoint];
    v7 = qword_1000B0338;
    qword_1000B0338 = v6;

    v8 = [LAInternalProtocols interfaceWithInternalProtocol:&OBJC_PROTOCOL___LACRemoteUIHost];
    [qword_1000B0338 setRemoteObjectInterface:v8];
  }

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10000E8DC;
  v30[3] = &unk_1000963B8;
  objc_copyWeak(&v31, &location);
  [qword_1000B0338 setInterruptionHandler:v30];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10000E9AC;
  v28[3] = &unk_1000963B8;
  objc_copyWeak(&v29, &location);
  [qword_1000B0338 setInvalidationHandler:v28];
  [qword_1000B0338 resume];
  v9 = qword_1000B0338;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10000EA88;
  v26[3] = &unk_100096680;
  objc_copyWeak(&v27, &location);
  v10 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v26];
  remoteUIHost = self->_remoteUIHost;
  self->_remoteUIHost = v10;

  v12 = self->_remoteUIHost;
  requestID = [(TransitionViewController *)self requestID];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10000EB9C;
  v24[3] = &unk_1000966A8;
  objc_copyWeak(&v25, &location);
  v24[4] = self;
  [(LACRemoteUIHost *)v12 connectRemoteUI:self requestID:requestID reply:v24];

  mechanism = [(TransitionViewController *)self mechanism];
  if (mechanism)
  {
    isRemoteViewController = [(TransitionViewController *)self isRemoteViewController];

    if (isRemoteViewController)
    {
      v16 = dispatch_semaphore_create(0);
      mechanism = self->_mechanism;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10000ECE4;
      v21[3] = &unk_1000966D0;
      objc_copyWeak(&v23, &location);
      v21[4] = self;
      v18 = v16;
      v22 = v18;
      [(LACUIMechanism *)mechanism internalInfoWithReply:v21];
      v19 = dispatch_time(0, 1000000000);
      if (dispatch_semaphore_wait(v18, v19))
      {
        v20 = LALogForCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
        {
          sub_10006A47C(v20);
        }
      }

      objc_destroyWeak(&v23);
    }
  }

  objc_destroyWeak(&v25);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&v29);
  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

- (TransitionViewController)initWithInternalInfo:(id)info parent:(id)parent allowsLandscape:(BOOL)landscape
{
  infoCopy = info;
  parentCopy = parent;
  v20.receiver = self;
  v20.super_class = TransitionViewController;
  v11 = [(TransitionViewController *)&v20 init];
  if (v11)
  {
    v11->_instanceId = +[TransitionViewController newInstanceId];
    v12 = LALogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v22 = v11;
      v23 = 2114;
      v24 = parentCopy;
      v25 = 2114;
      v26 = infoCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ is initializing as a child of %{public}@ with %{public}@", buf, 0x20u);
    }

    objc_storeStrong(&v11->_internalInfo, info);
    mechanism = [parentCopy mechanism];
    mechanism = v11->_mechanism;
    v11->_mechanism = mechanism;

    backoffCounter = [parentCopy backoffCounter];
    backoffCounter = v11->_backoffCounter;
    v11->_backoffCounter = backoffCounter;

    remoteUIHost = [parentCopy remoteUIHost];
    remoteUIHost = v11->_remoteUIHost;
    v11->_remoteUIHost = remoteUIHost;

    v11->_allowsLandscape = landscape;
    [(TransitionViewController *)v11 didReceiveAuthenticationData];
  }

  return v11;
}

- (TransitionViewController)initWithInternalInfo:(id)info mechanism:(id)mechanism backoffCounter:(id)counter remoteUIHost:(id)host allowsLandscape:(BOOL)landscape
{
  infoCopy = info;
  mechanismCopy = mechanism;
  counterCopy = counter;
  hostCopy = host;
  v18.receiver = self;
  v18.super_class = TransitionViewController;
  v16 = [(TransitionViewController *)&v18 init];
  if (v16)
  {
    v16->_instanceId = +[TransitionViewController newInstanceId];
    objc_storeStrong(&v16->_backoffCounter, counter);
    objc_storeStrong(&v16->_remoteUIHost, host);
    v16->_allowsLandscape = landscape;
    [(TransitionViewController *)v16 viewModelDidReceiveAuthenticationDataWithInternalInfo:infoCopy mechanism:mechanismCopy];
  }

  return v16;
}

- (void)didReceiveAuthenticationData
{
  selfCopy = self;
  v3 = [(NSDictionary *)self->_internalInfo objectForKey:@"Policy"];
  selfCopy->_policy = [v3 integerValue];

  v4 = [(NSDictionary *)selfCopy->_internalInfo objectForKey:@"Options"];
  v5 = [v4 mutableCopy];

  if (v5)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    allKeys = [v5 allKeys];
    v7 = [allKeys countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v42;
      v10 = &LACPolicyOptionBeginRatchetLocalizedText_ptr;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v42 != v9)
          {
            objc_enumerationMutation(allKeys);
          }

          v12 = *(*(&v41 + 1) + 8 * i);
          v13 = [v5 objectForKeyedSubscript:v12];
          v14 = v10[123];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [LACLocalizationUtils isLocalizationKey:v13])
          {
            v40 = 0;
            v38 = [LACLocalizationUtils decodeLocalizationKeyFromString:v13 shouldUseDeviceVariant:&v40];
            v39[0] = _NSConcreteStackBlock;
            v39[1] = 3221225472;
            v39[2] = sub_10000F470;
            v39[3] = &unk_1000966F8;
            v39[4] = selfCopy;
            sub_10000F470(v39, v38, v40);
            v15 = allKeys;
            v17 = v16 = selfCopy;
            [v5 setObject:v17 forKeyedSubscript:v12];

            selfCopy = v16;
            allKeys = v15;

            v10 = &LACPolicyOptionBeginRatchetLocalizedText_ptr;
          }
        }

        v8 = [allKeys countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v8);
    }
  }

  objc_storeStrong(&selfCopy->_options, v5);
  options = selfCopy->_options;
  if (options)
  {
    v19 = [(NSDictionary *)options objectForKey:&off_10009AAE8];
    v20 = v19;
    if (v19)
    {
      -[TransitionViewController setModalPresentationStyle:](selfCopy, "setModalPresentationStyle:", [v19 integerValue]);
    }

    v21 = [(NSDictionary *)selfCopy->_options objectForKey:&off_10009AB00];
    v22 = v21;
    if (v21)
    {
      -[TransitionViewController setModalTransitionStyle:](selfCopy, "setModalTransitionStyle:", [v21 integerValue]);
    }
  }

  localizedCallerName = [(TransitionViewController *)selfCopy localizedCallerName];
  callerName = selfCopy->_callerName;
  selfCopy->_callerName = localizedCallerName;

  v25 = [(NSDictionary *)selfCopy->_options objectForKeyedSubscript:&off_10009AB18];
  selfCopy->_callerNameOverride = [v25 isEqualToString:selfCopy->_callerName];

  v26 = [(NSDictionary *)selfCopy->_internalInfo objectForKey:@"CallerId"];
  callerBundleId = selfCopy->_callerBundleId;
  selfCopy->_callerBundleId = v26;

  options = [(TransitionViewController *)selfCopy options];
  v29 = [options objectForKeyedSubscript:&off_10009AB30];
  v30 = [LACStringHelper truncateString:v29 maxLength:512];
  authenticationTitle = selfCopy->_authenticationTitle;
  selfCopy->_authenticationTitle = v30;

  options2 = [(TransitionViewController *)selfCopy options];
  v33 = [options2 objectForKeyedSubscript:&off_10009AB48];
  v34 = [LACStringHelper truncateString:v33 maxLength:512];
  authenticationSubtitle = selfCopy->_authenticationSubtitle;
  selfCopy->_authenticationSubtitle = v34;

  v36 = [[LACCachedExternalizedContext alloc] initWithExternalizationDelegate:selfCopy->_mechanism];
  cachedExternalizedContext = selfCopy->_cachedExternalizedContext;
  selfCopy->_cachedExternalizedContext = v36;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"%@[%u]", v4, [(TransitionViewController *)self instanceId]];

  return v5;
}

- (id)localizedCallerName
{
  v2 = [(NSDictionary *)self->_internalInfo objectForKeyedSubscript:@"CallerName"];
  if (v2)
  {
    v3 = [LSBundleRecord bundleRecordWithBundleIdentifier:v2 allowPlaceholder:0 error:0];
    v4 = v3;
    if (v3)
    {
      localizedName = [v3 localizedName];
      v6 = localizedName;
      if (localizedName)
      {
        v7 = localizedName;
        v8 = v2;
      }

      else
      {
        localizedShortName = [v4 localizedShortName];
        v8 = localizedShortName;
        if (localizedShortName)
        {
          v7 = localizedShortName;
        }

        else
        {
          bundleIdentifier = [v4 bundleIdentifier];
          v11 = bundleIdentifier;
          if (bundleIdentifier)
          {
            v12 = bundleIdentifier;
          }

          else
          {
            v12 = v2;
          }

          v7 = v12;

          v2 = v11;
        }
      }

      v2 = v7;
    }
  }

  return v2;
}

- (void)dismissRemoteUIWithIdleEndpoint:(id)endpoint wasInvalidated:(BOOL)invalidated completionHandler:(id)handler
{
  invalidatedCopy = invalidated;
  endpointCopy = endpoint;
  handlerCopy = handler;
  v10 = +[TransitionViewController newTaskId];
  v11 = LALogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v38 = 1024;
    v39 = invalidatedCopy;
    v40 = 1024;
    v41 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Dismissing %{public}@, invalidated: %d, created tid:%u", buf, 0x18u);
  }

  objc_initWeak(buf, self);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10000FA9C;
  v30[3] = &unk_100096720;
  v12 = handlerCopy;
  v33 = invalidatedCopy;
  v30[4] = self;
  v31 = v12;
  objc_copyWeak(&v32, buf);
  v13 = objc_retainBlock(v30);
  v14 = v13;
  if (self->_disappeared)
  {
    (v13[2])(v13);
  }

  else
  {
    [(TransitionViewController *)self setDismissing:1];
    if (invalidatedCopy && !self->_appeared)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000FB2C;
      block[3] = &unk_100096748;
      v15 = &v28;
      objc_copyWeak(&v28, buf);
      v29 = v10;
      v21 = &v27;
      v27 = v14;
      dispatch_async(&_dispatch_main_q, block);
    }

    else
    {
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10000FBAC;
      v22[3] = &unk_100096798;
      v15 = &v24;
      objc_copyWeak(&v24, buf);
      v25 = v10;
      v22[4] = self;
      v23 = v14;
      v16 = objc_retainBlock(v22);
      v17 = v16;
      if (self->_appeared)
      {
        (v16[2])(v16);
      }

      else
      {
        v18 = LALogForCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *v34 = 67109120;
          v35 = v10;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Scheduling disappearBlock when controller appears, tid:%u", v34, 8u);
        }

        v19 = objc_retainBlock(v17);
        appearedNotification = self->_appearedNotification;
        self->_appearedNotification = v19;
      }

      v21 = &v23;
    }

    objc_destroyWeak(v15);
  }

  objc_destroyWeak(&v32);
  objc_destroyWeak(buf);
}

- (void)transitionToController:(int64_t)controller internalInfo:(id)info completionHandler:(id)handler
{
  infoCopy = info;
  handlerCopy = handler;
  v10 = +[TransitionViewController newTaskId];
  v11 = LALogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    selfCopy2 = self;
    v37 = 1024;
    controllerCopy = controller;
    v39 = 2114;
    v40 = infoCopy;
    v41 = 1024;
    v42 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ transitioning to %d (%{public}@), created tid:%u", buf, 0x22u);
  }

  if (self->_allowsLandscape)
  {
    v12 = 1;
  }

  else
  {
    v13 = _os_feature_enabled_impl();
    if (controller == 1)
    {
      v12 = v13;
    }

    else
    {
      v12 = 0;
    }
  }

  self->_allowsLandscape = v12;
  v14 = LALogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_allowsLandscape)
    {
      v15 = "YES";
    }

    else
    {
      v15 = "NO";
    }

    *buf = 136315138;
    selfCopy2 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Setting _allowsLandscape = %s", buf, 0xCu);
  }

  v16 = [infoCopy objectForKey:@"CallerId"];
  if (v16)
  {
    v17 = [infoCopy objectForKey:@"BackgroundUi"];
    bOOLValue = [v17 BOOLValue];

    v19 = [infoCopy objectForKey:@"Policy"];
    integerValue = [v19 integerValue];

    if ((bOOLValue & 1) == 0 && ([LACPolicyUtilities isApplePayPolicy:integerValue]& 1) == 0)
    {
      v21 = [infoCopy objectForKeyedSubscript:@"ProcessId"];
      if (+[LAUtils callerRunningOnForeground:pid:](LAUtils, "callerRunningOnForeground:pid:", v16, [v21 unsignedIntValue]))
      {
      }

      else
      {
        v22 = +[NSBundle mainBundle];
        bundleIdentifier = [v22 bundleIdentifier];
        v24 = [LAUtils callerRunningOnForeground:bundleIdentifier pid:geteuid()];

        if ((v24 & 1) == 0)
        {
          v33[0] = _NSConcreteStackBlock;
          v33[1] = 3221225472;
          v33[2] = sub_1000101E4;
          v33[3] = &unk_1000967C0;
          v34 = handlerCopy;
          [(TransitionViewController *)self _dismissRemoteUIWithCompletionHandler:v33];

          goto LABEL_25;
        }
      }
    }
  }

  if ([(TransitionViewController *)self _shouldHideStatusBarForController:controller])
  {
    v25 = LALogForCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%@ will hide status bar, because the child controller needs it", buf, 0xCu);
    }

    v26 = 1;
  }

  else
  {
    v26 = 0;
  }

  self->_hideStatusBar = v26;
  objc_initWeak(buf, self);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10001026C;
  v27[3] = &unk_100096808;
  objc_copyWeak(v31, buf);
  v32 = v10;
  v30 = handlerCopy;
  v31[1] = controller;
  v28 = infoCopy;
  selfCopy3 = self;
  [(TransitionViewController *)self _performOnMainQueueWhenAppeared:v27];

  objc_destroyWeak(v31);
  objc_destroyWeak(buf);
LABEL_25:
}

- (void)_performOnMainQueueWhenAppeared:(id)appeared
{
  appearedCopy = appeared;
  v5 = +[TransitionViewController newTaskId];
  v6 = LALogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    selfCopy = self;
    v17 = 1024;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@ will perform task when appeared, created tid:%u", buf, 0x12u);
  }

  v7 = self->_childController;
  objc_initWeak(buf, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000109A8;
  v10[3] = &unk_100096858;
  objc_copyWeak(&v13, buf);
  v14 = v5;
  v11 = v7;
  v12 = appearedCopy;
  v8 = appearedCopy;
  v9 = v7;
  dispatch_async(&_dispatch_main_q, v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

- (void)sceneDeactivated
{
  if (!self->_didDeactivateScene)
  {
    [(TransitionViewController *)self _viewDidDisappear];
  }
}

- (void)viewDidLoad
{
  v3 = LALogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ viewDidLoad", buf, 0xCu);
  }

  v10.receiver = self;
  v10.super_class = TransitionViewController;
  [(TransitionViewController *)&v10 viewDidLoad];
  view = [(TransitionViewController *)self view];
  [view setAccessibilityIdentifier:@"authentication_ui"];

  objc_initWeak(buf, self);
  v5 = objc_opt_self();
  v11 = v5;
  v6 = [NSArray arrayWithObjects:&v11 count:1];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100010F20;
  v8[3] = &unk_100096880;
  objc_copyWeak(&v9, buf);
  v7 = [(TransitionViewController *)self registerForTraitChanges:v6 withHandler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

+ (id)rootController
{
  WeakRetained = objc_loadWeakRetained(&qword_1000B0330);

  return WeakRetained;
}

- (void)_viewDidDisappear
{
  v3 = LALogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ viewDidDisappear", buf, 0xCu);
  }

  awaitingDisappear = self->_awaitingDisappear;
  if (awaitingDisappear)
  {
    v5 = LALogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "ignoring expected UI disappearance", buf, 2u);
    }
  }

  else
  {
    [(LACUIMechanism *)self->_mechanism uiEvent:1 options:0];
    childController = self->_childController;
    if (!childController || [(TransitionViewController *)childController disappeared])
    {
      v7 = 0;
      goto LABEL_11;
    }

    v8 = self->_childController;
    v5 = [NSString stringWithFormat:@"viewDidDisappear on %@, needs to dismiss child", self];
    [(TransitionViewController *)self _dismissChild:v8 andRoot:1 reason:v5 completion:0];
  }

  v7 = !awaitingDisappear;

LABEL_11:
  disappearedNotification = self->_disappearedNotification;
  if (disappearedNotification)
  {
    disappearedNotification[2]();
    v10 = self->_disappearedNotification;
    self->_disappearedNotification = 0;
  }

  if (!self->_presentationMode || (v11 = objc_opt_class(), v11 != objc_opt_class()) || !self->_awaitingDisappear)
  {
    if (!v7)
    {
      v12 = [NSString stringWithFormat:@"viewDidDisappear on %@, no active child", self];
      [(TransitionViewController *)self _dismissRootWithReason:v12 completion:0];
    }

    self->_disappeared = 1;
    self->_appeared = 0;
    [(TransitionViewModel *)self->_viewModel suspendConnection];
  }
}

- (void)uiEvent:(int64_t)event options:(id)options
{
  optionsCopy = options;
  v7 = LALogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"with options: ";
    v10 = 138544130;
    v9 = &stru_1000992A0;
    selfCopy = self;
    v12 = 1024;
    if (optionsCopy)
    {
      v9 = optionsCopy;
    }

    else
    {
      v8 = &stru_1000992A0;
    }

    eventCopy = event;
    v14 = 2112;
    v15 = v8;
    v16 = 2114;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ has generated UI event:%d %@%{public}@", &v10, 0x26u);
  }

  [(LACUIMechanism *)self->_mechanism uiEvent:event options:optionsCopy];
}

- (void)uiOpenURL:(id)l
{
  lCopy = l;
  v4 = +[URLOpener sharedInstance];
  v5 = [v4 openURL:lCopy];

  if (v5)
  {
    v6 = LALogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543618;
      v8 = lCopy;
      v9 = 2114;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Unable to open URL: %{public}@ error: %{public}@", &v7, 0x16u);
    }
  }
}

- (void)uiDismissed
{
  [(TransitionViewController *)self _setActivityWatchdog];

  [(TransitionViewController *)self uiEvent:11 options:0];
}

- (void)uiCancel
{
  [(TransitionViewController *)self _setActivityWatchdog];

  [(TransitionViewController *)self uiEvent:2 options:0];
}

- (void)uiCancelWithError:(id)error
{
  errorCopy = error;
  [(TransitionViewController *)self _setActivityWatchdog];
  if (errorCopy)
  {
    v6 = NSUnderlyingErrorKey;
    v7 = errorCopy;
    v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  }

  else
  {
    v5 = 0;
  }

  [(TransitionViewController *)self uiEvent:2 options:v5];
}

- (void)uiFallback
{
  [(TransitionViewController *)self _setActivityWatchdog];

  [(TransitionViewController *)self uiEvent:3 options:0];
}

- (void)uiSuccessWithResult:(id)result
{
  resultCopy = result;
  v5 = LALogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ UI success", &v6, 0xCu);
  }

  [(TransitionViewController *)self _setActivityWatchdog];
  [(LACUIMechanism *)self->_mechanism uiSuccessWithResult:resultCopy];
}

- (void)uiFailureWithError:(id)error
{
  errorCopy = error;
  v5 = LALogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543618;
    selfCopy = self;
    v8 = 2114;
    v9 = errorCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ UI failure: %{public}@", &v6, 0x16u);
  }

  [(TransitionViewController *)self _setActivityWatchdog];
  [(LACUIMechanism *)self->_mechanism uiFailureWithError:errorCopy];
}

- (void)authMethodWithReply:(id)reply
{
  replyCopy = reply;
  v5 = [LAErrorHelper internalErrorWithMessage:@"No auth blob on mechanism."];
  (*(reply + 2))(replyCopy, 0, v5);
}

- (void)_setActivityWatchdog
{
  objc_initWeak(&location, self);
  v2 = dispatch_time(0, 3000000000);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100011C8C;
  v3[3] = &unk_1000963B8;
  objc_copyWeak(&v4, &location);
  dispatch_after(v2, &_dispatch_main_q, v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)mechanismEvent:(int64_t)event value:(id)value reply:(id)reply
{
  valueCopy = value;
  replyCopy = reply;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011E2C;
  block[3] = &unk_1000968A8;
  objc_copyWeak(v15, &location);
  v15[1] = event;
  v13 = valueCopy;
  v14 = replyCopy;
  v10 = replyCopy;
  v11 = valueCopy;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(v15);
  objc_destroyWeak(&location);
}

- (void)_mechanismEvent:(int64_t)event value:(id)value reply:(id)reply
{
  valueCopy = value;
  replyCopy = reply;
  v10 = LALogForCategory();
  v11 = v10;
  if (self->_childController)
  {
    v12 = OS_LOG_TYPE_INFO;
  }

  else
  {
    v12 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v10, v12))
  {
    v13 = NSStringFromMechanismEventAndValue();
    v15 = 138543874;
    selfCopy = self;
    v17 = 1024;
    eventCopy = event;
    v19 = 2112;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v11, v12, "%{public}@ has received mechanism event %d (%@)", &v15, 0x1Cu);
  }

  childController = self->_childController;
  if (childController)
  {
    [(TransitionViewController *)childController mechanismEvent:event value:valueCopy reply:replyCopy];
  }

  else
  {
    if ((event & 0xFFFFFFFFFFFFFFFCLL) == 8)
    {
      self->_resetUiEvent = event;
    }

    replyCopy[2](replyCopy);
  }
}

- (void)dismissChildWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = LALogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[TransitionViewController dismissChildWithCompletionHandler:]";
    v13 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  self->_awaitingDisappear = 1;
  [(TransitionViewController *)self setDismissing:1];
  objc_initWeak(buf, self);
  isFullScreenController = [(TransitionViewController *)self isFullScreenController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000121A0;
  v8[3] = &unk_100096328;
  objc_copyWeak(&v10, buf);
  v7 = handlerCopy;
  v9 = v7;
  [(TransitionViewController *)self dismissViewControllerAnimated:isFullScreenController completion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (void)handleSceneButton:(int64_t)button
{
  v5 = LALogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [NSNumber numberWithInteger:button];
    v7 = 138543618;
    selfCopy = self;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ is handling action for scene button %@", &v7, 0x16u);
  }

  if (!button)
  {
    [(TransitionViewController *)self _handleHomeButtonPressed];
  }
}

- (void)handleButtonActions:(id)actions
{
  actionsCopy = actions;
  v5 = LALogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v18 = 2112;
    v19 = actionsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ is handling button action %@", buf, 0x16u);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = actionsCopy;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (([*(*(&v11 + 1) + 8 * i) events] & 0x10) != 0)
        {
          [(TransitionViewController *)self _handleHomeButtonPressed];
          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (void)_handleHomeButtonPressed
{
  if (![(TransitionViewController *)self->_childController processHomeButtonPressed])
  {

    [(TransitionViewController *)self uiCancel];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  v3 = LACUserInterfaceSupportedOrientations();
  v4 = LALogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10006A730(v3 == 15, self, v4);
  }

  if (v3 == 15)
  {
    v5 = 30;
  }

  else
  {
    v5 = 2;
  }

  return v5;
}

- (int)_preferredStatusBarVisibility
{
  if (self->_hideStatusBar)
  {
    return 1;
  }

  if ([(TransitionViewController *)self isFullScreenController:v2])
  {
    return 2;
  }

  return 0;
}

- (int64_t)preferredStatusBarStyle
{
  traitCollection = [(TransitionViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  v6 = LALogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    selfCopy2 = "[TransitionViewController configureWithContext:completion:]";
    v11 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v9, 0x16u);
  }

  if (!self->_allowsLandscape)
  {
    v7 = LALogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Enforcing portrait mode regardless of the current orientation", &v9, 0xCu);
    }

    _remoteViewControllerProxy = [(TransitionViewController *)self _remoteViewControllerProxy];
    [_remoteViewControllerProxy setLaunchingInterfaceOrientation:1];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)noteActivatedWithPresentationMode:(int64_t)mode
{
  v5.receiver = self;
  v5.super_class = TransitionViewController;
  [(TransitionViewController *)&v5 noteActivatedWithPresentationMode:?];
  self->_remoteAlertPresentationMode = mode;
  [(TransitionViewController *)self _setupRemoteAlert];
}

- (void)_dismissChild:(id)child andRoot:(BOOL)root reason:(id)reason completion:(id)completion
{
  childCopy = child;
  reasonCopy = reason;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100012A10;
  v29[3] = &unk_1000968D0;
  objc_copyWeak(&v32, &location);
  v13 = reasonCopy;
  v30 = v13;
  v14 = completionCopy;
  v31 = v14;
  v15 = objc_retainBlock(v29);
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_100012AF4;
  v24 = &unk_1000968F8;
  rootCopy = root;
  objc_copyWeak(&v27, &location);
  v16 = v13;
  v25 = v16;
  v17 = v15;
  v26 = v17;
  v18 = objc_retainBlock(&v21);
  v19 = v18;
  if (childCopy)
  {
    v20 = LALogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      selfCopy = self;
      v36 = 2114;
      v37 = childCopy;
      v38 = 2114;
      v39 = v16;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ will dismiss %{public}@ (%{public}@)", buf, 0x20u);
    }

    [childCopy dismissChildWithCompletionHandler:{v19, v21, v22, v23, v24, v25}];
  }

  else
  {
    (v18[2])(v18);
  }

  objc_destroyWeak(&v27);
  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);
}

- (void)_dismissRootWithReason:(id)reason completion:(id)completion
{
  reasonCopy = reason;
  completionCopy = completion;
  _remoteViewControllerProxy = [(TransitionViewController *)self _remoteViewControllerProxy];
  if (_remoteViewControllerProxy)
  {
    v9 = LALogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543618;
      selfCopy = self;
      v12 = 2114;
      v13 = reasonCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ RVC proxy was dismissed (%{public}@)", &v10, 0x16u);
    }

    [_remoteViewControllerProxy dismiss];
  }

  else if ([(TransitionViewController *)self _canTearDown])
  {
    [(TransitionViewController *)self dismissViewControllerAnimated:0 completion:0];
  }

  [(TransitionViewController *)self _tearDownIfNeeded];
  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (BOOL)_internalBooleanDefaultNamed:(id)named
{
  namedCopy = named;
  if (os_variant_allows_internal_security_policies())
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    v5 = [v4 persistentDomainForName:NSGlobalDomain];

    v6 = [v5 objectForKeyedSubscript:namedCopy];
    v7 = v6;
    if (!v6)
    {
      v6 = &__kCFBooleanFalse;
    }

    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)_cancelForApplicationChangeIfNeeded
{
  if ([(TransitionViewController *)self _shouldCancelForApplicationChange])
  {
    v3 = LALogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138543362;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Canceling %{public}@ due to application change.", &v4, 0xCu);
    }

    [(TransitionViewController *)self uiCancel];
  }
}

- (BOOL)_shouldRegisterForApplicationChange
{
  v2 = +[LACDevice sharedInstance];
  isClarityBoardRunning = [v2 isClarityBoardRunning];

  return isClarityBoardRunning;
}

- (BOOL)_shouldCancelForApplicationChange
{
  if (![(TransitionViewController *)self _shouldRegisterForApplicationChange])
  {
    return 0;
  }

  v3 = +[TransitionViewController rootController];
  v4 = v3 == self;

  return v4;
}

- (void)viewModelDidReceiveAuthenticationDataWithInternalInfo:(id)info mechanism:(id)mechanism
{
  infoCopy = info;
  objc_storeStrong(&self->_mechanism, mechanism);
  mechanismCopy = mechanism;
  internalInfo = self->_internalInfo;
  self->_internalInfo = infoCopy;

  [(TransitionViewController *)self didReceiveAuthenticationData];
}

- (void)_tearDownIfNeeded
{
  if ([(TransitionViewController *)self _canTearDown])
  {
    objc_storeWeak(&qword_1000B0330, 0);
    childController = self->_childController;
    self->_childController = 0;

    [(TransitionViewController *)self _tearDown];
  }
}

- (BOOL)_canTearDown
{
  if ([(TransitionViewController *)self _shouldSimulateStaleRootController])
  {
    v3 = LALogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10006A7F4();
    }

LABEL_4:

    return 0;
  }

  v5 = +[TransitionViewController rootController];

  if (v5 != self && !self->_hasRequestedReset)
  {
    v6 = +[TransitionViewController rootController];
    if (v6)
    {
    }

    else if (([(TransitionViewController *)self isMemberOfClass:objc_opt_class()]& 1) != 0)
    {
      return 1;
    }

    v3 = LALogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = +[TransitionViewController rootController];
      v8 = [NSNumber numberWithBool:self->_hasRequestedReset];
      v9 = 138412802;
      selfCopy = self;
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Cannot tear down UI { self=%@, rootController=%@, hasRequestedReset:%@ }", &v9, 0x20u);
    }

    goto LABEL_4;
  }

  return 1;
}

- (void)_tearDown
{
  if (self->_presentationMode)
  {
    remoteUIHost = [(TransitionViewController *)self remoteUIHost];
    if (remoteUIHost)
    {
      objc_initWeak(&location, self);
      v4[0] = _NSConcreteStackBlock;
      v4[1] = 3221225472;
      v4[2] = sub_10001326C;
      v4[3] = &unk_100096948;
      objc_copyWeak(&v5, &location);
      v4[4] = self;
      [remoteUIHost checkHasPendingUIRequestsForRemoteUI:self completion:v4];
      objc_destroyWeak(&v5);
      objc_destroyWeak(&location);
    }

    else
    {
      [(TransitionViewController *)self _destroyCurrentSceneSession];
    }
  }
}

- (void)_invalidateConnection
{
  remoteUIHost = self->_remoteUIHost;
  self->_remoteUIHost = 0;

  [(TransitionViewController *)self _tearDown];
  v7 = qword_1000B0338;
  v4 = qword_1000B0338;
  qword_1000B0338 = 0;

  v5 = +[LACFlags sharedInstance];
  featureFlagLaunchAngelEnabled = [v5 featureFlagLaunchAngelEnabled];

  if (featureFlagLaunchAngelEnabled)
  {
    [v7 invalidate];
  }
}

- (void)_destroyCurrentSceneSession
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001353C;
  v4[3] = &unk_100096970;
  v4[4] = self;
  v3 = sub_10001353C(v4);
  [(TransitionViewController *)self _destroyScenesSessions:v3];
}

- (void)_destroyAllSceneSessions
{
  v3 = +[UIApplication sharedApplication];
  supportsMultipleScenes = [v3 supportsMultipleScenes];

  if (supportsMultipleScenes)
  {
    _allSceneSessions = [(TransitionViewController *)self _allSceneSessions];
    [(TransitionViewController *)self _destroyScenesSessions:_allSceneSessions];
  }

  else
  {

    [(TransitionViewController *)self _destroyCurrentSceneSession];
  }
}

- (void)_destroyScenesSessions:(id)sessions
{
  sessionsCopy = sessions;
  v5 = sessionsCopy;
  if ((self->_presentationMode - 1) <= 1)
  {
    self->_didDeactivateScene = 1;
    v6 = [sessionsCopy count];
    v7 = LALogForCategory();
    v8 = 16 * (v6 == 0);
    if (os_log_type_enabled(v7, v8))
    {
      *buf = 67109120;
      LODWORD(v30) = v6;
      _os_log_impl(&_mh_execute_header, v7, v8, "Will destroy %d sessions", buf, 8u);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = v5;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          scene = [v14 scene];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          v17 = LALogForCategory();
          v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
          if (isKindOfClass)
          {
            if (v18)
            {
              scene2 = [v14 scene];
              *buf = 138543362;
              v30 = scene2;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Will deactivate remote alert scene %{public}@", buf, 0xCu);
            }

            scene3 = [v14 scene];
            [scene3 deactivate];
          }

          else
          {
            if (v18)
            {
              persistentIdentifier = [v14 persistentIdentifier];
              *buf = 138543362;
              v30 = persistentIdentifier;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Will destroy scene session %{public}@", buf, 0xCu);
            }

            v22 = +[UIApplication sharedApplication];
            v24[0] = _NSConcreteStackBlock;
            v24[1] = 3221225472;
            v24[2] = sub_1000139B8;
            v24[3] = &unk_100096998;
            v24[4] = v14;
            [v22 requestSceneSessionDestruction:v14 options:0 errorHandler:v24];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v11);
    }

    v5 = v23;
  }
}

- (id)_allSceneSessions
{
  v2 = objc_alloc_init(NSMutableSet);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = +[UIApplication sharedApplication];
  openSessions = [v3 openSessions];

  v5 = [openSessions countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(openSessions);
        }

        [v2 addObject:*(*(&v22 + 1) + 8 * i)];
      }

      v6 = [openSessions countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = +[UIApplication sharedApplication];
  connectedScenes = [v9 connectedScenes];

  v11 = [connectedScenes countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(connectedScenes);
        }

        session = [*(*(&v18 + 1) + 8 * j) session];
        [v2 addObject:session];
      }

      v12 = [connectedScenes countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v12);
  }

  allObjects = [v2 allObjects];

  return allObjects;
}

@end