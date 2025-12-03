@interface DADeviceConnectionLocal
- (BOOL)_shutdownForBatteryDisconnectWithUnsealCode:(unsigned int)code;
- (BOOL)_shutdownToShelfLifeMode;
- (DADeviceConnectionDelegate)delegate;
- (DADeviceConnectionLocal)initWithState:(id)state;
- (id)session:(id)session estimatedTimeRemainingForTest:(id)test;
- (id)session:(id)session progressForTest:(id)test;
- (int)mode;
- (unsigned)_unsealCodeFromParameters:(id)parameters;
- (void)_session:(id)_session didFinishSuiteWithName:(id)name skipped:(BOOL)skipped;
- (void)_sessionDidPowerOff:(id)off forReboot:(BOOL)reboot withParameters:(id)parameters;
- (void)_setNextBootForBootMode:(int64_t)mode;
- (void)_shutDownDeviceForReboot:(BOOL)reboot;
- (void)archive;
- (void)end;
- (void)idle;
- (void)requestAsset:(id)asset completionHandler:(id)handler;
- (void)requestSuiteStart:(id)start completionHandler:(id)handler;
- (void)requestUploadAssets:(id)assets completion:(id)completion;
- (void)session:(id)session cancelTest:(id)test;
- (void)session:(id)session didCompleteTestSuite:(id)suite description:(id)description;
- (void)session:(id)session didEndWithError:(id)error;
- (void)session:(id)session didFinishSendingResultForTest:(id)test;
- (void)session:(id)session didPauseSendingResultForTest:(id)test error:(id)error;
- (void)session:(id)session didPauseWithError:(id)error;
- (void)session:(id)session didRequestInstructionalPrompt:(id)prompt withConfirmation:(id)confirmation;
- (void)session:(id)session didRequestSuiteRunWithDestinations:(id)destinations confirmation:(id)confirmation;
- (void)session:(id)session didResumeSendingResultForTest:(id)test;
- (void)session:(id)session didStartTestSuite:(id)suite description:(id)description;
- (void)session:(id)session didUpdateSettings:(id)settings completionHandler:(id)handler;
- (void)session:(id)session didUpdateTestSuiteImage:(id)image;
- (void)session:(id)session didUpdateTestSuiteProgress:(id)progress;
- (void)session:(id)session generateAuthInfoWithNonce:(id)nonce;
- (void)session:(id)session performActions:(id)actions sequentially:(BOOL)sequentially stopOnError:(BOOL)error;
- (void)session:(id)session profile:(id)profile filteredByComponents:(id)components;
- (void)session:(id)session signFile:(id)file completionHandler:(id)handler;
- (void)session:(id)session signPayload:(id)payload completionHandler:(id)handler;
- (void)session:(id)session startTest:(id)test parameters:(id)parameters testResult:(id)result;
- (void)sessionDidCancelSuite:(id)suite;
- (void)sessionDidReboot:(id)reboot withParameters:(id)parameters;
- (void)sessionDidResume:(id)resume;
- (void)sessionDidShutDown:(id)down withParameters:(id)parameters;
- (void)sessionDidStart:(id)start;
- (void)start;
@end

@implementation DADeviceConnectionLocal

- (DADeviceConnectionLocal)initWithState:(id)state
{
  stateCopy = state;
  v15.receiver = self;
  v15.super_class = DADeviceConnectionLocal;
  v6 = [(DADeviceConnectionLocal *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_state, state);
    v7->_disconnecting = 0;
    [(DADeviceState *)v7->_state setPhase:0];
    v8 = objc_alloc_init(DAAssetUploader);
    assetUploader = v7->_assetUploader;
    v7->_assetUploader = v8;

    v10 = +[NSMutableDictionary dictionary];
    sandboxExtensionHandles = v7->_sandboxExtensionHandles;
    v7->_sandboxExtensionHandles = v10;

    v12 = +[NSMutableDictionary dictionary];
    progressForTest = v7->_progressForTest;
    v7->_progressForTest = v12;
  }

  return v7;
}

- (int)mode
{
  configurator = [(DADeviceConnectionLocal *)self configurator];

  if (!configurator)
  {
    return 0;
  }

  configurator2 = [(DADeviceConnectionLocal *)self configurator];
  mode = [configurator2 mode];

  return mode;
}

- (void)start
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[DADeviceConnectionLocal start]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", buf, 0xCu);
  }

  state = [(DADeviceConnectionLocal *)self state];
  v5 = [NSSet setWithObjects:&off_1001CC110, &off_1001CC128, &off_1001CC140, 0];
  [state removeErrorCodes:v5];

  state2 = [(DADeviceConnectionLocal *)self state];
  [state2 setPhase:2];

  session = [(DADeviceConnectionLocal *)self session];

  if (!session)
  {
    state3 = [(DADeviceConnectionLocal *)self state];
    serialNumber = [state3 serialNumber];
    v10 = [ASTIdentity identityWithSerialNumber:serialNumber];
    v11 = [ASTSession sessionWithIdentity:v10];
    [(DADeviceConnectionLocal *)self setSession:v11];

    session2 = [(DADeviceConnectionLocal *)self session];
    [session2 setDelegate:self];
  }

  session3 = [(DADeviceConnectionLocal *)self session];
  [session3 startWithMode:{-[DADeviceConnectionLocal mode](self, "mode")}];
}

- (void)idle
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[DADeviceConnectionLocal idle]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", &v5, 0xCu);
  }

  session = [(DADeviceConnectionLocal *)self session];
  [session idle];
}

- (void)end
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[DADeviceConnectionLocal end]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", &v6, 0xCu);
  }

  [(DADeviceConnectionLocal *)self setDisconnecting:1];
  session = [(DADeviceConnectionLocal *)self session];

  if (session)
  {
    session2 = [(DADeviceConnectionLocal *)self session];
    [session2 end];
  }

  else
  {
    session2 = [(DADeviceConnectionLocal *)self state];
    [session2 setPhase:1];
  }
}

- (void)requestAsset:(id)asset completionHandler:(id)handler
{
  handlerCopy = handler;
  assetCopy = asset;
  v8 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[DADeviceConnectionLocal requestAsset:completionHandler:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", buf, 0xCu);
  }

  session = [(DADeviceConnectionLocal *)self session];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100008D54;
  v11[3] = &unk_1001BC780;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [session requestAsset:assetCopy completionHandler:v11];
}

- (void)requestUploadAssets:(id)assets completion:(id)completion
{
  assetsCopy = assets;
  completionCopy = completion;
  v8 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[DADeviceConnectionLocal requestUploadAssets:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", &v12, 0xCu);
  }

  assetUploader = [(DADeviceConnectionLocal *)self assetUploader];

  if (assetUploader)
  {
    assetUploader2 = [(DADeviceConnectionLocal *)self assetUploader];
    strongDeviceIdentity = [(DADeviceConnectionLocal *)self strongDeviceIdentity];
    [assetUploader2 uploadAssets:assetsCopy wtihDeviceIdentity:strongDeviceIdentity completion:completionCopy];
  }

  else
  {
    assetUploader2 = +[NSArray array];
    strongDeviceIdentity = [NSError errorWithDomain:DKErrorDomain code:-1008 userInfo:0];
    completionCopy[2](completionCopy, assetUploader2, strongDeviceIdentity);
  }
}

- (void)requestSuiteStart:(id)start completionHandler:(id)handler
{
  handlerCopy = handler;
  startCopy = start;
  v8 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[DADeviceConnectionLocal requestSuiteStart:completionHandler:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", buf, 0xCu);
  }

  session = [(DADeviceConnectionLocal *)self session];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100009034;
  v11[3] = &unk_1001BC7A8;
  v11[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [session requestSuiteStart:startCopy completionHandler:v11];
}

- (void)sessionDidStart:(id)start
{
  v4 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[DADeviceConnectionLocal sessionDidStart:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", &v6, 0xCu);
  }

  if (![(DADeviceConnectionLocal *)self isDisconnecting])
  {
    state = [(DADeviceConnectionLocal *)self state];
    [state setPhase:4];
  }
}

- (void)session:(id)session startTest:(id)test parameters:(id)parameters testResult:(id)result
{
  testCopy = test;
  parametersCopy = parameters;
  resultCopy = result;
  v12 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v36 = "[DADeviceConnectionLocal session:startTest:parameters:testResult:]";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", buf, 0xCu);
  }

  [resultCopy setStatusCode:&off_1001CC158];
  v13 = [parametersCopy objectForKeyedSubscript:@"specifications"];
  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 objectForKeyedSubscript:@"allowCellularSizeThreshold"];
      if (v14)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v16 = DiagnosticLogHandleForCategory();
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
        if ((isKindOfClass & 1) == 0)
        {
          if (v17)
          {
            *buf = 138412290;
            v36 = v14;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Bad test specification value. Expected a number, got [%@]", buf, 0xCu);
          }

          [resultCopy setStatusCode:&off_1001CC170];
          v18 = 0;
          goto LABEL_15;
        }

        if (v17)
        {
          *buf = 138412290;
          v36 = v14;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Setting cellular threshold to %@.", buf, 0xCu);
        }

        [resultCopy setAllowCellularSizeThreshold:v14];
      }

      v18 = 1;
LABEL_15:

      goto LABEL_16;
    }
  }

  v18 = 1;
LABEL_16:
  isDisconnecting = [(DADeviceConnectionLocal *)self isDisconnecting];
  if (!v18 || isDisconnecting)
  {
    session = [(DADeviceConnectionLocal *)self session];
    [session sendTestResult:resultCopy error:0];
  }

  else
  {
    v20 = +[NSDate date];
    v27 = _NSConcreteStackBlock;
    v28 = 3221225472;
    v29 = sub_100009578;
    v30 = &unk_1001BC7D0;
    selfCopy = self;
    v21 = testCopy;
    v32 = v21;
    v33 = resultCopy;
    v34 = v20;
    session = v20;
    v23 = objc_retainBlock(&v27);
    v24 = objc_opt_new();
    [v24 setTestID:{v21, v27, v28, v29, v30, selfCopy}];
    v25 = [DKDiagnosticParameters diagnosticParametersWithDictionary:parametersCopy];
    [v24 setParameters:v25];

    [v24 setCompletion:v23];
    delegate = [(DADeviceConnectionLocal *)self delegate];
    [delegate deviceConnection:self didRecieveCommand:v24];
  }
}

- (void)session:(id)session didEndWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  v8 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[DADeviceConnectionLocal session:didEndWithError:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", buf, 0xCu);
  }

  state = [(DADeviceConnectionLocal *)self state];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100009A78;
  v12[3] = &unk_1001BC7F8;
  v13 = errorCopy;
  selfCopy = self;
  v15 = sessionCopy;
  v10 = sessionCopy;
  v11 = errorCopy;
  [state transactionWithBlock:v12];

  [(DADeviceConnectionLocal *)self setDisconnecting:0];
  [(DADeviceConnectionLocal *)self setStrongDeviceIdentity:0];
}

- (void)session:(id)session didStartTestSuite:(id)suite description:(id)description
{
  suiteCopy = suite;
  descriptionCopy = description;
  v9 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[DADeviceConnectionLocal session:didStartTestSuite:description:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", buf, 0xCu);
  }

  state = [(DADeviceConnectionLocal *)self state];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100009D58;
  v13[3] = &unk_1001BC820;
  v14 = suiteCopy;
  v15 = descriptionCopy;
  v11 = descriptionCopy;
  v12 = suiteCopy;
  [state transactionWithBlock:v13];
}

- (void)session:(id)session didCompleteTestSuite:(id)suite description:(id)description
{
  suiteCopy = suite;
  sessionCopy = session;
  v9 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[DADeviceConnectionLocal session:didCompleteTestSuite:description:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", &v10, 0xCu);
  }

  [(DADeviceConnectionLocal *)self _session:sessionCopy didFinishSuiteWithName:suiteCopy skipped:0];
}

- (void)sessionDidCancelSuite:(id)suite
{
  suiteCopy = suite;
  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[DADeviceConnectionLocal sessionDidCancelSuite:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", &v8, 0xCu);
  }

  state = [(DADeviceConnectionLocal *)self state];
  suiteName = [state suiteName];
  [(DADeviceConnectionLocal *)self _session:suiteCopy didFinishSuiteWithName:suiteName skipped:1];
}

- (void)_session:(id)_session didFinishSuiteWithName:(id)name skipped:(BOOL)skipped
{
  skippedCopy = skipped;
  _sessionCopy = _session;
  nameCopy = name;
  v10 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v28 = "[DADeviceConnectionLocal _session:didFinishSuiteWithName:skipped:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", buf, 0xCu);
  }

  if (![(DADeviceConnectionLocal *)self isDisconnecting])
  {
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10000A274;
    v26[3] = &unk_1001BC870;
    v26[4] = self;
    v11 = objc_retainBlock(v26);
    if ([_sessionCopy shouldShowResults] && (-[DADeviceConnectionLocal state](self, "state"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "diagnosticEventID"), v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13))
    {
      session = [(DADeviceConnectionLocal *)self session];
      state = [(DADeviceConnectionLocal *)self state];
      diagnosticEventID = [state diagnosticEventID];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10000A468;
      v22[3] = &unk_1001BC898;
      v24 = v11;
      v23 = nameCopy;
      v25 = skippedCopy;
      [session requestSuiteSummary:diagnosticEventID completionHandler:v22];

      state2 = v24;
    }

    else
    {
      v18 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Skipping requesting suite summary", buf, 2u);
      }

      v19 = [DAHistoryEntry alloc];
      state2 = [(DADeviceConnectionLocal *)self state];
      suiteName = [state2 suiteName];
      v21 = [(DAHistoryEntry *)v19 initWithTestSuiteName:suiteName skipped:skippedCopy];
      (v11[2])(v11, v21, 0);
    }
  }
}

- (void)session:(id)session didUpdateTestSuiteProgress:(id)progress
{
  progressCopy = progress;
  v6 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100157FDC(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  if (![(DADeviceConnectionLocal *)self isDisconnecting])
  {
    state = [(DADeviceConnectionLocal *)self state];
    [state setProgress:progressCopy];
  }
}

- (void)session:(id)session didUpdateTestSuiteImage:(id)image
{
  imageCopy = image;
  v6 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[DADeviceConnectionLocal session:didUpdateTestSuiteImage:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", &v8, 0xCu);
  }

  state = [(DADeviceConnectionLocal *)self state];
  [state setTestSuiteImageData:imageCopy];
}

- (id)session:(id)session progressForTest:(id)test
{
  testCopy = test;
  v6 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = "[DADeviceConnectionLocal session:progressForTest:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", &v14, 0xCu);
  }

  progressForTest = [(DADeviceConnectionLocal *)self progressForTest];
  v8 = [progressForTest objectForKeyedSubscript:testCopy];

  if (v8 && ([v8 isIndeterminate] & 1) == 0)
  {
    fractionCompleted = [v8 fractionCompleted];
    [fractionCompleted doubleValue];
    v9 = [NSNumber numberWithDouble:v11 * 100.0];
  }

  else
  {
    v9 = 0;
  }

  v12 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[DADeviceConnectionLocal session:progressForTest:]";
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s progress is: %@", &v14, 0x16u);
  }

  return v9;
}

- (id)session:(id)session estimatedTimeRemainingForTest:(id)test
{
  testCopy = test;
  v6 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[DADeviceConnectionLocal session:estimatedTimeRemainingForTest:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", &v11, 0xCu);
  }

  progressForTest = [(DADeviceConnectionLocal *)self progressForTest];
  v8 = [progressForTest objectForKeyedSubscript:testCopy];

  if (v8)
  {
    estimatedTimeRemaining = [v8 estimatedTimeRemaining];
  }

  else
  {
    estimatedTimeRemaining = 0;
  }

  return estimatedTimeRemaining;
}

- (void)session:(id)session didRequestSuiteRunWithDestinations:(id)destinations confirmation:(id)confirmation
{
  destinationsCopy = destinations;
  confirmationCopy = confirmation;
  delegate = [(DADeviceConnectionLocal *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(DADeviceConnectionLocal *)self delegate];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000AABC;
    v13[3] = &unk_1001BC8E8;
    v14 = destinationsCopy;
    selfCopy = self;
    v16 = confirmationCopy;
    [delegate2 deviceConnection:self didRequestSuiteRunWithDestinations:v14 confirmation:v13];
  }

  else
  {
    state = [(DADeviceConnectionLocal *)self state];
    [state setSuitesAvailable:&__NSArray0__struct];

    (*(confirmationCopy + 2))(confirmationCopy, 0);
  }
}

- (void)session:(id)session didRequestInstructionalPrompt:(id)prompt withConfirmation:(id)confirmation
{
  promptCopy = prompt;
  confirmationCopy = confirmation;
  delegate = [(DADeviceConnectionLocal *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(DADeviceConnectionLocal *)self delegate];
    [delegate2 deviceConnection:self didRequestInstructionalPrompt:promptCopy withConfirmation:confirmationCopy];
  }

  else
  {
    delegate2 = [promptCopy identifier];
    confirmationCopy[2](confirmationCopy, delegate2, 0);
  }
}

- (void)session:(id)session performActions:(id)actions sequentially:(BOOL)sequentially stopOnError:(BOOL)error
{
  actionsCopy = actions;
  v7 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100158054(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = actionsCopy;
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v28;
    do
    {
      v19 = 0;
      do
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v27 + 1) + 8 * v19);
        v21 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          action = [v20 action];
          *buf = 138412290;
          v34 = action;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Responding to action %@", buf, 0xCu);
        }

        action2 = [v20 action];
        v24 = [action2 isEqualToString:@"PresentCosmeticAssessmentTargetFlow"];

        if (v24)
        {
          v25 = +[_TtC11Diagnostics31CosmeticAssessmentTargetManager sharedInstance];
          [v25 receivedPresentCosmeticTargetFlowCommandWithAction:v20];
        }

        else
        {
          v26 = DiagnosticLogHandleForCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            sub_1001580CC(v31, v20, &v32, v26);
          }

          [v20 setResultCode:1];
          [v20 setFinished:1];
        }

        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v17);
  }
}

- (void)session:(id)session cancelTest:(id)test
{
  testCopy = test;
  v6 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[DADeviceConnectionLocal session:cancelTest:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", &v9, 0xCu);
  }

  v7 = objc_opt_new();
  [v7 setTestID:testCopy];

  delegate = [(DADeviceConnectionLocal *)self delegate];
  [delegate deviceConnection:self didRecieveCommand:v7];
}

- (void)session:(id)session profile:(id)profile filteredByComponents:(id)components
{
  sessionCopy = session;
  componentsCopy = components;
  profileCopy = profile;
  v11 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[DADeviceConnectionLocal session:profile:filteredByComponents:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", buf, 0xCu);
  }

  state = [(DADeviceConnectionLocal *)self state];
  [state setPhase:3];

  v13 = objc_opt_new();
  [v13 setComponents:componentsCopy];

  [v13 setProfile:profileCopy];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000B1BC;
  v16[3] = &unk_1001BC910;
  v17 = sessionCopy;
  v14 = sessionCopy;
  [v13 setCompletion:v16];
  delegate = [(DADeviceConnectionLocal *)self delegate];
  [delegate deviceConnection:self didRecieveCommand:v13];
}

- (void)session:(id)session didPauseWithError:(id)error
{
  errorCopy = error;
  v6 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[DADeviceConnectionLocal session:didPauseWithError:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", &v9, 0xCu);
  }

  if ([errorCopy code] == -1004)
  {
    state = [(DADeviceConnectionLocal *)self state];
    userInfo = [errorCopy userInfo];
    [state addErrorCode:3 userInfo:userInfo];
  }
}

- (void)sessionDidResume:(id)resume
{
  v4 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[DADeviceConnectionLocal sessionDidResume:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", &v6, 0xCu);
  }

  state = [(DADeviceConnectionLocal *)self state];
  [state removeErrorCode:3];
}

- (void)session:(id)session didPauseSendingResultForTest:(id)test error:(id)error
{
  errorCopy = error;
  v7 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[DADeviceConnectionLocal session:didPauseSendingResultForTest:error:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", &v12, 0xCu);
  }

  code = [errorCopy code];
  state = [(DADeviceConnectionLocal *)self state];
  userInfo = [errorCopy userInfo];
  if (code == -1003)
  {
    v11 = 2;
  }

  else
  {
    v11 = 3;
  }

  [state addErrorCode:v11 userInfo:userInfo];
}

- (void)session:(id)session didResumeSendingResultForTest:(id)test
{
  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[DADeviceConnectionLocal session:didResumeSendingResultForTest:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", buf, 0xCu);
  }

  state = [(DADeviceConnectionLocal *)self state];
  v7 = [NSSet setWithObjects:&off_1001CC200, &off_1001CC218, 0];
  [state removeErrorCodes:v7];
}

- (void)session:(id)session didFinishSendingResultForTest:(id)test
{
  testCopy = test;
  v6 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[DADeviceConnectionLocal session:didFinishSendingResultForTest:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", &v10, 0xCu);
  }

  sandboxExtensionHandles = [(DADeviceConnectionLocal *)self sandboxExtensionHandles];
  v8 = [sandboxExtensionHandles objectForKey:testCopy];

  [DKSandboxExtension releaseSandboxExtensionsWithHandles:v8];
  sandboxExtensionHandles2 = [(DADeviceConnectionLocal *)self sandboxExtensionHandles];
  [sandboxExtensionHandles2 removeObjectForKey:testCopy];

  [(DADeviceConnectionLocal *)self didFinishSendingResultForTest:testCopy];
}

- (void)session:(id)session didUpdateSettings:(id)settings completionHandler:(id)handler
{
  sessionCopy = session;
  handlerCopy = handler;
  settingsCopy = settings;
  v11 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136315138;
    v21 = "[DADeviceConnectionLocal session:didUpdateSettings:completionHandler:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", &v20, 0xCu);
  }

  v12 = [DASessionSettings sessionSettingsWithDictionary:settingsCopy];

  state = [(DADeviceConnectionLocal *)self state];
  sessionSettings = [state sessionSettings];
  v15 = [sessionSettings isEqual:v12];

  if ((v15 & 1) == 0)
  {
    state2 = [(DADeviceConnectionLocal *)self state];
    [state2 setSessionSettings:v12];

    [sessionCopy setAllowCellularSizeThreshold:{objc_msgSend(v12, "allowCellularSizeThreshold")}];
  }

  state3 = [(DADeviceConnectionLocal *)self state];
  sessionSettings2 = [state3 sessionSettings];
  dictionary = [sessionSettings2 dictionary];
  handlerCopy[2](handlerCopy, dictionary, 0);
}

- (void)sessionDidReboot:(id)reboot withParameters:(id)parameters
{
  parametersCopy = parameters;
  rebootCopy = reboot;
  v8 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[DADeviceConnectionLocal sessionDidReboot:withParameters:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", &v9, 0xCu);
  }

  [(DADeviceConnectionLocal *)self _sessionDidPowerOff:rebootCopy forReboot:1 withParameters:parametersCopy];
}

- (void)sessionDidShutDown:(id)down withParameters:(id)parameters
{
  parametersCopy = parameters;
  downCopy = down;
  v8 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[DADeviceConnectionLocal sessionDidShutDown:withParameters:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", &v9, 0xCu);
  }

  [(DADeviceConnectionLocal *)self _sessionDidPowerOff:downCopy forReboot:0 withParameters:parametersCopy];
}

- (void)session:(id)session generateAuthInfoWithNonce:(id)nonce
{
  sessionCopy = session;
  nonceCopy = nonce;
  v8 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[DADeviceConnectionLocal session:generateAuthInfoWithNonce:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", buf, 0xCu);
  }

  CFPreferencesAppSynchronize(@"com.apple.AppleServiceToolkit");
  v9 = CFPreferencesCopyAppValue(@"StrongDeviceIdentity", @"com.apple.AppleServiceToolkit");
  v10 = v9;
  if (v9 && ![v9 BOOLValue])
  {
    v14 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Strong device identity is OFF.", buf, 2u);
    }

    [sessionCopy sendAuthInfoResult:0 error:0];
  }

  else
  {
    v11 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Strong device identity is ON.", buf, 2u);
    }

    v12 = objc_opt_new();
    [(DADeviceConnectionLocal *)self setStrongDeviceIdentity:v12];

    strongDeviceIdentity = [(DADeviceConnectionLocal *)self strongDeviceIdentity];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10000BCB4;
    v15[3] = &unk_1001BC938;
    v16 = sessionCopy;
    [strongDeviceIdentity generateAuthInfoWithNonce:nonceCopy completion:v15];
  }
}

- (void)session:(id)session signPayload:(id)payload completionHandler:(id)handler
{
  payloadCopy = payload;
  handlerCopy = handler;
  v9 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10015826C(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  strongDeviceIdentity = [(DADeviceConnectionLocal *)self strongDeviceIdentity];

  if (strongDeviceIdentity)
  {
    strongDeviceIdentity2 = [(DADeviceConnectionLocal *)self strongDeviceIdentity];
    v20 = 0;
    v19 = [strongDeviceIdentity2 signPayload:payloadCopy error:&v20];
    strongDeviceIdentity = v20;
  }

  else
  {
    v19 = 0;
  }

  handlerCopy[2](handlerCopy, v19, strongDeviceIdentity);
}

- (void)session:(id)session signFile:(id)file completionHandler:(id)handler
{
  fileCopy = file;
  handlerCopy = handler;
  v9 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[DADeviceConnectionLocal session:signFile:completionHandler:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", buf, 0xCu);
  }

  strongDeviceIdentity = [(DADeviceConnectionLocal *)self strongDeviceIdentity];

  if (strongDeviceIdentity)
  {
    strongDeviceIdentity2 = [(DADeviceConnectionLocal *)self strongDeviceIdentity];
    v13 = 0;
    v12 = [strongDeviceIdentity2 signFile:fileCopy error:&v13];
    strongDeviceIdentity = v13;
  }

  else
  {
    v12 = 0;
  }

  handlerCopy[2](handlerCopy, v12, strongDeviceIdentity);
}

- (void)_sessionDidPowerOff:(id)off forReboot:(BOOL)reboot withParameters:(id)parameters
{
  rebootCopy = reboot;
  parametersCopy = parameters;
  v8 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "[DADeviceConnectionLocal _sessionDidPowerOff:forReboot:withParameters:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", &v15, 0xCu);
  }

  if (+[CBSUtilities isCheckerBoardActive])
  {
    session = [(DADeviceConnectionLocal *)self session];
    [session archive];
  }

  v10 = [parametersCopy objectForKeyedSubscript:@"bootMode"];
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    integerValue = [v10 integerValue];
  }

  else
  {
    integerValue = 2;
  }

  [(DADeviceConnectionLocal *)self _setNextBootForBootMode:integerValue];
  if ([v10 integerValue] == 3)
  {
    v12 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Starting battery disconnect shutdown sequence.", &v15, 2u);
    }

    v13 = [(DADeviceConnectionLocal *)self _unsealCodeFromParameters:parametersCopy];
    [NSThread sleepForTimeInterval:5.0];
    if ([(DADeviceConnectionLocal *)self _shutdownForBatteryDisconnectWithUnsealCode:v13])
    {
      goto LABEL_19;
    }

LABEL_18:
    [(DADeviceConnectionLocal *)self _shutDownDeviceForReboot:rebootCopy];
    goto LABEL_19;
  }

  if ([v10 integerValue] != 4)
  {
    goto LABEL_18;
  }

  v14 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Starting entry into Shelf Life Mode.", &v15, 2u);
  }

  [NSThread sleepForTimeInterval:5.0];
  if (![(DADeviceConnectionLocal *)self _shutdownToShelfLifeMode])
  {
    goto LABEL_18;
  }

LABEL_19:
}

- (void)_setNextBootForBootMode:(int64_t)mode
{
  v4 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    modeCopy = mode;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting next boot to %ld", &v12, 0xCu);
  }

  if (mode > 2)
  {
    if ((mode - 3) >= 2)
    {
      if (mode == 5)
      {
        v5 = +[DANvramUtil sharedInstance];
        [v5 setNextBootCheckerBoardPersistent];
        goto LABEL_15;
      }

      goto LABEL_12;
    }

LABEL_9:
    v5 = +[DANvramUtil sharedInstance];
    [v5 clearNextBootCheckerBoardPersistent];
    goto LABEL_15;
  }

  switch(mode)
  {
    case 0:
      goto LABEL_9;
    case 1:
      v5 = +[DANvramUtil sharedInstance];
      [v5 setNextBootRecovery];
      goto LABEL_15;
    case 2:
      v5 = +[DANvramUtil sharedInstance];
      [v5 setNextBootCheckerBoard];
      goto LABEL_15;
  }

LABEL_12:
  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1001582E4(mode, v5, v6, v7, v8, v9, v10, v11);
  }

LABEL_15:
}

- (void)_shutDownDeviceForReboot:(BOOL)reboot
{
  rebootCopy = reboot;
  v4 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Diagnostics is rebooting this device", v7, 2u);
  }

  v5 = objc_alloc_init(FBSSystemService);
  v6 = [[FBSShutdownOptions alloc] initWithReason:@"Rebooting for Diagnostics"];
  [v6 setRebootType:rebootCopy];
  [v5 shutdownWithOptions:v6];
}

- (unsigned)_unsealCodeFromParameters:(id)parameters
{
  v4 = [parameters objectForKeyedSubscript:@"unsealCode"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 0;
    v5 = [NSScanner scannerWithString:v4];
    if ([v5 scanHexInt:&v7])
    {
      LODWORD(v3) = v7;
    }

    else
    {
      v3 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_100158350();
      }
    }
  }

  return v3;
}

- (BOOL)_shutdownForBatteryDisconnectWithUnsealCode:(unsigned int)code
{
  v4 = objc_alloc_init(DSAppleSMCDevice);
  [v4 openAppleSMC:0];
  v26 = HIWORD(code);
  codeCopy = code;
  v5 = [v4 writeDataFor:@"GCCM" value:&codeCopy size:2];
  v6 = DiagnosticLogHandleForCategory();
  v7 = v6;
  if (!v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100158384();
    }

    goto LABEL_47;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Low bytes of unseal code successfully written to SMC", buf, 2u);
  }

  v8 = [v4 writeDataFor:@"GCRW" value:&v26 size:2];
  v9 = DiagnosticLogHandleForCategory();
  v7 = v9;
  if ((v8 & 1) == 0)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100158384();
    }

    goto LABEL_47;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v29 = v26;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "High bytes of unseal code successfully written to SMC, %#x", buf, 8u);
  }

  v25 = 0;
  if (([v4 writeDataFor:@"GCCM" value:&v25 size:2] & 1) == 0)
  {
    v7 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001583B8();
    }

    goto LABEL_47;
  }

  v24 = 0;
  v10 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Status read control register written low bytes to SMC", buf, 2u);
  }

  v11 = [v4 readDataFor:@"GCRW" value:&v24 size:2];
  v12 = DiagnosticLogHandleForCategory();
  v7 = v12;
  if (!v11)
  {
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_47;
    }

LABEL_36:
    sub_1001583B8();
    goto LABEL_47;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v29 = v24;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Successfully read from status high bytes register address: %#x", buf, 8u);
  }

  if ((v24 & 0x2000) != 0)
  {
    v7 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v29 = v24;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Control assignment failed, register value: %#x", buf, 8u);
    }

    goto LABEL_47;
  }

  v24 = 23;
  if (![v4 writeDataFor:@"GCCM" value:&v24 size:2])
  {
    v7 = DiagnosticLogHandleForCategory();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_47;
    }

    goto LABEL_36;
  }

  v23 = 0;
  v13 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "First read control register low bytes written to SMC", buf, 2u);
  }

  v14 = [v4 readDataFor:@"GCRW" value:&v23 size:2];
  v15 = DiagnosticLogHandleForCategory();
  v7 = v15;
  if (!v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_42:
      sub_1001583B8();
    }

LABEL_47:

    v20 = 0;
    goto LABEL_48;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v29 = v23;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Successfully read from first control register high bytes address: %#x", buf, 8u);
  }

  v23 = 32;
  if (![v4 writeDataFor:@"GCCM" value:&v23 size:2])
  {
    v7 = DiagnosticLogHandleForCategory();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_47;
    }

    goto LABEL_42;
  }

  v22 = 0;
  v16 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Second read control register low bytes written to SMC", buf, 2u);
  }

  v17 = [v4 readDataFor:@"GCRW" value:&v22 size:2];
  v18 = DiagnosticLogHandleForCategory();
  v7 = v18;
  if (!v17)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1001583B8();
    }

    goto LABEL_47;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v29 = v22;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Successfully read from second control register high bytes value: %#x", buf, 8u);
  }

  v19 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Battery Disconnect shutdown successfully initiated.", buf, 2u);
  }

  v20 = 1;
LABEL_48:

  return v20;
}

- (BOOL)_shutdownToShelfLifeMode
{
  v3 = objc_alloc_init(DSAppleSMCDevice);
  [v3 openAppleSMC:0];
  if (![v3 writeValueFor:@"BCSL" andValue:&off_1001CC230])
  {
    v7 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  [v3 readValueFor:@"BCSL"];
  v4 = [NSNumber numberWithDouble:?];
  unsignedIntValue = [v4 unsignedIntValue];

  if (unsignedIntValue != 2)
  {
    v7 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
LABEL_7:
      sub_1001583EC();
    }

LABEL_8:

    v6 = 0;
    goto LABEL_9;
  }

  [(DADeviceConnectionLocal *)self _shutDownDeviceForReboot:0];
  v6 = 1;
LABEL_9:

  return v6;
}

- (void)archive
{
  session = [(DADeviceConnectionLocal *)self session];
  [session archive];
}

- (DADeviceConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end