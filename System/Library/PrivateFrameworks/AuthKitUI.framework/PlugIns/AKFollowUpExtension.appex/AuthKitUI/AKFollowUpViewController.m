@interface AKFollowUpViewController
- (BOOL)_shouldFetchUserInformationForAccount:(id)a3;
- (id)_URLWithString:(id)a3 byAppendingParameters:(id)a4;
- (id)_primaryAppleAccount;
- (void)_beginServerUIRequest:(id)a3 completion:(id)a4;
- (void)_fetchUserInformationIfNeededForAltDSID:(id)a3 completion:(id)a4;
- (void)_handleAuthKitAction:(id)a3 forItem:(id)a4 telemetryFlowID:(id)a5 completion:(id)a6;
- (void)_handleAuthKitSignal:(unint64_t)a3 forItem:(id)a4 completion:(id)a5;
- (void)_handleFinalServerResponse:(id)a3 completion:(id)a4;
- (void)_handleLocalURLKey:(id)a3 withActionIdentifier:(id)a4 forItem:(id)a5 completion:(id)a6;
- (void)_handleSensitiveURL:(id)a3 withActionIdentifier:(id)a4 completion:(id)a5;
- (void)_handleURL:(id)a3 withActionIdentifier:(id)a4 completion:(id)a5;
- (void)_handleURLKey:(id)a3 withAction:(id)a4 forItem:(id)a5 telemetryFlowID:(id)a6 completion:(id)a7;
- (void)_prepareAuthContextForAltDSID:(id)a3 telemetryFlowID:(id)a4;
- (void)_reauthenticateContext:(id)a3;
- (void)_refreshServerUIDelegateWithParentContext:(id)a3 item:(id)a4 completion:(id)a5;
- (void)_startCDPRepairWithAdditionalData:(id)a3 completion:(id)a4;
- (void)_startShowingServerUI:(id)a3;
- (void)_updateAccountUsernameWithHarvestedData:(id)a3;
- (void)followUpPerformUpdateWithCompletionHandler:(id)a3;
- (void)processFollowUpItem:(id)a3 selectedAction:(id)a4 completion:(id)a5;
- (void)sendCFUClickedEventWithTelemetryFlowID:(id)a3 altDSID:(id)a4 identifier:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation AKFollowUpViewController

- (void)followUpPerformUpdateWithCompletionHandler:(id)a3
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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

  v7 = [(AKFollowUpViewController *)v24 _primaryAppleAccount];
  v6 = +[AKAccountManager sharedInstance];
  v4 = [(AKAccountManager *)v6 store];
  v9[1] = 0;
  v5 = [v11 synchronizeFollowUpsForAccount:v7 inStore:? error:?];
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

  v3 = [v12 domain];
  if ([v3 isEqualToString:AKAppleIDAuthenticationErrorDomain])
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
  v4 = [(AKAccountManager *)v3 primaryiCloudAccount];

  return v4;
}

- (void)processFollowUpItem:(id)a3 selectedAction:(id)a4 completion:(id)a5
{
  v97 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v95 = 0;
  objc_storeStrong(&v95, a4);
  v94 = 0;
  objc_storeStrong(&v94, a5);
  v92 = _os_activity_create(&_mh_execute_header, "authkit-ext/process-follow-up-action", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v93 = v92;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v92, &state);
  v90 = _AKLogSystem();
  v89 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
  {
    v39 = [location[0] uniqueIdentifier];
    v38 = [location[0] userInfo];
    v37 = [v38 objectForKeyedSubscript:AKFollowUpAltDSIDKey];
    v36 = [v95 userInfo];
    v35 = [v36 objectForKeyedSubscript:AKFollowUpURLKey];
    sub_100003A10(v99, v39, 1752392040, v37, v35);
    _os_log_impl(&_mh_execute_header, v90, v89, "AKFollowUpViewController processFollowUpItem: %@ altDSID: %{mask.hash}@ urlKey: %@", v99, 0x2Au);
  }

  objc_storeStrong(&v90, 0);
  v34 = +[NSUUID UUID];
  v88 = [(NSUUID *)v34 UUIDString];

  v33 = v97;
  v32 = [location[0] userInfo];
  v31 = [v32 objectForKeyedSubscript:AKFollowUpAltDSIDKey];
  v30 = [location[0] uniqueIdentifier];
  [(AKFollowUpViewController *)v33 sendCFUClickedEventWithTelemetryFlowID:v88 altDSID:v31 identifier:?];

  v77 = _NSConcreteStackBlock;
  v78 = -1073741824;
  v79 = 0;
  v80 = sub_100003A90;
  v81 = &unk_1000103F8;
  v82 = v95;
  v83 = v97;
  v84 = location[0];
  v85 = v88;
  v86 = v94;
  v87 = objc_retainBlock(&v77);
  objc_storeStrong(&v97->_item, location[0]);
  oslog = _AKLogSystem();
  v75 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    v29 = location[0];
    v28 = [v95 userInfo];
    sub_100003CAC(v98, v29, v28);
    _os_log_debug_impl(&_mh_execute_header, oslog, v75, "Processing Item: %@ - %@", v98, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  v27 = [v95 userInfo];
  v74 = [v27 objectForKeyedSubscript:AKActionKey];

  v26 = [v95 userInfo];
  v73 = [v26 objectForKeyedSubscript:AKFollowUpURLKey];

  v25 = [v95 userInfo];
  v24 = [v25 objectForKeyedSubscript:AKFollowUpSafariURLKey];
  v72 = [NSURL URLWithString:?];

  v23 = [v95 userInfo];
  v71 = [v23 objectForKeyedSubscript:@"AKFollowUpLocalURLKey"];

  if (v74)
  {
    v22 = v97;
    v19 = v74;
    v20 = location[0];
    v21 = v88;
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
    v18 = v97;
    v14 = v73;
    v15 = v95;
    v16 = location[0];
    v17 = v88;
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
    v12 = v97;
    v13 = v72;
    v11 = [v95 identifier];
    v52 = _NSConcreteStackBlock;
    v53 = -1073741824;
    v54 = 0;
    v55 = sub_100003EC4;
    v56 = &unk_100010420;
    v57 = v87;
    [(AKFollowUpViewController *)v12 _handleURL:v13 withActionIdentifier:v11 completion:&v52];

    objc_storeStrong(&v57, 0);
  }

  else if (v71)
  {
    v9 = v97;
    v10 = v71;
    v7 = [v95 identifier];
    v8 = location[0];
    v45 = _NSConcreteStackBlock;
    v46 = -1073741824;
    v47 = 0;
    v48 = sub_100003F44;
    v49 = &unk_100010470;
    v51 = v87;
    v50 = location[0];
    [(AKFollowUpViewController *)v9 _handleLocalURLKey:v10 withActionIdentifier:v7 forItem:v8 completion:&v45];

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
  objc_storeStrong(&v88, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v93, 0);
  objc_storeStrong(&v94, 0);
  objc_storeStrong(&v95, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleURLKey:(id)a3 withAction:(id)a4 forItem:(id)a5 telemetryFlowID:(id)a6 completion:(id)a7
{
  v41 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v39 = 0;
  objc_storeStrong(&v39, a4);
  v38 = 0;
  objc_storeStrong(&v38, a5);
  v37 = 0;
  objc_storeStrong(&v37, a6);
  v36 = 0;
  objc_storeStrong(&v36, a7);
  v35 = _AKLogSystem();
  v34 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    sub_100001F64(v42, location[0]);
    _os_log_debug_impl(&_mh_execute_header, v35, v34, "Handling urlKey %@", v42, 0xCu);
  }

  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v41->_urlKey, location[0]);
  v7 = [v39 identifier];
  v8 = [v7 isEqualToString:@"continuity_push_followup_notification"];

  v33 = v8;
  v9 = [v38 userInfo];
  v32 = [v9 objectForKeyedSubscript:AKFollowUpAltDSIDKey];

  v10 = [v39 userInfo];
  v31 = [v10 objectForKeyedSubscript:AKActionKey];

  v12 = [AKURLBag bagForAltDSID:v32];
  v11 = location[0];
  v17 = _NSConcreteStackBlock;
  v18 = -1073741824;
  v19 = 0;
  v20 = sub_1000045A0;
  v21 = &unk_1000104C0;
  v22 = v41;
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

- (void)_handleURL:(id)a3 withActionIdentifier:(id)a4 completion:(id)a5
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = 0;
  objc_storeStrong(&v17, a5);
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

- (void)_handleSensitiveURL:(id)a3 withActionIdentifier:(id)a4 completion:(id)a5
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = 0;
  objc_storeStrong(&v11, a5);
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

- (void)_handleLocalURLKey:(id)a3 withActionIdentifier:(id)a4 forItem:(id)a5 completion:(id)a6
{
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v26 = 0;
  objc_storeStrong(&v26, a4);
  v25 = 0;
  objc_storeStrong(&v25, a5);
  v24 = 0;
  objc_storeStrong(&v24, a6);
  v23 = _AKLogSystem();
  v22 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    sub_100003CAC(v29, location[0], v25);
    _os_log_debug_impl(&_mh_execute_header, v23, v22, "Handling local url key %@ for item %@", v29, 0x16u);
  }

  objc_storeStrong(&v23, 0);
  v6 = [v25 userInfo];
  v21 = [v6 objectForKeyedSubscript:AKFollowUpAltDSIDKey];

  v8 = [AKURLBag bagForAltDSID:v21];
  v7 = location[0];
  v12 = _NSConcreteStackBlock;
  v13 = -1073741824;
  v14 = 0;
  v15 = sub_10000566C;
  v16 = &unk_100010510;
  v17 = v28;
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

- (void)_handleAuthKitAction:(id)a3 forItem:(id)a4 telemetryFlowID:(id)a5 completion:(id)a6
{
  v63 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v61 = 0;
  objc_storeStrong(&v61, a4);
  v60 = 0;
  objc_storeStrong(&v60, a5);
  v59 = 0;
  objc_storeStrong(&v59, a6);
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
  v56 = v63;
  v44 = _NSConcreteStackBlock;
  v45 = -1073741824;
  v46 = 0;
  v47 = sub_1000063B0;
  v48 = &unk_100010538;
  v49[1] = v51;
  v49[0] = v59;
  v50 = objc_retainBlock(&v44);
  v16 = [v61 userInfo];
  v43 = [v16 objectForKeyedSubscript:AKFollowUpAltDSIDKey];

  v15 = [v61 userInfo];
  v42 = [v15 objectForKeyedSubscript:@"txnid"];

  v14 = [v61 userInfo];
  v41 = [v14 objectForKeyedSubscript:AKIdmsDataKey];

  v40 = 0;
  v12 = [v61 actions];
  v13 = [v12 count];

  if (v13)
  {
    v11 = [v61 actions];
    v10 = [v11 firstObject];
    v9 = [v10 identifier];
    v40 = [v9 isEqualToString:@"continuity_push_followup_notification"];
  }

  v33 = 0;
  v34 = &v33;
  v35 = 838860800;
  v36 = 48;
  v37 = sub_100006328;
  v38 = sub_100006380;
  v39 = objc_alloc_init(AKAppleIDAuthenticationController);
  v32 = objc_opt_new();
  v8 = [v61 uniqueIdentifier];
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
  v28 = v63;
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

- (void)_prepareAuthContextForAltDSID:(id)a3 telemetryFlowID:(id)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12 = _AKLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    sub_100001F64(v16, location[0]);
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Preparing context for altDSID: %@", v16, 0xCu);
  }

  objc_storeStrong(&v12, 0);
  v4 = objc_alloc_init(AKAppleIDAuthenticationInAppExtensionContext);
  authContext = v15->_authContext;
  v15->_authContext = v4;

  [(AKAppleIDAuthenticationInAppExtensionContext *)v15->_authContext set_shouldSendIdentityTokenForRemoteUI:0];
  v10 = +[AKAccountManager sharedInstance];
  v9 = [(AKAccountManager *)v10 authKitAccountWithAltDSID:location[0] error:0];
  v8 = [v9 username];
  [(AKAppleIDAuthenticationInAppExtensionContext *)v15->_authContext setUsername:?];

  [(AKAppleIDAuthenticationInAppExtensionContext *)v15->_authContext setAltDSID:location[0]];
  [(AKAppleIDAuthenticationInAppExtensionContext *)v15->_authContext setTelemetryFlowID:v13];
  [(AKAppleIDAuthenticationInAppExtensionContext *)v15->_authContext setCellularDataAttributionAppBundleID:AKCellularDataAttributionAppBundleIDAuthKit];
  [(AKAppleIDAuthenticationInAppExtensionContext *)v15->_authContext setPresentingViewController:v15];
  v6 = objc_alloc_init(AKAppleIDAuthenticationController);
  authController = v15->_authController;
  v15->_authController = v6;

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)_refreshServerUIDelegateWithParentContext:(id)a3 item:(id)a4 completion:(id)a5
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18 = 0;
  objc_storeStrong(&v18, a5);
  if (!v18)
  {
    __assert_rtn("[AKFollowUpViewController _refreshServerUIDelegateWithParentContext:item:completion:]", "AKFollowUpViewController.m", 371, "completion");
  }

  v17 = objc_alloc_init(AKAppleIDAuthenticationContext);
  v5 = [location[0] altDSID];
  [v17 setAltDSID:?];

  [v17 setAnticipateEscrowAttempt:1];
  authController = v21->_authController;
  v6 = v17;
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_100006C9C;
  v14 = &unk_100010588;
  v15 = v21;
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
  v6 = self;
  v5 = a2;
  v4.receiver = self;
  v4.super_class = AKFollowUpViewController;
  [(AKFollowUpViewController *)&v4 viewDidLoad];
  v3 = +[UIColor clearColor];
  v2 = [(AKFollowUpViewController *)v6 view];
  [v2 setBackgroundColor:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  v10.receiver = self;
  v10.super_class = AKFollowUpViewController;
  [(AKFollowUpViewController *)&v10 viewDidAppear:a3];
  v3 = v13;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100006F08;
  v8 = &unk_1000105B0;
  v9 = v13;
  [(AKFollowUpViewController *)v3 _startShowingServerUI:?];
  objc_storeStrong(&v9, 0);
}

- (void)_startShowingServerUI:(id)a3
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (!location[0])
  {
    __assert_rtn("[AKFollowUpViewController _startShowingServerUI:]", "AKFollowUpViewController.m", 425, "completion");
  }

  v15 = _NSConcreteStackBlock;
  v16 = -1073741824;
  v17 = 0;
  v18 = sub_1000072A4;
  v19 = &unk_100010600;
  v20 = v24;
  v21 = location[0];
  v22 = objc_retainBlock(&v15);
  v3 = [NSURLRequest alloc];
  v14 = [v3 initWithURL:v24->_url];
  v5 = v24;
  v4 = v14;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_1000078B4;
  v10 = &unk_100010650;
  v11 = v24;
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

- (void)_handleFinalServerResponse:(id)a3 completion:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7 = _AKLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    sub_100001F64(v11, location[0]);
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Handling final server responese: %@", v11, 0xCu);
  }

  objc_storeStrong(&v7, 0);
  v5 = v10;
  v4 = [AKAppleIDServerResourceLoadDelegate signalFromServerResponse:location[0]];
  [(AKFollowUpViewController *)v5 _handleAuthKitSignal:v4 forItem:v10->_item completion:v8];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleAuthKitSignal:(unint64_t)a3 forItem:(id)a4 completion:(id)a5
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v9 = 0;
  objc_storeStrong(&v9, a5);
  v8 = _AKLogSystem();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    sub_100007F30(v14, v11);
    _os_log_impl(&_mh_execute_header, v8, v7, "Sending tear down with signal: %lu", v14, 0xCu);
  }

  objc_storeStrong(&v8, 0);
  v6 = 0;
  if (v11 == 7)
  {
    objc_storeStrong(&v6, AKActionDelete);
  }

  else if (v11 == 8)
  {
    objc_storeStrong(&v6, AKActionTeardown);
  }

  [AKFollowUpViewController _handleAuthKitAction:v13 forItem:"_handleAuthKitAction:forItem:telemetryFlowID:completion:" telemetryFlowID:v6 completion:location];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&location, 0);
}

- (void)_beginServerUIRequest:(id)a3 completion:(id)a4
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
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
  [v15 setUrlConfiguration:v20->_urlConfiguration];
  [v15 setResourceLoadDelegate:v20->_serverUIDelegate];
  authContext = v20->_authContext;
  v5 = v15;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_1000081DC;
  v12 = &unk_100010600;
  v13 = v20;
  v14 = v18;
  [(AKAppleIDAuthenticationInAppExtensionContext *)authContext presentServerProvidedUIWithConfiguration:v5 completion:&v8];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateAccountUsernameWithHarvestedData:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = [location[0] objectForKeyedSubscript:AKAuthenticationUsernameKey];
  if ([v10 length])
  {
    v6 = +[AKAccountManager sharedInstance];
    v5 = [(AKAppleIDAuthenticationInAppExtensionContext *)v12->_authContext altDSID];
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

- (void)_startCDPRepairWithAdditionalData:(id)a3 completion:(id)a4
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v4 = &_dispatch_main_q;
  queue = &_dispatch_main_q;
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_10000883C;
  v11 = &unk_1000106A0;
  v12 = v17;
  v13 = location[0];
  v14 = v15;
  dispatch_async(queue, &v7);

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)_reauthenticateContext:(id)a3
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  v4 = [(AKAppleIDAuthenticationInAppExtensionContext *)v24->_authContext username];
  [v3 setUsername:?];

  v5 = v19;
  v6 = [(AKAppleIDAuthenticationInAppExtensionContext *)v24->_authContext altDSID];
  [v5 setAltDSID:?];

  [v19 setIsUsernameEditable:0];
  [v19 setPresentingViewController:v24];
  v8 = v18;
  v7 = v19;
  v11 = _NSConcreteStackBlock;
  v12 = -1073741824;
  v13 = 0;
  v14 = sub_100008DB4;
  v15 = &unk_1000106C8;
  v16 = v24;
  v17 = location[0];
  [v8 authenticateWithContext:v7 completion:&v11];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

- (void)_fetchUserInformationIfNeededForAltDSID:(id)a3 completion:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v7 = +[AKAccountManager sharedInstance];
  v15 = [(AKAccountManager *)v7 authKitAccountWithAltDSID:location[0] error:0];

  if (v15 && [(AKFollowUpViewController *)v18 _shouldFetchUserInformationForAccount:v15])
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

- (BOOL)_shouldFetchUserInformationForAccount:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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

- (id)_URLWithString:(id)a3 byAppendingParameters:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18 = [location[0] mutableCopy];
  memset(__b, 0, sizeof(__b));
  v14 = [v19 keyEnumerator];
  v15 = [v14 countByEnumeratingWithState:__b objects:v21 count:16];
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
        objc_enumerationMutation(v14);
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
        v12 = [v14 countByEnumeratingWithState:__b objects:v21 count:16];
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

- (void)sendCFUClickedEventWithTelemetryFlowID:(id)a3 altDSID:(id)a4 identifier:(id)a5
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = 0;
  objc_storeStrong(&v11, a5);
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