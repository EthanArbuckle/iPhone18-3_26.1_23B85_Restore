@interface AKPiggybackAcceptingController
+ (BOOL)isInCircle;
- (AKPiggybackAcceptingController)init;
- (id)_acceptSessionForPayload:(id)payload error:(id *)error;
- (id)_authKitAccountForPayload:(id)payload;
- (id)_generateSecret;
- (id)accountCode;
- (id)replyContextWithPayload:(id)payload;
- (id)secret;
- (int)verificationFailed:(id *)failed;
- (void)_checkForProximityIfNeededWithCircleStep:(unint64_t)step completion:(id)completion;
- (void)_checkForProximityWithCompletion:(id)completion;
- (void)_finishProcessingPushPayload:(id)payload withReplyContext:(id)context completion:(id)completion;
- (void)_grabLockAssertion;
- (void)_processProximityDetection:(BOOL)detection withReplyContext:(id)context forPushPayload:(id)payload;
- (void)_releaseAssertion;
- (void)_startProximityControllerIfNeededWithPushPayload:(id)payload;
- (void)_startProximityControllerWithPresenceSID:(id)d;
- (void)processPushPayload:(id)payload completion:(id)completion;
@end

@implementation AKPiggybackAcceptingController

- (AKPiggybackAcceptingController)init
{
  v10 = a2;
  v11 = 0;
  v9.receiver = self;
  v9.super_class = AKPiggybackAcceptingController;
  v8 = [(AKPiggybackAcceptingController *)&v9 init];
  v11 = v8;
  objc_storeStrong(&v11, v8);
  if (v8)
  {
    v2 = objc_alloc_init(NSLock);
    assertionLock = v11->_assertionLock;
    v11->_assertionLock = v2;
    _objc_release(assertionLock);
    v4 = +[AKConfiguration sharedConfiguration];
    configuration = v11->_configuration;
    v11->_configuration = v4;
    _objc_release(configuration);
  }

  v7 = _objc_retain(v11);
  objc_storeStrong(&v11, 0);
  return v7;
}

- (void)processPushPayload:(id)payload completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, payload);
  v65 = 0;
  objc_storeStrong(&v65, completion);
  objc_storeStrong(&selfCopy->_lastPayload, location[0]);
  v21 = +[AKAccountManager sharedInstance];
  altDSID = [location[0] altDSID];
  v64 = [AKAccountManager authKitAccountWithAltDSID:v21 error:"authKitAccountWithAltDSID:error:"];
  _objc_release(altDSID);
  _objc_release(v21);
  v56 = _NSConcreteStackBlock;
  v57 = -1073741824;
  v58 = 0;
  v59 = sub_100033324;
  v60 = &unk_10031F838;
  v61 = _objc_retain(v64);
  v62 = _objc_retain(v65);
  v63 = objc_retainBlock(&v56);
  [AKAnalyticsSender sendAnalyticsEvent:@"com.apple.authkit.piggybackingAcceptingStart" context:0 account:v64 error:?];
  if ([location[0] clientErrorCode])
  {
    if ([location[0] clientErrorCode] == -9004)
    {
      v17 = v63;
      v18 = [NSError ak_errorWithCode:-7003];
      v17[2](v17, 0);
      _objc_release(v18);
    }

    else
    {
      v15 = v63;
      v16 = [NSError ak_errorWithCode:-7001];
      v15[2](v15, 0);
      _objc_release(v16);
    }

    v55 = 1;
  }

  else
  {
    circleStep = [location[0] circleStep];
    v14 = [NSNumber numberWithUnsignedInteger:circleStep];
    stringValue = [(NSNumber *)v14 stringValue];
    _objc_release(v14);
    if (circleStep > 1)
    {
      goto LABEL_31;
    }

    selfCopy->_verificationFailed = 0;
    selfCopy->_verificationAttempts = 0;
    objc_storeStrong(&selfCopy->_initiatingPayload, location[0]);
    if (selfCopy->_acceptSession)
    {
      oslog = _AKLogSystem();
      type = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        log = oslog;
        v13 = type;
        sub_10001CEEC(v50);
        _os_log_impl(&_mh_execute_header, log, v13, "Will tear down an existing piggybacking session", v50, 2u);
      }

      objc_storeStrong(&oslog, 0);
    }

    v49 = 0;
    v48 = _AKLogSystem();
    v47 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v48;
      v11 = v47;
      sub_10001CEEC(v46);
      _os_log_impl(&_mh_execute_header, v10, v11, "Starting a piggybacking session", v46, 2u);
    }

    objc_storeStrong(&v48, 0);
    v45 = 0uLL;
    v9 = _AKSignpostLogSystem();
    *&v44 = _AKSignpostCreate();
    *(&v44 + 1) = v4;
    _objc_release(v9);
    v43 = _AKSignpostLogSystem();
    v42 = OS_SIGNPOST_INTERVAL_BEGIN;
    v41 = v44;
    if (v44 && v41 != -1 && os_signpost_enabled(v43))
    {
      sub_1000333DC(v72, stringValue);
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v43, v42, v41, "PiggyAcceptSessionForAcceptController", " CircleStep=%{public,signpost.telemetry:string1,name=CircleStep}@  enableTelemetry=YES ", v72, 0xCu);
    }

    objc_storeStrong(&v43, 0);
    v40 = _AKSignpostLogSystem();
    v39 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      sub_10003341C(v71, v44, stringValue);
      _os_log_impl(&_mh_execute_header, v40, v39, "BEGIN [%lld]: PiggyAcceptSessionForAcceptController  CircleStep=%{public,signpost.telemetry:string1,name=CircleStep}@  enableTelemetry=YES ", v71, 0x16u);
    }

    objc_storeStrong(&v40, 0);
    v45 = v44;
    v38 = v49;
    v8 = [(AKPiggybackAcceptingController *)selfCopy _acceptSessionForPayload:location[0] error:&v38];
    objc_storeStrong(&v49, v38);
    acceptSession = selfCopy->_acceptSession;
    selfCopy->_acceptSession = v8;
    _objc_release(acceptSession);
    v37 = _AKSignpostGetNanoseconds() / 1000000000.0;
    v36 = _AKSignpostLogSystem();
    v35 = OS_SIGNPOST_INTERVAL_END;
    v34 = v45;
    if (v45 && v34 != -1 && os_signpost_enabled(v36))
    {
      sub_10003346C(v70, stringValue, [v49 code]);
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v36, v35, v34, "PiggyAcceptSessionForAcceptController", " CircleStep=%{public,signpost.telemetry:string2,name=CircleStep}@  Error=%{public,signpost.telemetry:number2,name=Error}d ", v70, 0x12u);
    }

    objc_storeStrong(&v36, 0);
    v33 = _AKSignpostLogSystem();
    v32 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000334C0(v69, v45, *&v37, stringValue, [v49 code]);
      _os_log_impl(&_mh_execute_header, v33, v32, "END [%lld] %fs:PiggyAcceptSessionForAcceptController  CircleStep=%{public,signpost.telemetry:string2,name=CircleStep}@  Error=%{public,signpost.telemetry:number2,name=Error}d ", v69, 0x26u);
    }

    objc_storeStrong(&v33, 0);
    if (v49)
    {
      v31 = _AKLogSystem();
      v30 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v68, v49);
        _os_log_error_impl(&_mh_execute_header, v31, v30, "Approving device could not accept piggybacking session: %@", v68, 0xCu);
      }

      objc_storeStrong(&v31, 0);
      (*(v63 + 2))(v63, 0, v49);
      v55 = 1;
    }

    else
    {
      v55 = 0;
    }

    objc_storeStrong(&v49, 0);
    if (!v55)
    {
LABEL_31:
      [(AKPiggybackAcceptingController *)selfCopy _startProximityControllerIfNeededWithPushPayload:location[0]];
      v7 = selfCopy;
      v6 = circleStep;
      v22 = _NSConcreteStackBlock;
      v23 = -1073741824;
      v24 = 0;
      v25 = sub_10003353C;
      v26 = &unk_10031F860;
      v27 = _objc_retain(selfCopy);
      v28 = _objc_retain(location[0]);
      v29 = _objc_retain(v63);
      [(AKPiggybackAcceptingController *)v7 _checkForProximityIfNeededWithCircleStep:v6 completion:&v22];
      objc_storeStrong(&v29, 0);
      objc_storeStrong(&v28, 0);
      objc_storeStrong(&v27, 0);
      v55 = 0;
    }

    objc_storeStrong(&stringValue, 0);
  }

  objc_storeStrong(&v63, 0);
  objc_storeStrong(&v62, 0);
  objc_storeStrong(&v61, 0);
  objc_storeStrong(&v64, 0);
  objc_storeStrong(&v65, 0);
  objc_storeStrong(location, 0);
}

- (void)_processProximityDetection:(BOOL)detection withReplyContext:(id)context forPushPayload:(id)payload
{
  selfCopy = self;
  v69 = a2;
  detectionCopy = detection;
  location = 0;
  objc_storeStrong(&location, context);
  v66 = 0;
  objc_storeStrong(&v66, payload);
  v65 = _AKLogSystem();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
  {
    if (detectionCopy)
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    sub_100034214(v81, selfCopy, v5, location, v66);
    _os_log_debug_impl(&_mh_execute_header, v65, type, "%@: Processing physical proximity detection (%@) with replyContext (%@) for pushPayload (%@)", v81, 0x2Au);
  }

  objc_storeStrong(&v65, 0);
  presenceFallbackApproved = [v66 presenceFallbackApproved];
  [(AKConfiguration *)selfCopy->_configuration piggybackingIDMSPresenceOverride];
  v62 = AKConfigApplyOverride();
  [(AKConfiguration *)selfCopy->_configuration piggybackingLocalPresenceOverride];
  v61 = AKConfigApplyOverride();
  v21 = 1;
  if ((v62 & 1) == 0)
  {
    v21 = v61;
  }

  v60 = v21 & 1;
  presenceMode = [v66 presenceMode];
  v20 = 1;
  if (presenceMode)
  {
    v20 = presenceMode == 1;
  }

  v58 = v20;
  v6 = @"YES";
  if (presenceFallbackApproved)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if (!detectionCopy)
  {
    v6 = @"NO";
  }

  v8 = [NSString stringWithFormat:v7, v6];
  v9 = @"YES";
  v57 = v8;
  if (v62)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if ((v61 & 1) == 0)
  {
    v9 = @"NO";
  }

  v56 = [NSString stringWithFormat:@"idmsPresence=%@, foundDevice=%@", v10, v9];
  v55 = 0uLL;
  v19 = _AKSignpostLogSystem();
  *&v54 = _AKSignpostCreate();
  *(&v54 + 1) = v11;
  _objc_release(v19);
  v53 = _AKSignpostLogSystem();
  v52 = OS_SIGNPOST_INTERVAL_BEGIN;
  v51 = v54;
  if (v54 && v51 != -1 && os_signpost_enabled(v53))
  {
    sub_100034290(v80, presenceMode);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v53, v52, v51, "PiggybackingProcessPressenceForAcceptController", " PresenceMode=%{public,signpost.telemetry:number1,name=PresenceMode}d  enableTelemetry=YES ", v80, 8u);
  }

  objc_storeStrong(&v53, 0);
  v50 = _AKSignpostLogSystem();
  v49 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000342CC(v79, v54, presenceMode);
    _os_log_impl(&_mh_execute_header, v50, v49, "BEGIN [%lld]: PiggybackingProcessPressenceForAcceptController  PresenceMode=%{public,signpost.telemetry:number1,name=PresenceMode}d  enableTelemetry=YES ", v79, 0x12u);
  }

  objc_storeStrong(&v50, 0);
  v55 = v54;
  v48 = _AKSignpostGetNanoseconds() / 1000000000.0;
  v47 = _AKSignpostLogSystem();
  v46 = OS_SIGNPOST_EVENT;
  v45 = v55;
  if (v55 && v45 != -1 && os_signpost_enabled(v47))
  {
    sub_1000333DC(v78, v57);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v47, v46, v45, "PiggybackingProcessPressenceForAcceptControllerResults", " Results=%{public,signpost.telemetry:string1,name=Results}@ ", v78, 0xCu);
  }

  objc_storeStrong(&v47, 0);
  v44 = _AKSignpostLogSystem();
  v43 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    sub_10003431C(v77, v55, *&v48, v57);
    _os_log_impl(&_mh_execute_header, v44, v43, "EVENT [%lld] %fs:PiggybackingProcessPressenceForAcceptControllerResults  Results=%{public,signpost.telemetry:string1,name=Results}@ ", v77, 0x20u);
  }

  objc_storeStrong(&v44, 0);
  v42 = _AKSignpostGetNanoseconds() / 1000000000.0;
  v41 = _AKSignpostLogSystem();
  v40 = OS_SIGNPOST_EVENT;
  v39 = v55;
  if (v55 && v39 != -1 && os_signpost_enabled(v41))
  {
    sub_1000333DC(v76, v56);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v41, v40, v39, "PiggybackingProcessPressenceForAcceptControllerResultsOverrides", " Results=%{public,signpost.telemetry:string2,name=Results}@ ", v76, 0xCu);
  }

  objc_storeStrong(&v41, 0);
  oslog = _AKSignpostLogSystem();
  v37 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_10003431C(v75, v55, *&v42, v56);
    _os_log_impl(&_mh_execute_header, oslog, v37, "EVENT [%lld] %fs:PiggybackingProcessPressenceForAcceptControllerResultsOverrides  Results=%{public,signpost.telemetry:string2,name=Results}@ ", v75, 0x20u);
  }

  objc_storeStrong(&oslog, 0);
  v16 = [NSNumber numberWithBool:v60 & 1];
  payload = [location payload];
  [payload setPresenceCheckPassed:v16];
  _objc_release(payload);
  _objc_release(v16);
  v18 = [NSNumber numberWithBool:v61 & 1];
  payload2 = [location payload];
  [payload2 setLocalPresenceFound:v18];
  _objc_release(payload2);
  _objc_release(v18);
  if ((v60 & 1) == 0 && v58)
  {
    v36 = _AKSignpostGetNanoseconds() / 1000000000.0;
    v35 = _AKSignpostLogSystem();
    v34 = OS_SIGNPOST_EVENT;
    v33 = v55;
    if (v55 && v33 != -1 && os_signpost_enabled(v35))
    {
      v12 = v35;
      v13 = v34;
      v14 = v33;
      sub_10001CEEC(v32);
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, v13, v14, "ReportedEnforceModeFailure", "", v32, 2u);
    }

    objc_storeStrong(&v35, 0);
    v31 = _AKSignpostLogSystem();
    v30 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      sub_100034384(v74, v55, *&v36);
      _os_log_impl(&_mh_execute_header, v31, v30, "EVENT [%lld] %fs:ReportedEnforceModeFailure ", v74, 0x16u);
    }

    objc_storeStrong(&v31, 0);
    v29 = _AKLogSystem();
    v28 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_10001B098(v73, selfCopy, v66);
      _os_log_error_impl(&_mh_execute_header, v29, v28, "%@: Proximity check failed while handling push (%@)", v73, 0x16u);
    }

    objc_storeStrong(&v29, 0);
    selfCopy->_proximityFailed = 1;
  }

  v27 = _AKSignpostGetNanoseconds() / 1000000000.0;
  v26 = _AKSignpostLogSystem();
  v25 = OS_SIGNPOST_INTERVAL_END;
  v24 = v55;
  if (v55 && v24 != -1 && os_signpost_enabled(v26))
  {
    sub_100034290(v72, v60 & 1);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, v25, v24, "PiggybackingProcessPressenceForAcceptController", " CheckPassed=%{public,signpost.telemetry:number2,name=CheckPassed}d ", v72, 8u);
  }

  objc_storeStrong(&v26, 0);
  v23 = _AKSignpostLogSystem();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000343D0(v71, v55, *&v27, v60 & 1);
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:PiggybackingProcessPressenceForAcceptController  CheckPassed=%{public,signpost.telemetry:number2,name=CheckPassed}d ", v71, 0x1Cu);
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v56, 0);
  objc_storeStrong(&v57, 0);
  objc_storeStrong(&v66, 0);
  objc_storeStrong(&location, 0);
}

- (void)_finishProcessingPushPayload:(id)payload withReplyContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, payload);
  v68 = 0;
  objc_storeStrong(&v68, context);
  v67 = 0;
  objc_storeStrong(&v67, completion);
  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    log = oslog;
    v27 = type;
    acceptSession = selfCopy->_acceptSession;
    clientInfo = [location[0] clientInfo];
    v64 = _objc_retain(clientInfo);
    sub_10001B098(v78, acceptSession, v64);
    _os_log_debug_impl(&_mh_execute_header, log, v27, "Will process message using session: %@ - %@", v78, 0x16u);
    _objc_release(clientInfo);
    objc_storeStrong(&v64, 0);
  }

  objc_storeStrong(&oslog, 0);
  v24 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [location[0] circleStep]);
  stringValue = [(NSNumber *)v24 stringValue];
  _objc_release(v24);
  v62 = 0;
  v61 = 0uLL;
  v23 = _AKSignpostLogSystem();
  *&v60 = _AKSignpostCreate();
  *(&v60 + 1) = v5;
  _objc_release(v23);
  v59 = _AKSignpostLogSystem();
  v58 = OS_SIGNPOST_INTERVAL_BEGIN;
  v57 = v60;
  if (v60 && v57 != -1 && os_signpost_enabled(v59))
  {
    sub_1000333DC(v77, stringValue);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v59, v58, v57, "PiggyClientInfoForAcceptController", " CircleStep=%{public,signpost.telemetry:string1,name=CircleStep}@  enableTelemetry=YES ", v77, 0xCu);
  }

  objc_storeStrong(&v59, 0);
  v56 = _AKSignpostLogSystem();
  v55 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
  {
    sub_10003341C(v76, v60, stringValue);
    _os_log_impl(&_mh_execute_header, v56, v55, "BEGIN [%lld]: PiggyClientInfoForAcceptController  CircleStep=%{public,signpost.telemetry:string1,name=CircleStep}@  enableTelemetry=YES ", v76, 0x16u);
  }

  objc_storeStrong(&v56, 0);
  v61 = v60;
  v22 = selfCopy->_acceptSession;
  clientInfo2 = [location[0] clientInfo];
  v54 = v62;
  v20 = [KCJoiningAcceptSession processMessage:v22 error:"processMessage:error:"];
  objc_storeStrong(&v62, v54);
  payload = [v68 payload];
  [payload setClientInfo:v20];
  _objc_release(payload);
  _objc_release(v20);
  _objc_release(clientInfo2);
  v53 = _AKSignpostGetNanoseconds() / 1000000000.0;
  v52 = _AKSignpostLogSystem();
  v51 = OS_SIGNPOST_INTERVAL_END;
  v50 = v61;
  if (v61 && v50 != -1 && os_signpost_enabled(v52))
  {
    sub_10003346C(v75, stringValue, [v62 code]);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v52, v51, v50, "PiggyClientInfoForAcceptController", " CircleStep=%{public,signpost.telemetry:string2,name=CircleStep}@  Error=%{public,signpost.telemetry:number2,name=Error}d ", v75, 0x12u);
  }

  objc_storeStrong(&v52, 0);
  v49 = _AKSignpostLogSystem();
  v48 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000334C0(v74, v61, *&v53, stringValue, [v62 code]);
    _os_log_impl(&_mh_execute_header, v49, v48, "END [%lld] %fs:PiggyClientInfoForAcceptController  CircleStep=%{public,signpost.telemetry:string2,name=CircleStep}@  Error=%{public,signpost.telemetry:number2,name=Error}d ", v74, 0x26u);
  }

  objc_storeStrong(&v49, 0);
  v47 = _AKLogSystem();
  v46 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
  {
    v18 = selfCopy->_acceptSession;
    payload2 = [v68 payload];
    clientInfo3 = [payload2 clientInfo];
    sub_10001B098(v73, v18, clientInfo3);
    _os_log_debug_impl(&_mh_execute_header, v47, v46, "Did process message using session: %@ - %@", v73, 0x16u);
    _objc_release(clientInfo3);
    _objc_release(payload2);
  }

  objc_storeStrong(&v47, 0);
  if (selfCopy->_verificationFailed)
  {
    selfCopy->_verificationFailed = 0;
    payload3 = [v68 payload];
    [payload3 setClientErrorCode:-9003];
    _objc_release(payload3);
  }

  else if (selfCopy->_proximityFailed)
  {
    v45 = _AKLogSystem();
    v44 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v72, selfCopy);
      _os_log_error_impl(&_mh_execute_header, v45, v44, "%@: Proximity was not detected and is being enforced", v72, 0xCu);
    }

    objc_storeStrong(&v45, 0);
    [v68 setWaitForReply:0];
    payload4 = [v68 payload];
    [payload4 setClientErrorCode:-9005];
    _objc_release(payload4);
    [(AKPiggybackAcceptingController *)selfCopy _releaseAssertion];
  }

  else
  {
    payload5 = [v68 payload];
    clientInfo4 = [payload5 clientInfo];
    _objc_release(clientInfo4);
    _objc_release(payload5);
    if (!clientInfo4)
    {
      v43 = _AKLogSystem();
      v42 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v71, v62);
        _os_log_error_impl(&_mh_execute_header, v43, v42, "Failed to process data with error: %@", v71, 0xCu);
      }

      objc_storeStrong(&v43, 0);
      [v68 setWaitForReply:0];
      payload6 = [v68 payload];
      [payload6 setClientErrorCode:-9001];
      _objc_release(payload6);
      [(AKPiggybackAcceptingController *)selfCopy _releaseAssertion];
    }
  }

  if ([(AKPiggybackAcceptingController *)selfCopy isDone])
  {
    v41 = _AKLogSystem();
    v40 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v41;
      v10 = v40;
      sub_10001CEEC(v39);
      _os_log_impl(&_mh_execute_header, v9, v10, "Approver is reporting as done...", v39, 2u);
    }

    objc_storeStrong(&v41, 0);
    [v68 setWaitForReply:0];
  }

  objc_initWeak(&from, selfCopy);
  v7 = +[AKPiggybackController sharedController];
  v8 = v68;
  v31 = _NSConcreteStackBlock;
  v32 = -1073741824;
  v33 = 0;
  v34 = sub_1000351F0;
  v35 = &unk_10031F888;
  objc_copyWeak(v37, &from);
  v36 = _objc_retain(v67);
  v6 = [v7 performCircleRequestWithContext:v8 completion:&v31];
  _objc_release(v7);
  objc_storeStrong(&v36, 0);
  objc_destroyWeak(v37);
  objc_destroyWeak(&from);
  objc_storeStrong(&v62, 0);
  objc_storeStrong(&stringValue, 0);
  objc_storeStrong(&v67, 0);
  objc_storeStrong(&v68, 0);
  objc_storeStrong(location, 0);
}

- (id)_acceptSessionForPayload:(id)payload error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, payload);
  errorCopy = error;
  v31 = [(AKPiggybackAcceptingController *)selfCopy _authKitAccountForPayload:location[0]];
  v30 = _AKLogSystem();
  v29 = 2;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    log = v30;
    v25 = v29;
    v26 = [v31 accountPropertyForKey:@"DSID"];
    v28 = _objc_retain(v26);
    sub_1000194D4(v36, v28);
    _os_log_debug_impl(&_mh_execute_header, log, v25, "Initializing accept session for DSID: %@", v36, 0xCu);
    _objc_release(v26);
    objc_storeStrong(&v28, 0);
  }

  objc_storeStrong(&v30, 0);
  if (sub_100058B0C(0))
  {
    v4 = objc_alloc_init(sub_100058D5C());
  }

  else
  {
    v4 = objc_alloc_init(0);
  }

  v5 = v4;
  circleDelegate = selfCopy->_circleDelegate;
  selfCopy->_circleDelegate = v5;
  _objc_release(circleDelegate);
  if (sub_100058B0C(0))
  {
    sub_10005910C();
  }

  if (objc_opt_respondsToSelector())
  {
    if (sub_100058B0C(0))
    {
      v23 = sub_10005910C();
    }

    else
    {
      v23 = 0;
    }

    clientInfo = [location[0] clientInfo];
    v15 = selfCopy;
    v16 = selfCopy->_circleDelegate;
    v21 = [v31 accountPropertyForKey:@"DSID"];
    unsignedLongLongValue = [v21 unsignedLongLongValue];
    altDSID = [location[0] altDSID];
    v19 = +[AKAccountManager sharedInstance];
    v18 = [(AKAccountManager *)v19 telemetryDeviceSessionIDForAccount:v31];
    v35 = [v23 sessionWithInitialMessage:clientInfo secretDelegate:v15 circleDelegate:v16 dsid:unsignedLongLongValue altDSID:altDSID flowID:0 deviceSessionID:v18 error:errorCopy];
    _objc_release(v18);
    _objc_release(v19);
    _objc_release(altDSID);
    _objc_release(v21);
    _objc_release(clientInfo);
  }

  else
  {
    if (sub_100058B0C(0))
    {
      v14 = sub_10005910C();
    }

    else
    {
      v14 = 0;
    }

    clientInfo2 = [location[0] clientInfo];
    v10 = selfCopy;
    v11 = selfCopy->_circleDelegate;
    v12 = [v31 accountPropertyForKey:@"DSID"];
    unsignedLongLongValue2 = [v12 unsignedLongLongValue];
    v35 = [v14 sessionWithInitialMessage:clientInfo2 secretDelegate:v10 circleDelegate:v11 dsid:unsignedLongLongValue2 error:errorCopy];
    _objc_release(v12);
    _objc_release(clientInfo2);
  }

  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
  v8 = v35;

  return v8;
}

- (id)replyContextWithPayload:(id)payload
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, payload);
  v11 = objc_opt_new();
  replyPayload = [location[0] replyPayload];
  [v11 setPayload:?];
  _objc_release(replyPayload);
  [v11 setWaitForReplyTimeout:1200.0];
  v9 = +[AKAppleIDPushHelperService sharedService];
  publicAPSTokenString = [v9 publicAPSTokenString];
  [v11 setPushToken:?];
  _objc_release(publicAPSTokenString);
  _objc_release(v9);
  v10 = [(AKPiggybackAcceptingController *)selfCopy _authKitAccountForPayload:location[0]];
  if (v10)
  {
    v6 = +[AKAccountManager sharedInstance];
    v5 = [(AKAccountManager *)v6 hearbeatTokenForAccount:v10];
    [v11 setHeartbeatTokenValue:?];
    _objc_release(v5);
    _objc_release(v6);
  }

  v4 = _objc_retain(v11);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (id)_authKitAccountForPayload:(id)payload
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, payload);
  v5 = +[AKAccountManager sharedInstance];
  altDSID = [location[0] altDSID];
  v6 = [AKAccountManager authKitAccountWithAltDSID:v5 error:"authKitAccountWithAltDSID:error:"];
  _objc_release(altDSID);
  _objc_release(v5);
  objc_storeStrong(location, 0);

  return v6;
}

+ (BOOL)isInCircle
{
  v3 = +[AKDevice currentDevice];
  isInCircle = [v3 isInCircle];
  _objc_release(v3);
  return isInCircle;
}

- (id)secret
{
  selfCopy = self;
  v10[1] = a2;
  [(AKPiggybackAcceptingController *)self _grabLockAssertion];
  v10[0] = [(AKPiggybackAcceptingController *)selfCopy _generateSecret];
  v5 = +[AKAppleIDPushHelperService sharedService];
  v4 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v10[0] longLongValue]);
  responseMessage = [(AKCircleRequestPayload *)selfCopy->_initiatingPayload responseMessage];
  [v5 showPigCode:v4 withIncomingMessage:?];
  _objc_release(responseMessage);
  _objc_release(v4);
  _objc_release(v5);
  v7 = +[AKAccountManager sharedInstance];
  altDSID = [(AKCircleRequestPayload *)selfCopy->_initiatingPayload altDSID];
  v9 = [AKAccountManager authKitAccountWithAltDSID:v7 error:"authKitAccountWithAltDSID:error:"];
  _objc_release(altDSID);
  _objc_release(v7);
  [AKAnalyticsSender sendAnalyticsEvent:@"com.apple.authkit.piggybackingSecretGeneration" context:0 account:v9 error:?];
  v8 = _objc_retain(v10[0]);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(v10, 0);

  return v8;
}

- (int)verificationFailed:(id *)failed
{
  selfCopy = self;
  location[2] = a2;
  location[1] = failed;
  self->_verificationFailed = 1;
  location[0] = _AKLogSystem();
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = [NSNumber numberWithInteger:selfCopy->_verificationAttempts];
    sub_1000194D4(v13, v6);
    _os_log_impl(&_mh_execute_header, location[0], v9, "Failed to verify requesting secret, attempts: %@", v13, 0xCu);
    _objc_release(v6);
  }

  objc_storeStrong(location, 0);
  v5 = +[AKAccountManager sharedInstance];
  altDSID = [(AKCircleRequestPayload *)selfCopy->_initiatingPayload altDSID];
  v8 = [AKAccountManager authKitAccountWithAltDSID:v5 error:"authKitAccountWithAltDSID:error:"];
  _objc_release(altDSID);
  _objc_release(v5);
  v7 = [NSError ak_errorWithCode:-7036];
  [AKAnalyticsSender sendAnalyticsEvent:@"com.apple.authkit.piggybackingVerificationFailure" context:0 account:v8 error:v7];
  if (++selfCopy->_verificationAttempts < 3)
  {
    v12 = 1;
  }

  else
  {
    selfCopy->_verificationAttempts = 0;
    v12 = 2;
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  return v12;
}

- (id)accountCode
{
  v7[2] = self;
  v7[1] = a2;
  v7[0] = 0;
  v5 = 0;
  v3 = [AKAppleIDCodeGenerator generateLoginCode:&v5];
  objc_storeStrong(v7, v5);
  v6 = v3;
  stringValue = [v3 stringValue];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(v7, 0);

  return stringValue;
}

- (id)_generateSecret
{
  v6[2] = self;
  v6[1] = a2;
  v6[0] = 0;
  v2 = [NSString stringWithFormat:@"%06u", arc4random_uniform(0xF423Fu)];
  v3 = v6[0];
  v6[0] = v2;
  _objc_release(v3);
  v5 = _objc_retain(v6[0]);
  objc_storeStrong(v6, 0);

  return v5;
}

- (void)_grabLockAssertion
{
  selfCopy = self;
  location[1] = a2;
  [(NSLock *)self->_assertionLock lock];
  if (selfCopy->_assertionRef)
  {
    oslog = _AKLogSystem();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v2 = oslog;
      v3 = v9;
      sub_10001CEEC(v8);
      _os_log_impl(&_mh_execute_header, v2, v3, "Lock assertion already taken", v8, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    location[0] = _AKLogSystem();
    v23 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      log = location[0];
      type = v23;
      sub_10001CEEC(v22);
      _os_log_impl(&_mh_execute_header, log, type, "Accepting session is grabbing lock assertion", v22, 2u);
    }

    objc_storeStrong(location, 0);
    v27[0] = @"MKBAssertionKey";
    v28[0] = @"RemoteProfile";
    v27[1] = @"MKBAssertionTimeout";
    v28[1] = &off_100338F50;
    v21 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];
    v20 = 0;
    selfCopy->_assertionRef = MKBDeviceLockAssertion();
    v19 = v20;
    if (v20)
    {
      v18 = _AKLogSystem();
      v17 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v26, v19);
        _os_log_error_impl(&_mh_execute_header, v18, v17, "Failed to grab a lock assertion: %@", v26, 0xCu);
      }

      objc_storeStrong(&v18, 0);
    }

    else if (selfCopy->_assertionRef)
    {
      +[NSXPCConnection beginTransaction];
      when = dispatch_time(0, 600000000000);
      queue = dispatch_get_global_queue(0, 0);
      v11 = _NSConcreteStackBlock;
      v12 = -1073741824;
      v13 = 0;
      v14 = sub_100036458;
      v15 = &unk_10031F8B0;
      v16 = _objc_retain(selfCopy);
      dispatch_after(when, queue, &v11);
      _objc_release(queue);
      objc_storeStrong(&v16, 0);
    }

    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v21, 0);
  }

  [(NSLock *)selfCopy->_assertionLock unlock];
}

- (void)_releaseAssertion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v5 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v5;
    sub_10001CEEC(v4);
    _os_log_impl(&_mh_execute_header, log, type, "Releasing a lock assertion", v4, 2u);
  }

  objc_storeStrong(location, 0);
  [(NSLock *)selfCopy->_assertionLock lock];
  if (selfCopy->_assertionRef)
  {
    CFRelease(selfCopy->_assertionRef);
    selfCopy->_assertionRef = 0;
  }

  [(NSLock *)selfCopy->_assertionLock unlock];
}

- (void)_startProximityControllerIfNeededWithPushPayload:(id)payload
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, payload);
  circleStep = [location[0] circleStep];
  presenceSID = [location[0] presenceSID];
  supportsPresence = [location[0] supportsPresence];
  if (circleStep == 1 && (supportsPresence & 1) != 0)
  {
    oslog = _AKLogSystem();
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v16, selfCopy);
      _os_log_impl(&_mh_execute_header, oslog, type, "%@: Determined proximity scanner should be started", v16, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    if (presenceSID)
    {
      [(AKPiggybackAcceptingController *)selfCopy _startProximityControllerWithPresenceSID:presenceSID];
    }

    else
    {
      v6 = _AKLogSystem();
      v5 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10001B098(v15, selfCopy, location[0]);
        _os_log_error_impl(&_mh_execute_header, v6, v5, "%@: Unable to start proximity scanner with nil presenceSID from pushPayload (%@)", v15, 0x16u);
      }

      objc_storeStrong(&v6, 0);
    }
  }

  else
  {
    v4 = _AKLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      if (supportsPresence)
      {
        v3 = @"YES";
      }

      else
      {
        v3 = @"NO";
      }

      sub_100036834(v14, selfCopy, v3, circleStep, presenceSID);
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%@: Determined proximity scanner should not be started (wantsPresence: %@, circleStep: %lu, presenceSID: %@)", v14, 0x2Au);
    }

    objc_storeStrong(&v4, 0);
  }

  objc_storeStrong(&presenceSID, 0);
  objc_storeStrong(location, 0);
}

- (void)_startProximityControllerWithPresenceSID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v49 = 0uLL;
  v12 = _AKSignpostLogSystem();
  *&v48 = _AKSignpostCreate();
  *(&v48 + 1) = v3;
  _objc_release(v12);
  v47 = _AKSignpostLogSystem();
  v46 = 1;
  v45 = v48;
  if (v48 && v45 != -1 && os_signpost_enabled(v47))
  {
    log = v47;
    type = v46;
    spid = v45;
    sub_10001CEEC(v44);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, log, type, spid, "PiggybackingDetectPresenceForAcceptController", " enableTelemetry=YES ", v44, 2u);
  }

  objc_storeStrong(&v47, 0);
  v43 = _AKSignpostLogSystem();
  v42 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    sub_100036FE8(v53, v48);
    _os_log_impl(&_mh_execute_header, v43, v42, "BEGIN [%lld]: PiggybackingDetectPresenceForAcceptController  enableTelemetry=YES ", v53, 0xCu);
  }

  objc_storeStrong(&v43, 0);
  v49 = v48;
  v38[0] = 0;
  v38[1] = v38;
  v39 = 0x20000000;
  v40 = 32;
  v41 = 0;
  v30 = _NSConcreteStackBlock;
  v31 = -1073741824;
  v32 = 0;
  v33 = sub_100037020;
  v34 = &unk_10031F8D8;
  v35 = v38;
  v36 = v48;
  v37 = objc_retainBlock(&v30);
  objc_initWeak(&from, selfCopy);
  v28 = [(AKProximityPiggybackEngine *)[AKProximityPiggybackAcceptingEngine alloc] initWithPresenceSID:location[0]];
  v21 = _NSConcreteStackBlock;
  v22 = -1073741824;
  v23 = 0;
  v24 = sub_100037228;
  v25 = &unk_10031F900;
  v26 = _objc_retain(v37);
  objc_copyWeak(&v27, &from);
  [v28 setMatchHandler:&v21];
  v8 = [[AKFuture alloc] initWithMaxWait:@"proximityDetected" description:5.0];
  proximityDetected = selfCopy->_proximityDetected;
  selfCopy->_proximityDetected = v8;
  _objc_release(proximityDetected);
  v7 = [AKProximityController alloc];
  v6 = [(AKProximityController *)v7 initWithEngine:v28];
  proximityController = selfCopy->_proximityController;
  selfCopy->_proximityController = v6;
  _objc_release(proximityController);
  v14 = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = sub_100037404;
  v18 = &unk_10031F900;
  v19 = _objc_retain(v37);
  objc_copyWeak(&v20, &from);
  [(AKProximityController *)selfCopy->_proximityController setInvalidationHandler:&v14];
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100037570(v52, selfCopy, selfCopy->_proximityController, 1752392040, location[0]);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%@: Setting up proximity controller (%@) with presenceSID (%{mask.hash}@)", v52, 0x2Au);
  }

  objc_storeStrong(&oslog, 0);
  [(AKProximityController *)selfCopy->_proximityController activate];
  objc_destroyWeak(&v20);
  objc_storeStrong(&v19, 0);
  objc_destroyWeak(&v27);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v28, 0);
  objc_destroyWeak(&from);
  objc_storeStrong(&v37, 0);
  _Block_object_dispose(v38, 8);
  objc_storeStrong(location, 0);
}

- (void)_checkForProximityIfNeededWithCircleStep:(unint64_t)step completion:(id)completion
{
  selfCopy = self;
  v16 = a2;
  stepCopy = step;
  location = 0;
  objc_storeStrong(&location, completion);
  if (selfCopy->_proximityController && stepCopy == 3)
  {
    v13 = _AKLogSystem();
    v12 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v19, selfCopy);
      _os_log_impl(&_mh_execute_header, v13, v12, "%@: Determined checking for proximity is needed", v19, 0xCu);
    }

    objc_storeStrong(&v13, 0);
    v4 = selfCopy;
    v6 = _NSConcreteStackBlock;
    v7 = -1073741824;
    v8 = 0;
    v9 = sub_10003788C;
    v10 = &unk_10031F928;
    v11 = _objc_retain(location);
    [(AKPiggybackAcceptingController *)v4 _checkForProximityWithCompletion:&v6];
    objc_storeStrong(&v11, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      sub_1000378DC(v18, selfCopy, stepCopy, selfCopy->_proximityController);
      _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "%@: Determined checking for proximity is not needed for circleStep (%lu) with controller (%@)", v18, 0x20u);
    }

    objc_storeStrong(&oslog, 0);
    (*(location + 2))(location, 0, 0);
  }

  objc_storeStrong(&location, 0);
}

- (void)_checkForProximityWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v28 = 0uLL;
  v10 = _AKSignpostLogSystem();
  *&v27 = _AKSignpostCreate();
  *(&v27 + 1) = v3;
  _objc_release(v10);
  v26 = _AKSignpostLogSystem();
  v25 = 1;
  v24 = v27;
  if (v27 && v24 != -1 && os_signpost_enabled(v26))
  {
    log = v26;
    type = v25;
    spid = v24;
    sub_10001CEEC(v23);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, log, type, spid, "PiggybackingCheckPresenceForAcceptController", " enableTelemetry=YES ", v23, 2u);
  }

  objc_storeStrong(&v26, 0);
  v22 = _AKSignpostLogSystem();
  v21 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    sub_100036FE8(v31, v27);
    _os_log_impl(&_mh_execute_header, v22, v21, "BEGIN [%lld]: PiggybackingCheckPresenceForAcceptController  enableTelemetry=YES ", v31, 0xCu);
  }

  objc_storeStrong(&v22, 0);
  v28 = v27;
  v5 = +[AKAccountManager sharedInstance];
  altDSID = [(AKCircleRequestPayload *)selfCopy->_initiatingPayload altDSID];
  v20 = [AKAccountManager authKitAccountWithAltDSID:v5 error:"authKitAccountWithAltDSID:error:"];
  _objc_release(altDSID);
  _objc_release(v5);
  [AKAnalyticsSender sendAnalyticsEvent:@"com.apple.authkit.piggybackingProximityDetectionStart" context:0 account:v20 error:?];
  queue = dispatch_get_global_queue(33, 0);
  v11 = _NSConcreteStackBlock;
  v12 = -1073741824;
  v13 = 0;
  v14 = sub_100037D0C;
  v15 = &unk_10031F950;
  v16 = _objc_retain(selfCopy);
  v17 = _objc_retain(v20);
  v19 = v28;
  v18 = _objc_retain(location[0]);
  dispatch_async(queue, &v11);
  _objc_release(queue);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

@end