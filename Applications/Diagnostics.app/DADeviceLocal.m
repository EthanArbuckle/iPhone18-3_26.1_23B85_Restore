@interface DADeviceLocal
- (BOOL)isEqual:(id)a3;
- (DADeviceDelegate)delegate;
- (DADeviceLocal)init;
- (DADeviceLocal)initWithSerialNumber:(id)a3;
- (NSString)description;
- (id)_IMEI;
- (id)_createDeviceConnection;
- (id)_deviceAttributes;
- (id)_deviceClass;
- (id)_deviceColor;
- (id)_deviceEnclosureColor;
- (id)_deviceImageName;
- (id)_deviceMaskName;
- (id)_deviceType;
- (id)_getDiagnosticAllowList;
- (id)_marketingName;
- (id)_productClass;
- (id)_serialNumber;
- (unint64_t)hash;
- (void)_initDevice;
- (void)_localDeviceSessionWillStartNotification:(id)a3;
- (void)archiveConnection;
- (void)cancelTestWithCommand:(id)a3;
- (void)deviceConnection:(id)a3 didFinishTestSuite:(id)a4 withEntry:(id)a5 error:(id)a6;
- (void)deviceConnection:(id)a3 didRecieveCommand:(id)a4;
- (void)deviceConnection:(id)a3 didRequestInstructionalPrompt:(id)a4 withConfirmation:(id)a5;
- (void)deviceConnection:(id)a3 didRequestSuiteRunWithDestinations:(id)a4 confirmation:(id)a5;
- (void)end;
- (void)executeTestWithTestAttributes:(id)a3 parameters:(id)a4 completion:(id)a5;
- (void)getAsset:(id)a3 completion:(id)a4;
- (void)idle;
- (void)profileWithCommand:(id)a3;
- (void)requestSuiteFinishWithCompletionHandler:(id)a3;
- (void)requestSuiteStart:(id)a3 completionHandler:(id)a4;
- (void)resumeTests;
- (void)setBundleIdentifier:(id)a3;
- (void)start;
- (void)startTestWithCommand:(id)a3;
- (void)suspendTests;
- (void)updateProgress:(id)a3 forTest:(id)a4;
- (void)uploadAssets:(id)a3 completion:(id)a4;
@end

@implementation DADeviceLocal

- (DADeviceLocal)init
{
  v5.receiver = self;
  v5.super_class = DADeviceLocal;
  v2 = [(DADeviceLocal *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(DADeviceLocal *)v2 _initDevice];
  }

  return v3;
}

- (DADeviceLocal)initWithSerialNumber:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = DADeviceLocal;
  v6 = [(DADeviceLocal *)&v19 init];
  v7 = v6;
  if (v6)
  {
    v8 = [(DADeviceLocal *)v6 _serialNumber];
    v9 = [v5 isEqualToString:v8];

    if (v9)
    {
      v10 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1001588A0(v10, v11, v12, v13, v14, v15, v16, v17);
      }

      v7 = 0;
    }

    else
    {
      objc_storeStrong(&v7->_customSerialNumber, a3);
      [(DADeviceLocal *)v7 _initDevice];
    }
  }

  return v7;
}

- (void)setBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[DKReportManager alloc] initWithBundleIdentifier:v4];

  reportManager = self->_reportManager;
  self->_reportManager = v5;
}

- (unint64_t)hash
{
  v2 = [(DADeviceLocal *)self state];
  v3 = [v2 serialNumber];
  v4 = [v3 hash];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&OBJC_PROTOCOL___DADevice])
  {
    v5 = [(DADeviceLocal *)self state];
    v6 = [v5 serialNumber];
    v7 = [v4 state];
    v8 = [v7 serialNumber];
    v9 = [v6 isEqualToString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DADeviceLocal *)self state];
  v6 = [v5 serialNumber];
  v7 = [NSString stringWithFormat:@"<%@ %p: %@>", v4, self, v6];;

  return v7;
}

- (void)start
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"com.apple.Diagnostics.LocalSessionWillStart" object:self];

  v4 = [(DADeviceLocal *)self connection];
  [v4 start];

  +[DADiagnosticAnalyticsManager recordDeviceStart];
}

- (void)idle
{
  v2 = [(DADeviceLocal *)self connection];
  [v2 idle];

  +[DADiagnosticAnalyticsManager recordDeviceIdle];
}

- (void)suspendTests
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[DADeviceLocal] Test launch suspending for %@.", &v8, 0xCu);
  }

  v4 = [(DADeviceLocal *)self testQueue];
  [v4 setSuspended:1];

  v5 = [(DADeviceLocal *)self diagnosticsManager];
  [v5 cancelAllDiagnostics];

  v6 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[DADeviceLocal] Adding cancelled error code", &v8, 2u);
  }

  v7 = [(DADeviceLocal *)self state];
  [v7 addErrorCode:13 userInfo:0];

  +[DADiagnosticAnalyticsManager recordDeviceSuspendTests];
}

- (void)resumeTests
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[DADeviceLocal] Test launch resuming for %@.", &v5, 0xCu);
  }

  v4 = [(DADeviceLocal *)self testQueue];
  [v4 setSuspended:0];

  +[DADiagnosticAnalyticsManager recordDeviceResumeTests];
}

- (void)end
{
  v3 = [(DADeviceLocal *)self state];
  v4 = [v3 phase];

  if (v4 != 5)
  {
    v5 = [(DADeviceLocal *)self state];
    [v5 setPhase:5];

    v6 = dispatch_get_global_queue(25, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100013378;
    block[3] = &unk_1001BC580;
    block[4] = self;
    dispatch_async(v6, block);

    +[DADiagnosticAnalyticsManager recordDeviceEnd];
  }
}

- (void)requestSuiteStart:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v8 = a3;
  v7 = [(DADeviceLocal *)self connection];
  [v7 requestSuiteStart:v8 completionHandler:v6];

  [DADiagnosticAnalyticsManager recordRequestSuiteStartWith:v8];
}

- (void)requestSuiteFinishWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(DADeviceLocal *)self connection];
  [v5 idle];

  v6 = [(DADeviceLocal *)self state];
  [v6 setSuiteID:0];

  v4[2](v4, 0);

  +[DADiagnosticAnalyticsManager recordRequestSuiteFinish];
}

- (void)executeTestWithTestAttributes:(id)a3 parameters:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[DAPlatform currentPlatform];
  [v11 undimCheckerBoardDisplay];

  v12 = objc_retainBlock(v8);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100013678;
  v18[3] = &unk_1001BCF18;
  v19 = v12;
  v13 = v12;
  v14 = objc_retainBlock(v18);
  v15 = [(DADeviceLocal *)self diagnosticsManager];
  v16 = [v10 identifier];
  [v15 beginDiagnosticWithIdentifier:v16 parameters:v9 completion:v14];

  v17 = [v10 identifier];

  [DADiagnosticAnalyticsManager recordExecuteTestWith:v17];
}

- (void)startTestWithCommand:(id)a3
{
  v12 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(DADeviceLocal *)self diagnosticsManager];
    v5 = [v12 testID];
    v6 = [v4 attributesForIdentifier:v5];

    if (v6)
    {
      v7 = [(DADeviceLocal *)self testQueue];
      v8 = [v12 parameters];
      v9 = [v12 completion];
      v10 = [v9 copy];
      [v7 enqueueTestWithTestAttributes:v6 parameters:v8 completion:v10];
    }

    else
    {
      v7 = [v12 completion];
      v8 = [NSError errorWithDomain:DKErrorDomain code:-1000 userInfo:0];
      (v7)[2](v7, 0, v8);
    }

    v11 = [v12 testID];
    [DADiagnosticAnalyticsManager recordConnectionDidReceiveStartTestCommand:v11];
  }
}

- (void)cancelTestWithCommand:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(DADeviceLocal *)self diagnosticsManager];
    [v4 cancelAllDiagnostics];

    v5 = [v6 testID];
    [DADiagnosticAnalyticsManager recordConnectionDidReceiveCancelTestCommand:v5];
  }
}

- (void)profileWithCommand:(id)a3
{
  v3 = a3;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 1;
  objc_opt_class();
  v27 = v3;
  if (objc_opt_isKindOfClass())
  {
    v4 = dispatch_group_create();
    dispatch_group_enter(v4);
    v5 = [(DADeviceLocal *)self diagnosticsManager];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100013DD8;
    v38[3] = &unk_1001BCF40;
    v41 = &v42;
    v26 = v3;
    v39 = v26;
    group = v4;
    v40 = group;
    [v5 diagnosticsWithCompletion:v38];

    v6 = [v26 components];
    if (!v6 || ([v26 components], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count") == 0, v7, v6, v8))
    {
      v28 = 0;
    }

    else
    {
      v28 = +[NSMutableSet set];
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v9 = [v26 components];
      v10 = [v9 countByEnumeratingWithState:&v34 objects:v46 count:16];
      if (v10)
      {
        v11 = *v35;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v35 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v34 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [v13 objectForKeyedSubscript:@"identifier"];
              v15 = [v13 objectForKeyedSubscript:@"type"];
              if (v15)
              {
                v16 = [DKComponentPredicate componentPredicateWithType:v15 identifier:v14];
                [v28 addObject:v16];
              }
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v34 objects:v46 count:16];
        }

        while (v10);
      }
    }

    v17 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Starting report...", buf, 2u);
    }

    dispatch_group_enter(group);
    v18 = [(DADeviceLocal *)self reportManager];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100013FB8;
    v29[3] = &unk_1001BCF68;
    v32 = &v42;
    v19 = v26;
    v30 = v19;
    v20 = group;
    v31 = v20;
    [v18 reportWithComponentPredicateManifest:v28 completion:v29];

    v21 = dispatch_time(0, 120000000000);
    dispatch_group_wait(v20, v21);
    *(v43 + 24) = 0;
    v22 = [v19 completion];
    v23 = [v19 profile];
    (v22)[2](v22, v23);

    +[DADiagnosticAnalyticsManager recordConnectionDidReceiveProfileCommand];
  }

  _Block_object_dispose(&v42, 8);
}

- (void)deviceConnection:(id)a3 didRecieveCommand:(id)a4
{
  v7 = a4;
  v5 = [v7 commandType];
  if (v5 == 2)
  {
    [(DADeviceLocal *)self profileWithCommand:v7];
  }

  else if (v5 == 1)
  {
    [(DADeviceLocal *)self cancelTestWithCommand:v7];
  }

  else
  {
    v6 = v7;
    if (v5)
    {
      goto LABEL_8;
    }

    [(DADeviceLocal *)self startTestWithCommand:v7];
  }

  v6 = v7;
LABEL_8:
}

- (void)deviceConnection:(id)a3 didRequestSuiteRunWithDestinations:(id)a4 confirmation:(id)a5
{
  v11 = a4;
  v7 = a5;
  v8 = [(DADeviceLocal *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(DADeviceLocal *)self delegate];
    [v10 device:self didRequestSuiteRunWithDestinations:v11 confirmation:v7];

    +[DADiagnosticAnalyticsManager recordConnectionDidRequestSuiteRunWith:](DADiagnosticAnalyticsManager, "recordConnectionDidRequestSuiteRunWith:", [v11 count]);
  }

  else
  {
    v7[2](v7, 0);
  }
}

- (void)deviceConnection:(id)a3 didFinishTestSuite:(id)a4 withEntry:(id)a5 error:(id)a6
{
  v14 = a4;
  v9 = a5;
  v10 = a6;
  v11 = [(DADeviceLocal *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(DADeviceLocal *)self delegate];
    [v13 device:self didFinishTestSuite:v14 withEntry:v9 error:v10];

    [DADiagnosticAnalyticsManager recordConnectionDidFinishTestSuiteFor:v14 with:v10];
  }
}

- (void)deviceConnection:(id)a3 didRequestInstructionalPrompt:(id)a4 withConfirmation:(id)a5
{
  v12 = a4;
  v7 = a5;
  v8 = [(DADeviceLocal *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(DADeviceLocal *)self delegate];
    [v10 device:self didRequestInstructionalPrompt:v12 withConfirmation:v7];

    v11 = [v12 identifier];
    [DADiagnosticAnalyticsManager recordConnectionDidRequestInstructionalPromptWith:v11];
  }

  else
  {
    v11 = [v12 identifier];
    (*(v7 + 2))(v7, v11, 0);
  }
}

- (void)updateProgress:(id)a3 forTest:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(DADeviceLocal *)self connection];
  v8 = [v9 progressForTest];
  [v8 setObject:v7 forKeyedSubscript:v6];
}

- (void)getAsset:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DADeviceLocal *)self connection];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(DADeviceLocal *)self connection];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100014604;
    v11[3] = &unk_1001BCF90;
    v12 = v6;
    v13 = v7;
    [v10 requestAsset:v12 completionHandler:v11];
  }
}

- (void)uploadAssets:(id)a3 completion:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(DADeviceLocal *)self connection];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(DADeviceLocal *)self connection];
    [v9 requestUploadAssets:v11 completion:v6];
  }

  else
  {
    v9 = +[NSArray array];
    v10 = [NSError errorWithDomain:DKErrorDomain code:-1008 userInfo:0];
    v6[2](v6, v9, v10);

    v6 = v10;
  }
}

- (void)_initDevice
{
  v3 = [(DADeviceLocal *)self _deviceAttributes];
  v4 = [(DADeviceLocal *)self _serialNumber];
  v5 = [[DADeviceState alloc] initWithSerialNumber:v4 attributes:v3];
  state = self->_state;
  self->_state = v5;

  v7 = [DATestQueue testQueueWithDelegate:self];
  testQueue = self->_testQueue;
  self->_testQueue = v7;

  v9 = objc_opt_new();
  diagnosticsManager = self->_diagnosticsManager;
  self->_diagnosticsManager = v9;

  [(DKDiagnosticManager *)self->_diagnosticsManager setProgressResponder:self];
  [(DKDiagnosticManager *)self->_diagnosticsManager setAssetResponder:self];
  if (os_variant_has_internal_content())
  {
    v11 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Diagnostic allow list enabled for internal install", v19, 2u);
    }

    v12 = [(DADeviceLocal *)self _getDiagnosticAllowList];
    [(DKDiagnosticManager *)self->_diagnosticsManager setAllowList:v12];
  }

  v13 = [DKReportManager alloc];
  v14 = [v13 initWithBundleIdentifier:kDKDefaultBundleIdentifier];
  reportManager = self->_reportManager;
  self->_reportManager = v14;

  v16 = [(DADeviceLocal *)self _createDeviceConnection];
  connection = self->_connection;
  self->_connection = v16;

  [(DADeviceConnectionLocal *)self->_connection setDelegate:self];
  v18 = +[NSNotificationCenter defaultCenter];
  [v18 addObserver:self selector:"_localDeviceSessionWillStartNotification:" name:@"com.apple.Diagnostics.LocalSessionWillStart" object:0];
}

- (id)_createDeviceConnection
{
  v3 = [DADeviceConnectionLocal alloc];
  v4 = [(DADeviceLocal *)self state];
  v5 = [(DADeviceConnectionLocal *)v3 initWithState:v4];

  v6 = +[DADeviceConnectionConfigurator sharedInstance];
  [(DADeviceConnectionLocal *)v5 setConfigurator:v6];

  return v5;
}

- (id)_deviceAttributes
{
  v20[0] = @"productClass";
  v19 = [(DADeviceLocal *)self _productClass];
  v21[0] = v19;
  v20[1] = @"IMEI";
  v3 = [(DADeviceLocal *)self _IMEI];
  v4 = v3;
  if (!v3)
  {
    v3 = +[NSNull null];
  }

  v17 = v3;
  v21[1] = v3;
  v20[2] = @"marketingName";
  v5 = [(DADeviceLocal *)self _marketingName];
  v6 = v5;
  if (!v5)
  {
    v5 = +[NSNull null];
  }

  v21[2] = v5;
  v20[3] = @"imageName";
  v18 = [(DADeviceLocal *)self _deviceImageName];
  v21[3] = v18;
  v20[4] = @"maskName";
  v7 = [(DADeviceLocal *)self _deviceMaskName];
  v21[4] = v7;
  v20[5] = @"deviceType";
  v8 = [(DADeviceLocal *)self _deviceType];
  v21[5] = v8;
  v20[6] = @"deviceClass";
  v9 = [(DADeviceLocal *)self _deviceClass];
  v21[6] = v9;
  v20[7] = @"deviceEnclosureColor";
  v10 = [(DADeviceLocal *)self _deviceEnclosureColor];
  v11 = v10;
  if (!v10)
  {
    v11 = +[NSNull null];
  }

  v21[7] = v11;
  v20[8] = @"deviceColor";
  v12 = [(DADeviceLocal *)self _deviceColor];
  v13 = v12;
  if (!v12)
  {
    v13 = +[NSNull null];
  }

  v21[8] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:9];
  if (!v12)
  {
  }

  if (!v10)
  {
  }

  if (!v6)
  {
  }

  if (!v4)
  {
  }

  return v14;
}

- (id)_deviceImageName
{
  v2 = MGCopyAnswer();
  if ([v2 isEqualToString:@"unknown"])
  {
    v3 = MGCopyAnswer();

    v2 = v3;
  }

  v4 = MGCopyAnswer();
  v5 = [NSString stringWithFormat:@"%@_%@.png", v4, v2];
  v6 = [v5 stringByReplacingReservedURLCharactersUsingEncoding:1];

  return v6;
}

- (id)_deviceMaskName
{
  v2 = MGCopyAnswer();
  v3 = [NSString stringWithFormat:@"mask_%@.png", v2];
  v4 = [v3 stringByReplacingReservedURLCharactersUsingEncoding:1];

  return v4;
}

- (id)_serialNumber
{
  v3 = [(DADeviceLocal *)self customSerialNumber];

  if (v3)
  {
    v4 = [(DADeviceLocal *)self customSerialNumber];
  }

  else
  {
    v4 = MGCopyAnswer();
  }

  return v4;
}

- (id)_productClass
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)_deviceClass
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)_deviceType
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)_deviceEnclosureColor
{
  v2 = MGCopyAnswer();
  v3 = 0;
  if (([v2 isEqualToString:@"unknown"] & 1) == 0)
  {
    v3 = [v2 stringByReplacingOccurrencesOfString:@"#" withString:&stru_1001C9EA8];
  }

  return v3;
}

- (id)_deviceColor
{
  v2 = MGCopyAnswer();
  v3 = 0;
  if (([v2 isEqualToString:@"unknown"] & 1) == 0)
  {
    v3 = [v2 stringByReplacingOccurrencesOfString:@"#" withString:&stru_1001C9EA8];
  }

  return v3;
}

- (id)_marketingName
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)_IMEI
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)_getDiagnosticAllowList
{
  if (qword_100202D78 != -1)
  {
    sub_1001589C4();
  }

  v3 = qword_100202D70;

  return v3;
}

- (void)_localDeviceSessionWillStartNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  if ([v5 isEqual:self])
  {
    goto LABEL_8;
  }

  v6 = [(DADeviceLocal *)self state];
  if (![v6 phase])
  {

LABEL_8:
    goto LABEL_9;
  }

  v7 = [(DADeviceLocal *)self state];
  v8 = [v7 phase];

  if (v8 != 1)
  {
    v9 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v4 object];
      v12 = 138412546;
      v13 = self;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Local device %@ ending so %@ can start", &v12, 0x16u);
    }

    v11 = [(DADeviceLocal *)self connection];
    [v11 end];
  }

LABEL_9:
}

- (void)archiveConnection
{
  v2 = [(DADeviceLocal *)self connection];
  [v2 archive];
}

- (DADeviceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end