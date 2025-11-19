@interface AKPushMessageNotificationPresenter
+ (__CFUserNotification)createUserNotificationWithTitle:(id)a3 body:(id)a4 defaultButtonTitle:(id)a5 alternateButtonTitle:(id)a6 makeNoise:(BOOL)a7;
+ (__CFUserNotification)createUserNotificationWithTitle:(id)a3 body:(id)a4 lockScreenTitle:(id)a5 lockScreenBody:(id)a6 defaultButtonTitle:(id)a7 alternateButtonTitle:(id)a8 makeNoise:(BOOL)a9;
+ (id)_presenterQueue;
+ (id)createUserNotificationOptionsWithTitle:(id)a3 body:(id)a4 defaultButtonTitle:(id)a5 alternateButtonTitle:(id)a6 makeNoise:(BOOL)a7;
+ (id)createUserNotificationOptionsWithTitle:(id)a3 body:(id)a4 lockScreenTitle:(id)a5 lockScreenBody:(id)a6 defaultButtonTitle:(id)a7 alternateButtonTitle:(id)a8 makeNoise:(BOOL)a9;
+ (void)populateNotificationOptionsWithCommonKeys:(id)a3 makeNoise:(BOOL)a4;
- (AKPushMessageNotificationPresenter)initWithMessage:(id)a3;
- (BOOL)_isPasswordPromptNecessaryForCommand:(unint64_t)a3;
- (__CFUserNotification)_loginAlertForAccount:(id)a3 latitude:(id)a4 longitude:(id)a5 message:(id)a6 resolvedBody:(id)a7;
- (id)_loginAlertOptionsForAccount:(id)a3 latitude:(id)a4 longitude:(id)a5 message:(id)a6 resolvedBody:(id)a7;
- (id)_loginNotificationOptionsWithContext:(id)a3 isSilent:(BOOL)a4 defaultButtonTitle:(id)a5 alternateButtonTitle:(id)a6;
- (unint64_t)_notificationResultFromButtonPressed:(unint64_t)a3;
- (void)_handleResult:(unint64_t)a3 forAccount:(id)a4;
- (void)_locationNameWithLatitude:(id)a3 longitude:(id)a4 completion:(id)a5;
- (void)_promptForAuthenticationPasswordForAccount:(id)a3 completion:(id)a4;
- (void)_promptForChangePasswordForAccount:(id)a3;
- (void)_receiveResponseFromNotification:(__CFUserNotification *)a3 handler:(id)a4;
- (void)_showCode:(id)a3 body:(id)a4 title:(id)a5 footer:(id)a6 completion:(id)a7;
- (void)_startChangePasswordFlowForAccount:(id)a3;
- (void)_waitForNotificationResponse:(__CFUserNotification *)a3 withIdentifier:(id)a4 responseHandler:(id)a5;
- (void)presentLoginNotificationWithCode:(id)a3 piggy:(BOOL)a4 completionHandler:(id)a5;
- (void)presentMessageWithAccount:(id)a3 completionHandler:(id)a4;
- (void)tearDown;
@end

@implementation AKPushMessageNotificationPresenter

- (AKPushMessageNotificationPresenter)initWithMessage:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v9 = 0;
  v7.receiver = v3;
  v7.super_class = AKPushMessageNotificationPresenter;
  v6 = [(AKPushMessageNotificationPresenter *)&v7 init];
  v9 = v6;
  objc_storeStrong(&v9, v6);
  if (v6)
  {
    objc_storeStrong(&v9->_message, location[0]);
  }

  v5 = _objc_retain(v9);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v5;
}

+ (id)_presenterQueue
{
  v5 = &unk_1003747F0;
  location = 0;
  objc_storeStrong(&location, &stru_100323BD0);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_1003747E8;

  return v2;
}

- (void)presentMessageWithAccount:(id)a3 completionHandler:(id)a4
{
  v69 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v67 = 0;
  objc_storeStrong(&v67, a4);
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = sub_10011BD20;
  v62[3] = &unk_100323BF8;
  v63 = _objc_retain(v69);
  v64 = _objc_retain(location[0]);
  v65 = _objc_retain(v67);
  v66 = objc_retainBlock(v62);
  v61 = _objc_retain(v69->_message);
  v60 = 0;
  v59 = [v61 latitude];
  v58 = [v61 longitude];
  v57 = [v61 command];
  if (v57 == 100 || (v27 = 0, v57 == 700))
  {
    v27 = 0;
    if (v59)
    {
      v27 = v58 != 0;
    }
  }

  v56 = v27;
  v55 = 0;
  if (v27)
  {
    v48 = 0;
    v49 = &v48;
    v50 = 838860800;
    v51 = 48;
    v52 = sub_100003B94;
    v53 = sub_1000112C0;
    v54 = 0;
    v47 = dispatch_semaphore_create(0);
    v26 = v69;
    v24 = v59;
    v25 = v58;
    v41 = _NSConcreteStackBlock;
    v42 = -1073741824;
    v43 = 0;
    v44 = sub_10011BD98;
    v45 = &unk_100323C20;
    v46[1] = &v48;
    v46[0] = _objc_retain(v47);
    [(AKPushMessageNotificationPresenter *)v26 _locationNameWithLatitude:v24 longitude:v25 completion:&v41];
    dispatch_semaphore_wait(v47, 0xFFFFFFFFFFFFFFFFLL);
    if (v49[5])
    {
      v23 = [v61 alertBody];
      v4 = [v23 stringByReplacingOccurrencesOfString:@"%loc%" withString:v49[5]];
      v5 = v55;
      v55 = v4;
      _objc_release(v5);
      _objc_release(v23);
    }

    objc_storeStrong(v46, 0);
    objc_storeStrong(&v47, 0);
    _Block_object_dispose(&v48, 8);
    objc_storeStrong(&v54, 0);
  }

  if (v57 == 1600)
  {
    v22 = [v61 alertTitle];
    v21 = [location[0] username];
    v20 = [AKUsernameFormatter formattedUsernameFromUsername:?];
    v19 = [NSString stringWithFormat:@"%@\n%@", v22, v20];
    [v61 setAlertTitle:?];
    _objc_release(v19);
    _objc_release(v20);
    _objc_release(v21);
    _objc_release(v22);
  }

  if (v56)
  {
    v60 = [(AKPushMessageNotificationPresenter *)v69 _loginAlertForAccount:location[0] latitude:v59 longitude:v58 message:v61 resolvedBody:v55];
  }

  else
  {
    v12 = objc_opt_class();
    v18 = [v61 alertTitle];
    v17 = [v61 alertBody];
    v16 = [v61 lockScreenTitle];
    v15 = [v61 lockScreenBody];
    v14 = [v61 defaultButtonTitle];
    v13 = [v61 alternateButtonTitle];
    LOBYTE(v6) = [v61 isSilent] == 0;
    v60 = [v12 createUserNotificationWithTitle:v18 body:v17 lockScreenTitle:v16 lockScreenBody:v15 defaultButtonTitle:v14 alternateButtonTitle:v13 makeNoise:v6];
    _objc_release(v13);
    _objc_release(v14);
    _objc_release(v15);
    _objc_release(v16);
    _objc_release(v17);
    _objc_release(v18);
  }

  if (v60)
  {
    objc_initWeak(&from, v69);
    v10 = v69;
    v11 = v60;
    v9 = [v61 messageId];
    v32 = _NSConcreteStackBlock;
    v33 = -1073741824;
    v34 = 0;
    v35 = sub_10011BE0C;
    v36 = &unk_100323C48;
    objc_copyWeak(v39, &from);
    v39[1] = v60;
    v39[2] = v57;
    v37 = _objc_retain(location[0]);
    v38 = _objc_retain(v66);
    [(AKPushMessageNotificationPresenter *)v10 _waitForNotificationResponse:v11 withIdentifier:v9 responseHandler:&v32];
    _objc_release(v9);
    objc_storeStrong(&v38, 0);
    objc_storeStrong(&v37, 0);
    objc_destroyWeak(v39);
    objc_destroyWeak(&from);
  }

  else
  {
    oslog = _AKLogSystem();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v8 = type;
      sub_10001CEEC(v29);
      _os_log_error_impl(&_mh_execute_header, log, v8, "Unable to create CFUserNotificationRef!", v29, 2u);
    }

    objc_storeStrong(&oslog, 0);
    (*(v66 + 2))(v66, 0);
  }

  objc_storeStrong(&v55, 0);
  objc_storeStrong(&v58, 0);
  objc_storeStrong(&v59, 0);
  objc_storeStrong(&v61, 0);
  objc_storeStrong(&v66, 0);
  objc_storeStrong(&v65, 0);
  objc_storeStrong(&v64, 0);
  objc_storeStrong(&v63, 0);
  objc_storeStrong(&v67, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleResult:(unint64_t)a3 forAccount:(id)a4
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  if (!v5 && ([(AKPushMessage *)v7->_message command]== 100 || [(AKPushMessage *)v7->_message command]== 700) && [(AKPushMessage *)v7->_message piggybackingContext]!= 1)
  {
    [(AKPushMessageNotificationPresenter *)v7 _promptForChangePasswordForAccount:location];
  }

  objc_storeStrong(&location, 0);
}

- (void)presentLoginNotificationWithCode:(id)a3 piggy:(BOOL)a4 completionHandler:(id)a5
{
  v45 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v43 = a4;
  v42 = 0;
  objc_storeStrong(&v42, a5);
  v18 = [(AKPushMessage *)v45->_message secondaryTitle];
  v39 = 0;
  v37 = 0;
  if (v18)
  {
    v5 = _objc_retain(v18);
  }

  else
  {
    v40 = [NSBundle bundleWithIdentifier:@"com.apple.AuthKit"];
    v39 = 1;
    v38 = [(NSBundle *)v40 localizedStringForKey:@"LOGIN_CODE_ALERT_TITLE_DEFAULT_REBRAND" value:&stru_100330538 table:@"Localizable"];
    v37 = 1;
    v5 = _objc_retain(v38);
  }

  v41 = v5;
  if (v37)
  {
    _objc_release(v38);
  }

  if (v39)
  {
    _objc_release(v40);
  }

  _objc_release(v18);
  v15 = [(AKPushMessage *)v45->_message secondaryBody];
  v34 = 0;
  v32 = 0;
  if (v15)
  {
    v6 = _objc_retain(v15);
  }

  else
  {
    v35 = [NSBundle bundleWithIdentifier:@"com.apple.AuthKit"];
    v34 = 1;
    v33 = [(NSBundle *)v35 localizedStringForKey:@"LOGIN_CODE_ALERT_IOS_MESSAGE_DEFAULT" value:&stru_100330538 table:@"Localizable"];
    v32 = 1;
    v6 = _objc_retain(v33);
  }

  v36 = v6;
  if (v32)
  {
    _objc_release(v33);
  }

  if (v34)
  {
    _objc_release(v35);
  }

  _objc_release(v15);
  v31 = [(AKPushMessage *)v45->_message secondaryFooter];
  if ((+[AKCDPFactory isEligibleToArmDeviceForPCSAuth]& 1) != 0)
  {
    v14 = [(AKPushMessage *)v45->_message secondaryTitleCDP];
    if (v14)
    {
      objc_storeStrong(&v41, v14);
    }

    else
    {
      objc_storeStrong(&v41, v41);
    }

    _objc_release(v14);
    v13 = [(AKPushMessage *)v45->_message secondaryBodyCDP];
    if (v13)
    {
      objc_storeStrong(&v36, v13);
    }

    else
    {
      objc_storeStrong(&v36, v36);
    }

    _objc_release(v13);
  }

  v28 = 0;
  v26 = 0;
  if (v43 && (v29 = +[AKDevice currentDevice](AKDevice, "currentDevice"), v28 = 1, ([v29 isInternalBuild] & 1) != 0))
  {
    v27 = [v41 stringByAppendingString:@"\n(internal:piggy)"];
    v26 = 1;
    v7 = _objc_retain(v27);
  }

  else
  {
    v7 = _objc_retain(v41);
  }

  v30 = v7;
  if (v26)
  {
    _objc_release(v27);
  }

  if (v28)
  {
    _objc_release(v29);
  }

  v12 = v45;
  v8 = location[0];
  v9 = v36;
  v10 = v30;
  v11 = v31;
  v19 = _NSConcreteStackBlock;
  v20 = -1073741824;
  v21 = 0;
  v22 = sub_10011C634;
  v23 = &unk_100323C70;
  v25 = _objc_retain(v42);
  v24 = _objc_retain(v45);
  [(AKPushMessageNotificationPresenter *)v12 _showCode:v8 body:v9 title:v10 footer:v11 completion:&v19];
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(location, 0);
}

- (void)_showCode:(id)a3 body:(id)a4 title:(id)a5 footer:(id)a6 completion:(id)a7
{
  v32 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v30 = 0;
  objc_storeStrong(&v30, a4);
  v29 = 0;
  objc_storeStrong(&v29, a5);
  v28 = 0;
  objc_storeStrong(&v28, a6);
  v27 = 0;
  objc_storeStrong(&v27, a7);
  v26 = [AKLoginCodeNotificationBuilder buildLoginCodeNotificationWithTitle:v29 body:v30 footer:v28 loginCode:location[0]];
  if (v26)
  {
    v8 = v32;
    v7 = v26;
    v9 = [(AKPushMessage *)v32->_message messageId];
    v16 = _NSConcreteStackBlock;
    v17 = -1073741824;
    v18 = 0;
    v19 = sub_10011C8E4;
    v20 = &unk_100323C98;
    v21[0] = _objc_retain(v27);
    v21[1] = v26;
    [(AKPushMessageNotificationPresenter *)v8 _waitForNotificationResponse:v7 withIdentifier:v9 responseHandler:&v16];
    _objc_release(v9);
    objc_storeStrong(v21, 0);
    v22 = 0;
  }

  else
  {
    v25 = _AKLogSystem();
    v24 = 16;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      log = v25;
      type = v24;
      sub_10001CEEC(v23);
      _os_log_error_impl(&_mh_execute_header, log, type, "Failed to create login code notification!", v23, 2u);
    }

    objc_storeStrong(&v25, 0);
    v22 = 1;
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
}

- (void)_waitForNotificationResponse:(__CFUserNotification *)a3 withIdentifier:(id)a4 responseHandler:(id)a5
{
  v29 = self;
  v28 = a2;
  v27 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v25 = 0;
  objc_storeStrong(&v25, a5);
  v24 = _AKLogSystem();
  v23 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v30, location);
    _os_log_impl(&_mh_execute_header, v24, v23, "Attempting to show notification with identifier: %@", v30, 0xCu);
  }

  objc_storeStrong(&v24, 0);
  queue = [objc_opt_class() _presenterQueue];
  v17 = _NSConcreteStackBlock;
  v18 = -1073741824;
  v19 = 0;
  v20 = sub_10011CCB4;
  v21 = &unk_100323CC0;
  v22[0] = _objc_retain(v29);
  v22[1] = v27;
  dispatch_sync(queue, &v17);
  _objc_release(queue);
  v6 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v6 postNotificationName:@"AKNotificationNamePresented" object:location];
  _objc_release(v6);
  v8 = v29;
  v7 = v27;
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_10011CCDC;
  v14 = &unk_100323CE8;
  v15 = _objc_retain(v29);
  v16 = _objc_retain(v25);
  [(AKPushMessageNotificationPresenter *)v8 _receiveResponseFromNotification:v7 handler:&v10];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(v22, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&location, 0);
}

- (id)_loginAlertOptionsForAccount:(id)a3 latitude:(id)a4 longitude:(id)a5 message:(id)a6 resolvedBody:(id)a7
{
  v39 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v37 = 0;
  objc_storeStrong(&v37, a4);
  v36 = 0;
  objc_storeStrong(&v36, a5);
  v35 = 0;
  objc_storeStrong(&v35, a6);
  v34 = 0;
  objc_storeStrong(&v34, a7);
  v33 = objc_alloc_init(AKAppleIDAuthenticationContext);
  v23 = [location[0] username];
  [v33 setUsername:?];
  _objc_release(v23);
  [v33 setLatitude:v37];
  [v33 setLongitude:v36];
  v24 = [v35 alertTitle];
  v31 = 0;
  v29 = 0;
  if (v24)
  {
    v18 = v24;
  }

  else
  {
    v32 = [NSBundle bundleWithIdentifier:@"com.apple.AuthKit"];
    v31 = 1;
    v30 = [(NSBundle *)v32 localizedStringForKey:@"APPLE_ID_SIGN_IN_HEADER_REBRAND" value:&stru_100330538 table:@"Localizable"];
    v29 = 1;
    v18 = v30;
  }

  [v33 _setMessage:v18];
  if (v29)
  {
    _objc_release(v30);
  }

  if (v31)
  {
    _objc_release(v32);
  }

  _objc_release(v24);
  v27 = 0;
  v25 = 0;
  if (v34)
  {
    v17 = v34;
  }

  else
  {
    v28 = [NSBundle bundleWithIdentifier:@"com.apple.AuthKit"];
    v27 = 1;
    v26 = [(NSBundle *)v28 localizedStringForKey:@"APPLE_ID_UNABLE_TO_RESOLVE_LOCATION_FOR_REASON_REBRAND" value:&stru_100330538 table:@"Localizable"];
    v25 = 1;
    v17 = v26;
  }

  [v33 setReason:v17];
  if (v25)
  {
    _objc_release(v26);
  }

  if (v27)
  {
    _objc_release(v28);
  }

  v8 = [v35 deviceClass];
  [v33 setDeviceClass:?];
  _objc_release(v8);
  v9 = [v35 deviceColor];
  [v33 setDeviceColor:?];
  _objc_release(v9);
  v10 = [v35 deviceEnclosureColor];
  [v33 setDeviceEnclosureColor:?];
  _objc_release(v10);
  v13 = v39;
  v11 = v33;
  v12 = [v35 isSilent];
  v15 = [v35 defaultButtonTitle];
  v14 = [v35 alternateButtonTitle];
  v16 = [(AKPushMessageNotificationPresenter *)v13 _loginNotificationOptionsWithContext:v11 isSilent:v12 defaultButtonTitle:v15 alternateButtonTitle:?];
  _objc_release(v14);
  _objc_release(v15);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(location, 0);

  return v16;
}

- (__CFUserNotification)_loginAlertForAccount:(id)a3 latitude:(id)a4 longitude:(id)a5 message:(id)a6 resolvedBody:(id)a7
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  v21 = 0;
  objc_storeStrong(&v21, a5);
  v20 = 0;
  objc_storeStrong(&v20, a6);
  v19 = 0;
  objc_storeStrong(&v19, a7);
  if ((+[AAFDeviceInfo deviceIsAudioAccessory]& 1) != 0)
  {
    v18 = _AKLogSystem();
    v17 = 16;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      log = v18;
      type = v17;
      sub_10001CEEC(v16);
      _os_log_error_impl(&_mh_execute_header, log, type, "Attempted to show push message CFUserNotification on HomePod, AuthKit prompts aren't made for this!", v16, 2u);
    }

    objc_storeStrong(&v18, 0);
    v25 = 0;
    v15 = 1;
  }

  else
  {
    v14 = [(AKPushMessageNotificationPresenter *)v24 _loginAlertOptionsForAccount:location[0] latitude:v22 longitude:v21 message:v20 resolvedBody:v19];
    v25 = AKUserNotificationCreate();
    v15 = 1;
    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  return v25;
}

- (void)_locationNameWithLatitude:(id)a3 longitude:(id)a4 completion:(id)a5
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v29 = 0;
  objc_storeStrong(&v29, a4);
  v28 = 0;
  objc_storeStrong(&v28, a5);
  if (sub_10011AC40(0))
  {
    v5 = objc_alloc_init(sub_10011AE90());
  }

  else
  {
    v5 = objc_alloc_init(0);
  }

  v27 = v5;
  if (sub_10011AC40(0))
  {
    v6 = objc_alloc(sub_10011B068());
  }

  else
  {
    v6 = [0 alloc];
  }

  v13 = v6;
  [location[0] doubleValue];
  v14 = v7;
  [v29 doubleValue];
  v26 = [v13 initWithLatitude:v14 longitude:v8];
  v25 = _AKLogSystem();
  v24 = 2;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    log = v25;
    type = v24;
    sub_10001CEEC(v23);
    _os_log_debug_impl(&_mh_execute_header, log, type, "Beginning reverse geocode...", v23, 2u);
  }

  objc_storeStrong(&v25, 0);
  v10 = v27;
  v9 = v26;
  v17 = _NSConcreteStackBlock;
  v18 = -1073741824;
  v19 = 0;
  v20 = sub_10011D774;
  v21 = &unk_100323D10;
  v22 = _objc_retain(v28);
  [v10 reverseGeocodeLocation:v9 completionHandler:&v17];
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

- (id)_loginNotificationOptionsWithContext:(id)a3 isSilent:(BOOL)a4 defaultButtonTitle:(id)a5 alternateButtonTitle:(id)a6
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v29 = a4;
  v28 = 0;
  objc_storeStrong(&v28, a5);
  v27 = 0;
  objc_storeStrong(&v27, a6);
  v26 = objc_alloc_init(NSMutableDictionary);
  [objc_opt_class() populateNotificationOptionsWithCommonKeys:v26 makeNoise:!v29];
  v24 = 0;
  v22 = 0;
  if (v28)
  {
    v12 = v28;
  }

  else
  {
    v25 = [NSBundle bundleWithIdentifier:@"com.apple.AuthKit"];
    v24 = 1;
    v23 = [(NSBundle *)v25 localizedStringForKey:@"LOGIN_CODE_ALERT_OK_BUTTON" value:&stru_100330538 table:@"Localizable"];
    v22 = 1;
    v12 = v23;
  }

  [v26 setObject:v12 forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];
  if (v22)
  {
    _objc_release(v23);
  }

  if (v24)
  {
    _objc_release(v25);
  }

  v21 = [NSExtensionItem extensionItemWithAppleIDAuthenticationContext:location[0]];
  v31 = v21;
  v11 = [NSArray arrayWithObjects:&v31 count:1];
  v20 = [NSKeyedArchiver archivedDataWithRootObject:"archivedDataWithRootObject:requiringSecureCoding:error:" requiringSecureCoding:? error:?];
  _objc_release(v11);
  v18 = 0;
  v16 = 0;
  if (v28)
  {
    v10 = v28;
  }

  else
  {
    v19 = [NSBundle bundleWithIdentifier:@"com.apple.AuthKit"];
    v18 = 1;
    v17 = [(NSBundle *)v19 localizedStringForKey:@"LOGIN_CODE_ALERT_OK_BUTTON" value:&stru_100330538 table:@"Localizable"];
    v16 = 1;
    v10 = v17;
  }

  [v26 setObject:v10 forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];
  if (v16)
  {
    _objc_release(v17);
  }

  if (v18)
  {
    _objc_release(v19);
  }

  [v26 setObject:AKExtensionItemLocationSignInAlertKey forKeyedSubscript:SBUserNotificationExtensionIdentifierKey];
  [v26 setObject:v20 forKeyedSubscript:SBUserNotificationExtensionItemsKey];
  v8 = [location[0] _message];
  [v26 setObject:? forKeyedSubscript:?];
  _objc_release(v8);
  v9 = [location[0] _interpolatedReason];
  [v26 setObject:? forKeyedSubscript:?];
  _objc_release(v9);
  if (v27)
  {
    [v26 setObject:v27 forKeyedSubscript:kCFUserNotificationAlternateButtonTitleKey];
  }

  v7 = _objc_retain(v26);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);

  return v7;
}

+ (id)createUserNotificationOptionsWithTitle:(id)a3 body:(id)a4 defaultButtonTitle:(id)a5 alternateButtonTitle:(id)a6 makeNoise:(BOOL)a7
{
  v18 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = 0;
  objc_storeStrong(&v15, a5);
  v14 = 0;
  objc_storeStrong(&v14, a6);
  LOBYTE(v8) = a7;
  v13 = [v18 createUserNotificationOptionsWithTitle:location[0] body:v16 lockScreenTitle:0 lockScreenBody:0 defaultButtonTitle:v15 alternateButtonTitle:v14 makeNoise:v8];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);

  return v13;
}

+ (id)createUserNotificationOptionsWithTitle:(id)a3 body:(id)a4 lockScreenTitle:(id)a5 lockScreenBody:(id)a6 defaultButtonTitle:(id)a7 alternateButtonTitle:(id)a8 makeNoise:(BOOL)a9
{
  v27 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v25 = 0;
  objc_storeStrong(&v25, a4);
  v24 = 0;
  objc_storeStrong(&v24, a5);
  v23 = 0;
  objc_storeStrong(&v23, a6);
  v22 = 0;
  objc_storeStrong(&v22, a7);
  v21 = 0;
  objc_storeStrong(&v21, a8);
  v20 = a9;
  v19 = objc_alloc_init(NSMutableDictionary);
  if (location[0])
  {
    [v19 setObject:location[0] forKeyedSubscript:kCFUserNotificationAlertHeaderKey];
  }

  if (v25)
  {
    [v19 setObject:v25 forKeyedSubscript:kCFUserNotificationAlertMessageKey];
  }

  if (v22)
  {
    [v19 setObject:v22 forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];
  }

  else
  {
    v13 = [NSBundle bundleWithIdentifier:@"com.apple.AuthKit"];
    v12 = [(NSBundle *)v13 localizedStringForKey:@"ALERT_DEFAULT_BUTTON" value:&stru_100330538 table:@"Localizable"];
    [v19 setObject:? forKeyedSubscript:?];
    _objc_release(v12);
    _objc_release(v13);
  }

  if (v21)
  {
    [v19 setObject:v21 forKeyedSubscript:kCFUserNotificationAlternateButtonTitleKey];
  }

  if ([v24 length])
  {
    [v19 setObject:v24 forKeyedSubscript:SBUserNotificationLockScreenAlertHeaderKey];
  }

  if ([v23 length])
  {
    [v19 setObject:v23 forKeyedSubscript:SBUserNotificationLockScreenAlertMessageKey];
  }

  [v27 populateNotificationOptionsWithCommonKeys:v19 makeNoise:{v20, &v19}];
  v11 = _objc_retain(v19);
  objc_storeStrong(v10, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);

  return v11;
}

+ (__CFUserNotification)createUserNotificationWithTitle:(id)a3 body:(id)a4 defaultButtonTitle:(id)a5 alternateButtonTitle:(id)a6 makeNoise:(BOOL)a7
{
  v18 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = 0;
  objc_storeStrong(&v15, a5);
  v14 = 0;
  objc_storeStrong(&v14, a6);
  LOBYTE(v8) = a7;
  v13 = [v18 createUserNotificationWithTitle:location[0] body:v16 lockScreenTitle:0 lockScreenBody:0 defaultButtonTitle:v15 alternateButtonTitle:v14 makeNoise:v8];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  return v13;
}

+ (__CFUserNotification)createUserNotificationWithTitle:(id)a3 body:(id)a4 lockScreenTitle:(id)a5 lockScreenBody:(id)a6 defaultButtonTitle:(id)a7 alternateButtonTitle:(id)a8 makeNoise:(BOOL)a9
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v34 = 0;
  objc_storeStrong(&v34, a4);
  v33 = 0;
  objc_storeStrong(&v33, a5);
  v32 = 0;
  objc_storeStrong(&v32, a6);
  v31 = 0;
  objc_storeStrong(&v31, a7);
  v30 = 0;
  objc_storeStrong(&v30, a8);
  v29 = a9;
  if ((+[AAFDeviceInfo deviceIsAudioAccessory]& 1) != 0)
  {
    v28 = _AKLogSystem();
    v27 = 16;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      log = v28;
      type = v27;
      sub_10001CEEC(v26);
      _os_log_error_impl(&_mh_execute_header, log, type, "Attempted to show push message CFUserNotification on HomePod, AuthKit prompts aren't made for this!", v26, 2u);
    }

    objc_storeStrong(&v28, 0);
    v36 = 0;
    v25 = 1;
  }

  else
  {
    v24 = _AKLogSystem();
    v23 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v24;
      v13 = v23;
      sub_10001CEEC(v22);
      _os_log_impl(&_mh_execute_header, v12, v13, "Will display user notification...", v22, 2u);
    }

    objc_storeStrong(&v24, 0);
    v9 = objc_opt_class();
    LOBYTE(v11) = v29;
    v21 = [v9 createUserNotificationOptionsWithTitle:location[0] body:v34 lockScreenTitle:v33 lockScreenBody:v32 defaultButtonTitle:v31 alternateButtonTitle:v30 makeNoise:v11];
    v36 = AKUserNotificationCreate();
    v25 = 1;
    objc_storeStrong(&v21, 0);
  }

  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
  return v36;
}

- (void)tearDown
{
  v9 = self;
  v8[1] = a2;
  queue = [objc_opt_class() _presenterQueue];
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_10011E994;
  v7 = &unk_10031F8B0;
  v8[0] = _objc_retain(v9);
  dispatch_sync(queue, &v3);
  _objc_release(queue);
  objc_storeStrong(v8, 0);
}

+ (void)populateNotificationOptionsWithCommonKeys:(id)a3 makeNoise:(BOOL)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] setObject:? forKeyedSubscript:?];
  [location[0] setObject:&__kCFBooleanFalse forKeyedSubscript:SBUserNotificationDismissOnLock];
  [location[0] setObject:&__kCFBooleanTrue forKeyedSubscript:SBUserNotificationDontDismissOnUnlock];
  if (a4)
  {
    [location[0] setObject:&off_1003390E8 forKeyedSubscript:SBUserNotificationSystemSoundIDKey];
  }

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [(NSBundle *)v5 resourceURL];
  [location[0] setObject:? forKeyedSubscript:?];
  _objc_release(v4);
  _objc_release(v5);
  objc_storeStrong(location, 0);
}

- (void)_receiveResponseFromNotification:(__CFUserNotification *)a3 handler:(id)a4
{
  v15 = self;
  v14 = a2;
  v13 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  queue = dispatch_get_global_queue(25, 0);
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_10011EE9C;
  v9 = &unk_100323D38;
  v11[1] = v13;
  v11[0] = _objc_retain(location);
  v10 = _objc_retain(v15);
  dispatch_async(queue, &v5);
  _objc_release(queue);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(v11, 0);
  objc_storeStrong(&location, 0);
}

- (unint64_t)_notificationResultFromButtonPressed:(unint64_t)a3
{
  if (!a3)
  {
    return 1;
  }

  if (a3 == 3)
  {
    return 2;
  }

  return 0;
}

- (void)_promptForChangePasswordForAccount:(id)a3
{
  v40 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v38 = _AKLogSystem();
  v37 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    log = v38;
    type = v37;
    sub_10001CEEC(v36);
    _os_log_impl(&_mh_execute_header, log, type, "Prompting user if if they want to change their password", v36, 2u);
  }

  objc_storeStrong(&v38, 0);
  v13 = +[AKAccountManager sharedInstance];
  v35 = [(AKAccountManager *)v13 passwordResetTokenForAccount:location[0]];
  _objc_release(v13);
  if (!v35)
  {
    v18 = _AKLogSystem();
    v17 = 2;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v3 = v18;
      v4 = v17;
      sub_10001CEEC(v16);
      _os_log_debug_impl(&_mh_execute_header, v3, v4, "Suppressing password change prompt due to missing PRK", v16, 2u);
    }

    objc_storeStrong(&v18, 0);
    goto LABEL_14;
  }

  v9 = [NSBundle bundleWithIdentifier:?];
  v34 = [NSBundle localizedStringForKey:v9 value:"localizedStringForKey:value:table:" table:@"CHANGE_PASSWORD_ALERT_TITLE_REBRAND"];
  _objc_release(v9);
  v10 = [NSBundle bundleWithIdentifier:@"com.apple.AuthKit"];
  v33 = [(NSBundle *)v10 localizedStringForKey:@"CHANGE_PASSWORD_ALERT_BODY" value:&stru_100330538 table:@"Localizable"];
  _objc_release(v10);
  v11 = [NSBundle bundleWithIdentifier:@"com.apple.AuthKit"];
  v32 = [(NSBundle *)v11 localizedStringForKey:@"CHANGE_PASSWORD_ALERT_DEF_BTN" value:&stru_100330538 table:@"Localizable"];
  _objc_release(v11);
  v12 = [NSBundle bundleWithIdentifier:@"com.apple.AuthKit"];
  v31 = [(NSBundle *)v12 localizedStringForKey:@"CHANGE_PASSWORD_ALERT_ALT_BTN" value:&stru_100330538 table:@"Localizable"];
  _objc_release(v12);
  v30 = [AKPushMessageNotificationPresenter createUserNotificationWithTitle:v34 body:v33 defaultButtonTitle:v32 alternateButtonTitle:v31 makeNoise:0];
  if (v30)
  {
    +[NSXPCConnection beginTransaction];
    v6 = v40;
    v5 = v30;
    v19 = _NSConcreteStackBlock;
    v20 = -1073741824;
    v21 = 0;
    v22 = sub_10011F584;
    v23 = &unk_100323D60;
    v25[1] = v30;
    v24 = _objc_retain(v40);
    v25[0] = _objc_retain(location[0]);
    [(AKPushMessageNotificationPresenter *)v6 _receiveResponseFromNotification:v5 handler:&v19];
    objc_storeStrong(v25, 0);
    objc_storeStrong(&v24, 0);
    v26 = 0;
  }

  else
  {
    v29 = _AKLogSystem();
    v28 = 16;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v7 = v29;
      v8 = v28;
      sub_10001CEEC(v27);
      _os_log_error_impl(&_mh_execute_header, v7, v8, "Failed to create password change notification!", v27, 2u);
    }

    objc_storeStrong(&v29, 0);
    v26 = 1;
  }

  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  if (!v26)
  {
LABEL_14:
    v26 = 0;
  }

  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
}

- (void)_startChangePasswordFlowForAccount:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = _AKLogSystem();
  v16 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    log = v17;
    type = v16;
    sub_10001CEEC(v15);
    _os_log_impl(&_mh_execute_header, log, type, "Will take user to change password flow in Settings...", v15, 2u);
  }

  objc_storeStrong(&v17, 0);
  v14 = +[AKAccountManager sharedInstance];
  v13 = [v14 altDSIDForAccount:location[0]];
  v12 = [v14 iCloudAccountForAltDSID:v13];
  v11 = 0;
  if (!v12 || [v14 isPrimaryiCloudAccount:v12])
  {
    objc_storeStrong(&v11, @"prefs:root=APPLE_ACCOUNT&aaaction=changePassword");
  }

  else
  {
    v6 = [v12 identifier];
    v3 = [NSString stringWithFormat:@"prefs:root=ACCOUNTS_AND_PASSWORDS&path=%@&aaaction=changePassword", v6];
    v4 = v11;
    v11 = v3;
    _objc_release(v4);
    _objc_release(v6);
  }

  v10 = [NSURL URLWithString:v11];
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v19, v10);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Using the following URL for change password redirect: %@", v19, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v5 = +[LSApplicationWorkspace defaultWorkspace];
  [v5 openSensitiveURL:v10 withOptions:0];
  _objc_release(v5);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_isPasswordPromptNecessaryForCommand:(unint64_t)a3
{
  v5 = 0;
  v4 = 0;
  if (a3 == 1600)
  {
    v6 = +[AKDevice currentDevice];
    v5 = 1;
    v4 = [v6 isProtectedWithPasscode] == 0;
  }

  if (v5)
  {
    _objc_release(v6);
  }

  return v4;
}

- (void)_promptForAuthenticationPasswordForAccount:(id)a3 completion:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = objc_alloc_init(AKAppleIDAuthenticationContext);
  v5 = v15;
  v6 = [location[0] username];
  [v5 setUsername:?];
  _objc_release(v6);
  [v15 setShouldPromptForPasswordOnly:1];
  [v15 setAuthenticationType:?];
  [v15 setIsEphemeral:1];
  [v15 setIsUsernameEditable:0];
  [v15 setShouldSkipSettingsLaunchAlert:1];
  [v15 setMaximumLoginAttempts:2];
  [v15 set_performUIOutOfProcess:1];
  [v15 set_forceEligibleForForegroundAuthentication:1];
  v14 = objc_alloc_init(AKAppleIDAuthenticationController);
  v8 = v14;
  v7 = v15;
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10011FC1C;
  v12 = &unk_100321258;
  v13 = _objc_retain(v16);
  [v8 authenticateWithContext:v7 completion:?];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

@end