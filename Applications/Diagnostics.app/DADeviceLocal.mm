@interface DADeviceLocal
- (BOOL)isEqual:(id)equal;
- (DADeviceDelegate)delegate;
- (DADeviceLocal)init;
- (DADeviceLocal)initWithSerialNumber:(id)number;
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
- (void)_localDeviceSessionWillStartNotification:(id)notification;
- (void)archiveConnection;
- (void)cancelTestWithCommand:(id)command;
- (void)deviceConnection:(id)connection didFinishTestSuite:(id)suite withEntry:(id)entry error:(id)error;
- (void)deviceConnection:(id)connection didRecieveCommand:(id)command;
- (void)deviceConnection:(id)connection didRequestInstructionalPrompt:(id)prompt withConfirmation:(id)confirmation;
- (void)deviceConnection:(id)connection didRequestSuiteRunWithDestinations:(id)destinations confirmation:(id)confirmation;
- (void)end;
- (void)executeTestWithTestAttributes:(id)attributes parameters:(id)parameters completion:(id)completion;
- (void)getAsset:(id)asset completion:(id)completion;
- (void)idle;
- (void)profileWithCommand:(id)command;
- (void)requestSuiteFinishWithCompletionHandler:(id)handler;
- (void)requestSuiteStart:(id)start completionHandler:(id)handler;
- (void)resumeTests;
- (void)setBundleIdentifier:(id)identifier;
- (void)start;
- (void)startTestWithCommand:(id)command;
- (void)suspendTests;
- (void)updateProgress:(id)progress forTest:(id)test;
- (void)uploadAssets:(id)assets completion:(id)completion;
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

- (DADeviceLocal)initWithSerialNumber:(id)number
{
  numberCopy = number;
  v19.receiver = self;
  v19.super_class = DADeviceLocal;
  v6 = [(DADeviceLocal *)&v19 init];
  v7 = v6;
  if (v6)
  {
    _serialNumber = [(DADeviceLocal *)v6 _serialNumber];
    v9 = [numberCopy isEqualToString:_serialNumber];

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
      objc_storeStrong(&v7->_customSerialNumber, number);
      [(DADeviceLocal *)v7 _initDevice];
    }
  }

  return v7;
}

- (void)setBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[DKReportManager alloc] initWithBundleIdentifier:identifierCopy];

  reportManager = self->_reportManager;
  self->_reportManager = v5;
}

- (unint64_t)hash
{
  state = [(DADeviceLocal *)self state];
  serialNumber = [state serialNumber];
  v4 = [serialNumber hash];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy conformsToProtocol:&OBJC_PROTOCOL___DADevice])
  {
    state = [(DADeviceLocal *)self state];
    serialNumber = [state serialNumber];
    state2 = [equalCopy state];
    serialNumber2 = [state2 serialNumber];
    v9 = [serialNumber isEqualToString:serialNumber2];
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
  state = [(DADeviceLocal *)self state];
  serialNumber = [state serialNumber];
  v7 = [NSString stringWithFormat:@"<%@ %p: %@>", v4, self, serialNumber];;

  return v7;
}

- (void)start
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"com.apple.Diagnostics.LocalSessionWillStart" object:self];

  connection = [(DADeviceLocal *)self connection];
  [connection start];

  +[DADiagnosticAnalyticsManager recordDeviceStart];
}

- (void)idle
{
  connection = [(DADeviceLocal *)self connection];
  [connection idle];

  +[DADiagnosticAnalyticsManager recordDeviceIdle];
}

- (void)suspendTests
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[DADeviceLocal] Test launch suspending for %@.", &v8, 0xCu);
  }

  testQueue = [(DADeviceLocal *)self testQueue];
  [testQueue setSuspended:1];

  diagnosticsManager = [(DADeviceLocal *)self diagnosticsManager];
  [diagnosticsManager cancelAllDiagnostics];

  v6 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[DADeviceLocal] Adding cancelled error code", &v8, 2u);
  }

  state = [(DADeviceLocal *)self state];
  [state addErrorCode:13 userInfo:0];

  +[DADiagnosticAnalyticsManager recordDeviceSuspendTests];
}

- (void)resumeTests
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[DADeviceLocal] Test launch resuming for %@.", &v5, 0xCu);
  }

  testQueue = [(DADeviceLocal *)self testQueue];
  [testQueue setSuspended:0];

  +[DADiagnosticAnalyticsManager recordDeviceResumeTests];
}

- (void)end
{
  state = [(DADeviceLocal *)self state];
  phase = [state phase];

  if (phase != 5)
  {
    state2 = [(DADeviceLocal *)self state];
    [state2 setPhase:5];

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

- (void)requestSuiteStart:(id)start completionHandler:(id)handler
{
  handlerCopy = handler;
  startCopy = start;
  connection = [(DADeviceLocal *)self connection];
  [connection requestSuiteStart:startCopy completionHandler:handlerCopy];

  [DADiagnosticAnalyticsManager recordRequestSuiteStartWith:startCopy];
}

- (void)requestSuiteFinishWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(DADeviceLocal *)self connection];
  [connection idle];

  state = [(DADeviceLocal *)self state];
  [state setSuiteID:0];

  handlerCopy[2](handlerCopy, 0);

  +[DADiagnosticAnalyticsManager recordRequestSuiteFinish];
}

- (void)executeTestWithTestAttributes:(id)attributes parameters:(id)parameters completion:(id)completion
{
  completionCopy = completion;
  parametersCopy = parameters;
  attributesCopy = attributes;
  v11 = +[DAPlatform currentPlatform];
  [v11 undimCheckerBoardDisplay];

  v12 = objc_retainBlock(completionCopy);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100013678;
  v18[3] = &unk_1001BCF18;
  v19 = v12;
  v13 = v12;
  v14 = objc_retainBlock(v18);
  diagnosticsManager = [(DADeviceLocal *)self diagnosticsManager];
  identifier = [attributesCopy identifier];
  [diagnosticsManager beginDiagnosticWithIdentifier:identifier parameters:parametersCopy completion:v14];

  identifier2 = [attributesCopy identifier];

  [DADiagnosticAnalyticsManager recordExecuteTestWith:identifier2];
}

- (void)startTestWithCommand:(id)command
{
  commandCopy = command;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    diagnosticsManager = [(DADeviceLocal *)self diagnosticsManager];
    testID = [commandCopy testID];
    v6 = [diagnosticsManager attributesForIdentifier:testID];

    if (v6)
    {
      testQueue = [(DADeviceLocal *)self testQueue];
      parameters = [commandCopy parameters];
      completion = [commandCopy completion];
      v10 = [completion copy];
      [testQueue enqueueTestWithTestAttributes:v6 parameters:parameters completion:v10];
    }

    else
    {
      testQueue = [commandCopy completion];
      parameters = [NSError errorWithDomain:DKErrorDomain code:-1000 userInfo:0];
      (testQueue)[2](testQueue, 0, parameters);
    }

    testID2 = [commandCopy testID];
    [DADiagnosticAnalyticsManager recordConnectionDidReceiveStartTestCommand:testID2];
  }
}

- (void)cancelTestWithCommand:(id)command
{
  commandCopy = command;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    diagnosticsManager = [(DADeviceLocal *)self diagnosticsManager];
    [diagnosticsManager cancelAllDiagnostics];

    testID = [commandCopy testID];
    [DADiagnosticAnalyticsManager recordConnectionDidReceiveCancelTestCommand:testID];
  }
}

- (void)profileWithCommand:(id)command
{
  commandCopy = command;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 1;
  objc_opt_class();
  v27 = commandCopy;
  if (objc_opt_isKindOfClass())
  {
    v4 = dispatch_group_create();
    dispatch_group_enter(v4);
    diagnosticsManager = [(DADeviceLocal *)self diagnosticsManager];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100013DD8;
    v38[3] = &unk_1001BCF40;
    v41 = &v42;
    v26 = commandCopy;
    v39 = v26;
    group = v4;
    v40 = group;
    [diagnosticsManager diagnosticsWithCompletion:v38];

    components = [v26 components];
    if (!components || ([v26 components], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count") == 0, v7, components, v8))
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
      components2 = [v26 components];
      v10 = [components2 countByEnumeratingWithState:&v34 objects:v46 count:16];
      if (v10)
      {
        v11 = *v35;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v35 != v11)
            {
              objc_enumerationMutation(components2);
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

          v10 = [components2 countByEnumeratingWithState:&v34 objects:v46 count:16];
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
    reportManager = [(DADeviceLocal *)self reportManager];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100013FB8;
    v29[3] = &unk_1001BCF68;
    v32 = &v42;
    v19 = v26;
    v30 = v19;
    v20 = group;
    v31 = v20;
    [reportManager reportWithComponentPredicateManifest:v28 completion:v29];

    v21 = dispatch_time(0, 120000000000);
    dispatch_group_wait(v20, v21);
    *(v43 + 24) = 0;
    completion = [v19 completion];
    profile = [v19 profile];
    (completion)[2](completion, profile);

    +[DADiagnosticAnalyticsManager recordConnectionDidReceiveProfileCommand];
  }

  _Block_object_dispose(&v42, 8);
}

- (void)deviceConnection:(id)connection didRecieveCommand:(id)command
{
  commandCopy = command;
  commandType = [commandCopy commandType];
  if (commandType == 2)
  {
    [(DADeviceLocal *)self profileWithCommand:commandCopy];
  }

  else if (commandType == 1)
  {
    [(DADeviceLocal *)self cancelTestWithCommand:commandCopy];
  }

  else
  {
    v6 = commandCopy;
    if (commandType)
    {
      goto LABEL_8;
    }

    [(DADeviceLocal *)self startTestWithCommand:commandCopy];
  }

  v6 = commandCopy;
LABEL_8:
}

- (void)deviceConnection:(id)connection didRequestSuiteRunWithDestinations:(id)destinations confirmation:(id)confirmation
{
  destinationsCopy = destinations;
  confirmationCopy = confirmation;
  delegate = [(DADeviceLocal *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(DADeviceLocal *)self delegate];
    [delegate2 device:self didRequestSuiteRunWithDestinations:destinationsCopy confirmation:confirmationCopy];

    +[DADiagnosticAnalyticsManager recordConnectionDidRequestSuiteRunWith:](DADiagnosticAnalyticsManager, "recordConnectionDidRequestSuiteRunWith:", [destinationsCopy count]);
  }

  else
  {
    confirmationCopy[2](confirmationCopy, 0);
  }
}

- (void)deviceConnection:(id)connection didFinishTestSuite:(id)suite withEntry:(id)entry error:(id)error
{
  suiteCopy = suite;
  entryCopy = entry;
  errorCopy = error;
  delegate = [(DADeviceLocal *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    delegate2 = [(DADeviceLocal *)self delegate];
    [delegate2 device:self didFinishTestSuite:suiteCopy withEntry:entryCopy error:errorCopy];

    [DADiagnosticAnalyticsManager recordConnectionDidFinishTestSuiteFor:suiteCopy with:errorCopy];
  }
}

- (void)deviceConnection:(id)connection didRequestInstructionalPrompt:(id)prompt withConfirmation:(id)confirmation
{
  promptCopy = prompt;
  confirmationCopy = confirmation;
  delegate = [(DADeviceLocal *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(DADeviceLocal *)self delegate];
    [delegate2 device:self didRequestInstructionalPrompt:promptCopy withConfirmation:confirmationCopy];

    identifier = [promptCopy identifier];
    [DADiagnosticAnalyticsManager recordConnectionDidRequestInstructionalPromptWith:identifier];
  }

  else
  {
    identifier = [promptCopy identifier];
    (*(confirmationCopy + 2))(confirmationCopy, identifier, 0);
  }
}

- (void)updateProgress:(id)progress forTest:(id)test
{
  testCopy = test;
  progressCopy = progress;
  connection = [(DADeviceLocal *)self connection];
  progressForTest = [connection progressForTest];
  [progressForTest setObject:progressCopy forKeyedSubscript:testCopy];
}

- (void)getAsset:(id)asset completion:(id)completion
{
  assetCopy = asset;
  completionCopy = completion;
  connection = [(DADeviceLocal *)self connection];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    connection2 = [(DADeviceLocal *)self connection];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100014604;
    v11[3] = &unk_1001BCF90;
    v12 = assetCopy;
    v13 = completionCopy;
    [connection2 requestAsset:v12 completionHandler:v11];
  }
}

- (void)uploadAssets:(id)assets completion:(id)completion
{
  assetsCopy = assets;
  completionCopy = completion;
  connection = [(DADeviceLocal *)self connection];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    connection2 = [(DADeviceLocal *)self connection];
    [connection2 requestUploadAssets:assetsCopy completion:completionCopy];
  }

  else
  {
    connection2 = +[NSArray array];
    v10 = [NSError errorWithDomain:DKErrorDomain code:-1008 userInfo:0];
    completionCopy[2](completionCopy, connection2, v10);

    completionCopy = v10;
  }
}

- (void)_initDevice
{
  _deviceAttributes = [(DADeviceLocal *)self _deviceAttributes];
  _serialNumber = [(DADeviceLocal *)self _serialNumber];
  v5 = [[DADeviceState alloc] initWithSerialNumber:_serialNumber attributes:_deviceAttributes];
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

    _getDiagnosticAllowList = [(DADeviceLocal *)self _getDiagnosticAllowList];
    [(DKDiagnosticManager *)self->_diagnosticsManager setAllowList:_getDiagnosticAllowList];
  }

  v13 = [DKReportManager alloc];
  v14 = [v13 initWithBundleIdentifier:kDKDefaultBundleIdentifier];
  reportManager = self->_reportManager;
  self->_reportManager = v14;

  _createDeviceConnection = [(DADeviceLocal *)self _createDeviceConnection];
  connection = self->_connection;
  self->_connection = _createDeviceConnection;

  [(DADeviceConnectionLocal *)self->_connection setDelegate:self];
  v18 = +[NSNotificationCenter defaultCenter];
  [v18 addObserver:self selector:"_localDeviceSessionWillStartNotification:" name:@"com.apple.Diagnostics.LocalSessionWillStart" object:0];
}

- (id)_createDeviceConnection
{
  v3 = [DADeviceConnectionLocal alloc];
  state = [(DADeviceLocal *)self state];
  v5 = [(DADeviceConnectionLocal *)v3 initWithState:state];

  v6 = +[DADeviceConnectionConfigurator sharedInstance];
  [(DADeviceConnectionLocal *)v5 setConfigurator:v6];

  return v5;
}

- (id)_deviceAttributes
{
  v20[0] = @"productClass";
  _productClass = [(DADeviceLocal *)self _productClass];
  v21[0] = _productClass;
  v20[1] = @"IMEI";
  _IMEI = [(DADeviceLocal *)self _IMEI];
  v4 = _IMEI;
  if (!_IMEI)
  {
    _IMEI = +[NSNull null];
  }

  v17 = _IMEI;
  v21[1] = _IMEI;
  v20[2] = @"marketingName";
  _marketingName = [(DADeviceLocal *)self _marketingName];
  v6 = _marketingName;
  if (!_marketingName)
  {
    _marketingName = +[NSNull null];
  }

  v21[2] = _marketingName;
  v20[3] = @"imageName";
  _deviceImageName = [(DADeviceLocal *)self _deviceImageName];
  v21[3] = _deviceImageName;
  v20[4] = @"maskName";
  _deviceMaskName = [(DADeviceLocal *)self _deviceMaskName];
  v21[4] = _deviceMaskName;
  v20[5] = @"deviceType";
  _deviceType = [(DADeviceLocal *)self _deviceType];
  v21[5] = _deviceType;
  v20[6] = @"deviceClass";
  _deviceClass = [(DADeviceLocal *)self _deviceClass];
  v21[6] = _deviceClass;
  v20[7] = @"deviceEnclosureColor";
  _deviceEnclosureColor = [(DADeviceLocal *)self _deviceEnclosureColor];
  v11 = _deviceEnclosureColor;
  if (!_deviceEnclosureColor)
  {
    v11 = +[NSNull null];
  }

  v21[7] = v11;
  v20[8] = @"deviceColor";
  _deviceColor = [(DADeviceLocal *)self _deviceColor];
  v13 = _deviceColor;
  if (!_deviceColor)
  {
    v13 = +[NSNull null];
  }

  v21[8] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:9];
  if (!_deviceColor)
  {
  }

  if (!_deviceEnclosureColor)
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
  customSerialNumber = [(DADeviceLocal *)self customSerialNumber];

  if (customSerialNumber)
  {
    customSerialNumber2 = [(DADeviceLocal *)self customSerialNumber];
  }

  else
  {
    customSerialNumber2 = MGCopyAnswer();
  }

  return customSerialNumber2;
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

- (void)_localDeviceSessionWillStartNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  if ([object isEqual:self])
  {
    goto LABEL_8;
  }

  state = [(DADeviceLocal *)self state];
  if (![state phase])
  {

LABEL_8:
    goto LABEL_9;
  }

  state2 = [(DADeviceLocal *)self state];
  phase = [state2 phase];

  if (phase != 1)
  {
    v9 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      object2 = [notificationCopy object];
      v12 = 138412546;
      selfCopy = self;
      v14 = 2112;
      v15 = object2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Local device %@ ending so %@ can start", &v12, 0x16u);
    }

    connection = [(DADeviceLocal *)self connection];
    [connection end];
  }

LABEL_9:
}

- (void)archiveConnection
{
  connection = [(DADeviceLocal *)self connection];
  [connection archive];
}

- (DADeviceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end