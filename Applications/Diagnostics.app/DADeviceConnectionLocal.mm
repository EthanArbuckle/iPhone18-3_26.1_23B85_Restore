@interface DADeviceConnectionLocal
- (BOOL)_shutdownForBatteryDisconnectWithUnsealCode:(unsigned int)a3;
- (BOOL)_shutdownToShelfLifeMode;
- (DADeviceConnectionDelegate)delegate;
- (DADeviceConnectionLocal)initWithState:(id)a3;
- (id)session:(id)a3 estimatedTimeRemainingForTest:(id)a4;
- (id)session:(id)a3 progressForTest:(id)a4;
- (int)mode;
- (unsigned)_unsealCodeFromParameters:(id)a3;
- (void)_session:(id)a3 didFinishSuiteWithName:(id)a4 skipped:(BOOL)a5;
- (void)_sessionDidPowerOff:(id)a3 forReboot:(BOOL)a4 withParameters:(id)a5;
- (void)_setNextBootForBootMode:(int64_t)a3;
- (void)_shutDownDeviceForReboot:(BOOL)a3;
- (void)archive;
- (void)end;
- (void)idle;
- (void)requestAsset:(id)a3 completionHandler:(id)a4;
- (void)requestSuiteStart:(id)a3 completionHandler:(id)a4;
- (void)requestUploadAssets:(id)a3 completion:(id)a4;
- (void)session:(id)a3 cancelTest:(id)a4;
- (void)session:(id)a3 didCompleteTestSuite:(id)a4 description:(id)a5;
- (void)session:(id)a3 didEndWithError:(id)a4;
- (void)session:(id)a3 didFinishSendingResultForTest:(id)a4;
- (void)session:(id)a3 didPauseSendingResultForTest:(id)a4 error:(id)a5;
- (void)session:(id)a3 didPauseWithError:(id)a4;
- (void)session:(id)a3 didRequestInstructionalPrompt:(id)a4 withConfirmation:(id)a5;
- (void)session:(id)a3 didRequestSuiteRunWithDestinations:(id)a4 confirmation:(id)a5;
- (void)session:(id)a3 didResumeSendingResultForTest:(id)a4;
- (void)session:(id)a3 didStartTestSuite:(id)a4 description:(id)a5;
- (void)session:(id)a3 didUpdateSettings:(id)a4 completionHandler:(id)a5;
- (void)session:(id)a3 didUpdateTestSuiteImage:(id)a4;
- (void)session:(id)a3 didUpdateTestSuiteProgress:(id)a4;
- (void)session:(id)a3 generateAuthInfoWithNonce:(id)a4;
- (void)session:(id)a3 performActions:(id)a4 sequentially:(BOOL)a5 stopOnError:(BOOL)a6;
- (void)session:(id)a3 profile:(id)a4 filteredByComponents:(id)a5;
- (void)session:(id)a3 signFile:(id)a4 completionHandler:(id)a5;
- (void)session:(id)a3 signPayload:(id)a4 completionHandler:(id)a5;
- (void)session:(id)a3 startTest:(id)a4 parameters:(id)a5 testResult:(id)a6;
- (void)sessionDidCancelSuite:(id)a3;
- (void)sessionDidReboot:(id)a3 withParameters:(id)a4;
- (void)sessionDidResume:(id)a3;
- (void)sessionDidShutDown:(id)a3 withParameters:(id)a4;
- (void)sessionDidStart:(id)a3;
- (void)start;
@end

@implementation DADeviceConnectionLocal

- (DADeviceConnectionLocal)initWithState:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = DADeviceConnectionLocal;
  v6 = [(DADeviceConnectionLocal *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_state, a3);
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
  v3 = [(DADeviceConnectionLocal *)self configurator];

  if (!v3)
  {
    return 0;
  }

  v4 = [(DADeviceConnectionLocal *)self configurator];
  v5 = [v4 mode];

  return v5;
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

  v4 = [(DADeviceConnectionLocal *)self state];
  v5 = [NSSet setWithObjects:&off_1001CC110, &off_1001CC128, &off_1001CC140, 0];
  [v4 removeErrorCodes:v5];

  v6 = [(DADeviceConnectionLocal *)self state];
  [v6 setPhase:2];

  v7 = [(DADeviceConnectionLocal *)self session];

  if (!v7)
  {
    v8 = [(DADeviceConnectionLocal *)self state];
    v9 = [v8 serialNumber];
    v10 = [ASTIdentity identityWithSerialNumber:v9];
    v11 = [ASTSession sessionWithIdentity:v10];
    [(DADeviceConnectionLocal *)self setSession:v11];

    v12 = [(DADeviceConnectionLocal *)self session];
    [v12 setDelegate:self];
  }

  v13 = [(DADeviceConnectionLocal *)self session];
  [v13 startWithMode:{-[DADeviceConnectionLocal mode](self, "mode")}];
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

  v4 = [(DADeviceConnectionLocal *)self session];
  [v4 idle];
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
  v4 = [(DADeviceConnectionLocal *)self session];

  if (v4)
  {
    v5 = [(DADeviceConnectionLocal *)self session];
    [v5 end];
  }

  else
  {
    v5 = [(DADeviceConnectionLocal *)self state];
    [v5 setPhase:1];
  }
}

- (void)requestAsset:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[DADeviceConnectionLocal requestAsset:completionHandler:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", buf, 0xCu);
  }

  v9 = [(DADeviceConnectionLocal *)self session];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100008D54;
  v11[3] = &unk_1001BC780;
  v12 = v6;
  v10 = v6;
  [v9 requestAsset:v7 completionHandler:v11];
}

- (void)requestUploadAssets:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[DADeviceConnectionLocal requestUploadAssets:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", &v12, 0xCu);
  }

  v9 = [(DADeviceConnectionLocal *)self assetUploader];

  if (v9)
  {
    v10 = [(DADeviceConnectionLocal *)self assetUploader];
    v11 = [(DADeviceConnectionLocal *)self strongDeviceIdentity];
    [v10 uploadAssets:v6 wtihDeviceIdentity:v11 completion:v7];
  }

  else
  {
    v10 = +[NSArray array];
    v11 = [NSError errorWithDomain:DKErrorDomain code:-1008 userInfo:0];
    v7[2](v7, v10, v11);
  }
}

- (void)requestSuiteStart:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[DADeviceConnectionLocal requestSuiteStart:completionHandler:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", buf, 0xCu);
  }

  v9 = [(DADeviceConnectionLocal *)self session];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100009034;
  v11[3] = &unk_1001BC7A8;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  [v9 requestSuiteStart:v7 completionHandler:v11];
}

- (void)sessionDidStart:(id)a3
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
    v5 = [(DADeviceConnectionLocal *)self state];
    [v5 setPhase:4];
  }
}

- (void)session:(id)a3 startTest:(id)a4 parameters:(id)a5 testResult:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v36 = "[DADeviceConnectionLocal session:startTest:parameters:testResult:]";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", buf, 0xCu);
  }

  [v11 setStatusCode:&off_1001CC158];
  v13 = [v10 objectForKeyedSubscript:@"specifications"];
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

          [v11 setStatusCode:&off_1001CC170];
          v18 = 0;
          goto LABEL_15;
        }

        if (v17)
        {
          *buf = 138412290;
          v36 = v14;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Setting cellular threshold to %@.", buf, 0xCu);
        }

        [v11 setAllowCellularSizeThreshold:v14];
      }

      v18 = 1;
LABEL_15:

      goto LABEL_16;
    }
  }

  v18 = 1;
LABEL_16:
  v19 = [(DADeviceConnectionLocal *)self isDisconnecting];
  if (!v18 || v19)
  {
    v22 = [(DADeviceConnectionLocal *)self session];
    [v22 sendTestResult:v11 error:0];
  }

  else
  {
    v20 = +[NSDate date];
    v27 = _NSConcreteStackBlock;
    v28 = 3221225472;
    v29 = sub_100009578;
    v30 = &unk_1001BC7D0;
    v31 = self;
    v21 = v9;
    v32 = v21;
    v33 = v11;
    v34 = v20;
    v22 = v20;
    v23 = objc_retainBlock(&v27);
    v24 = objc_opt_new();
    [v24 setTestID:{v21, v27, v28, v29, v30, v31}];
    v25 = [DKDiagnosticParameters diagnosticParametersWithDictionary:v10];
    [v24 setParameters:v25];

    [v24 setCompletion:v23];
    v26 = [(DADeviceConnectionLocal *)self delegate];
    [v26 deviceConnection:self didRecieveCommand:v24];
  }
}

- (void)session:(id)a3 didEndWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[DADeviceConnectionLocal session:didEndWithError:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", buf, 0xCu);
  }

  v9 = [(DADeviceConnectionLocal *)self state];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100009A78;
  v12[3] = &unk_1001BC7F8;
  v13 = v7;
  v14 = self;
  v15 = v6;
  v10 = v6;
  v11 = v7;
  [v9 transactionWithBlock:v12];

  [(DADeviceConnectionLocal *)self setDisconnecting:0];
  [(DADeviceConnectionLocal *)self setStrongDeviceIdentity:0];
}

- (void)session:(id)a3 didStartTestSuite:(id)a4 description:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[DADeviceConnectionLocal session:didStartTestSuite:description:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", buf, 0xCu);
  }

  v10 = [(DADeviceConnectionLocal *)self state];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100009D58;
  v13[3] = &unk_1001BC820;
  v14 = v7;
  v15 = v8;
  v11 = v8;
  v12 = v7;
  [v10 transactionWithBlock:v13];
}

- (void)session:(id)a3 didCompleteTestSuite:(id)a4 description:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[DADeviceConnectionLocal session:didCompleteTestSuite:description:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", &v10, 0xCu);
  }

  [(DADeviceConnectionLocal *)self _session:v8 didFinishSuiteWithName:v7 skipped:0];
}

- (void)sessionDidCancelSuite:(id)a3
{
  v4 = a3;
  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[DADeviceConnectionLocal sessionDidCancelSuite:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", &v8, 0xCu);
  }

  v6 = [(DADeviceConnectionLocal *)self state];
  v7 = [v6 suiteName];
  [(DADeviceConnectionLocal *)self _session:v4 didFinishSuiteWithName:v7 skipped:1];
}

- (void)_session:(id)a3 didFinishSuiteWithName:(id)a4 skipped:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
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
    if ([v8 shouldShowResults] && (-[DADeviceConnectionLocal state](self, "state"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "diagnosticEventID"), v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13))
    {
      v14 = [(DADeviceConnectionLocal *)self session];
      v15 = [(DADeviceConnectionLocal *)self state];
      v16 = [v15 diagnosticEventID];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10000A468;
      v22[3] = &unk_1001BC898;
      v24 = v11;
      v23 = v9;
      v25 = v5;
      [v14 requestSuiteSummary:v16 completionHandler:v22];

      v17 = v24;
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
      v17 = [(DADeviceConnectionLocal *)self state];
      v20 = [v17 suiteName];
      v21 = [(DAHistoryEntry *)v19 initWithTestSuiteName:v20 skipped:v5];
      (v11[2])(v11, v21, 0);
    }
  }
}

- (void)session:(id)a3 didUpdateTestSuiteProgress:(id)a4
{
  v5 = a4;
  v6 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100157FDC(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  if (![(DADeviceConnectionLocal *)self isDisconnecting])
  {
    v14 = [(DADeviceConnectionLocal *)self state];
    [v14 setProgress:v5];
  }
}

- (void)session:(id)a3 didUpdateTestSuiteImage:(id)a4
{
  v5 = a4;
  v6 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[DADeviceConnectionLocal session:didUpdateTestSuiteImage:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", &v8, 0xCu);
  }

  v7 = [(DADeviceConnectionLocal *)self state];
  [v7 setTestSuiteImageData:v5];
}

- (id)session:(id)a3 progressForTest:(id)a4
{
  v5 = a4;
  v6 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = "[DADeviceConnectionLocal session:progressForTest:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", &v14, 0xCu);
  }

  v7 = [(DADeviceConnectionLocal *)self progressForTest];
  v8 = [v7 objectForKeyedSubscript:v5];

  if (v8 && ([v8 isIndeterminate] & 1) == 0)
  {
    v10 = [v8 fractionCompleted];
    [v10 doubleValue];
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

- (id)session:(id)a3 estimatedTimeRemainingForTest:(id)a4
{
  v5 = a4;
  v6 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[DADeviceConnectionLocal session:estimatedTimeRemainingForTest:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", &v11, 0xCu);
  }

  v7 = [(DADeviceConnectionLocal *)self progressForTest];
  v8 = [v7 objectForKeyedSubscript:v5];

  if (v8)
  {
    v9 = [v8 estimatedTimeRemaining];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)session:(id)a3 didRequestSuiteRunWithDestinations:(id)a4 confirmation:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(DADeviceConnectionLocal *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(DADeviceConnectionLocal *)self delegate];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000AABC;
    v13[3] = &unk_1001BC8E8;
    v14 = v7;
    v15 = self;
    v16 = v8;
    [v11 deviceConnection:self didRequestSuiteRunWithDestinations:v14 confirmation:v13];
  }

  else
  {
    v12 = [(DADeviceConnectionLocal *)self state];
    [v12 setSuitesAvailable:&__NSArray0__struct];

    (*(v8 + 2))(v8, 0);
  }
}

- (void)session:(id)a3 didRequestInstructionalPrompt:(id)a4 withConfirmation:(id)a5
{
  v11 = a4;
  v7 = a5;
  v8 = [(DADeviceConnectionLocal *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(DADeviceConnectionLocal *)self delegate];
    [v10 deviceConnection:self didRequestInstructionalPrompt:v11 withConfirmation:v7];
  }

  else
  {
    v10 = [v11 identifier];
    v7[2](v7, v10, 0);
  }
}

- (void)session:(id)a3 performActions:(id)a4 sequentially:(BOOL)a5 stopOnError:(BOOL)a6
{
  v6 = a4;
  v7 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100158054(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = v6;
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
          v22 = [v20 action];
          *buf = 138412290;
          v34 = v22;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Responding to action %@", buf, 0xCu);
        }

        v23 = [v20 action];
        v24 = [v23 isEqualToString:@"PresentCosmeticAssessmentTargetFlow"];

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

- (void)session:(id)a3 cancelTest:(id)a4
{
  v5 = a4;
  v6 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[DADeviceConnectionLocal session:cancelTest:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", &v9, 0xCu);
  }

  v7 = objc_opt_new();
  [v7 setTestID:v5];

  v8 = [(DADeviceConnectionLocal *)self delegate];
  [v8 deviceConnection:self didRecieveCommand:v7];
}

- (void)session:(id)a3 profile:(id)a4 filteredByComponents:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[DADeviceConnectionLocal session:profile:filteredByComponents:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", buf, 0xCu);
  }

  v12 = [(DADeviceConnectionLocal *)self state];
  [v12 setPhase:3];

  v13 = objc_opt_new();
  [v13 setComponents:v9];

  [v13 setProfile:v10];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000B1BC;
  v16[3] = &unk_1001BC910;
  v17 = v8;
  v14 = v8;
  [v13 setCompletion:v16];
  v15 = [(DADeviceConnectionLocal *)self delegate];
  [v15 deviceConnection:self didRecieveCommand:v13];
}

- (void)session:(id)a3 didPauseWithError:(id)a4
{
  v5 = a4;
  v6 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[DADeviceConnectionLocal session:didPauseWithError:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", &v9, 0xCu);
  }

  if ([v5 code] == -1004)
  {
    v7 = [(DADeviceConnectionLocal *)self state];
    v8 = [v5 userInfo];
    [v7 addErrorCode:3 userInfo:v8];
  }
}

- (void)sessionDidResume:(id)a3
{
  v4 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[DADeviceConnectionLocal sessionDidResume:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", &v6, 0xCu);
  }

  v5 = [(DADeviceConnectionLocal *)self state];
  [v5 removeErrorCode:3];
}

- (void)session:(id)a3 didPauseSendingResultForTest:(id)a4 error:(id)a5
{
  v6 = a5;
  v7 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[DADeviceConnectionLocal session:didPauseSendingResultForTest:error:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", &v12, 0xCu);
  }

  v8 = [v6 code];
  v9 = [(DADeviceConnectionLocal *)self state];
  v10 = [v6 userInfo];
  if (v8 == -1003)
  {
    v11 = 2;
  }

  else
  {
    v11 = 3;
  }

  [v9 addErrorCode:v11 userInfo:v10];
}

- (void)session:(id)a3 didResumeSendingResultForTest:(id)a4
{
  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[DADeviceConnectionLocal session:didResumeSendingResultForTest:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", buf, 0xCu);
  }

  v6 = [(DADeviceConnectionLocal *)self state];
  v7 = [NSSet setWithObjects:&off_1001CC200, &off_1001CC218, 0];
  [v6 removeErrorCodes:v7];
}

- (void)session:(id)a3 didFinishSendingResultForTest:(id)a4
{
  v5 = a4;
  v6 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[DADeviceConnectionLocal session:didFinishSendingResultForTest:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", &v10, 0xCu);
  }

  v7 = [(DADeviceConnectionLocal *)self sandboxExtensionHandles];
  v8 = [v7 objectForKey:v5];

  [DKSandboxExtension releaseSandboxExtensionsWithHandles:v8];
  v9 = [(DADeviceConnectionLocal *)self sandboxExtensionHandles];
  [v9 removeObjectForKey:v5];

  [(DADeviceConnectionLocal *)self didFinishSendingResultForTest:v5];
}

- (void)session:(id)a3 didUpdateSettings:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136315138;
    v21 = "[DADeviceConnectionLocal session:didUpdateSettings:completionHandler:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", &v20, 0xCu);
  }

  v12 = [DASessionSettings sessionSettingsWithDictionary:v10];

  v13 = [(DADeviceConnectionLocal *)self state];
  v14 = [v13 sessionSettings];
  v15 = [v14 isEqual:v12];

  if ((v15 & 1) == 0)
  {
    v16 = [(DADeviceConnectionLocal *)self state];
    [v16 setSessionSettings:v12];

    [v8 setAllowCellularSizeThreshold:{objc_msgSend(v12, "allowCellularSizeThreshold")}];
  }

  v17 = [(DADeviceConnectionLocal *)self state];
  v18 = [v17 sessionSettings];
  v19 = [v18 dictionary];
  v9[2](v9, v19, 0);
}

- (void)sessionDidReboot:(id)a3 withParameters:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[DADeviceConnectionLocal sessionDidReboot:withParameters:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", &v9, 0xCu);
  }

  [(DADeviceConnectionLocal *)self _sessionDidPowerOff:v7 forReboot:1 withParameters:v6];
}

- (void)sessionDidShutDown:(id)a3 withParameters:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[DADeviceConnectionLocal sessionDidShutDown:withParameters:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", &v9, 0xCu);
  }

  [(DADeviceConnectionLocal *)self _sessionDidPowerOff:v7 forReboot:0 withParameters:v6];
}

- (void)session:(id)a3 generateAuthInfoWithNonce:(id)a4
{
  v6 = a3;
  v7 = a4;
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

    [v6 sendAuthInfoResult:0 error:0];
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

    v13 = [(DADeviceConnectionLocal *)self strongDeviceIdentity];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10000BCB4;
    v15[3] = &unk_1001BC938;
    v16 = v6;
    [v13 generateAuthInfoWithNonce:v7 completion:v15];
  }
}

- (void)session:(id)a3 signPayload:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10015826C(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  v17 = [(DADeviceConnectionLocal *)self strongDeviceIdentity];

  if (v17)
  {
    v18 = [(DADeviceConnectionLocal *)self strongDeviceIdentity];
    v20 = 0;
    v19 = [v18 signPayload:v7 error:&v20];
    v17 = v20;
  }

  else
  {
    v19 = 0;
  }

  v8[2](v8, v19, v17);
}

- (void)session:(id)a3 signFile:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[DADeviceConnectionLocal session:signFile:completionHandler:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", buf, 0xCu);
  }

  v10 = [(DADeviceConnectionLocal *)self strongDeviceIdentity];

  if (v10)
  {
    v11 = [(DADeviceConnectionLocal *)self strongDeviceIdentity];
    v13 = 0;
    v12 = [v11 signFile:v7 error:&v13];
    v10 = v13;
  }

  else
  {
    v12 = 0;
  }

  v8[2](v8, v12, v10);
}

- (void)_sessionDidPowerOff:(id)a3 forReboot:(BOOL)a4 withParameters:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "[DADeviceConnectionLocal _sessionDidPowerOff:forReboot:withParameters:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionLocal] %s", &v15, 0xCu);
  }

  if (+[CBSUtilities isCheckerBoardActive])
  {
    v9 = [(DADeviceConnectionLocal *)self session];
    [v9 archive];
  }

  v10 = [v7 objectForKeyedSubscript:@"bootMode"];
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = [v10 integerValue];
  }

  else
  {
    v11 = 2;
  }

  [(DADeviceConnectionLocal *)self _setNextBootForBootMode:v11];
  if ([v10 integerValue] == 3)
  {
    v12 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Starting battery disconnect shutdown sequence.", &v15, 2u);
    }

    v13 = [(DADeviceConnectionLocal *)self _unsealCodeFromParameters:v7];
    [NSThread sleepForTimeInterval:5.0];
    if ([(DADeviceConnectionLocal *)self _shutdownForBatteryDisconnectWithUnsealCode:v13])
    {
      goto LABEL_19;
    }

LABEL_18:
    [(DADeviceConnectionLocal *)self _shutDownDeviceForReboot:v5];
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

- (void)_setNextBootForBootMode:(int64_t)a3
{
  v4 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    v13 = a3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting next boot to %ld", &v12, 0xCu);
  }

  if (a3 > 2)
  {
    if ((a3 - 3) >= 2)
    {
      if (a3 == 5)
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

  switch(a3)
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
    sub_1001582E4(a3, v5, v6, v7, v8, v9, v10, v11);
  }

LABEL_15:
}

- (void)_shutDownDeviceForReboot:(BOOL)a3
{
  v3 = a3;
  v4 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Diagnostics is rebooting this device", v7, 2u);
  }

  v5 = objc_alloc_init(FBSSystemService);
  v6 = [[FBSShutdownOptions alloc] initWithReason:@"Rebooting for Diagnostics"];
  [v6 setRebootType:v3];
  [v5 shutdownWithOptions:v6];
}

- (unsigned)_unsealCodeFromParameters:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"unsealCode"];
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

- (BOOL)_shutdownForBatteryDisconnectWithUnsealCode:(unsigned int)a3
{
  v4 = objc_alloc_init(DSAppleSMCDevice);
  [v4 openAppleSMC:0];
  v26 = HIWORD(a3);
  v27 = a3;
  v5 = [v4 writeDataFor:@"GCCM" value:&v27 size:2];
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
  v5 = [v4 unsignedIntValue];

  if (v5 != 2)
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
  v2 = [(DADeviceConnectionLocal *)self session];
  [v2 archive];
}

- (DADeviceConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end