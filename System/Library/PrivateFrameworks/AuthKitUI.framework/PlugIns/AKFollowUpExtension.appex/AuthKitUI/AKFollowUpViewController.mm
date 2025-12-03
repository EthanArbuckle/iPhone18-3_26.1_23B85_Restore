@interface AKFollowUpViewController
- (BOOL)_shouldFetchUserInformationForAccount:(id)account;
- (id)_URLWithString:(id)string byAppendingParameters:(id)parameters;
- (id)_primaryAppleAccount;
- (void)_beginServerUIRequest:(id)request completion:(id)completion;
- (void)_fetchUserInformationIfNeededForAltDSID:(id)d completion:(id)completion;
- (void)_handleAuthKitAction:(id)action forItem:(id)item telemetryFlowID:(id)d completion:(id)completion;
- (void)_handleAuthKitSignal:(unint64_t)signal forItem:(id)item completion:(id)completion;
- (void)_handleFinalServerResponse:(id)response completion:(id)completion;
- (void)_handleLocalURLKey:(id)key withActionIdentifier:(id)identifier forItem:(id)item completion:(id)completion;
- (void)_handleSensitiveURL:(id)l withActionIdentifier:(id)identifier completion:(id)completion;
- (void)_handleURL:(id)l withActionIdentifier:(id)identifier completion:(id)completion;
- (void)_handleURLKey:(id)key withAction:(id)action forItem:(id)item telemetryFlowID:(id)d completion:(id)completion;
- (void)_prepareAuthContextForAltDSID:(id)d telemetryFlowID:(id)iD;
- (void)_reauthenticateContext:(id)context;
- (void)_refreshServerUIDelegateWithParentContext:(id)context item:(id)item completion:(id)completion;
- (void)_startCDPRepairWithAdditionalData:(id)data completion:(id)completion;
- (void)_startShowingServerUI:(id)i;
- (void)_updateAccountUsernameWithHarvestedData:(id)data;
- (void)followUpPerformUpdateWithCompletionHandler:(id)handler;
- (void)processFollowUpItem:(id)item selectedAction:(id)action completion:(id)completion;
- (void)sendCFUClickedEventWithTelemetryFlowID:(id)d altDSID:(id)iD identifier:(id)identifier;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation AKFollowUpViewController

- (void)followUpPerformUpdateWithCompletionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  v21 = _os_activity_create(&_mh_execute_header, "authkit-ext/synchronize-follow-ups", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v22 = v21;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v21, &state);
  v13 = _NSConcreteStackBlock;
  v14 = -1073741824;
  v15 = 0;
  v16 = sub_100002AAC;
  v17 = &unk_1000103A8;
  v18 = location[0];
  v19 = objc_retainBlock(&v13);
  v12 = 0;
  v11 = objc_alloc_init(AKFollowUpSynchronizer);
  v8 = +[AKFollowUpProviderFactory sharedAuthKitFollowupProvider];
  [v11 setFollowupProvider:?];

  _primaryAppleAccount = [(AKFollowUpViewController *)selfCopy _primaryAppleAccount];
  v6 = +[AKAccountManager sharedInstance];
  store = [(AKAccountManager *)v6 store];
  v9[1] = 0;
  v5 = [v11 synchronizeFollowUpsForAccount:_primaryAppleAccount inStore:? error:?];
  objc_storeStrong(&v12, 0);

  v10 = v5;
  if ((v5 & 1) == 0)
  {
    v9[0] = _AKLogSystem();
    if (os_log_type_enabled(v9[0], OS_LOG_TYPE_ERROR))
    {
      sub_100001F64(v25, v12);
      _os_log_error_impl(&_mh_execute_header, v9[0], OS_LOG_TYPE_ERROR, "Failed to synchronize follow ups with error %@", v25, 0xCu);
    }

    objc_storeStrong(v9, 0);
  }

  domain = [v12 domain];
  if ([domain isEqualToString:AKAppleIDAuthenticationErrorDomain])
  {
    [v12 code];
  }

  (*(v19 + 2))();
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (id)_primaryAppleAccount
{
  location[2] = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v8;
    sub_10000122C(v7);
    _os_log_impl(&_mh_execute_header, log, type, "Fetching primary account for refreshing follow ups", v7, 2u);
  }

  objc_storeStrong(location, 0);
  v3 = +[AKAccountManager sharedInstance];
  primaryiCloudAccount = [(AKAccountManager *)v3 primaryiCloudAccount];

  return primaryiCloudAccount;
}

- (void)processFollowUpItem:(id)item selectedAction:(id)action completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v95 = 0;
  objc_storeStrong(&v95, action);
  v94 = 0;
  objc_storeStrong(&v94, completion);
  v92 = _os_activity_create(&_mh_execute_header, "authkit-ext/process-follow-up-action", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v93 = v92;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v92, &state);
  v90 = _AKLogSystem();
  v89 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = [location[0] uniqueIdentifier];
    userInfo = [location[0] userInfo];
    v37 = [userInfo objectForKeyedSubscript:AKFollowUpAltDSIDKey];
    userInfo2 = [v95 userInfo];
    v35 = [userInfo2 objectForKeyedSubscript:AKFollowUpURLKey];
    sub_100003A10(v99, uniqueIdentifier, 1752392040, v37, v35);
    _os_log_impl(&_mh_execute_header, v90, v89, "AKFollowUpViewController processFollowUpItem: %@ altDSID: %{mask.hash}@ urlKey: %@", v99, 0x2Au);
  }

  objc_storeStrong(&v90, 0);
  v34 = +[NSUUID UUID];
  uUIDString = [(NSUUID *)v34 UUIDString];

  v33 = selfCopy;
  userInfo3 = [location[0] userInfo];
  v31 = [userInfo3 objectForKeyedSubscript:AKFollowUpAltDSIDKey];
  uniqueIdentifier2 = [location[0] uniqueIdentifier];
  [(AKFollowUpViewController *)v33 sendCFUClickedEventWithTelemetryFlowID:uUIDString altDSID:v31 identifier:?];

  v77 = _NSConcreteStackBlock;
  v78 = -1073741824;
  v79 = 0;
  v80 = sub_100003A90;
  v81 = &unk_1000103F8;
  v82 = v95;
  v83 = selfCopy;
  v84 = location[0];
  v85 = uUIDString;
  v86 = v94;
  v87 = objc_retainBlock(&v77);
  objc_storeStrong(&selfCopy->_item, location[0]);
  oslog = _AKLogSystem();
  v75 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    v29 = location[0];
    userInfo4 = [v95 userInfo];
    sub_100003CAC(v98, v29, userInfo4);
    _os_log_debug_impl(&_mh_execute_header, oslog, v75, "Processing Item: %@ - %@", v98, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  userInfo5 = [v95 userInfo];
  v74 = [userInfo5 objectForKeyedSubscript:AKActionKey];

  userInfo6 = [v95 userInfo];
  v73 = [userInfo6 objectForKeyedSubscript:AKFollowUpURLKey];

  userInfo7 = [v95 userInfo];
  v24 = [userInfo7 objectForKeyedSubscript:AKFollowUpSafariURLKey];
  v72 = [NSURL URLWithString:?];

  userInfo8 = [v95 userInfo];
  v71 = [userInfo8 objectForKeyedSubscript:@"AKFollowUpLocalURLKey"];

  if (v74)
  {
    v22 = selfCopy;
    v19 = v74;
    v20 = location[0];
    v21 = uUIDString;
    v65 = _NSConcreteStackBlock;
    v66 = -1073741824;
    v67 = 0;
    v68 = sub_100003CFC;
    v69 = &unk_100010420;
    v70 = v87;
    [(AKFollowUpViewController *)v22 _handleAuthKitAction:v19 forItem:v20 telemetryFlowID:v21 completion:&v65];
    objc_storeStrong(&v70, 0);
  }

  else if (v73)
  {
    v18 = selfCopy;
    v14 = v73;
    v15 = v95;
    v16 = location[0];
    v17 = uUIDString;
    v58 = _NSConcreteStackBlock;
    v59 = -1073741824;
    v60 = 0;
    v61 = sub_100003D7C;
    v62 = &unk_100010448;
    v63 = location[0];
    v64 = v87;
    [(AKFollowUpViewController *)v18 _handleURLKey:v14 withAction:v15 forItem:v16 telemetryFlowID:v17 completion:&v58];
    objc_storeStrong(&v64, 0);
    objc_storeStrong(&v63, 0);
  }

  else if (v72)
  {
    v12 = selfCopy;
    v13 = v72;
    identifier = [v95 identifier];
    v52 = _NSConcreteStackBlock;
    v53 = -1073741824;
    v54 = 0;
    v55 = sub_100003EC4;
    v56 = &unk_100010420;
    v57 = v87;
    [(AKFollowUpViewController *)v12 _handleURL:v13 withActionIdentifier:identifier completion:&v52];

    objc_storeStrong(&v57, 0);
  }

  else if (v71)
  {
    v9 = selfCopy;
    v10 = v71;
    identifier2 = [v95 identifier];
    v8 = location[0];
    v45 = _NSConcreteStackBlock;
    v46 = -1073741824;
    v47 = 0;
    v48 = sub_100003F44;
    v49 = &unk_100010470;
    v51 = v87;
    v50 = location[0];
    [(AKFollowUpViewController *)v9 _handleLocalURLKey:v10 withActionIdentifier:identifier2 forItem:v8 completion:&v45];

    objc_storeStrong(&v50, 0);
    objc_storeStrong(&v51, 0);
  }

  else
  {
    v44 = _AKLogSystem();
    v43 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      v5 = v44;
      v6 = v43;
      sub_10000122C(v42);
      _os_log_debug_impl(&_mh_execute_header, v5, v6, "Action suppressed, unknown parameters", v42, 2u);
    }

    objc_storeStrong(&v44, 0);
    if (v87)
    {
      (*(v87 + 2))(v87, 1);
    }
  }

  objc_storeStrong(&v71, 0);
  objc_storeStrong(&v72, 0);
  objc_storeStrong(&v73, 0);
  objc_storeStrong(&v74, 0);
  objc_storeStrong(&v87, 0);
  objc_storeStrong(&v86, 0);
  objc_storeStrong(&v85, 0);
  objc_storeStrong(&v84, 0);
  objc_storeStrong(&v83, 0);
  objc_storeStrong(&v82, 0);
  objc_storeStrong(&uUIDString, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v93, 0);
  objc_storeStrong(&v94, 0);
  objc_storeStrong(&v95, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleURLKey:(id)key withAction:(id)action forItem:(id)item telemetryFlowID:(id)d completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v39 = 0;
  objc_storeStrong(&v39, action);
  v38 = 0;
  objc_storeStrong(&v38, item);
  v37 = 0;
  objc_storeStrong(&v37, d);
  v36 = 0;
  objc_storeStrong(&v36, completion);
  v35 = _AKLogSystem();
  v34 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    sub_100001F64(v42, location[0]);
    _os_log_debug_impl(&_mh_execute_header, v35, v34, "Handling urlKey %@", v42, 0xCu);
  }

  objc_storeStrong(&v35, 0);
  objc_storeStrong(&selfCopy->_urlKey, location[0]);
  identifier = [v39 identifier];
  v8 = [identifier isEqualToString:@"continuity_push_followup_notification"];

  v33 = v8;
  userInfo = [v38 userInfo];
  v32 = [userInfo objectForKeyedSubscript:AKFollowUpAltDSIDKey];

  userInfo2 = [v39 userInfo];
  v31 = [userInfo2 objectForKeyedSubscript:AKActionKey];

  v12 = [AKURLBag bagForAltDSID:v32];
  v11 = location[0];
  v17 = _NSConcreteStackBlock;
  v18 = -1073741824;
  v19 = 0;
  v20 = sub_1000045A0;
  v21 = &unk_1000104C0;
  v22 = selfCopy;
  v23 = location[0];
  v29 = v36;
  v30 = v33 & 1;
  v24 = v31;
  v25 = v38;
  v26 = v39;
  v27 = v32;
  v28 = v37;
  [v12 urlConfigurationForKey:v11 fromCache:1 completion:&v17];

  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleURL:(id)l withActionIdentifier:(id)identifier completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v18 = 0;
  objc_storeStrong(&v18, identifier);
  v17 = 0;
  objc_storeStrong(&v17, completion);
  v16 = _AKLogSystem();
  v15 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_100001F64(v20, location[0]);
    _os_log_debug_impl(&_mh_execute_header, v16, v15, "Handling url %@", v20, 0xCu);
  }

  objc_storeStrong(&v16, 0);
  v6 = +[LSApplicationWorkspace defaultWorkspace];
  v5 = location[0];
  v9 = _NSConcreteStackBlock;
  v10 = -1073741824;
  v11 = 0;
  v12 = sub_100005000;
  v13 = &unk_1000104E8;
  v14 = location[0];
  [v6 openURL:v5 configuration:0 completionHandler:&v9];

  (*(v17 + 2))(v17, 1, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleSensitiveURL:(id)l withActionIdentifier:(id)identifier completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v12 = 0;
  objc_storeStrong(&v12, identifier);
  v11 = 0;
  objc_storeStrong(&v11, completion);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_100001F64(v16, location[0]);
    _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "Handling Sensitive url key %@", v16, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v7 = +[LSApplicationWorkspace defaultWorkspace];
  v5 = location[0];
  v14 = FBSOpenApplicationOptionKeyPromptUnlockDevice;
  v15 = &__kCFBooleanTrue;
  v6 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  [v7 openSensitiveURL:v5 withOptions:?];

  if (v11)
  {
    (*(v11 + 2))(v11, 1, 0);
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleLocalURLKey:(id)key withActionIdentifier:(id)identifier forItem:(id)item completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v26 = 0;
  objc_storeStrong(&v26, identifier);
  v25 = 0;
  objc_storeStrong(&v25, item);
  v24 = 0;
  objc_storeStrong(&v24, completion);
  v23 = _AKLogSystem();
  v22 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    sub_100003CAC(v29, location[0], v25);
    _os_log_debug_impl(&_mh_execute_header, v23, v22, "Handling local url key %@ for item %@", v29, 0x16u);
  }

  objc_storeStrong(&v23, 0);
  userInfo = [v25 userInfo];
  v21 = [userInfo objectForKeyedSubscript:AKFollowUpAltDSIDKey];

  v8 = [AKURLBag bagForAltDSID:v21];
  v7 = location[0];
  v12 = _NSConcreteStackBlock;
  v13 = -1073741824;
  v14 = 0;
  v15 = sub_10000566C;
  v16 = &unk_100010510;
  v17 = selfCopy;
  v18 = v26;
  v20 = v24;
  v19 = location[0];
  [v8 urlConfigurationForKey:v7 fromCache:1 completion:&v12];

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleAuthKitAction:(id)action forItem:(id)item telemetryFlowID:(id)d completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, action);
  v61 = 0;
  objc_storeStrong(&v61, item);
  v60 = 0;
  objc_storeStrong(&v60, d);
  v59 = 0;
  objc_storeStrong(&v59, completion);
  v58 = _AKLogSystem();
  v57 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
  {
    sub_100003CAC(v65, location[0], v61);
    _os_log_debug_impl(&_mh_execute_header, v58, v57, "Handling ak-action %@ for item %@", v65, 0x16u);
  }

  objc_storeStrong(&v58, 0);
  v51[0] = 0;
  v51[1] = v51;
  v52 = 838860800;
  v53 = 48;
  v54 = sub_100006328;
  v55 = sub_100006380;
  v56 = selfCopy;
  v44 = _NSConcreteStackBlock;
  v45 = -1073741824;
  v46 = 0;
  v47 = sub_1000063B0;
  v48 = &unk_100010538;
  v49[1] = v51;
  v49[0] = v59;
  v50 = objc_retainBlock(&v44);
  userInfo = [v61 userInfo];
  v43 = [userInfo objectForKeyedSubscript:AKFollowUpAltDSIDKey];

  userInfo2 = [v61 userInfo];
  v42 = [userInfo2 objectForKeyedSubscript:@"txnid"];

  userInfo3 = [v61 userInfo];
  v41 = [userInfo3 objectForKeyedSubscript:AKIdmsDataKey];

  v40 = 0;
  actions = [v61 actions];
  v13 = [actions count];

  if (v13)
  {
    actions2 = [v61 actions];
    firstObject = [actions2 firstObject];
    identifier = [firstObject identifier];
    v40 = [identifier isEqualToString:@"continuity_push_followup_notification"];
  }

  v33 = 0;
  v34 = &v33;
  v35 = 838860800;
  v36 = 48;
  v37 = sub_100006328;
  v38 = sub_100006380;
  v39 = objc_alloc_init(AKAppleIDAuthenticationController);
  v32 = objc_opt_new();
  uniqueIdentifier = [v61 uniqueIdentifier];
  [v32 setItemIdentifier:?];

  [v32 setAkAction:location[0]];
  [v32 setAltDSID:v43];
  [v32 setTelemetryFlowID:v60];
  if (v40)
  {
    [v32 setTxnid:v42];
    [v32 setIdmsData:v41];
    [v32 setIsContinuityPush:1];
    if ([location[0] isEqualToString:AKFollowUpActionClear])
    {
      [v32 setAkAction:@"clear"];
    }
  }

  oslog = _AKLogSystem();
  v30 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_100001F64(v64, v32);
    _os_log_debug_impl(&_mh_execute_header, oslog, v30, "Starting teardown with teardown context :%@", v64, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v7 = v34[5];
  v6 = v32;
  v20 = _NSConcreteStackBlock;
  v21 = -1073741824;
  v22 = 0;
  v23 = sub_100006454;
  v24 = &unk_100010560;
  v25 = v61;
  v26 = location[0];
  v27 = v43;
  v28 = selfCopy;
  v29[0] = v50;
  v29[1] = &v33;
  [v7 teardownFollowUpWithContext:v6 completion:&v20];
  objc_storeStrong(v29, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v32, 0);
  _Block_object_dispose(&v33, 8);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v50, 0);
  objc_storeStrong(v49, 0);
  _Block_object_dispose(v51, 8);
  objc_storeStrong(&v56, 0);
  objc_storeStrong(&v59, 0);
  objc_storeStrong(&v60, 0);
  objc_storeStrong(&v61, 0);
  objc_storeStrong(location, 0);
}

- (void)_prepareAuthContextForAltDSID:(id)d telemetryFlowID:(id)iD
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v13 = 0;
  objc_storeStrong(&v13, iD);
  v12 = _AKLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    sub_100001F64(v16, location[0]);
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Preparing context for altDSID: %@", v16, 0xCu);
  }

  objc_storeStrong(&v12, 0);
  v4 = objc_alloc_init(AKAppleIDAuthenticationInAppExtensionContext);
  authContext = selfCopy->_authContext;
  selfCopy->_authContext = v4;

  [(AKAppleIDAuthenticationInAppExtensionContext *)selfCopy->_authContext set_shouldSendIdentityTokenForRemoteUI:0];
  v10 = +[AKAccountManager sharedInstance];
  v9 = [(AKAccountManager *)v10 authKitAccountWithAltDSID:location[0] error:0];
  username = [v9 username];
  [(AKAppleIDAuthenticationInAppExtensionContext *)selfCopy->_authContext setUsername:?];

  [(AKAppleIDAuthenticationInAppExtensionContext *)selfCopy->_authContext setAltDSID:location[0]];
  [(AKAppleIDAuthenticationInAppExtensionContext *)selfCopy->_authContext setTelemetryFlowID:v13];
  [(AKAppleIDAuthenticationInAppExtensionContext *)selfCopy->_authContext setCellularDataAttributionAppBundleID:AKCellularDataAttributionAppBundleIDAuthKit];
  [(AKAppleIDAuthenticationInAppExtensionContext *)selfCopy->_authContext setPresentingViewController:selfCopy];
  v6 = objc_alloc_init(AKAppleIDAuthenticationController);
  authController = selfCopy->_authController;
  selfCopy->_authController = v6;

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)_refreshServerUIDelegateWithParentContext:(id)context item:(id)item completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v19 = 0;
  objc_storeStrong(&v19, item);
  v18 = 0;
  objc_storeStrong(&v18, completion);
  if (!v18)
  {
    __assert_rtn("[AKFollowUpViewController _refreshServerUIDelegateWithParentContext:item:completion:]", "AKFollowUpViewController.m", 371, "completion");
  }

  v17 = objc_alloc_init(AKAppleIDAuthenticationContext);
  altDSID = [location[0] altDSID];
  [v17 setAltDSID:?];

  [v17 setAnticipateEscrowAttempt:1];
  authController = selfCopy->_authController;
  v6 = v17;
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_100006C9C;
  v14 = &unk_100010588;
  v15 = selfCopy;
  v16 = v18;
  [(AKAppleIDAuthenticationController *)authController getServerUILoadDelegateWithContext:v6 completion:&v10];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

- (void)viewDidLoad
{
  selfCopy = self;
  v5 = a2;
  v4.receiver = self;
  v4.super_class = AKFollowUpViewController;
  [(AKFollowUpViewController *)&v4 viewDidLoad];
  v3 = +[UIColor clearColor];
  view = [(AKFollowUpViewController *)selfCopy view];
  [view setBackgroundColor:v3];
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v12 = a2;
  appearCopy = appear;
  v10.receiver = self;
  v10.super_class = AKFollowUpViewController;
  [(AKFollowUpViewController *)&v10 viewDidAppear:appear];
  v3 = selfCopy;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100006F08;
  v8 = &unk_1000105B0;
  v9 = selfCopy;
  [(AKFollowUpViewController *)v3 _startShowingServerUI:?];
  objc_storeStrong(&v9, 0);
}

- (void)_startShowingServerUI:(id)i
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, i);
  if (!location[0])
  {
    __assert_rtn("[AKFollowUpViewController _startShowingServerUI:]", "AKFollowUpViewController.m", 425, "completion");
  }

  v15 = _NSConcreteStackBlock;
  v16 = -1073741824;
  v17 = 0;
  v18 = sub_1000072A4;
  v19 = &unk_100010600;
  v20 = selfCopy;
  v21 = location[0];
  v22 = objc_retainBlock(&v15);
  v3 = [NSURLRequest alloc];
  v14 = [v3 initWithURL:selfCopy->_url];
  v5 = selfCopy;
  v4 = v14;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_1000078B4;
  v10 = &unk_100010650;
  v11 = selfCopy;
  v13 = v22;
  v12 = v14;
  [(AKFollowUpViewController *)v5 _beginServerUIRequest:v4 completion:&v6];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleFinalServerResponse:(id)response completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v8 = 0;
  objc_storeStrong(&v8, completion);
  v7 = _AKLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    sub_100001F64(v11, location[0]);
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Handling final server responese: %@", v11, 0xCu);
  }

  objc_storeStrong(&v7, 0);
  v5 = selfCopy;
  v4 = [AKAppleIDServerResourceLoadDelegate signalFromServerResponse:location[0]];
  [(AKFollowUpViewController *)v5 _handleAuthKitSignal:v4 forItem:selfCopy->_item completion:v8];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleAuthKitSignal:(unint64_t)signal forItem:(id)item completion:(id)completion
{
  selfCopy = self;
  v12 = a2;
  signalCopy = signal;
  location = 0;
  objc_storeStrong(&location, item);
  v9 = 0;
  objc_storeStrong(&v9, completion);
  v8 = _AKLogSystem();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    sub_100007F30(v14, signalCopy);
    _os_log_impl(&_mh_execute_header, v8, v7, "Sending tear down with signal: %lu", v14, 0xCu);
  }

  objc_storeStrong(&v8, 0);
  v6 = 0;
  if (signalCopy == 7)
  {
    objc_storeStrong(&v6, AKActionDelete);
  }

  else if (signalCopy == 8)
  {
    objc_storeStrong(&v6, AKActionTeardown);
  }

  [AKFollowUpViewController _handleAuthKitAction:selfCopy forItem:"_handleAuthKitAction:forItem:telemetryFlowID:completion:" telemetryFlowID:v6 completion:location];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&location, 0);
}

- (void)_beginServerUIRequest:(id)request completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v18 = 0;
  objc_storeStrong(&v18, completion);
  v17 = _AKLogSystem();
  v16 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    sub_100001F64(v21, location[0]);
    _os_log_impl(&_mh_execute_header, v17, v16, "Presenting server UI at... %@", v21, 0xCu);
  }

  objc_storeStrong(&v17, 0);
  v4 = [AKServerRequestConfiguration alloc];
  v15 = [v4 initWithRequest:location[0] requestType:0];
  [v15 setUrlConfiguration:selfCopy->_urlConfiguration];
  [v15 setResourceLoadDelegate:selfCopy->_serverUIDelegate];
  authContext = selfCopy->_authContext;
  v5 = v15;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_1000081DC;
  v12 = &unk_100010600;
  v13 = selfCopy;
  v14 = v18;
  [(AKAppleIDAuthenticationInAppExtensionContext *)authContext presentServerProvidedUIWithConfiguration:v5 completion:&v8];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateAccountUsernameWithHarvestedData:(id)data
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v10 = [location[0] objectForKeyedSubscript:AKAuthenticationUsernameKey];
  if ([v10 length])
  {
    v6 = +[AKAccountManager sharedInstance];
    altDSID = [(AKAppleIDAuthenticationInAppExtensionContext *)selfCopy->_authContext altDSID];
    [(AKAccountManager *)v6 updateUsername:v10 forAccountsWithAltDSID:?];
  }

  else
  {
    v9 = _AKLogSystem();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      log = v9;
      type = v8;
      sub_10000122C(v7);
      _os_log_impl(&_mh_execute_header, log, type, "CFU flow completed without updated username", v7, 2u);
    }

    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)_startCDPRepairWithAdditionalData:(id)data completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v15 = 0;
  objc_storeStrong(&v15, completion);
  v4 = &_dispatch_main_q;
  queue = &_dispatch_main_q;
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_10000883C;
  v11 = &unk_1000106A0;
  v12 = selfCopy;
  v13 = location[0];
  v14 = v15;
  dispatch_async(queue, &v7);

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)_reauthenticateContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v22 = _AKLogSystem();
  v21 = 2;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    log = v22;
    type = v21;
    sub_10000122C(v20);
    _os_log_debug_impl(&_mh_execute_header, log, type, "Starting to reauthenticate...", v20, 2u);
  }

  objc_storeStrong(&v22, 0);
  v19 = objc_alloc_init(AKAppleIDAuthenticationInAppContext);
  v18 = objc_alloc_init(AKAppleIDAuthenticationController);
  v3 = v19;
  username = [(AKAppleIDAuthenticationInAppExtensionContext *)selfCopy->_authContext username];
  [v3 setUsername:?];

  v5 = v19;
  altDSID = [(AKAppleIDAuthenticationInAppExtensionContext *)selfCopy->_authContext altDSID];
  [v5 setAltDSID:?];

  [v19 setIsUsernameEditable:0];
  [v19 setPresentingViewController:selfCopy];
  v8 = v18;
  v7 = v19;
  v11 = _NSConcreteStackBlock;
  v12 = -1073741824;
  v13 = 0;
  v14 = sub_100008DB4;
  v15 = &unk_1000106C8;
  v16 = selfCopy;
  v17 = location[0];
  [v8 authenticateWithContext:v7 completion:&v11];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

- (void)_fetchUserInformationIfNeededForAltDSID:(id)d completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v16 = 0;
  objc_storeStrong(&v16, completion);
  v7 = +[AKAccountManager sharedInstance];
  v15 = [(AKAccountManager *)v7 authKitAccountWithAltDSID:location[0] error:0];

  if (v15 && [(AKFollowUpViewController *)selfCopy _shouldFetchUserInformationForAccount:v15])
  {
    v14 = objc_alloc_init(AKAppleIDAuthenticationController);
    v5 = v14;
    v4 = location[0];
    v8 = _NSConcreteStackBlock;
    v9 = -1073741824;
    v10 = 0;
    v11 = sub_100009058;
    v12 = &unk_1000106F0;
    v13 = v16;
    [v5 getUserInformationForAltDSID:v4 completion:&v8];
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v14, 0);
  }

  else
  {
    (*(v16 + 2))(v16, 1, 0);
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_shouldFetchUserInformationForAccount:(id)account
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v4 = +[AKAccountManager sharedInstance];
  v5 = [(AKAccountManager *)v4 repairStateForAccount:location[0]];

  v6 = 1;
  if (v5 != 3)
  {
    v6 = v5 == 2;
  }

  objc_storeStrong(location, 0);
  return v6;
}

- (id)_URLWithString:(id)string byAppendingParameters:(id)parameters
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, string);
  v19 = 0;
  objc_storeStrong(&v19, parameters);
  v18 = [location[0] mutableCopy];
  memset(__b, 0, sizeof(__b));
  keyEnumerator = [v19 keyEnumerator];
  v15 = [keyEnumerator countByEnumeratingWithState:__b objects:v21 count:16];
  if (v15)
  {
    v10 = *__b[2];
    v11 = 0;
    v12 = v15;
    while (1)
    {
      v9 = v11;
      if (*__b[2] != v10)
      {
        objc_enumerationMutation(keyEnumerator);
      }

      v17 = *(__b[1] + 8 * v11);
      v7 = v18;
      v6 = v17;
      v8 = [v19 objectForKeyedSubscript:v17];
      [v7 appendFormat:@"&%@=%@", v6, v8];

      ++v11;
      if (v9 + 1 >= v12)
      {
        v11 = 0;
        v12 = [keyEnumerator countByEnumeratingWithState:__b objects:v21 count:16];
        if (!v12)
        {
          break;
        }
      }
    }
  }

  v5 = [NSURL URLWithString:v18];
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (void)sendCFUClickedEventWithTelemetryFlowID:(id)d altDSID:(id)iD identifier:(id)identifier
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v12 = 0;
  objc_storeStrong(&v12, iD);
  v11 = 0;
  objc_storeStrong(&v11, identifier);
  if (v11)
  {
    v9 = objc_alloc_init(AAAFollowUpAnalyticsInfo);
    [v9 setFlowID:location[0]];
    [v9 setCfuType:v11];
    v8 = [AAFAnalyticsEvent analyticsEventWithName:kAAFClickFollowupEvent eventCategory:kAKRTCEventCategoryAccountDataAccessRecovery followupAnalyticsData:v9 altDSID:v12];
    v5 = +[AKAnalyticsReporterRTC rtcAnalyticsReporter];
    [v5 sendEvent:v8];

    objc_storeStrong(&v8, 0);
    objc_storeStrong(&v9, 0);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

@end