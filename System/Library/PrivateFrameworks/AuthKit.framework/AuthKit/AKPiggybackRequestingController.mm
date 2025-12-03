@interface AKPiggybackRequestingController
- (AKPiggybackRequestingController)initWithServerResponse:(id)response andDelegate:(id)delegate;
- (AKPiggybackRequestingControllerDelegate)delegate;
- (BOOL)_shouldContinueProcessing:(id *)processing;
- (BOOL)isDone;
- (BOOL)processAccountCode:(id)code error:(id *)error;
- (KCJoiningRequestSecretSession)requestSession;
- (id)contextWithIncomingPayload:(id)payload;
- (id)secret;
- (void)_cacheSecondFactor:(id)factor codeCaptureError:(id)error;
- (void)_clearSessionState;
- (void)_deliverPushPayload:(id)payload attachDuplexSession:(BOOL)session completion:(id)completion;
- (void)_deliverPushPayload:(id)payload completion:(id)completion;
- (void)_handleVerificationError:(id)error withContext:(id)context completion:(id)completion;
- (void)_initiatePiggybackingWithCleanSession:(BOOL)session withCompletion:(id)completion;
- (void)_processCachedUserInputWithContext:(id)context completion:(id)completion;
- (void)_processCodeEntryErrorWithContext:(id)context completion:(id)completion;
- (void)_processHandshakeWithContext:(id)context handshakeReply:(id)reply andHandshakeError:(id)error withCompletion:(id)completion;
- (void)_promptForSecretWithContext:(id)context completion:(id)completion;
- (void)_sendDeviceCancelledReplyWithContext:(id)context;
- (void)_startProximityControllerIfNeededWithPushPayload:(id)payload;
- (void)_startProximityControllerWithPresenceSID:(id)d;
- (void)_stopProximityController;
- (void)_stopProximityControllerIfNeededWithPushPayload:(id)payload;
- (void)initiatePiggybackingWithCompletion:(id)completion;
- (void)processPushPayload:(id)payload completion:(id)completion;
- (void)replyWithContext:(id)context withCompletion:(id)completion;
@end

@implementation AKPiggybackRequestingController

- (AKPiggybackRequestingController)initWithServerResponse:(id)response andDelegate:(id)delegate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v10 = 0;
  objc_storeStrong(&v10, delegate);
  v4 = selfCopy;
  selfCopy = 0;
  v9.receiver = v4;
  v9.super_class = AKPiggybackRequestingController;
  v8 = [(AKPiggybackRequestingController *)&v9 init];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    objc_storeWeak(&selfCopy->_delegate, v10);
    objc_storeStrong(&selfCopy->_initialAuthResponse, location[0]);
    selfCopy->_initialHandshakeTimeout = 600.0;
    selfCopy->_unitTestContext = 0;
    selfCopy->_retryCount = 0;
  }

  v6 = _objc_retain(selfCopy);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (void)initiatePiggybackingWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  [(AKPiggybackRequestingController *)selfCopy _initiatePiggybackingWithCleanSession:0 withCompletion:location[0]];
  objc_storeStrong(location, 0);
}

- (void)_initiatePiggybackingWithCleanSession:(BOOL)session withCompletion:(id)completion
{
  selfCopy = self;
  v118 = a2;
  sessionCopy = session;
  location = 0;
  objc_storeStrong(&location, completion);
  v24 = +[AKAccountManager sharedInstance];
  initialAuthResponse = [(AKPiggybackRequestingController *)selfCopy initialAuthResponse];
  altDSID = [(AKAuthenticationServerResponse *)initialAuthResponse altDSID];
  v115 = [AKAccountManager authKitAccountWithAltDSID:v24 error:"authKitAccountWithAltDSID:error:"];
  _objc_release(altDSID);
  _objc_release(initialAuthResponse);
  _objc_release(v24);
  [AKAnalyticsSender sendAnalyticsEvent:@"com.apple.authkit.piggybackingRequestingStart" context:selfCopy->_initiatingContext account:v115 error:0];
  v114 = 0uLL;
  v21 = _AKSignpostLogSystem();
  *&v113 = _AKSignpostCreate();
  *(&v113 + 1) = v4;
  _objc_release(v21);
  v112 = _AKSignpostLogSystem();
  v111 = OS_SIGNPOST_INTERVAL_BEGIN;
  v110 = v113;
  if (v113 && v110 != -1 && os_signpost_enabled(v112))
  {
    sub_100034290(v125, sessionCopy);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v112, v111, v110, "PiggybackingRequestingInitiateSession", " CleanSession=%{public,signpost.telemetry:number1,name=CleanSession}d  enableTelemetry=YES ", v125, 8u);
  }

  objc_storeStrong(&v112, 0);
  v109 = _AKSignpostLogSystem();
  v108 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000342CC(v124, v113, sessionCopy);
    _os_log_impl(&_mh_execute_header, v109, v108, "BEGIN [%lld]: PiggybackingRequestingInitiateSession  CleanSession=%{public,signpost.telemetry:number1,name=CleanSession}d  enableTelemetry=YES ", v124, 0x12u);
  }

  objc_storeStrong(&v109, 0);
  v114 = v113;
  if (!location)
  {
    __assert_rtn("[AKPiggybackRequestingController _initiatePiggybackingWithCleanSession:withCompletion:]", "AKPiggybackRequestingController.m", 73, "completion");
  }

  v98 = _NSConcreteStackBlock;
  v99 = -1073741824;
  v100 = 0;
  v101 = sub_1000C6DB4;
  v102 = &unk_100322550;
  v103 = _objc_retain(selfCopy);
  v104 = _objc_retain(v115);
  v106 = v114;
  v105 = _objc_retain(location);
  v107 = objc_retainBlock(&v98);
  initialAuthResponse2 = [(AKPiggybackRequestingController *)selfCopy initialAuthResponse];
  transactionId = [(AKAuthenticationServerResponse *)initialAuthResponse2 transactionId];
  v97 = [NSString stringWithFormat:@"%@-%lu", transactionId, selfCopy->_retryCount];
  _objc_release(transactionId);
  _objc_release(initialAuthResponse2);
  oslog = _AKLogSystem();
  v95 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v123, v97);
    _os_log_impl(&_mh_execute_header, oslog, v95, "Initiating a piggybacking flow for transaction id: %@", v123, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  if (!location)
  {
    __assert_rtn("[AKPiggybackRequestingController _initiatePiggybackingWithCleanSession:withCompletion:]", "AKPiggybackRequestingController.m", 85, "completion");
  }

  if (sessionCopy)
  {
    [(AKPiggybackRequestingController *)selfCopy _clearSessionState];
  }

  v94 = 0;
  v93 = 0uLL;
  v18 = _AKSignpostLogSystem();
  *&v92 = _AKSignpostCreate();
  *(&v92 + 1) = v5;
  _objc_release(v18);
  v91 = _AKSignpostLogSystem();
  v90 = 1;
  v89 = v92;
  if (v92 && v89 != -1 && os_signpost_enabled(v91))
  {
    v15 = v91;
    v16 = v90;
    v17 = v89;
    sub_10001CEEC(v88);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, v16, v17, "PiggyInitialMessageData", " enableTelemetry=YES ", v88, 2u);
  }

  objc_storeStrong(&v91, 0);
  v87 = _AKSignpostLogSystem();
  v86 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
  {
    sub_100036FE8(v122, v92);
    _os_log_impl(&_mh_execute_header, v87, v86, "BEGIN [%lld]: PiggyInitialMessageData  enableTelemetry=YES ", v122, 0xCu);
  }

  objc_storeStrong(&v87, 0);
  v93 = v92;
  requestSession = [(AKPiggybackRequestingController *)selfCopy requestSession];
  obj = v94;
  v13 = [(KCJoiningRequestSecretSession *)requestSession initialMessage:&obj];
  objc_storeStrong(&v94, obj);
  v85 = v13;
  _objc_release(requestSession);
  v83 = _AKSignpostGetNanoseconds() / 1000000000.0;
  v82 = _AKSignpostLogSystem();
  v81 = OS_SIGNPOST_INTERVAL_END;
  v80 = v93;
  if (v93 && v80 != -1 && os_signpost_enabled(v82))
  {
    sub_100034290(v121, [v94 code]);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v82, v81, v80, "PiggyInitialMessageData", " Error=%{public,signpost.telemetry:number1,name=Error}d ", v121, 8u);
  }

  objc_storeStrong(&v82, 0);
  v79 = _AKSignpostLogSystem();
  v78 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000343D0(v120, v93, *&v83, [v94 code]);
    _os_log_impl(&_mh_execute_header, v79, v78, "END [%lld] %fs:PiggyInitialMessageData  Error=%{public,signpost.telemetry:number1,name=Error}d ", v120, 0x1Cu);
  }

  objc_storeStrong(&v79, 0);
  if (v85)
  {
    v77 = objc_opt_new();
    [v77 setClientInfo:v85];
    [v77 setTransactionId:v97];
    initialAuthResponse3 = [(AKPiggybackRequestingController *)selfCopy initialAuthResponse];
    altDSID2 = [(AKAuthenticationServerResponse *)initialAuthResponse3 altDSID];
    [v77 setAltDSID:?];
    _objc_release(altDSID2);
    _objc_release(initialAuthResponse3);
    v76 = [(AKPiggybackRequestingController *)selfCopy contextWithIncomingPayload:v77];
    v75 = objc_alloc_init(NSCondition);
    v71[0] = 0;
    v71[1] = v71;
    v72 = 0x20000000;
    v73 = 32;
    v74 = 0;
    v65[0] = 0;
    v65[1] = v65;
    v66 = 838860800;
    v67 = 48;
    v68 = sub_1000039DC;
    v69 = sub_1000111D0;
    v70 = 0;
    v59[0] = 0;
    v59[1] = v59;
    v60 = 838860800;
    v61 = 48;
    v62 = sub_1000039DC;
    v63 = sub_1000111D0;
    v64 = 0;
    v50 = _NSConcreteStackBlock;
    v51 = -1073741824;
    v52 = 0;
    v53 = sub_1000C7048;
    v54 = &unk_10031F050;
    v55 = _objc_retain(selfCopy);
    v56 = _objc_retain(v76);
    v57 = _objc_retain(v75);
    v58 = objc_retainBlock(&v50);
    if (selfCopy->_unitTestContext)
    {
      when = dispatch_time(0, 1000000000);
      queue = dispatch_get_global_queue(25, 0);
      v44 = _NSConcreteStackBlock;
      v45 = -1073741824;
      v46 = 0;
      v47 = sub_1000C71EC;
      v48 = &unk_100320EC8;
      v49 = _objc_retain(v58);
      dispatch_after(when, queue, &v44);
      _objc_release(queue);
      objc_storeStrong(&v49, 0);
    }

    else
    {
      (*(v58 + 2))();
    }

    [v76 set_notifyOfTimeout:0];
    [v76 setWaitForReplyTimeout:selfCopy->_initialHandshakeTimeout];
    v8 = +[AKPiggybackController sharedController];
    v7 = v76;
    v36 = _NSConcreteStackBlock;
    v37 = -1073741824;
    v38 = 0;
    v39 = sub_1000C7228;
    v40 = &unk_100322578;
    v41 = _objc_retain(selfCopy);
    v42[0] = _objc_retain(v75);
    v42[1] = v71;
    v42[2] = v65;
    v42[3] = v59;
    v43 = [v8 performCircleRequestWithContext:v7 completion:&v36];
    _objc_release(v8);
    v6 = dispatch_get_global_queue(17, 0);
    v25 = _NSConcreteStackBlock;
    v26 = -1073741824;
    v27 = 0;
    v28 = sub_1000C75E4;
    v29 = &unk_1003225A0;
    v30 = _objc_retain(v75);
    v35[1] = v71;
    v31 = _objc_retain(selfCopy);
    v34 = _objc_retain(v58);
    v32 = _objc_retain(v43);
    v33 = _objc_retain(v76);
    v35[2] = v65;
    v35[3] = v59;
    v35[0] = _objc_retain(v107);
    dispatch_async(v6, &v25);
    _objc_release(v6);
    objc_storeStrong(v35, 0);
    objc_storeStrong(&v33, 0);
    objc_storeStrong(&v32, 0);
    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v43, 0);
    objc_storeStrong(v42, 0);
    objc_storeStrong(&v41, 0);
    objc_storeStrong(&v58, 0);
    objc_storeStrong(&v57, 0);
    objc_storeStrong(&v56, 0);
    objc_storeStrong(&v55, 0);
    _Block_object_dispose(v59, 8);
    objc_storeStrong(&v64, 0);
    _Block_object_dispose(v65, 8);
    objc_storeStrong(&v70, 0);
    _Block_object_dispose(v71, 8);
    objc_storeStrong(&v75, 0);
    objc_storeStrong(&v76, 0);
    objc_storeStrong(&v77, 0);
  }

  else
  {
    (*(v107 + 2))(v107, 0, v94);
  }

  objc_storeStrong(&v85, 0);
  objc_storeStrong(&v94, 0);
  objc_storeStrong(&v97, 0);
  objc_storeStrong(&v107, 0);
  objc_storeStrong(&v105, 0);
  objc_storeStrong(&v104, 0);
  objc_storeStrong(&v103, 0);
  objc_storeStrong(&v115, 0);
  objc_storeStrong(&location, 0);
}

- (void)_processHandshakeWithContext:(id)context handshakeReply:(id)reply andHandshakeError:(id)error withCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v61 = 0;
  objc_storeStrong(&v61, reply);
  v60 = 0;
  objc_storeStrong(&v60, error);
  v59 = 0;
  objc_storeStrong(&v59, completion);
  v58 = _AKLogSystem();
  v57 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    log = v58;
    type = v57;
    sub_10001CEEC(v56);
    _os_log_impl(&_mh_execute_header, log, type, "Starting to process handshake results", v56, 2u);
  }

  objc_storeStrong(&v58, 0);
  if (selfCopy->_authResults)
  {
    v55 = _AKLogSystem();
    v54 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v55;
      v18 = v54;
      sub_10001CEEC(v53);
      _os_log_impl(&_mh_execute_header, v17, v18, "We got results, finish the flow", v53, 2u);
    }

    objc_storeStrong(&v55, 0);
    (*(v59 + 2))(v59, selfCopy->_authResults, selfCopy->_escapeHatchError);
  }

  else if (selfCopy->_escapeHatchError)
  {
    v52 = _AKLogSystem();
    v51 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v52;
      v16 = v51;
      sub_10001CEEC(v50);
      _os_log_impl(&_mh_execute_header, v15, v16, "User elected to escape before handshake completed", v50, 2u);
    }

    objc_storeStrong(&v52, 0);
    if (([(NSError *)selfCopy->_escapeHatchError ak_isUserTryAgainError]& 1) != 0)
    {
      ++selfCopy->_retryCount;
      [(AKPiggybackRequestingController *)selfCopy _initiatePiggybackingWithCleanSession:1 withCompletion:v59];
    }

    else
    {
      v49 = _AKLogSystem();
      v48 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v49;
        v14 = v48;
        sub_10001CEEC(v47);
        _os_log_impl(&_mh_execute_header, v13, v14, "We did not capture a code, completing with escape results", v47, 2u);
      }

      objc_storeStrong(&v49, 0);
      (*(v59 + 2))(v59, selfCopy->_authResults, selfCopy->_escapeHatchError);
    }
  }

  else if (v60)
  {
    v46 = _AKLogSystem();
    v45 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v67, v60);
      _os_log_impl(&_mh_execute_header, v46, v45, "Handshake failed with error: %@", v67, 0xCu);
    }

    objc_storeStrong(&v46, 0);
    v8 = AKAppleIDAuthenticationErrorDomain;
    v65 = NSUnderlyingErrorKey;
    v66 = v60;
    v9 = [NSDictionary dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    v44 = [NSError errorWithDomain:v8 code:-7063 userInfo:?];
    _objc_release(v9);
    v12 = selfCopy;
    v10 = v44;
    v11 = location[0];
    v35 = _NSConcreteStackBlock;
    v36 = -1073741824;
    v37 = 0;
    v38 = sub_1000C81D0;
    v39 = &unk_1003200A8;
    v40 = _objc_retain(selfCopy);
    v41 = _objc_retain(location[0]);
    v42 = _objc_retain(v60);
    v43 = _objc_retain(v59);
    [(AKPiggybackRequestingController *)v12 _handleVerificationError:v10 withContext:v11 completion:&v35];
    objc_storeStrong(&v43, 0);
    objc_storeStrong(&v42, 0);
    objc_storeStrong(&v41, 0);
    objc_storeStrong(&v40, 0);
    objc_storeStrong(&v44, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    v33 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v64, v61);
      _os_log_impl(&_mh_execute_header, oslog, v33, "Code collected, starting to wait for: %@", v64, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v7 = selfCopy;
    v6 = v61;
    v24 = _NSConcreteStackBlock;
    v25 = -1073741824;
    v26 = 0;
    v27 = sub_1000C8218;
    v28 = &unk_1003225C8;
    v29 = _objc_retain(selfCopy);
    v30 = _objc_retain(location[0]);
    v31 = _objc_retain(v61);
    v32 = _objc_retain(v59);
    [(AKPiggybackRequestingController *)v7 processPushPayload:v6 completion:&v24];
    objc_storeStrong(&v32, 0);
    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v29, 0);
  }

  objc_storeStrong(&v59, 0);
  objc_storeStrong(&v60, 0);
  objc_storeStrong(&v61, 0);
  objc_storeStrong(location, 0);
}

- (void)_clearSessionState
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
    _os_log_impl(&_mh_execute_header, log, type, "Clearing requesting controller state", v4, 2u);
  }

  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy->_requestSession, 0);
  objc_storeStrong(&selfCopy->_escapeHatchError, 0);
  [(AKPiggybackRequestingController *)selfCopy _clearCaptureState];
}

- (void)processPushPayload:(id)payload completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, payload);
  v54 = 0;
  objc_storeStrong(&v54, completion);
  v18 = +[AKAccountManager sharedInstance];
  initialAuthResponse = [(AKPiggybackRequestingController *)selfCopy initialAuthResponse];
  altDSID = [(AKAuthenticationServerResponse *)initialAuthResponse altDSID];
  v53 = [AKAccountManager authKitAccountWithAltDSID:v18 error:"authKitAccountWithAltDSID:error:"];
  _objc_release(altDSID);
  _objc_release(initialAuthResponse);
  _objc_release(v18);
  [AKAnalyticsSender sendAnalyticsEvent:@"com.apple.authkit.piggybackingProcessPushPayloadStart" context:selfCopy->_initiatingContext account:v53 error:0];
  v52 = 0uLL;
  v19 = _AKSignpostLogSystem();
  *&v51 = _AKSignpostCreate();
  *(&v51 + 1) = v4;
  _objc_release(v19);
  v50 = _AKSignpostLogSystem();
  v49 = OS_SIGNPOST_INTERVAL_BEGIN;
  v48 = v51;
  if (v51 && v48 != -1 && os_signpost_enabled(v50))
  {
    sub_100034290(v59, [location[0] circleStep]);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v50, v49, v48, "PiggybackingRequestingProcessPushPayload", " CircleStep=%{public,signpost.telemetry:number1,name=CircleStep}d  enableTelemetry=YES ", v59, 8u);
  }

  objc_storeStrong(&v50, 0);
  v47 = _AKSignpostLogSystem();
  v46 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000342CC(v58, v51, [location[0] circleStep]);
    _os_log_impl(&_mh_execute_header, v47, v46, "BEGIN [%lld]: PiggybackingRequestingProcessPushPayload  CircleStep=%{public,signpost.telemetry:number1,name=CircleStep}d  enableTelemetry=YES ", v58, 0x12u);
  }

  objc_storeStrong(&v47, 0);
  v52 = v51;
  if (!v54)
  {
    __assert_rtn("[AKPiggybackRequestingController processPushPayload:completion:]", "AKPiggybackRequestingController.m", 253, "completion");
  }

  serverInfo = [location[0] serverInfo];
  latestIDMSData = selfCopy->_latestIDMSData;
  selfCopy->_latestIDMSData = serverInfo;
  _objc_release(latestIDMSData);
  v13 = selfCopy;
  replyPayload = [location[0] replyPayload];
  v7 = [(AKPiggybackRequestingController *)v13 contextWithIncomingPayload:?];
  currentReplyContext = selfCopy->_currentReplyContext;
  selfCopy->_currentReplyContext = v7;
  _objc_release(currentReplyContext);
  _objc_release(replyPayload);
  v36 = _NSConcreteStackBlock;
  v37 = -1073741824;
  v38 = 0;
  v39 = sub_1000C8C70;
  v40 = &unk_1003225F0;
  v41 = _objc_retain(selfCopy);
  v42 = _objc_retain(v53);
  v44 = v52;
  v43 = _objc_retain(v54);
  v45 = objc_retainBlock(&v36);
  [(AKPiggybackRequestingController *)selfCopy _startProximityControllerIfNeededWithPushPayload:location[0]];
  [(AKPiggybackRequestingController *)selfCopy _stopProximityControllerIfNeededWithPushPayload:location[0]];
  if ([location[0] clientErrorCode])
  {
    if ([location[0] clientErrorCode] == -9005)
    {
      oslog = _AKLogSystem();
      v34 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v57, selfCopy);
        _os_log_error_impl(&_mh_execute_header, oslog, v34, "%@: Proximity is being enforced and was not detected by accepting device (escrow fallback is expected)", v57, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      [(AKPiggybackRequestingController *)selfCopy _deliverPushPayload:location[0] attachDuplexSession:0 completion:v45];
    }

    else
    {
      v31 = 0;
      v29 = 0;
      if ([location[0] clientErrorCode] == -9003)
      {
        v32 = [NSError ak_errorWithCode:-7036];
        v31 = 1;
        v9 = _objc_retain(v32);
      }

      else
      {
        v30 = [NSError ak_errorWithCode:-7001];
        v29 = 1;
        v9 = _objc_retain(v30);
      }

      v33 = v9;
      if (v29)
      {
        _objc_release(v30);
      }

      if (v31)
      {
        _objc_release(v32);
      }

      v12 = selfCopy;
      v10 = v33;
      v11 = selfCopy->_currentReplyContext;
      v20 = _NSConcreteStackBlock;
      v21 = -1073741824;
      v22 = 0;
      v23 = sub_1000C8EEC;
      v24 = &unk_1003200A8;
      v25 = _objc_retain(selfCopy);
      v26 = _objc_retain(v33);
      v27 = _objc_retain(location[0]);
      v28 = _objc_retain(v45);
      [(AKPiggybackRequestingController *)v12 _handleVerificationError:v10 withContext:v11 completion:&v20];
      objc_storeStrong(&v28, 0);
      objc_storeStrong(&v27, 0);
      objc_storeStrong(&v26, 0);
      objc_storeStrong(&v25, 0);
      objc_storeStrong(&v33, 0);
    }
  }

  else
  {
    [(AKPiggybackRequestingController *)selfCopy _deliverPushPayload:location[0] completion:v45];
  }

  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v53, 0);
  objc_storeStrong(&v54, 0);
  objc_storeStrong(location, 0);
}

- (void)_deliverPushPayload:(id)payload completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, payload);
  v5 = 0;
  objc_storeStrong(&v5, completion);
  [(AKPiggybackRequestingController *)selfCopy _deliverPushPayload:location[0] attachDuplexSession:1 completion:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)_deliverPushPayload:(id)payload attachDuplexSession:(BOOL)session completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, payload);
  sessionCopy = session;
  v93 = 0;
  objc_storeStrong(&v93, completion);
  v92 = _AKLogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
  {
    log = v92;
    v47 = type;
    sub_10001CEEC(v90);
    _os_log_impl(&_mh_execute_header, log, v47, "Starting to process request message", v90, 2u);
  }

  objc_storeStrong(&v92, 0);
  v89 = _AKLogSystem();
  v88 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
  {
    v42 = v89;
    v43 = v88;
    requestSession = [(AKPiggybackRequestingController *)selfCopy requestSession];
    v41 = _objc_retain(requestSession);
    v87 = v41;
    clientInfo = [location[0] clientInfo];
    sub_10001B098(v105, v41, clientInfo);
    _os_log_debug_impl(&_mh_execute_header, v42, v43, "Will process message using session: %@ - %@", v105, 0x16u);
    _objc_release(clientInfo);
    _objc_release(requestSession);
    objc_storeStrong(&v87, 0);
  }

  objc_storeStrong(&v89, 0);
  v86 = 0;
  v85 = 0uLL;
  v40 = _AKSignpostLogSystem();
  *&v84 = _AKSignpostCreate();
  *(&v84 + 1) = v5;
  _objc_release(v40);
  v83 = _AKSignpostLogSystem();
  v82 = 1;
  v81 = v84;
  if (v84 && v81 != -1 && os_signpost_enabled(v83))
  {
    v37 = v83;
    v38 = v82;
    spid = v81;
    sub_10001CEEC(v80);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v37, v38, spid, "PiggyClientInfoForRequestController", " enableTelemetry=YES ", v80, 2u);
  }

  objc_storeStrong(&v83, 0);
  v79 = _AKSignpostLogSystem();
  v78 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
  {
    sub_100036FE8(v104, v84);
    _os_log_impl(&_mh_execute_header, v79, v78, "BEGIN [%lld]: PiggyClientInfoForRequestController  enableTelemetry=YES ", v104, 0xCu);
  }

  objc_storeStrong(&v79, 0);
  v85 = v84;
  requestSession2 = [(AKPiggybackRequestingController *)selfCopy requestSession];
  clientInfo2 = [location[0] clientInfo];
  v77 = v86;
  v34 = [KCJoiningRequestSecretSession processMessage:requestSession2 error:"processMessage:error:"];
  objc_storeStrong(&v86, v77);
  payload = [(AKCircleRequestContext *)selfCopy->_currentReplyContext payload];
  [payload setClientInfo:v34];
  _objc_release(payload);
  _objc_release(v34);
  _objc_release(clientInfo2);
  _objc_release(requestSession2);
  v76 = _AKSignpostGetNanoseconds() / 1000000000.0;
  v75 = _AKSignpostLogSystem();
  v74 = OS_SIGNPOST_INTERVAL_END;
  v73 = v85;
  if (v85 && v73 != -1 && os_signpost_enabled(v75))
  {
    sub_100034290(v103, [v86 code]);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v75, v74, v73, "PiggyClientInfoForRequestController", " Error=%{public,signpost.telemetry:number1,name=Error}d ", v103, 8u);
  }

  objc_storeStrong(&v75, 0);
  v72 = _AKSignpostLogSystem();
  v71 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000343D0(v102, v85, *&v76, [v86 code]);
    _os_log_impl(&_mh_execute_header, v72, v71, "END [%lld] %fs:PiggyClientInfoForRequestController  Error=%{public,signpost.telemetry:number1,name=Error}d ", v102, 0x1Cu);
  }

  objc_storeStrong(&v72, 0);
  v70 = _AKLogSystem();
  v69 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
  {
    v28 = v70;
    v29 = v69;
    requestSession3 = [(AKPiggybackRequestingController *)selfCopy requestSession];
    v27 = _objc_retain(requestSession3);
    v68 = v27;
    payload2 = [(AKCircleRequestContext *)selfCopy->_currentReplyContext payload];
    clientInfo3 = [payload2 clientInfo];
    sub_10001B098(v101, v27, clientInfo3);
    _os_log_debug_impl(&_mh_execute_header, v28, v29, "Did process message using session: %@ - %@", v101, 0x16u);
    _objc_release(clientInfo3);
    _objc_release(payload2);
    _objc_release(requestSession3);
    objc_storeStrong(&v68, 0);
  }

  objc_storeStrong(&v70, 0);
  if ([(AKPiggybackRequestingController *)selfCopy isDone])
  {
    oslog = _AKLogSystem();
    v66 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v25 = oslog;
      v26 = v66;
      sub_10001CEEC(v65);
      _os_log_impl(&_mh_execute_header, v25, v26, "Requesting session indicated that we are DONE", v65, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v64 = 0;
    v62 = 0;
    v24 = [(AKPiggybackRequestingController *)selfCopy _shouldContinueProcessing:&v62];
    objc_storeStrong(&v64, v62);
    v63 = v24;
    if (v24)
    {
      v61 = 0;
      if (sessionCopy)
      {
        session = [(KCJoiningRequestSecretSession *)selfCopy->_requestSession session];
        v7 = v61;
        v61 = session;
        _objc_release(v7);
      }

      else
      {
        v60 = _AKLogSystem();
        v59 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000194D4(v100, selfCopy);
          _os_log_impl(&_mh_execute_header, v60, v59, "%@: Will not attach duplex session to authentication results", v100, 0xCu);
        }

        objc_storeStrong(&v60, 0);
      }

      objc_storeStrong(&selfCopy->_requestSession, 0);
      if (v61)
      {
        v58 = _AKLogSystem();
        v57 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          v22 = v58;
          v23 = v57;
          sub_10001CEEC(v56);
          _os_log_impl(&_mh_execute_header, v22, v23, "Passing duplex session", v56, 2u);
        }

        objc_storeStrong(&v58, 0);
        v98[0] = AKAuthenticationDuplexSessionKey;
        v99[0] = v61;
        v98[1] = AKAuthenticationCircleContinuationContextKey;
        v99[1] = selfCopy->_currentReplyContext;
        v55 = [NSDictionary dictionaryWithObjects:v99 forKeys:v98 count:2];
        v54 = [(NSDictionary *)selfCopy->_authResults mutableCopy];
        [v54 addEntriesFromDictionary:v55];
        v8 = [v54 copy];
        authResults = selfCopy->_authResults;
        selfCopy->_authResults = v8;
        _objc_release(authResults);
        latestIDMSData = selfCopy->_latestIDMSData;
        payload3 = [(AKCircleRequestContext *)selfCopy->_currentReplyContext payload];
        [payload3 setServerInfo:latestIDMSData];
        _objc_release(payload3);
        objc_storeStrong(&v54, 0);
        objc_storeStrong(&v55, 0);
      }

      else
      {
        v53 = _AKLogSystem();
        v52 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          v18 = v53;
          v19 = v52;
          sub_10001CEEC(v51);
          _os_log_error_impl(&_mh_execute_header, v18, v19, "Duplex session creation failure", v51, 2u);
        }

        objc_storeStrong(&v53, 0);
      }

      objc_storeStrong(&v61, 0);
    }

    (*(v93 + 2))();
    objc_storeStrong(&v64, 0);
  }

  else
  {
    payload4 = [(AKCircleRequestContext *)selfCopy->_currentReplyContext payload];
    clientInfo4 = [payload4 clientInfo];
    _objc_release(clientInfo4);
    _objc_release(payload4);
    if (clientInfo4)
    {
      [(AKPiggybackRequestingController *)selfCopy replyWithContext:selfCopy->_currentReplyContext withCompletion:v93];
    }

    else
    {
      v50 = _AKLogSystem();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v97, v86);
        _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "Requesting session processing failure: %@", v97, 0xCu);
      }

      objc_storeStrong(&v50, 0);
      payload5 = [(AKCircleRequestContext *)selfCopy->_currentReplyContext payload];
      [payload5 setClientErrorCode:-9001];
      _objc_release(payload5);
      [(AKCircleRequestContext *)selfCopy->_currentReplyContext setWaitForReply:0];
      v12 = +[AKPiggybackController sharedController];
      v10 = [v12 performCircleRequestWithContext:selfCopy->_currentReplyContext completion:0];
      _objc_release(v12);
      v13 = v93;
      ac_secureCodingError = [v86 ac_secureCodingError];
      v14 = [NSError ak_errorWithCode:-7001 underlyingError:?];
      v13[2](v13, 0);
      _objc_release(v14);
      _objc_release(ac_secureCodingError);
    }
  }

  objc_storeStrong(&v86, 0);
  objc_storeStrong(&v93, 0);
  objc_storeStrong(location, 0);
}

- (void)_sendDeviceCancelledReplyWithContext:(id)context
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  payload = [location[0] payload];
  [payload setClientErrorCode:-9004];
  _objc_release(payload);
  payload2 = [location[0] payload];
  [payload2 setClientInfo:0];
  _objc_release(payload2);
  [location[0] setWaitForReply:0];
  v6 = +[AKPiggybackController sharedController];
  v3 = [v6 performCircleRequestWithContext:location[0] completion:0];
  _objc_release(v6);
  objc_storeStrong(location, 0);
}

- (void)replyWithContext:(id)context withCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v36 = 0;
  objc_storeStrong(&v36, completion);
  v35 = 0uLL;
  v12 = _AKSignpostLogSystem();
  *&v34 = _AKSignpostCreate();
  *(&v34 + 1) = v4;
  _objc_release(v12);
  v33 = _AKSignpostLogSystem();
  v32 = 1;
  v31 = v34;
  if (v34 && v31 != -1 && os_signpost_enabled(v33))
  {
    log = v33;
    type = v32;
    spid = v31;
    sub_10001CEEC(v30);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, log, type, spid, "PiggybackingRequestingReplyWithContext", " enableTelemetry=YES ", v30, 2u);
  }

  objc_storeStrong(&v33, 0);
  v29 = _AKSignpostLogSystem();
  v28 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    sub_100036FE8(v39, v34);
    _os_log_impl(&_mh_execute_header, v29, v28, "BEGIN [%lld]: PiggybackingRequestingReplyWithContext  enableTelemetry=YES ", v39, 0xCu);
  }

  objc_storeStrong(&v29, 0);
  v35 = v34;
  v20 = _NSConcreteStackBlock;
  v21 = -1073741824;
  v22 = 0;
  v23 = sub_1000CA5A8;
  v24 = &unk_100322618;
  v26 = v34;
  v25 = _objc_retain(v36);
  v27 = objc_retainBlock(&v20);
  v7 = +[AKPiggybackController sharedController];
  v6 = location[0];
  v13 = _NSConcreteStackBlock;
  v14 = -1073741824;
  v15 = 0;
  v16 = sub_1000CA7F4;
  v17 = &unk_100322640;
  v18 = _objc_retain(selfCopy);
  v19 = _objc_retain(v27);
  v5 = [v7 performCircleRequestWithContext:v6 completion:&v13];
  _objc_release(v7);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
}

- (id)contextWithIncomingPayload:(id)payload
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, payload);
  v7 = objc_opt_new();
  [v7 setPayload:location[0]];
  masterToken = [(AKAuthenticationServerResponse *)selfCopy->_initialAuthResponse masterToken];
  stringValue = [(AKMasterToken *)masterToken stringValue];
  [v7 setIdentityTokenValue:?];
  _objc_release(stringValue);
  _objc_release(masterToken);
  [v7 setAuthContext:selfCopy->_initiatingContext];
  v6 = _objc_retain(v7);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (BOOL)_shouldContinueProcessing:(id *)processing
{
  selfCopy = self;
  v31 = a2;
  processingCopy = processing;
  location = _AKLogSystem();
  v28 = 2;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
  {
    log = location;
    type = v28;
    sub_10001CEEC(v27);
    _os_log_debug_impl(&_mh_execute_header, log, type, "Attempting to determine whether we should continue.", v27, 2u);
  }

  objc_storeStrong(&location, 0);
  v26 = dispatch_semaphore_create(0);
  v19 = 0;
  v20 = &v19;
  v21 = 838860800;
  v22 = 48;
  v23 = sub_1000039DC;
  v24 = sub_1000111D0;
  v25 = 0;
  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  v7 = selfCopy;
  v12 = _NSConcreteStackBlock;
  v13 = -1073741824;
  v14 = 0;
  v15 = sub_1000CAE04;
  v16 = &unk_100322668;
  v17 = _objc_retain(selfCopy);
  v18[1] = &v19;
  v18[0] = _objc_retain(v26);
  [WeakRetained piggyback:v7 shouldContinueWithCompletion:&v12];
  _objc_release(WeakRetained);
  dispatch_semaphore_wait(v26, 0xFFFFFFFFFFFFFFFFLL);
  if (v20[5] && processingCopy)
  {
    v6 = v20[5];
    v3 = v6;
    *processingCopy = v6;
  }

  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006A654(v33, selfCopy->_authResults != 0);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Should continue: %d", v33, 8u);
  }

  objc_storeStrong(&oslog, 0);
  v5 = selfCopy->_authResults != 0;
  objc_storeStrong(v18, 0);
  objc_storeStrong(&v17, 0);
  _Block_object_dispose(&v19, 8);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  return v5;
}

- (BOOL)isDone
{
  requestSession = [(AKPiggybackRequestingController *)self requestSession];
  isDone = [(KCJoiningRequestSecretSession *)requestSession isDone];
  _objc_release(requestSession);
  return isDone;
}

- (KCJoiningRequestSecretSession)requestSession
{
  selfCopy = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    initialAuthResponse = [(AKPiggybackRequestingController *)selfCopy initialAuthResponse];
    dsid = [(AKAuthenticationServerResponse *)initialAuthResponse dsid];
    sub_10001CE98(v24, 1752392040, dsid);
    _os_log_debug_impl(&_mh_execute_header, location[0], OS_LOG_TYPE_DEBUG, "Initializing requesting session: %{mask.hash}@", v24, 0x16u);
    _objc_release(dsid);
    _objc_release(initialAuthResponse);
  }

  objc_storeStrong(location, 0);
  if (!selfCopy->_requestSession)
  {
    if (sub_100058B0C(0))
    {
      sub_1000592E4();
    }

    if (objc_opt_respondsToSelector())
    {
      if (sub_100058B0C(0))
      {
        v19 = sub_1000592E4();
      }

      else
      {
        v19 = 0;
      }

      v12 = selfCopy;
      initialAuthResponse2 = [(AKPiggybackRequestingController *)selfCopy initialAuthResponse];
      dsid2 = [(AKAuthenticationServerResponse *)initialAuthResponse2 dsid];
      unsignedLongLongValue = [(NSNumber *)dsid2 unsignedLongLongValue];
      initialAuthResponse3 = [(AKPiggybackRequestingController *)selfCopy initialAuthResponse];
      altDSID = [(AKAuthenticationServerResponse *)initialAuthResponse3 altDSID];
      telemetryFlowID = [(AKAppleIDAuthenticationContext *)selfCopy->_initiatingContext telemetryFlowID];
      v2 = [v19 sessionWithSecretDelegate:v12 dsid:unsignedLongLongValue altDSID:altDSID flowID:? deviceSessionID:? error:?];
      requestSession = selfCopy->_requestSession;
      selfCopy->_requestSession = v2;
      _objc_release(requestSession);
      _objc_release(telemetryFlowID);
      _objc_release(altDSID);
      _objc_release(initialAuthResponse3);
      _objc_release(dsid2);
      _objc_release(initialAuthResponse2);
    }

    else
    {
      if (sub_100058B0C(0))
      {
        v11 = sub_1000592E4();
      }

      else
      {
        v11 = 0;
      }

      v8 = selfCopy;
      initialAuthResponse4 = [(AKPiggybackRequestingController *)selfCopy initialAuthResponse];
      dsid3 = [(AKAuthenticationServerResponse *)initialAuthResponse4 dsid];
      v4 = [v11 sessionWithSecretDelegate:v8 dsid:-[NSNumber unsignedLongLongValue](dsid3 error:{"unsignedLongLongValue"), 0}];
      v5 = selfCopy->_requestSession;
      selfCopy->_requestSession = v4;
      _objc_release(v5);
      _objc_release(dsid3);
      _objc_release(initialAuthResponse4);
    }
  }

  v6 = selfCopy->_requestSession;

  return v6;
}

- (id)secret
{
  selfCopy = self;
  oslog[1] = a2;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_10001B098(v5, selfCopy->_capturedCode, selfCopy->_escapeHatchError);
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "Using a previously cached code or error: %@ - %@", v5, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  return [(AKPiggybackRequestingController *)selfCopy _capturedCodeString];
}

- (BOOL)processAccountCode:(id)code error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, code);
  errorCopy = error;
  v33 = _AKLogSystem();
  v32 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v38, location[0]);
    _os_log_debug_impl(&_mh_execute_header, v33, v32, "Validating Code: %@", v38, 0xCu);
  }

  objc_storeStrong(&v33, 0);
  v27 = 0;
  v28 = &v27;
  v29 = 0x20000000;
  v30 = 32;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 838860800;
  v23 = 48;
  v24 = sub_1000039DC;
  v25 = sub_1000111D0;
  v26 = 0;
  v19 = dispatch_semaphore_create(0);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  v9 = selfCopy;
  v8 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [location[0] longLongValue]);
  v13 = _NSConcreteStackBlock;
  v14 = -1073741824;
  v15 = 0;
  v16 = sub_1000CB924;
  v17 = &unk_100322690;
  v18[1] = &v27;
  v18[2] = &v20;
  v18[0] = _objc_retain(v19);
  [WeakRetained piggyback:v9 validateSecurityCode:v8 completion:&v13];
  _objc_release(v8);
  _objc_release(WeakRetained);
  dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100091F70(v37, v28[3] & 1, v21[5]);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Code validated with result: %d - %@", v37, 0x12u);
  }

  objc_storeStrong(&oslog, 0);
  if (errorCopy)
  {
    v7 = v21[5];
    v4 = v7;
    *errorCopy = v7;
  }

  v6 = *(v28 + 24);
  objc_storeStrong(v18, 0);
  objc_storeStrong(&v19, 0);
  _Block_object_dispose(&v20, 8);
  objc_storeStrong(&v26, 0);
  _Block_object_dispose(&v27, 8);
  objc_storeStrong(location, 0);
  return v6 & 1;
}

- (void)_handleVerificationError:(id)error withContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v18 = 0;
  objc_storeStrong(&v18, context);
  v17 = 0;
  objc_storeStrong(&v17, completion);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  v7 = selfCopy;
  v8 = location[0];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1000CBC00;
  v13 = &unk_1003226B8;
  v14 = _objc_retain(selfCopy);
  v15 = _objc_retain(v18);
  v16 = _objc_retain(v17);
  [WeakRetained piggyback:v7 handleVerificationWithError:v8 completion:?];
  _objc_release(WeakRetained);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)_promptForSecretWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v34 = 0;
  objc_storeStrong(&v34, completion);
  v33 = 0uLL;
  v13 = _AKSignpostLogSystem();
  *&v32 = _AKSignpostCreate();
  *(&v32 + 1) = v4;
  _objc_release(v13);
  v31 = _AKSignpostLogSystem();
  v30 = 1;
  v29 = v32;
  if (v32 && v29 != -1 && os_signpost_enabled(v31))
  {
    log = v31;
    type = v30;
    spid = v29;
    sub_10001CEEC(v28);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, log, type, spid, "PiggyCodeCollect", " enableTelemetry=YES ", v28, 2u);
  }

  objc_storeStrong(&v31, 0);
  v27 = _AKSignpostLogSystem();
  v26 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    sub_100036FE8(v37, v32);
    _os_log_impl(&_mh_execute_header, v27, v26, "BEGIN [%lld]: PiggyCodeCollect  enableTelemetry=YES ", v37, 0xCu);
  }

  objc_storeStrong(&v27, 0);
  v33 = v32;
  v25 = _AKLogSystem();
  v24 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v25;
    v8 = v24;
    sub_10001CEEC(v23);
    _os_log_impl(&_mh_execute_header, v7, v8, "Prompting user for piggybacking code", v23, 2u);
  }

  objc_storeStrong(&v25, 0);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  v5 = selfCopy;
  v14 = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = sub_1000CC06C;
  v18 = &unk_1003226E0;
  v22 = v33;
  v19 = _objc_retain(selfCopy);
  v20 = _objc_retain(location[0]);
  v21 = _objc_retain(v34);
  [WeakRetained piggyback:v5 promptForRandomCodeWithCompletion:&v14];
  _objc_release(WeakRetained);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
}

- (void)_processCachedUserInputWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v18 = 0;
  objc_storeStrong(&v18, completion);
  if ([(AKAppleIDAuthenticationContext *)selfCopy->_initiatingContext piggybackingForTrustedDevice]== 1 && selfCopy->_escapeHatchTrigger)
  {
    v17 = _AKLogSystem();
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v21, selfCopy->_escapeHatchTrigger);
      _os_log_impl(&_mh_execute_header, v17, v16, "Received error %@, sending cancelled reply...", v21, 0xCu);
    }

    objc_storeStrong(&v17, 0);
    [(AKPiggybackRequestingController *)selfCopy _sendDeviceCancelledReplyWithContext:location[0]];
    objc_storeStrong(&selfCopy->_escapeHatchError, selfCopy->_escapeHatchTrigger);
    (*(v18 + 2))();
    v15 = 1;
  }

  else
  {
    v5 = selfCopy;
    v4 = location[0];
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_1000CC608;
    v11 = &unk_100321910;
    v12 = _objc_retain(selfCopy);
    v13 = _objc_retain(location[0]);
    v14 = _objc_retain(v18);
    [(AKPiggybackRequestingController *)v5 _processCodeEntryErrorWithContext:v4 completion:&v7];
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v12, 0);
    v15 = 0;
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)_processCodeEntryErrorWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v22 = 0;
  objc_storeStrong(&v22, completion);
  if (selfCopy->_escapeHatchTrigger)
  {
    if (([(NSError *)selfCopy->_escapeHatchTrigger ak_isUserCancelError]& 1) != 0)
    {
      v10 = +[AKAccountManager sharedInstance];
      initialAuthResponse = [(AKPiggybackRequestingController *)selfCopy initialAuthResponse];
      altDSID = [(AKAuthenticationServerResponse *)initialAuthResponse altDSID];
      v21 = [AKAccountManager authKitAccountWithAltDSID:v10 error:"authKitAccountWithAltDSID:error:"];
      _objc_release(altDSID);
      _objc_release(initialAuthResponse);
      _objc_release(v10);
      [AKAnalyticsSender sendAnalyticsEvent:@"com.apple.authkit.piggybackingCancellation" context:selfCopy->_initiatingContext account:v21 error:0];
      [(AKPiggybackRequestingController *)selfCopy _sendDeviceCancelledReplyWithContext:location[0]];
      (*(v22 + 2))(v22, 0, selfCopy->_escapeHatchTrigger);
      objc_storeStrong(&v21, 0);
    }

    else
    {
      if ([(NSError *)selfCopy->_escapeHatchTrigger code]== -7035)
      {
        v20 = _AKLogSystem();
        v19 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v7 = [(NSError *)selfCopy->_escapeHatchTrigger debugDescription];
          sub_1000194D4(v25, v7);
          _os_log_error_impl(&_mh_execute_header, v20, v19, "Didn't get a code with error: %@", v25, 0xCu);
          _objc_release(v7);
        }

        objc_storeStrong(&v20, 0);
        [(AKPiggybackRequestingController *)selfCopy _sendDeviceCancelledReplyWithContext:location[0]];
      }

      WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
      v4 = selfCopy;
      escapeHatchTrigger = selfCopy->_escapeHatchTrigger;
      v12 = _NSConcreteStackBlock;
      v13 = -1073741824;
      v14 = 0;
      v15 = sub_1000CCD64;
      v16 = &unk_100320A58;
      v17 = _objc_retain(selfCopy);
      v18 = _objc_retain(v22);
      [WeakRetained piggyback:v4 handleEscapeHatchError:escapeHatchTrigger completion:&v12];
      _objc_release(WeakRetained);
      objc_storeStrong(&v18, 0);
      objc_storeStrong(&v17, 0);
    }
  }

  else
  {
    (*(v22 + 2))(v22, 0);
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)_cacheSecondFactor:(id)factor codeCaptureError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, factor);
  v8 = 0;
  objc_storeStrong(&v8, error);
  [(AKPiggybackRequestingController *)selfCopy _clearCaptureState];
  if (location[0])
  {
    objc_storeStrong(&selfCopy->_capturedCode, location[0]);
  }

  else if (v8)
  {
    objc_storeStrong(&selfCopy->_escapeHatchTrigger, v8);
  }

  else
  {
    v4 = [NSError ak_errorWithCode:-7035];
    escapeHatchTrigger = selfCopy->_escapeHatchTrigger;
    selfCopy->_escapeHatchTrigger = v4;
    _objc_release(escapeHatchTrigger);
  }

  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_10001B098(v11, selfCopy->_capturedCode, selfCopy->_escapeHatchTrigger);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Captured code: %@ - %@", v11, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)_startProximityControllerIfNeededWithPushPayload:(id)payload
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, payload);
  circleStep = [location[0] circleStep];
  presenceSID = [location[0] presenceSID];
  allowPiggybackingPresence = [(AKAuthenticationServerResponse *)selfCopy->_initialAuthResponse allowPiggybackingPresence];
  if (circleStep || (allowPiggybackingPresence & 1) == 0)
  {
    v4 = _AKLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      if (allowPiggybackingPresence)
      {
        v3 = @"YES";
      }

      else
      {
        v3 = @"NO";
      }

      sub_100036834(v14, selfCopy, v3, circleStep, presenceSID);
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%@: Determined proximity advertiser should not be started (wantsPresence: %@, circleStep: %lu, presenceSID: %@)", v14, 0x2Au);
    }

    objc_storeStrong(&v4, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v16, selfCopy);
      _os_log_impl(&_mh_execute_header, oslog, type, "%@: Determined proximity advertiser should be started", v16, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    if (presenceSID)
    {
      [(AKPiggybackRequestingController *)selfCopy _startProximityControllerWithPresenceSID:presenceSID];
    }

    else
    {
      v6 = _AKLogSystem();
      v5 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10001B098(v15, selfCopy, location[0]);
        _os_log_error_impl(&_mh_execute_header, v6, v5, "%@: Unable to start proximity advertiser with nil presenceSID from pushPayload (%@)", v15, 0x16u);
      }

      objc_storeStrong(&v6, 0);
    }
  }

  objc_storeStrong(&presenceSID, 0);
  objc_storeStrong(location, 0);
}

- (void)_stopProximityControllerIfNeededWithPushPayload:(id)payload
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, payload);
  circleStep = [location[0] circleStep];
  v6 = 1;
  if (circleStep != 4)
  {
    v6 = circleStep == 6;
  }

  v12 = v6;
  v10 = 0;
  v5 = 0;
  if (v6)
  {
    proximityController = [(AKPiggybackRequestingController *)selfCopy proximityController];
    v10 = 1;
    v5 = proximityController != 0;
  }

  if (v10)
  {
    _objc_release(proximityController);
  }

  if (v5)
  {
    oslog = _AKLogSystem();
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_100074370(v17, selfCopy, circleStep);
      _os_log_impl(&_mh_execute_header, oslog, type, "%@: Determined proximity advertiser should be stopped (circleStep: %lu)", v17, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    [(AKPiggybackRequestingController *)selfCopy _stopProximityController];
  }

  else
  {
    v7 = _AKLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v3 = selfCopy;
      proximityController2 = [(AKPiggybackRequestingController *)selfCopy proximityController];
      sub_1000378DC(v16, v3, circleStep, proximityController2);
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%@: Determined proximity advertiser does not need to be stopped (circleStep: %lu, proximityController: %@)", v16, 0x20u);
      _objc_release(proximityController2);
    }

    objc_storeStrong(&v7, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)_startProximityControllerWithPresenceSID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v3 = [AKProximityPiggybackRequestingEngine alloc];
  v10 = [(AKProximityPiggybackEngine *)v3 initWithPresenceSID:location[0]];
  v7 = [[AKProximityController alloc] initWithEngine:v10];
  [(AKPiggybackRequestingController *)selfCopy setProximityController:?];
  _objc_release(v7);
  proximityController = [(AKPiggybackRequestingController *)selfCopy proximityController];
  [(AKProximityController *)proximityController setInvalidationHandler:&stru_100322700];
  _objc_release(proximityController);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = selfCopy;
    proximityController2 = [(AKPiggybackRequestingController *)selfCopy proximityController];
    sub_100037570(v13, v5, proximityController2, 1752392040, location[0]);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%@: Setting up proximity controller (%@) with presenceSID (%{mask.hash}@)", v13, 0x2Au);
    _objc_release(proximityController2);
  }

  objc_storeStrong(&oslog, 0);
  proximityController3 = [(AKPiggybackRequestingController *)selfCopy proximityController];
  [(AKProximityController *)proximityController3 activate];
  _objc_release(proximityController3);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)_stopProximityController
{
  selfCopy = self;
  location[1] = a2;
  proximityController = [(AKPiggybackRequestingController *)self proximityController];
  _objc_release(proximityController);
  if (proximityController)
  {
    location[0] = _AKLogSystem();
    v12 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      log = location[0];
      type = v12;
      sub_10001CEEC(v11);
      _os_log_impl(&_mh_execute_header, log, type, "AKPiggybackRequestingController: Invalidating proximity controller.", v11, 2u);
    }

    objc_storeStrong(location, 0);
    proximityController2 = [(AKPiggybackRequestingController *)selfCopy proximityController];
    [(AKProximityController *)proximityController2 invalidate];
    _objc_release(proximityController2);
    [(AKPiggybackRequestingController *)selfCopy setProximityController:0];
  }

  else
  {
    v10 = _AKLogSystem();
    v9 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v2 = v10;
      v3 = v9;
      sub_10001CEEC(v8);
      _os_log_error_impl(&_mh_execute_header, v2, v3, "AKPiggybackRequestingController: Proximity controller is nil.", v8, 2u);
    }

    objc_storeStrong(&v10, 0);
  }
}

- (AKPiggybackRequestingControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end