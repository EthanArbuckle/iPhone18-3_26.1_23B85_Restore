@interface AKLoginPresenter
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)_callCompletionWithResults:(id)a3 password:(id)a4 additionalData:(id)a5 error:(id)a6;
- (void)authenticationRequestFinishedWithResults:(id)a3 password:(id)a4 additionalData:(id)a5 error:(id)a6;
- (void)presentOOPLoginUIWithContext:(id)a3 completion:(id)a4;
@end

@implementation AKLoginPresenter

- (void)presentOOPLoginUIWithContext:(id)a3 completion:(id)a4
{
  v55 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v53 = 0;
  objc_storeStrong(&v53, a4);
  v52 = 0;
  v51 = _AKLogSystem();
  v50 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v61, location[0]);
    _os_log_debug_impl(&_mh_execute_header, v51, v50, "Redirecting to AuthKitUIService, to present basic login UI with context: %@", v61, 0xCu);
  }

  objc_storeStrong(&v51, 0);
  v48 = v52;
  v25 = [NSKeyedArchiver archivedDataWithRootObject:location[0] requiringSecureCoding:1 error:&v48];
  objc_storeStrong(&v52, v48);
  v49 = v25;
  if (!v25)
  {
    v47 = _AKLogSystem();
    v46 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v60, v52);
      _os_log_error_impl(&_mh_execute_header, v47, v46, "Context data is nil: %@", v60, 0xCu);
    }

    objc_storeStrong(&v47, 0);
    v23 = v55;
    v24 = [NSError ak_errorWithCode:-7034];
    [AKLoginPresenter _callCompletionWithResults:v23 password:"_callCompletionWithResults:password:additionalData:error:" additionalData:0 error:0];
    _objc_release(v24);
  }

  v45 = objc_alloc_init(NSMutableDictionary);
  [v45 setObject:v49 forKeyedSubscript:off_100370BE8];
  [v45 setObject:&off_100338FC8 forKeyedSubscript:off_100370BF0];
  v4 = +[NSXPCListener anonymousListener];
  remoteListener = v55->_remoteListener;
  v55->_remoteListener = v4;
  _objc_release(remoteListener);
  [(NSXPCListener *)v55->_remoteListener setDelegate:v55];
  [(NSXPCListener *)v55->_remoteListener resume];
  [(AKLoginPresenter *)v55 setPresentationCompletion:v53];
  v44 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
  v43 = 0;
  v42 = [v44 canOpenApplication:off_100370BE0 reason:&v43];
  if (v42)
  {
    v41 = objc_alloc_init(BSMutableSettings);
    [v41 setObject:v45 forSetting:0];
    v18 = [(NSXPCListener *)v55->_remoteListener endpoint];
    v17 = [(NSXPCListenerEndpoint *)v18 _endpoint];
    [v41 setObject:? forSetting:?];
    _objc_release(v17);
    _objc_release(v18);
    v19 = [BSAction alloc];
    v20 = [v41 copy];
    v40 = [v19 initWithInfo:? responder:?];
    _objc_release(v20);
    v58[0] = FBSOpenApplicationOptionKeyActions;
    v57 = v40;
    v22 = [NSArray arrayWithObjects:&v57 count:1];
    v59[0] = v22;
    v58[1] = FBSOpenApplicationOptionKeyActivateSuspended;
    v59[1] = &__kCFBooleanFalse;
    v58[2] = FBSOpenApplicationOptionKeyLaunchIntent;
    v59[2] = &off_100338FE0;
    v21 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:3];
    v39 = [FBSOpenApplicationOptions optionsWithDictionary:?];
    _objc_release(v21);
    _objc_release(v22);
    oslog = _AKLogSystem();
    v37 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v15 = oslog;
      v16 = v37;
      sub_10001CEEC(v36);
      _os_log_debug_impl(&_mh_execute_header, v15, v16, "Trying to launch application with Scene Delegate", v36, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v14 = v44;
    v12 = off_100370BE0;
    v13 = v39;
    v30 = _NSConcreteStackBlock;
    v31 = -1073741824;
    v32 = 0;
    v33 = sub_100085A64;
    v34 = &unk_1003213B8;
    v35 = _objc_retain(v55);
    [v14 openApplication:v12 withOptions:v13 completion:&v30];
    objc_storeStrong(&v35, 0);
    objc_storeStrong(&v39, 0);
    objc_storeStrong(&v40, 0);
    objc_storeStrong(&v41, 0);
  }

  else
  {
    v29 = _AKLogSystem();
    v28 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v9 = v29;
      v10 = v28;
      v8 = off_100370BE0;
      v11 = FBSOpenApplicationErrorCodeToString();
      v27 = _objc_retain(v11);
      sub_10001B098(v56, v8, v27);
      _os_log_error_impl(&_mh_execute_header, v9, v10, "Failed to launch application: %@ with error: %@", v56, 0x16u);
      _objc_release(v11);
      objc_storeStrong(&v27, 0);
    }

    objc_storeStrong(&v29, 0);
    v6 = v55;
    v7 = [NSError ak_errorWithCode:-7034];
    [AKLoginPresenter _callCompletionWithResults:v6 password:"_callCompletionWithResults:password:additionalData:error:" additionalData:0 error:0];
    _objc_release(v7);
  }

  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(&v52, 0);
  objc_storeStrong(&v53, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v6 = +[AKLoginPresenterHostInterface XPCInterface];
  [v7 setExportedInterface:?];
  _objc_release(v6);
  [v7 setExportedObject:v9];
  [v7 resume];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return 1;
}

- (void)authenticationRequestFinishedWithResults:(id)a3 password:(id)a4 additionalData:(id)a5 error:(id)a6
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13 = 0;
  objc_storeStrong(&v13, a5);
  v12 = 0;
  objc_storeStrong(&v12, a6);
  v11 = _AKLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v7 = [(AKLoginPresenter *)v16 presentationCompletion];
    v6 = objc_retainBlock(v7);
    sub_1000194D4(v17, v6);
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Call completion with authentication result with presentation completion: %@", v17, 0xCu);
    _objc_release(v6);
    _objc_release(v7);
  }

  objc_storeStrong(&v11, 0);
  [(AKLoginPresenter *)v16 _callCompletionWithResults:location[0] password:v14 additionalData:v13 error:v12];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)_callCompletionWithResults:(id)a3 password:(id)a4 additionalData:(id)a5 error:(id)a6
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12 = 0;
  objc_storeStrong(&v12, a5);
  v11 = 0;
  objc_storeStrong(&v11, a6);
  v10 = [(AKLoginPresenter *)v15 presentationCompletion];
  _objc_release(v10);
  if (v10)
  {
    v6 = [(AKLoginPresenter *)v15 presentationCompletion];
    v6[2](v6, location[0], v13, v12, v11);
    _objc_release(v6);
  }

  [(AKLoginPresenter *)v15 setPresentationCompletion:?];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

@end