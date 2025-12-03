@interface AKPiggybackController
+ (id)sharedController;
+ (void)tearDown;
- (BOOL)_hasPrimaryiCloudAccountForPayload:(id)payload;
- (BOOL)_processPendingCompletionsForPayload:(id)payload;
- (BOOL)shouldSuppressPushMessage:(id)message;
- (id)_acceptingControllerForTransactionId:(id)id;
- (id)performCircleRequestWithContext:(id)context completion:(id)completion;
- (id)serviceControllerForContext:(id)context;
- (void)_displaySwitchWiFiAlert;
- (void)_processPiggybackPayload:(id)payload;
- (void)_processUIIfNeededForError:(id)error circleStep:(unint64_t)step;
- (void)_removeAcceptingControllerForTransaction:(id)transaction;
- (void)processPushMessage:(id)message;
- (void)startRequestSessionWithController:(id)controller completion:(id)completion;
@end

@implementation AKPiggybackController

+ (id)sharedController
{
  selfCopy = self;
  v10 = a2;
  obj = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10018A638;
  v8 = &unk_100322AA0;
  selfCopy2 = self;
  v13 = &unk_100374958;
  location = 0;
  objc_storeStrong(&location, &obj);
  if (*v13 != -1)
  {
    dispatch_once(v13, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_100374950;

  return v2;
}

+ (void)tearDown
{
  v3[2] = self;
  v3[1] = a2;
  v3[0] = +[AKPiggybackController sharedController];
  [*(v3[0] + 1) removeAllObjects];
  obj = _objc_retain(*(v3[0] + 2));
  objc_sync_enter(obj);
  [*(v3[0] + 5) cancelAllOperations];
  [*(v3[0] + 5) waitUntilAllOperationsAreFinished];
  [*(v3[0] + 2) removeAllObjects];
  objc_sync_exit(obj);
  _objc_release(obj);
  objc_storeWeak(v3[0] + 3, 0);
  objc_storeStrong(v3, 0);
}

- (BOOL)shouldSuppressPushMessage:(id)message
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message);
  v22 = 0;
  if ([location[0] command] == 700)
  {
    v21 = [AKCircleRequestPayload payloadWithMessage:location[0]];
    v8 = objc_alloc_init(AKAnisetteProvisioningController);
    v20 = [v8 anisetteDataWithError:0];
    _objc_release(v8);
    machineID = [v20 machineID];
    v18 = 0;
    v16 = 0;
    v10 = 0;
    if (machineID)
    {
      machineID2 = [v20 machineID];
      v18 = 1;
      serverMachineId = [location[0] serverMachineId];
      v16 = 1;
      v10 = [machineID2 isEqualToString:?] == 0;
    }

    selfCopy->_requiresHSA2Repair = v10;
    if (v16)
    {
      _objc_release(serverMachineId);
    }

    if (v18)
    {
      _objc_release(machineID2);
    }

    _objc_release(machineID);
    oslog = _AKLogSystem();
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      if (selfCopy->_requiresHSA2Repair)
      {
        v3 = @"YES";
      }

      else
      {
        v3 = @"NO";
      }

      sub_1000194D4(v25, v3);
      _os_log_impl(&_mh_execute_header, oslog, type, "HSA2 repair required: %@", v25, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    if (selfCopy->_requiresHSA2Repair || [v21 clientErrorCode])
    {
      v22 = 1;
    }

    else if ([v21 isAcceptingPayload])
    {
      v22 = ![(AKPiggybackController *)selfCopy _hasPrimaryiCloudAccountForPayload:v21];
      if (v22)
      {
        v13 = _AKLogSystem();
        v12 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v6 = v13;
          v7 = v12;
          sub_10001CEEC(v11);
          _os_log_impl(&_mh_execute_header, v6, v7, "Suppressing piggybacking for non-primary iCloud accounts", v11, 2u);
        }

        objc_storeStrong(&v13, 0);
      }
    }

    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v21, 0);
  }

  v5 = v22;
  objc_storeStrong(location, 0);
  return v5;
}

- (void)processPushMessage:(id)message
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message);
  if ([location[0] command] == 700)
  {
    v20 = [AKCircleRequestPayload payloadWithMessage:location[0]];
    v19 = 0uLL;
    v4 = _AKSignpostLogSystem();
    *&v18 = _AKSignpostCreate();
    *(&v18 + 1) = v3;
    _objc_release(v4);
    v17 = _AKSignpostLogSystem();
    v16 = OS_SIGNPOST_INTERVAL_BEGIN;
    v15 = v18;
    if (v18 && v15 != -1 && os_signpost_enabled(v17))
    {
      sub_100034290(v27, [v20 circleStep]);
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, v16, v15, "PiggybackingProcessPushPayload", " CircleStep=%{public,signpost.telemetry:number1,name=CircleStep}d  enableTelemetry=YES ", v27, 8u);
    }

    objc_storeStrong(&v17, 0);
    v14 = _AKSignpostLogSystem();
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000342CC(v26, v18, [v20 circleStep]);
      _os_log_impl(&_mh_execute_header, v14, v13, "BEGIN [%lld]: PiggybackingProcessPushPayload  CircleStep=%{public,signpost.telemetry:number1,name=CircleStep}d  enableTelemetry=YES ", v26, 0x12u);
    }

    objc_storeStrong(&v14, 0);
    v19 = v18;
    v12 = 0;
    if (([v20 isRequestingPayload] & 1) != 0 || -[AKPiggybackController _hasPrimaryiCloudAccountForPayload:](selfCopy, "_hasPrimaryiCloudAccountForPayload:", v20) && !selfCopy->_requiresHSA2Repair)
    {
      [(AKPiggybackController *)selfCopy _processPiggybackPayload:v20];
      v12 = 1;
    }

    else
    {
      oslog = _AKLogSystem();
      v10 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000194D4(v25, v20);
        _os_log_impl(&_mh_execute_header, oslog, v10, "Suppressed payload: %@", v25, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v12 = 0;
    }

    v9 = _AKSignpostGetNanoseconds() / 1000000000.0;
    v8 = _AKSignpostLogSystem();
    v7 = OS_SIGNPOST_INTERVAL_END;
    v6 = v19;
    if (v19 && v6 != -1 && os_signpost_enabled(v8))
    {
      sub_100034290(v24, v12 & 1);
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, v7, v6, "PiggybackingProcessPushPayload", " DidProcess=%{public,signpost.telemetry:number2,name=DidProcess}d ", v24, 8u);
    }

    objc_storeStrong(&v8, 0);
    v5 = _AKSignpostLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000343D0(v23, v19, *&v9, v12 & 1);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:PiggybackingProcessPushPayload  DidProcess=%{public,signpost.telemetry:number2,name=DidProcess}d ", v23, 0x1Cu);
    }

    objc_storeStrong(&v5, 0);
    objc_storeStrong(&v20, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)_processPiggybackPayload:(id)payload
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, payload);
  if ([location[0] clientErrorCode] == -9000)
  {
    v54 = _AKLogSystem();
    v53 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      log = v54;
      type = v53;
      sub_10001CEEC(v52);
      _os_log_impl(&_mh_execute_header, log, type, "Suppressing the circle error payload", v52, 2u);
    }

    objc_storeStrong(&v54, 0);
    v51 = 1;
  }

  else
  {
    v50 = _AKLogSystem();
    v49 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v62, location[0]);
      _os_log_impl(&_mh_execute_header, v50, v49, "We received a reply: %@", v62, 0xCu);
    }

    objc_storeStrong(&v50, 0);
    if ([(AKPiggybackController *)selfCopy _processPendingCompletionsForPayload:location[0]])
    {
      v48 = _AKLogSystem();
      v47 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000194D4(v61, location[0]);
        _os_log_impl(&_mh_execute_header, v48, v47, "Processed a pending reply with payload: %@", v61, 0xCu);
      }

      objc_storeStrong(&v48, 0);
    }

    else if ([location[0] isAcceptingPayload])
    {
      v46 = _AKLogSystem();
      v45 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000194D4(v60, location[0]);
        _os_log_impl(&_mh_execute_header, v46, v45, "Starting an accepting session with payload: %@", v60, 0xCu);
      }

      objc_storeStrong(&v46, 0);
      v19 = selfCopy;
      transactionId = [location[0] transactionId];
      v44 = [(AKPiggybackController *)v19 _acceptingControllerForTransactionId:?];
      _objc_release(transactionId);
      if (!v44)
      {
        v43 = _AKLogSystem();
        v42 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v17 = v43;
          v18 = v42;
          sub_10001CEEC(v41);
          _os_log_error_impl(&_mh_execute_header, v17, v18, "Failed to get a controller", v41, 2u);
        }

        objc_storeStrong(&v43, 0);
      }

      v40 = 0uLL;
      v16 = _AKSignpostLogSystem();
      *&v39 = _AKSignpostCreate();
      *(&v39 + 1) = v3;
      _objc_release(v16);
      v38 = _AKSignpostLogSystem();
      v37 = 1;
      v36 = v39;
      if (v39 && v36 != -1 && os_signpost_enabled(v38))
      {
        v12 = v38;
        v13 = v37;
        spid = v36;
        v4 = objc_opt_class();
        v15 = NSStringFromClass(v4);
        v35 = _objc_retain(v15);
        sub_1000333DC(v59, v35);
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, v13, spid, "PiggybackingProcessPiggybackPayloadWithController", " Class=%{public,signpost.telemetry:string1,name=Class}@  enableTelemetry=YES ", v59, 0xCu);
        _objc_release(v15);
        objc_storeStrong(&v35, 0);
      }

      objc_storeStrong(&v38, 0);
      oslog = _AKSignpostLogSystem();
      v33 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v9 = oslog;
        v10 = v33;
        v8 = v39;
        v5 = objc_opt_class();
        v11 = NSStringFromClass(v5);
        v32 = _objc_retain(v11);
        sub_10003341C(v58, v8, v32);
        _os_log_impl(&_mh_execute_header, v9, v10, "BEGIN [%lld]: PiggybackingProcessPiggybackPayloadWithController  Class=%{public,signpost.telemetry:string1,name=Class}@  enableTelemetry=YES ", v58, 0x16u);
        _objc_release(v11);
        objc_storeStrong(&v32, 0);
      }

      objc_storeStrong(&oslog, 0);
      v40 = v39;
      v7 = v44;
      v6 = location[0];
      v24 = _NSConcreteStackBlock;
      v25 = -1073741824;
      v26 = 0;
      v27 = sub_10018B914;
      v28 = &unk_1003255A0;
      v31 = v39;
      v29 = _objc_retain(selfCopy);
      v30 = _objc_retain(location[0]);
      [v7 processPushPayload:v6 completion:&v24];
      objc_storeStrong(&v30, 0);
      objc_storeStrong(&v29, 0);
      objc_storeStrong(&v44, 0);
    }

    else
    {
      v23 = _AKLogSystem();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v57, location[0]);
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Orphaned payload: %@", v57, 0xCu);
      }

      objc_storeStrong(&v23, 0);
    }

    v51 = 0;
  }

  objc_storeStrong(location, 0);
}

- (void)_displaySwitchWiFiAlert
{
  location[2] = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v21 = 2;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    v9 = location[0];
    v10 = v21;
    sub_10001CEEC(v20);
    _os_log_debug_impl(&_mh_execute_header, v9, v10, "Presenting IP mismatch alert asking user to switch to same Wi-Fi on Windows", v20, 2u);
  }

  objc_storeStrong(location, 0);
  v18 = MGGetBoolAnswer();
  if (v18)
  {
    v2 = @"WLAN";
  }

  else
  {
    v2 = @"WIFI";
  }

  v19 = _objc_retain(v2);
  v17 = [NSString stringWithFormat:@"%@_PBV2_WINDOWS_IP_MISMATCH_TITLE", v19];
  v3 = [NSBundle bundleWithIdentifier:?];
  v16 = [NSBundle localizedStringForKey:v3 value:"localizedStringForKey:value:table:" table:v17];
  _objc_release(v3);
  v4 = [NSBundle bundleWithIdentifier:@"com.apple.AuthKit"];
  v15 = [(NSBundle *)v4 localizedStringForKey:@"PBV2_WINDOWS_IP_MISMATCH_MSG" value:&stru_100330538 table:@"Localizable"];
  _objc_release(v4);
  v14 = [NSString stringWithFormat:@"%@_PBV2_WINDOWS_IP_MISMATCH_BUTTON_SETTINGS", v19];
  v5 = [NSBundle bundleWithIdentifier:@"com.apple.AuthKit"];
  v13 = [(NSBundle *)v5 localizedStringForKey:v14 value:&stru_100330538 table:@"Localizable"];
  _objc_release(v5);
  v6 = [NSBundle bundleWithIdentifier:@"com.apple.AuthKit"];
  v12 = [(NSBundle *)v6 localizedStringForKey:@"PBV2_WINDOWS_IP_MISMATCH_BUTTON_CANCEL" value:&stru_100330538 table:@"Localizable"];
  _objc_release(v6);
  v7 = +[AKAlertHandler sharedInstance];
  v11 = [(AKAlertHandler *)v7 notificationDictionaryWithTitle:v16 message:v15 defaultButton:v13 alternateButton:v12];
  _objc_release(v7);
  v8 = +[AKAlertHandler sharedInstance];
  [(AKAlertHandler *)v8 showAlert:v11 primaryAction:&stru_1003255C0 altAction:&stru_1003255E0];
  _objc_release(v8);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v19, 0);
}

- (BOOL)_hasPrimaryiCloudAccountForPayload:(id)payload
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, payload);
  v5 = +[AKAccountManager sharedInstance];
  altDSID = [location[0] altDSID];
  v6 = [(AKAccountManager *)v5 hasPrimaryiCloudAccountForAltDSID:?];
  _objc_release(altDSID);
  _objc_release(v5);
  objc_storeStrong(location, 0);
  return v6;
}

- (BOOL)_processPendingCompletionsForPayload:(id)payload
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, payload);
  transactionId = [location[0] transactionId];
  _objc_release(transactionId);
  if (transactionId)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x20000000;
    v16 = 32;
    v17 = 0;
    queue = selfCopy->_piggybackingRequestQueue;
    v6 = _NSConcreteStackBlock;
    v7 = -1073741824;
    v8 = 0;
    v9 = sub_10018C678;
    v10 = &unk_100325608;
    v11 = _objc_retain(selfCopy);
    v12[0] = _objc_retain(location[0]);
    v12[1] = &v13;
    dispatch_sync(queue, &v6);
    v21 = v14[3] & 1;
    v18 = 1;
    objc_storeStrong(v12, 0);
    objc_storeStrong(&v11, 0);
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v21 = 0;
    v18 = 1;
  }

  objc_storeStrong(location, 0);
  return v21 & 1;
}

- (id)_acceptingControllerForTransactionId:(id)id
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, id);
  v13 = 0;
  v14 = &v13;
  v15 = 838860800;
  v16 = 48;
  v17 = sub_100003F04;
  v18 = sub_1000114A0;
  v19 = 0;
  if (location[0])
  {
    queue = selfCopy->_piggybackingRequestQueue;
    v6 = _NSConcreteStackBlock;
    v7 = -1073741824;
    v8 = 0;
    v9 = sub_10018CA0C;
    v10 = &unk_100323940;
    v12[1] = &v13;
    v11 = _objc_retain(selfCopy);
    v12[0] = _objc_retain(location[0]);
    dispatch_sync(queue, &v6);
    objc_storeStrong(v12, 0);
    objc_storeStrong(&v11, 0);
  }

  v4 = _objc_retain(v14[5]);
  _Block_object_dispose(&v13, 8);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (void)_removeAcceptingControllerForTransaction:(id)transaction
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, transaction);
  if (location[0])
  {
    queue = selfCopy->_piggybackingRequestQueue;
    v4 = _NSConcreteStackBlock;
    v5 = -1073741824;
    v6 = 0;
    v7 = sub_10018CC08;
    v8 = &unk_10031F078;
    v9 = _objc_retain(selfCopy);
    v10 = _objc_retain(location[0]);
    dispatch_sync(queue, &v4);
    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)startRequestSessionWithController:(id)controller completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v13 = 0;
  objc_storeStrong(&v13, completion);
  objc_storeWeak(&selfCopy->_requestingController, location[0]);
  v5 = location[0];
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_10018CD90;
  v10 = &unk_100320A58;
  v11 = _objc_retain(selfCopy);
  v12 = _objc_retain(v13);
  [v5 initiatePiggybackingWithCompletion:?];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (id)serviceControllerForContext:(id)context
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v3 = [AKPiggybackingRequestProvider alloc];
  v8 = [(AKPiggybackingRequestProvider *)v3 initWithCircleContext:location[0]];
  v4 = [AKServiceControllerImpl alloc];
  v7 = [(AKServiceControllerImpl *)v4 initWithRequestProvider:v8];
  v6 = _objc_retain(v7);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (id)performCircleRequestWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v128 = 0;
  objc_storeStrong(&v128, completion);
  v126 = _os_activity_create(&_mh_execute_header, "authkit/circle-request", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v127 = v126;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v126, &state);
  v124 = _AKLogSystem();
  v123 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
  {
    payload = [location[0] payload];
    sub_1000194D4(v137, payload);
    _os_log_impl(&_mh_execute_header, v124, v123, "Starting circle request with context: %@", v137, 0xCu);
    _objc_release(payload);
  }

  objc_storeStrong(&v124, 0);
  v41 = +[AKAppleIDPushHelperService sharedService];
  [v41 setEnableCriticalReliability:1];
  _objc_release(v41);
  v116 = _NSConcreteStackBlock;
  v117 = -1073741824;
  v118 = 0;
  v119 = sub_10018E58C;
  v120 = &unk_1003223E8;
  v121 = _objc_retain(v128);
  v122 = objc_retainBlock(&v116);
  payload2 = [location[0] payload];
  transactionId = [payload2 transactionId];
  _objc_release(transactionId);
  _objc_release(payload2);
  if (transactionId)
  {
    pushToken = [location[0] pushToken];
    _objc_release(pushToken);
    if (pushToken)
    {
      goto LABEL_12;
    }

    oslog = _AKLogSystem();
    v113 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v34 = oslog;
      v35 = v113;
      sub_10001CEEC(v112);
      _os_log_impl(&_mh_execute_header, v34, v35, "Populating push token", v112, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v33 = +[AKAppleIDPushHelperService sharedService];
    publicAPSTokenString = [v33 publicAPSTokenString];
    [location[0] setPushToken:?];
    _objc_release(publicAPSTokenString);
    _objc_release(v33);
    pushToken2 = [location[0] pushToken];
    _objc_release(pushToken2);
    if (pushToken2)
    {
LABEL_12:
      authContext = [location[0] authContext];
      piggybackingForTrustedDevice = [authContext piggybackingForTrustedDevice];
      _objc_release(authContext);
      if (piggybackingForTrustedDevice == 1)
      {
        payload3 = [location[0] payload];
        [payload3 setPiggybackingContext:1];
        _objc_release(payload3);
      }

      v108 = [(AKPiggybackController *)selfCopy serviceControllerForContext:location[0]];
      if ([location[0] waitForReply])
      {
        [location[0] waitForReplyTimeout];
        if (v4 <= 0.0)
        {
          [(AKPiggybackController *)selfCopy _processingTimeOut];
        }

        else
        {
          [location[0] waitForReplyTimeout];
        }

        v107 = *&v5;
        v106 = [NSDate dateWithTimeIntervalSinceNow:v5];
        v105 = objc_alloc_init(NSCondition);
        v104 = objc_opt_new();
        [v104 setCondition:v105];
        queue = selfCopy->_piggybackingRequestQueue;
        v96 = _NSConcreteStackBlock;
        v97 = -1073741824;
        v98 = 0;
        v99 = sub_10018E7A8;
        v100 = &unk_10031F050;
        v101 = _objc_retain(selfCopy);
        v102 = _objc_retain(location[0]);
        v103 = _objc_retain(v104);
        dispatch_sync(queue, &v96);
        v95 = _AKLogSystem();
        v94 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
        {
          sub_100036FE8(v136, v107);
          _os_log_impl(&_mh_execute_header, v95, v94, "Waiting for reply with timeout: %f", v136, 0xCu);
        }

        objc_storeStrong(&v95, 0);
        v88[0] = 0;
        v88[1] = v88;
        v89 = 838860800;
        v90 = 48;
        v91 = sub_100003F04;
        v92 = sub_1000114A0;
        v93 = 0;
        val = objc_opt_new();
        objc_initWeak(&from, val);
        payload4 = [location[0] payload];
        v21 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [payload4 circleStep]);
        stringValue = [(NSNumber *)v21 stringValue];
        _objc_release(v21);
        _objc_release(payload4);
        v84 = 0uLL;
        v20 = _AKSignpostLogSystem();
        *&v83 = _AKSignpostCreate();
        *(&v83 + 1) = v6;
        _objc_release(v20);
        v82 = _AKSignpostLogSystem();
        v81 = OS_SIGNPOST_INTERVAL_BEGIN;
        v80 = v83;
        if (v83 && v80 != -1 && os_signpost_enabled(v82))
        {
          payload5 = [location[0] payload];
          sub_1000333DC(v135, payload5);
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v82, v81, v80, "PiggyCircleRequest", " Payload=%{public,signpost.telemetry:string1,name=Payload}@  enableTelemetry=YES ", v135, 0xCu);
          _objc_release(payload5);
        }

        objc_storeStrong(&v82, 0);
        v79 = _AKSignpostLogSystem();
        v78 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
        {
          v18 = v83;
          payload6 = [location[0] payload];
          sub_10003341C(v134, v18, payload6);
          _os_log_impl(&_mh_execute_header, v79, v78, "BEGIN [%lld]: PiggyCircleRequest  Payload=%{public,signpost.telemetry:string1,name=Payload}@  enableTelemetry=YES ", v134, 0x16u);
          _objc_release(payload6);
        }

        objc_storeStrong(&v79, 0);
        v84 = v83;
        v16 = +[AKAccountManager sharedInstance];
        payload7 = [location[0] payload];
        altDSID = [payload7 altDSID];
        v77 = [AKAccountManager authKitAccountWithAltDSID:v16 error:"authKitAccountWithAltDSID:error:"];
        _objc_release(altDSID);
        _objc_release(payload7);
        _objc_release(v16);
        authContext2 = [location[0] authContext];
        [AKAnalyticsSender sendAnalyticsEvent:"sendAnalyticsEvent:context:account:error:" context:@"com.apple.authkit.piggybackingCircleRequestStart" account:? error:?];
        _objc_release(authContext2);
        v12 = val;
        v62 = _NSConcreteStackBlock;
        v63 = -1073741824;
        v64 = 0;
        v65 = sub_10018E844;
        v66 = &unk_100325650;
        v67 = _objc_retain(location[0]);
        objc_copyWeak(&v75, &from);
        v68 = _objc_retain(v105);
        v74[1] = v88;
        v69 = _objc_retain(v104);
        v70 = _objc_retain(v106);
        v71 = _objc_retain(selfCopy);
        v76 = v84;
        v72 = _objc_retain(stringValue);
        v73 = _objc_retain(v77);
        v74[0] = _objc_retain(v122);
        [v12 addExecutionBlock:&v62];
        [(NSOperationQueue *)selfCopy->_circleRequestProcessingQueue addOperation:val];
        v61 = 0uLL;
        v11 = _AKSignpostLogSystem();
        *&v60 = _AKSignpostCreate();
        *(&v60 + 1) = v7;
        _objc_release(v11);
        v59 = _AKSignpostLogSystem();
        v58 = OS_SIGNPOST_INTERVAL_BEGIN;
        v57 = v60;
        if (v60 && v57 != -1 && os_signpost_enabled(v59))
        {
          sub_1000333DC(v133, stringValue);
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v59, v58, v57, "PiggyExecuteRequest", " CircleStep=%{public,signpost.telemetry:string1,name=CircleStep}@  enableTelemetry=YES ", v133, 0xCu);
        }

        objc_storeStrong(&v59, 0);
        v56 = _AKSignpostLogSystem();
        v55 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          sub_10003341C(v132, v60, stringValue);
          _os_log_impl(&_mh_execute_header, v56, v55, "BEGIN [%lld]: PiggyExecuteRequest  CircleStep=%{public,signpost.telemetry:string1,name=CircleStep}@  enableTelemetry=YES ", v132, 0x16u);
        }

        objc_storeStrong(&v56, 0);
        v61 = v60;
        v10 = v108;
        v44 = _NSConcreteStackBlock;
        v45 = -1073741824;
        v46 = 0;
        v47 = sub_10018FEEC;
        v48 = &unk_100325678;
        v54 = v60;
        v49 = _objc_retain(stringValue);
        v50 = _objc_retain(location[0]);
        v53[1] = v88;
        v51 = _objc_retain(selfCopy);
        v52 = _objc_retain(v105);
        v53[0] = _objc_retain(v122);
        [v10 executeRequestWithCompletion:&v44];
        v131 = _objc_retain(val);
        v115 = 1;
        objc_storeStrong(v53, 0);
        objc_storeStrong(&v52, 0);
        objc_storeStrong(&v51, 0);
        objc_storeStrong(&v50, 0);
        objc_storeStrong(&v49, 0);
        objc_storeStrong(v74, 0);
        objc_storeStrong(&v73, 0);
        objc_storeStrong(&v72, 0);
        objc_storeStrong(&v71, 0);
        objc_storeStrong(&v70, 0);
        objc_storeStrong(&v69, 0);
        objc_storeStrong(&v68, 0);
        objc_destroyWeak(&v75);
        objc_storeStrong(&v67, 0);
        objc_storeStrong(&v77, 0);
        objc_storeStrong(&stringValue, 0);
        objc_destroyWeak(&from);
        objc_storeStrong(&val, 0);
        _Block_object_dispose(v88, 8);
        objc_storeStrong(&v93, 0);
        objc_storeStrong(&v103, 0);
        objc_storeStrong(&v102, 0);
        objc_storeStrong(&v101, 0);
        objc_storeStrong(&v104, 0);
        objc_storeStrong(&v105, 0);
        objc_storeStrong(&v106, 0);
      }

      else
      {
        [v108 executeRequestWithCompletion:&stru_100325628];
        (*(v122 + 2))(v122, 0);
        v131 = 0;
        v115 = 1;
      }

      objc_storeStrong(&v108, 0);
    }

    else
    {
      v111 = _AKLogSystem();
      v110 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
      {
        v29 = v111;
        v30 = v110;
        sub_10001CEEC(v109);
        _os_log_error_impl(&_mh_execute_header, v29, v30, "Failed to populate push token", v109, 2u);
      }

      objc_storeStrong(&v111, 0);
      v28 = v122;
      v27 = [NSError ak_errorWithCode:-7056];
      v28[2](v28, 0);
      _objc_release(v27);
      v131 = 0;
      v115 = 1;
    }
  }

  else
  {
    v38 = v122;
    v37 = [NSError ak_errorWithCode:-7056];
    v38[2](v38, 0);
    _objc_release(v37);
    v131 = 0;
    v115 = 1;
  }

  objc_storeStrong(&v122, 0);
  objc_storeStrong(&v121, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v127, 0);
  objc_storeStrong(&v128, 0);
  objc_storeStrong(location, 0);
  v8 = v131;

  return v8;
}

- (void)_processUIIfNeededForError:(id)error circleStep:(unint64_t)step
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v10[1] = step;
  if (step == 1)
  {
    v10[0] = _AKLogSystem();
    if (os_log_type_enabled(v10[0], OS_LOG_TYPE_DEBUG))
    {
      sub_1000194D4(v13, location[0]);
      _os_log_debug_impl(&_mh_execute_header, v10[0], OS_LOG_TYPE_DEBUG, "Received error response for circle (step 1) request: %@", v13, 0xCu);
    }

    objc_storeStrong(v10, 0);
    v4 = objc_opt_class();
    userInfo = [location[0] userInfo];
    v6 = [userInfo objectForKeyedSubscript:AKCircleClientErrorCode];
    v5 = sub_1001906F0(v4, v6);
    integerValue = [v5 integerValue];
    _objc_release(v5);
    _objc_release(v6);
    _objc_release(userInfo);
    if (integerValue == -27955)
    {
      [(AKPiggybackController *)selfCopy _displaySwitchWiFiAlert];
    }
  }

  objc_storeStrong(location, 0);
}

@end