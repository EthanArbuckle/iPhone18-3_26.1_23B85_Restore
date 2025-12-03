@interface AKPushMessageNotificationPresenter
+ (__CFUserNotification)createUserNotificationWithTitle:(id)title body:(id)body defaultButtonTitle:(id)buttonTitle alternateButtonTitle:(id)alternateButtonTitle makeNoise:(BOOL)noise;
+ (__CFUserNotification)createUserNotificationWithTitle:(id)title body:(id)body lockScreenTitle:(id)screenTitle lockScreenBody:(id)screenBody defaultButtonTitle:(id)buttonTitle alternateButtonTitle:(id)alternateButtonTitle makeNoise:(BOOL)noise;
+ (id)_presenterQueue;
+ (id)createUserNotificationOptionsWithTitle:(id)title body:(id)body defaultButtonTitle:(id)buttonTitle alternateButtonTitle:(id)alternateButtonTitle makeNoise:(BOOL)noise;
+ (id)createUserNotificationOptionsWithTitle:(id)title body:(id)body lockScreenTitle:(id)screenTitle lockScreenBody:(id)screenBody defaultButtonTitle:(id)buttonTitle alternateButtonTitle:(id)alternateButtonTitle makeNoise:(BOOL)noise;
+ (void)populateNotificationOptionsWithCommonKeys:(id)keys makeNoise:(BOOL)noise;
- (AKPushMessageNotificationPresenter)initWithMessage:(id)message;
- (BOOL)_isPasswordPromptNecessaryForCommand:(unint64_t)command;
- (__CFUserNotification)_loginAlertForAccount:(id)account latitude:(id)latitude longitude:(id)longitude message:(id)message resolvedBody:(id)body;
- (id)_loginAlertOptionsForAccount:(id)account latitude:(id)latitude longitude:(id)longitude message:(id)message resolvedBody:(id)body;
- (id)_loginNotificationOptionsWithContext:(id)context isSilent:(BOOL)silent defaultButtonTitle:(id)title alternateButtonTitle:(id)buttonTitle;
- (unint64_t)_notificationResultFromButtonPressed:(unint64_t)pressed;
- (void)_handleResult:(unint64_t)result forAccount:(id)account;
- (void)_locationNameWithLatitude:(id)latitude longitude:(id)longitude completion:(id)completion;
- (void)_promptForAuthenticationPasswordForAccount:(id)account completion:(id)completion;
- (void)_promptForChangePasswordForAccount:(id)account;
- (void)_receiveResponseFromNotification:(__CFUserNotification *)notification handler:(id)handler;
- (void)_showCode:(id)code body:(id)body title:(id)title footer:(id)footer completion:(id)completion;
- (void)_startChangePasswordFlowForAccount:(id)account;
- (void)_waitForNotificationResponse:(__CFUserNotification *)response withIdentifier:(id)identifier responseHandler:(id)handler;
- (void)presentLoginNotificationWithCode:(id)code piggy:(BOOL)piggy completionHandler:(id)handler;
- (void)presentMessageWithAccount:(id)account completionHandler:(id)handler;
- (void)tearDown;
@end

@implementation AKPushMessageNotificationPresenter

- (AKPushMessageNotificationPresenter)initWithMessage:(id)message
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = AKPushMessageNotificationPresenter;
  v6 = [(AKPushMessageNotificationPresenter *)&v7 init];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    objc_storeStrong(&selfCopy->_message, location[0]);
  }

  v5 = _objc_retain(selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
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

- (void)presentMessageWithAccount:(id)account completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v67 = 0;
  objc_storeStrong(&v67, handler);
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = sub_10011BD20;
  v62[3] = &unk_100323BF8;
  v63 = _objc_retain(selfCopy);
  v64 = _objc_retain(location[0]);
  v65 = _objc_retain(v67);
  v66 = objc_retainBlock(v62);
  v61 = _objc_retain(selfCopy->_message);
  v60 = 0;
  latitude = [v61 latitude];
  longitude = [v61 longitude];
  command = [v61 command];
  if (command == 100 || (v27 = 0, command == 700))
  {
    v27 = 0;
    if (latitude)
    {
      v27 = longitude != 0;
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
    v26 = selfCopy;
    v24 = latitude;
    v25 = longitude;
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
      alertBody = [v61 alertBody];
      v4 = [alertBody stringByReplacingOccurrencesOfString:@"%loc%" withString:v49[5]];
      v5 = v55;
      v55 = v4;
      _objc_release(v5);
      _objc_release(alertBody);
    }

    objc_storeStrong(v46, 0);
    objc_storeStrong(&v47, 0);
    _Block_object_dispose(&v48, 8);
    objc_storeStrong(&v54, 0);
  }

  if (command == 1600)
  {
    alertTitle = [v61 alertTitle];
    username = [location[0] username];
    v20 = [AKUsernameFormatter formattedUsernameFromUsername:?];
    v19 = [NSString stringWithFormat:@"%@\n%@", alertTitle, v20];
    [v61 setAlertTitle:?];
    _objc_release(v19);
    _objc_release(v20);
    _objc_release(username);
    _objc_release(alertTitle);
  }

  if (v56)
  {
    v60 = [(AKPushMessageNotificationPresenter *)selfCopy _loginAlertForAccount:location[0] latitude:latitude longitude:longitude message:v61 resolvedBody:v55];
  }

  else
  {
    v12 = objc_opt_class();
    alertTitle2 = [v61 alertTitle];
    alertBody2 = [v61 alertBody];
    lockScreenTitle = [v61 lockScreenTitle];
    lockScreenBody = [v61 lockScreenBody];
    defaultButtonTitle = [v61 defaultButtonTitle];
    alternateButtonTitle = [v61 alternateButtonTitle];
    LOBYTE(v6) = [v61 isSilent] == 0;
    v60 = [v12 createUserNotificationWithTitle:alertTitle2 body:alertBody2 lockScreenTitle:lockScreenTitle lockScreenBody:lockScreenBody defaultButtonTitle:defaultButtonTitle alternateButtonTitle:alternateButtonTitle makeNoise:v6];
    _objc_release(alternateButtonTitle);
    _objc_release(defaultButtonTitle);
    _objc_release(lockScreenBody);
    _objc_release(lockScreenTitle);
    _objc_release(alertBody2);
    _objc_release(alertTitle2);
  }

  if (v60)
  {
    objc_initWeak(&from, selfCopy);
    v10 = selfCopy;
    v11 = v60;
    messageId = [v61 messageId];
    v32 = _NSConcreteStackBlock;
    v33 = -1073741824;
    v34 = 0;
    v35 = sub_10011BE0C;
    v36 = &unk_100323C48;
    objc_copyWeak(v39, &from);
    v39[1] = v60;
    v39[2] = command;
    v37 = _objc_retain(location[0]);
    v38 = _objc_retain(v66);
    [(AKPushMessageNotificationPresenter *)v10 _waitForNotificationResponse:v11 withIdentifier:messageId responseHandler:&v32];
    _objc_release(messageId);
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
  objc_storeStrong(&longitude, 0);
  objc_storeStrong(&latitude, 0);
  objc_storeStrong(&v61, 0);
  objc_storeStrong(&v66, 0);
  objc_storeStrong(&v65, 0);
  objc_storeStrong(&v64, 0);
  objc_storeStrong(&v63, 0);
  objc_storeStrong(&v67, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleResult:(unint64_t)result forAccount:(id)account
{
  selfCopy = self;
  v6 = a2;
  resultCopy = result;
  location = 0;
  objc_storeStrong(&location, account);
  if (!resultCopy && ([(AKPushMessage *)selfCopy->_message command]== 100 || [(AKPushMessage *)selfCopy->_message command]== 700) && [(AKPushMessage *)selfCopy->_message piggybackingContext]!= 1)
  {
    [(AKPushMessageNotificationPresenter *)selfCopy _promptForChangePasswordForAccount:location];
  }

  objc_storeStrong(&location, 0);
}

- (void)presentLoginNotificationWithCode:(id)code piggy:(BOOL)piggy completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, code);
  piggyCopy = piggy;
  v42 = 0;
  objc_storeStrong(&v42, handler);
  secondaryTitle = [(AKPushMessage *)selfCopy->_message secondaryTitle];
  v39 = 0;
  v37 = 0;
  if (secondaryTitle)
  {
    v5 = _objc_retain(secondaryTitle);
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

  _objc_release(secondaryTitle);
  secondaryBody = [(AKPushMessage *)selfCopy->_message secondaryBody];
  v34 = 0;
  v32 = 0;
  if (secondaryBody)
  {
    v6 = _objc_retain(secondaryBody);
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

  _objc_release(secondaryBody);
  secondaryFooter = [(AKPushMessage *)selfCopy->_message secondaryFooter];
  if ((+[AKCDPFactory isEligibleToArmDeviceForPCSAuth]& 1) != 0)
  {
    secondaryTitleCDP = [(AKPushMessage *)selfCopy->_message secondaryTitleCDP];
    if (secondaryTitleCDP)
    {
      objc_storeStrong(&v41, secondaryTitleCDP);
    }

    else
    {
      objc_storeStrong(&v41, v41);
    }

    _objc_release(secondaryTitleCDP);
    secondaryBodyCDP = [(AKPushMessage *)selfCopy->_message secondaryBodyCDP];
    if (secondaryBodyCDP)
    {
      objc_storeStrong(&v36, secondaryBodyCDP);
    }

    else
    {
      objc_storeStrong(&v36, v36);
    }

    _objc_release(secondaryBodyCDP);
  }

  v28 = 0;
  v26 = 0;
  if (piggyCopy && (v29 = +[AKDevice currentDevice](AKDevice, "currentDevice"), v28 = 1, ([v29 isInternalBuild] & 1) != 0))
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

  v12 = selfCopy;
  v8 = location[0];
  v9 = v36;
  v10 = v30;
  v11 = secondaryFooter;
  v19 = _NSConcreteStackBlock;
  v20 = -1073741824;
  v21 = 0;
  v22 = sub_10011C634;
  v23 = &unk_100323C70;
  v25 = _objc_retain(v42);
  v24 = _objc_retain(selfCopy);
  [(AKPushMessageNotificationPresenter *)v12 _showCode:v8 body:v9 title:v10 footer:v11 completion:&v19];
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&secondaryFooter, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(location, 0);
}

- (void)_showCode:(id)code body:(id)body title:(id)title footer:(id)footer completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, code);
  v30 = 0;
  objc_storeStrong(&v30, body);
  v29 = 0;
  objc_storeStrong(&v29, title);
  v28 = 0;
  objc_storeStrong(&v28, footer);
  v27 = 0;
  objc_storeStrong(&v27, completion);
  v26 = [AKLoginCodeNotificationBuilder buildLoginCodeNotificationWithTitle:v29 body:v30 footer:v28 loginCode:location[0]];
  if (v26)
  {
    v8 = selfCopy;
    v7 = v26;
    messageId = [(AKPushMessage *)selfCopy->_message messageId];
    v16 = _NSConcreteStackBlock;
    v17 = -1073741824;
    v18 = 0;
    v19 = sub_10011C8E4;
    v20 = &unk_100323C98;
    v21[0] = _objc_retain(v27);
    v21[1] = v26;
    [(AKPushMessageNotificationPresenter *)v8 _waitForNotificationResponse:v7 withIdentifier:messageId responseHandler:&v16];
    _objc_release(messageId);
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

- (void)_waitForNotificationResponse:(__CFUserNotification *)response withIdentifier:(id)identifier responseHandler:(id)handler
{
  selfCopy = self;
  v28 = a2;
  responseCopy = response;
  location = 0;
  objc_storeStrong(&location, identifier);
  v25 = 0;
  objc_storeStrong(&v25, handler);
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
  v22[0] = _objc_retain(selfCopy);
  v22[1] = responseCopy;
  dispatch_sync(queue, &v17);
  _objc_release(queue);
  v6 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v6 postNotificationName:@"AKNotificationNamePresented" object:location];
  _objc_release(v6);
  v8 = selfCopy;
  v7 = responseCopy;
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_10011CCDC;
  v14 = &unk_100323CE8;
  v15 = _objc_retain(selfCopy);
  v16 = _objc_retain(v25);
  [(AKPushMessageNotificationPresenter *)v8 _receiveResponseFromNotification:v7 handler:&v10];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(v22, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&location, 0);
}

- (id)_loginAlertOptionsForAccount:(id)account latitude:(id)latitude longitude:(id)longitude message:(id)message resolvedBody:(id)body
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v37 = 0;
  objc_storeStrong(&v37, latitude);
  v36 = 0;
  objc_storeStrong(&v36, longitude);
  v35 = 0;
  objc_storeStrong(&v35, message);
  v34 = 0;
  objc_storeStrong(&v34, body);
  v33 = objc_alloc_init(AKAppleIDAuthenticationContext);
  username = [location[0] username];
  [v33 setUsername:?];
  _objc_release(username);
  [v33 setLatitude:v37];
  [v33 setLongitude:v36];
  alertTitle = [v35 alertTitle];
  v31 = 0;
  v29 = 0;
  if (alertTitle)
  {
    v18 = alertTitle;
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

  _objc_release(alertTitle);
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

  deviceClass = [v35 deviceClass];
  [v33 setDeviceClass:?];
  _objc_release(deviceClass);
  deviceColor = [v35 deviceColor];
  [v33 setDeviceColor:?];
  _objc_release(deviceColor);
  deviceEnclosureColor = [v35 deviceEnclosureColor];
  [v33 setDeviceEnclosureColor:?];
  _objc_release(deviceEnclosureColor);
  v13 = selfCopy;
  v11 = v33;
  isSilent = [v35 isSilent];
  defaultButtonTitle = [v35 defaultButtonTitle];
  alternateButtonTitle = [v35 alternateButtonTitle];
  v16 = [(AKPushMessageNotificationPresenter *)v13 _loginNotificationOptionsWithContext:v11 isSilent:isSilent defaultButtonTitle:defaultButtonTitle alternateButtonTitle:?];
  _objc_release(alternateButtonTitle);
  _objc_release(defaultButtonTitle);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(location, 0);

  return v16;
}

- (__CFUserNotification)_loginAlertForAccount:(id)account latitude:(id)latitude longitude:(id)longitude message:(id)message resolvedBody:(id)body
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v22 = 0;
  objc_storeStrong(&v22, latitude);
  v21 = 0;
  objc_storeStrong(&v21, longitude);
  v20 = 0;
  objc_storeStrong(&v20, message);
  v19 = 0;
  objc_storeStrong(&v19, body);
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
    v14 = [(AKPushMessageNotificationPresenter *)selfCopy _loginAlertOptionsForAccount:location[0] latitude:v22 longitude:v21 message:v20 resolvedBody:v19];
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

- (void)_locationNameWithLatitude:(id)latitude longitude:(id)longitude completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, latitude);
  v29 = 0;
  objc_storeStrong(&v29, longitude);
  v28 = 0;
  objc_storeStrong(&v28, completion);
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

- (id)_loginNotificationOptionsWithContext:(id)context isSilent:(BOOL)silent defaultButtonTitle:(id)title alternateButtonTitle:(id)buttonTitle
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  silentCopy = silent;
  v28 = 0;
  objc_storeStrong(&v28, title);
  v27 = 0;
  objc_storeStrong(&v27, buttonTitle);
  v26 = objc_alloc_init(NSMutableDictionary);
  [objc_opt_class() populateNotificationOptionsWithCommonKeys:v26 makeNoise:!silentCopy];
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
  _message = [location[0] _message];
  [v26 setObject:? forKeyedSubscript:?];
  _objc_release(_message);
  _interpolatedReason = [location[0] _interpolatedReason];
  [v26 setObject:? forKeyedSubscript:?];
  _objc_release(_interpolatedReason);
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

+ (id)createUserNotificationOptionsWithTitle:(id)title body:(id)body defaultButtonTitle:(id)buttonTitle alternateButtonTitle:(id)alternateButtonTitle makeNoise:(BOOL)noise
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  v16 = 0;
  objc_storeStrong(&v16, body);
  v15 = 0;
  objc_storeStrong(&v15, buttonTitle);
  v14 = 0;
  objc_storeStrong(&v14, alternateButtonTitle);
  LOBYTE(v8) = noise;
  v13 = [selfCopy createUserNotificationOptionsWithTitle:location[0] body:v16 lockScreenTitle:0 lockScreenBody:0 defaultButtonTitle:v15 alternateButtonTitle:v14 makeNoise:v8];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);

  return v13;
}

+ (id)createUserNotificationOptionsWithTitle:(id)title body:(id)body lockScreenTitle:(id)screenTitle lockScreenBody:(id)screenBody defaultButtonTitle:(id)buttonTitle alternateButtonTitle:(id)alternateButtonTitle makeNoise:(BOOL)noise
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  v25 = 0;
  objc_storeStrong(&v25, body);
  v24 = 0;
  objc_storeStrong(&v24, screenTitle);
  v23 = 0;
  objc_storeStrong(&v23, screenBody);
  v22 = 0;
  objc_storeStrong(&v22, buttonTitle);
  v21 = 0;
  objc_storeStrong(&v21, alternateButtonTitle);
  noiseCopy = noise;
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

  [selfCopy populateNotificationOptionsWithCommonKeys:v19 makeNoise:{noiseCopy, &v19}];
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

+ (__CFUserNotification)createUserNotificationWithTitle:(id)title body:(id)body defaultButtonTitle:(id)buttonTitle alternateButtonTitle:(id)alternateButtonTitle makeNoise:(BOOL)noise
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  v16 = 0;
  objc_storeStrong(&v16, body);
  v15 = 0;
  objc_storeStrong(&v15, buttonTitle);
  v14 = 0;
  objc_storeStrong(&v14, alternateButtonTitle);
  LOBYTE(v8) = noise;
  v13 = [selfCopy createUserNotificationWithTitle:location[0] body:v16 lockScreenTitle:0 lockScreenBody:0 defaultButtonTitle:v15 alternateButtonTitle:v14 makeNoise:v8];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  return v13;
}

+ (__CFUserNotification)createUserNotificationWithTitle:(id)title body:(id)body lockScreenTitle:(id)screenTitle lockScreenBody:(id)screenBody defaultButtonTitle:(id)buttonTitle alternateButtonTitle:(id)alternateButtonTitle makeNoise:(BOOL)noise
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  v34 = 0;
  objc_storeStrong(&v34, body);
  v33 = 0;
  objc_storeStrong(&v33, screenTitle);
  v32 = 0;
  objc_storeStrong(&v32, screenBody);
  v31 = 0;
  objc_storeStrong(&v31, buttonTitle);
  v30 = 0;
  objc_storeStrong(&v30, alternateButtonTitle);
  noiseCopy = noise;
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
    LOBYTE(v11) = noiseCopy;
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
  selfCopy = self;
  v8[1] = a2;
  queue = [objc_opt_class() _presenterQueue];
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_10011E994;
  v7 = &unk_10031F8B0;
  v8[0] = _objc_retain(selfCopy);
  dispatch_sync(queue, &v3);
  _objc_release(queue);
  objc_storeStrong(v8, 0);
}

+ (void)populateNotificationOptionsWithCommonKeys:(id)keys makeNoise:(BOOL)noise
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, keys);
  [location[0] setObject:? forKeyedSubscript:?];
  [location[0] setObject:&__kCFBooleanFalse forKeyedSubscript:SBUserNotificationDismissOnLock];
  [location[0] setObject:&__kCFBooleanTrue forKeyedSubscript:SBUserNotificationDontDismissOnUnlock];
  if (noise)
  {
    [location[0] setObject:&off_1003390E8 forKeyedSubscript:SBUserNotificationSystemSoundIDKey];
  }

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  resourceURL = [(NSBundle *)v5 resourceURL];
  [location[0] setObject:? forKeyedSubscript:?];
  _objc_release(resourceURL);
  _objc_release(v5);
  objc_storeStrong(location, 0);
}

- (void)_receiveResponseFromNotification:(__CFUserNotification *)notification handler:(id)handler
{
  selfCopy = self;
  v14 = a2;
  notificationCopy = notification;
  location = 0;
  objc_storeStrong(&location, handler);
  queue = dispatch_get_global_queue(25, 0);
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_10011EE9C;
  v9 = &unk_100323D38;
  v11[1] = notificationCopy;
  v11[0] = _objc_retain(location);
  v10 = _objc_retain(selfCopy);
  dispatch_async(queue, &v5);
  _objc_release(queue);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(v11, 0);
  objc_storeStrong(&location, 0);
}

- (unint64_t)_notificationResultFromButtonPressed:(unint64_t)pressed
{
  if (!pressed)
  {
    return 1;
  }

  if (pressed == 3)
  {
    return 2;
  }

  return 0;
}

- (void)_promptForChangePasswordForAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
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
    v6 = selfCopy;
    v5 = v30;
    v19 = _NSConcreteStackBlock;
    v20 = -1073741824;
    v21 = 0;
    v22 = sub_10011F584;
    v23 = &unk_100323D60;
    v25[1] = v30;
    v24 = _objc_retain(selfCopy);
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

- (void)_startChangePasswordFlowForAccount:(id)account
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
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
    identifier = [v12 identifier];
    v3 = [NSString stringWithFormat:@"prefs:root=ACCOUNTS_AND_PASSWORDS&path=%@&aaaction=changePassword", identifier];
    v4 = v11;
    v11 = v3;
    _objc_release(v4);
    _objc_release(identifier);
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

- (BOOL)_isPasswordPromptNecessaryForCommand:(unint64_t)command
{
  v5 = 0;
  v4 = 0;
  if (command == 1600)
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

- (void)_promptForAuthenticationPasswordForAccount:(id)account completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v16 = 0;
  objc_storeStrong(&v16, completion);
  v15 = objc_alloc_init(AKAppleIDAuthenticationContext);
  v5 = v15;
  username = [location[0] username];
  [v5 setUsername:?];
  _objc_release(username);
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