@interface AKPostInstallService
+ (id)sharedService;
- (void)_performPostInstallWithCompletion:(id)completion;
- (void)fetchUserInfoForAltDSID:(id)d completion:(id)completion;
- (void)start;
@end

@implementation AKPostInstallService

+ (id)sharedService
{
  v5 = &unk_1003746A0;
  location = 0;
  objc_storeStrong(&location, &stru_100320E50);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_100374698;

  return v2;
}

- (void)start
{
  selfCopy = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_100038C7C(v12, off_100370B08);
    _os_log_impl(&_mh_execute_header, location[0], v9, "Registering for XPC activity: %s...", v12, 0xCu);
  }

  objc_storeStrong(location, 0);
  identifier = off_100370B08;
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_100072368;
  v7 = &unk_100320E78;
  v8 = _objc_retain(selfCopy);
  xpc_activity_register(identifier, XPC_ACTIVITY_CHECK_IN, &v3);
  objc_storeStrong(&v8, 0);
}

- (void)_performPostInstallWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v60 = dispatch_group_create();
  dispatch_group_enter(v60);
  v59 = [[AKSatoriController alloc] initWithClient:0];
  v19 = v59;
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_100072DE4;
  v57[3] = &unk_100320EA0;
  v58 = _objc_retain(v60);
  [v19 warmUpVerificationSessionWithCompletionHandler:v57];
  v56 = +[AKAccountManager sharedInstance];
  primaryAuthKitAccount = [v56 primaryAuthKitAccount];
  if (primaryAuthKitAccount)
  {
    v54 = [v56 altDSIDForAccount:primaryAuthKitAccount];
    dispatch_group_enter(v60);
    v17 = +[AKFeatureManager sharedManager];
    isTokenCacheEnabled = [v17 isTokenCacheEnabled];
    _objc_release(v17);
    if (isTokenCacheEnabled)
    {
      v53 = _AKLogSystem();
      v52 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        log = v53;
        type = v52;
        sub_10001CEEC(v51);
        _os_log_impl(&_mh_execute_header, log, type, "AKAppleIDCheckInHelperService attempt token sync after OS upgrade...", v51, 2u);
      }

      objc_storeStrong(&v53, 0);
      v50 = 0;
      v14 = +[AKTokenManager sharedInstance];
      v49 = v50;
      [(AKTokenManager *)v14 synchronizeTokensForAllAccounts:&v49];
      objc_storeStrong(&v50, v49);
      _objc_release(v14);
      v48 = _AKLogSystem();
      v47 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v48;
        v13 = v47;
        sub_10001CEEC(v46);
        _os_log_impl(&_mh_execute_header, v12, v13, "AKAppleIDCheckInHelperService finished token sync after OS upgrade...", v46, 2u);
      }

      objc_storeStrong(&v48, 0);
      objc_storeStrong(&v50, 0);
    }

    v45 = _AKLogSystem();
    v44 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v45;
      v11 = v44;
      sub_10001CEEC(v43);
      _os_log_impl(&_mh_execute_header, v10, v11, "AKAppleIDCheckInHelperService attempt performHeartbeatCheckIn after OS upgrade...", v43, 2u);
    }

    objc_storeStrong(&v45, 0);
    v7 = +[AKAppleIDCheckInHelperService sharedService];
    v35 = _NSConcreteStackBlock;
    v36 = -1073741824;
    v37 = 0;
    v38 = sub_100072EF4;
    v39 = &unk_10031F050;
    v40 = _objc_retain(selfCopy);
    v41 = _objc_retain(v54);
    v42 = _objc_retain(v60);
    [v7 performLivenessCheckInForAllEligibleAccountsWithReason:3 completion:&v35];
    _objc_release(v7);
    group = v60;
    queue = dispatch_get_global_queue(2, 0);
    v29 = _NSConcreteStackBlock;
    v30 = -1073741824;
    v31 = 0;
    v32 = sub_100073078;
    v33 = &unk_100320EC8;
    v34 = _objc_retain(location[0]);
    dispatch_group_notify(group, queue, &v29);
    _objc_release(queue);
    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v42, 0);
    objc_storeStrong(&v41, 0);
    objc_storeStrong(&v40, 0);
    objc_storeStrong(&v54, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    v27 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = oslog;
      v6 = v27;
      sub_10001CEEC(v26);
      _os_log_impl(&_mh_execute_header, v5, v6, "Post install activity triggered without IdMS account, skipping liveness update...", v26, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v3 = v60;
    v4 = dispatch_get_global_queue(2, 0);
    v20 = _NSConcreteStackBlock;
    v21 = -1073741824;
    v22 = 0;
    v23 = sub_1000730CC;
    v24 = &unk_100320EC8;
    v25 = _objc_retain(location[0]);
    dispatch_group_notify(v3, v4, &v20);
    _objc_release(v4);
    objc_storeStrong(&v25, 0);
  }

  objc_storeStrong(&primaryAuthKitAccount, 0);
  objc_storeStrong(&v56, 0);
  objc_storeStrong(&v58, 0);
  objc_storeStrong(&v59, 0);
  objc_storeStrong(&v60, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchUserInfoForAltDSID:(id)d completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v19 = 0;
  objc_storeStrong(&v19, completion);
  v18 = _AKLogSystem();
  v17 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    log = v18;
    type = v17;
    sub_10001CEEC(v16);
    _os_log_impl(&_mh_execute_header, log, type, "AKUserInfoController attempt fetchUserInfo after OS upgrade...", v16, 2u);
  }

  objc_storeStrong(&v18, 0);
  v15 = +[AKUserInfoController sharedController];
  v5 = v15;
  v4 = location[0];
  v9 = _NSConcreteStackBlock;
  v10 = -1073741824;
  v11 = 0;
  v12 = sub_1000732E8;
  v13 = &unk_100320EF0;
  v14 = _objc_retain(v19);
  [v5 fetchUserInformationForAltDSID:v4 client:0 completion:&v9];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

@end