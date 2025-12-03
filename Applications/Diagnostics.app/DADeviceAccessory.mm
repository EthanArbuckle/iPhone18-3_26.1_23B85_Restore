@interface DADeviceAccessory
- (BOOL)isEqual:(id)equal;
- (DADeviceAccessory)initWithAccessory:(id)accessory;
- (DADeviceDelegate)delegate;
- (NSString)description;
- (id)_deviceImageName;
- (id)_marketingName;
- (id)_serialNumber;
- (unint64_t)hash;
- (void)_profileWithCommand:(id)command;
- (void)cancelTestWithCommand:(id)command;
- (void)deviceConnection:(id)connection didRecieveCommand:(id)command;
- (void)end;
- (void)executeTestWithTestAttributes:(id)attributes parameters:(id)parameters completion:(id)completion;
- (void)idle;
- (void)resumeTests;
- (void)start;
- (void)startTestWithCommand:(id)command;
- (void)suspendTests;
@end

@implementation DADeviceAccessory

- (DADeviceAccessory)initWithAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v28.receiver = self;
  v28.super_class = DADeviceAccessory;
  v6 = [(DADeviceAccessory *)&v28 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accessory, accessory);
    v29[0] = @"productClass";
    _productClass = [(DADeviceAccessory *)v7 _productClass];
    v30[0] = _productClass;
    v29[1] = @"marketingName";
    _marketingName = [(DADeviceAccessory *)v7 _marketingName];
    v30[1] = _marketingName;
    v29[2] = @"imageName";
    _deviceImageName = [(DADeviceAccessory *)v7 _deviceImageName];
    v30[2] = _deviceImageName;
    v11 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:3];

    v12 = [DADeviceState alloc];
    _serialNumber = [(DADeviceAccessory *)v7 _serialNumber];
    v14 = [(DADeviceState *)v12 initWithSerialNumber:_serialNumber attributes:v11];
    state = v7->_state;
    v7->_state = v14;

    v16 = [DATestQueue testQueueWithDelegate:v7];
    testQueue = v7->_testQueue;
    v7->_testQueue = v16;

    v18 = kDKDefaultBundleIdentifier;
    accessory = v7->_accessory;
    if (accessory)
    {
      identifier = [(DAAdapterAccessory *)accessory identifier];

      v18 = identifier;
    }

    v21 = [[DKReportManager alloc] initWithBundleIdentifier:v18];
    reportManager = v7->_reportManager;
    v7->_reportManager = v21;

    v23 = [DADeviceConnectionLocal alloc];
    state = [(DADeviceAccessory *)v7 state];
    v25 = [(DADeviceConnectionLocal *)v23 initWithState:state];
    connection = v7->_connection;
    v7->_connection = v25;

    [(DADeviceConnectionLocal *)v7->_connection setDelegate:v7];
  }

  return v7;
}

- (void)start
{
  connection = [(DADeviceAccessory *)self connection];
  [connection start];

  +[DADiagnosticAnalyticsManager recordDeviceStart];
}

- (void)idle
{
  connection = [(DADeviceAccessory *)self connection];
  [connection idle];

  +[DADiagnosticAnalyticsManager recordDeviceIdle];
}

- (void)suspendTests
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Test launch suspending for %@.", &v6, 0xCu);
  }

  testQueue = [(DADeviceAccessory *)self testQueue];
  [testQueue setSuspended:1];

  diagnosticsManager = [(DADeviceAccessory *)self diagnosticsManager];
  [diagnosticsManager cancelAllDiagnostics];

  +[DADiagnosticAnalyticsManager recordDeviceSuspendTests];
}

- (void)resumeTests
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Test launch resuming for %@.", &v5, 0xCu);
  }

  testQueue = [(DADeviceAccessory *)self testQueue];
  [testQueue setSuspended:0];

  +[DADiagnosticAnalyticsManager recordDeviceResumeTests];
}

- (void)end
{
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000227E8;
  block[3] = &unk_1001BC580;
  block[4] = self;
  dispatch_async(v3, block);

  +[DADiagnosticAnalyticsManager recordDeviceEnd];
}

- (void)startTestWithCommand:(id)command
{
  commandCopy = command;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    diagnosticsManager = [(DADeviceAccessory *)self diagnosticsManager];
    testID = [commandCopy testID];
    v6 = [diagnosticsManager attributesForIdentifier:testID];

    if (v6)
    {
      testQueue = [(DADeviceAccessory *)self testQueue];
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
    diagnosticsManager = [(DADeviceAccessory *)self diagnosticsManager];
    [diagnosticsManager cancelAllDiagnostics];

    testID = [commandCopy testID];
    [DADiagnosticAnalyticsManager recordConnectionDidReceiveCancelTestCommand:testID];
  }
}

- (void)executeTestWithTestAttributes:(id)attributes parameters:(id)parameters completion:(id)completion
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100022B84;
  v15[3] = &unk_1001BCF18;
  completionCopy = completion;
  v8 = completionCopy;
  parametersCopy = parameters;
  attributesCopy = attributes;
  v11 = objc_retainBlock(v15);
  diagnosticsManager = [(DADeviceAccessory *)self diagnosticsManager];
  identifier = [attributesCopy identifier];
  [diagnosticsManager beginDiagnosticWithIdentifier:identifier parameters:parametersCopy completion:v11];

  identifier2 = [attributesCopy identifier];

  [DADiagnosticAnalyticsManager recordExecuteTestWith:identifier2];
}

- (void)deviceConnection:(id)connection didRecieveCommand:(id)command
{
  commandCopy = command;
  commandType = [commandCopy commandType];
  if (commandType == 2)
  {
    [(DADeviceAccessory *)self _profileWithCommand:commandCopy];
  }

  else if (commandType == 1)
  {
    [(DADeviceAccessory *)self cancelTestWithCommand:commandCopy];
  }

  else
  {
    v6 = commandCopy;
    if (commandType)
    {
      goto LABEL_8;
    }

    [(DADeviceAccessory *)self startTestWithCommand:commandCopy];
  }

  v6 = commandCopy;
LABEL_8:
}

- (unint64_t)hash
{
  _serialNumber = [(DADeviceAccessory *)self _serialNumber];
  v3 = [_serialNumber hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (objc_opt_respondsToSelector())
  {
    _serialNumber = [(DADeviceAccessory *)self _serialNumber];
    _serialNumber2 = [equalCopy _serialNumber];
    v7 = [_serialNumber isEqualToString:_serialNumber2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  state = [(DADeviceAccessory *)self state];
  serialNumber = [state serialNumber];
  v7 = [NSString stringWithFormat:@"<%@ %p: %@>", v4, self, serialNumber];;

  return v7;
}

- (void)_profileWithCommand:(id)command
{
  commandCopy = command;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = dispatch_group_create();
    profile = [commandCopy profile];
    [profile setTests:&__NSArray0__struct];

    components = [commandCopy components];
    if (components && (v8 = components, [commandCopy components], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, v8, v10))
    {
      selfCopy = self;
      v28 = v5;
      v29 = +[NSMutableSet set];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      components2 = [commandCopy components];
      v12 = [components2 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v35;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v35 != v14)
            {
              objc_enumerationMutation(components2);
            }

            v16 = *(*(&v34 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = [v16 objectForKeyedSubscript:@"identifier"];
              v18 = [v16 objectForKeyedSubscript:@"type"];
              if (v18)
              {
                v19 = [DKComponentPredicate componentPredicateWithType:v18 identifier:v17];
                [v29 addObject:v19];
              }
            }
          }

          v13 = [components2 countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v13);
      }

      v5 = v28;
      self = selfCopy;
    }

    else
    {
      v29 = 0;
    }

    v20 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Starting report...", buf, 2u);
    }

    dispatch_group_enter(v5);
    reportManager = [(DADeviceAccessory *)self reportManager];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000231B0;
    v30[3] = &unk_1001BD508;
    v22 = commandCopy;
    v31 = v22;
    v32 = v5;
    v23 = v5;
    [reportManager reportWithComponentPredicateManifest:v29 completion:v30];

    v24 = dispatch_time(0, 60000000000);
    dispatch_group_wait(v23, v24);
    completion = [v22 completion];
    profile2 = [v22 profile];
    (completion)[2](completion, profile2);

    +[DADiagnosticAnalyticsManager recordConnectionDidReceiveProfileCommand];
  }
}

- (id)_deviceImageName
{
  modelNumber = [(DAAdapterAccessory *)self->_accessory modelNumber];
  v3 = modelNumber;
  if (modelNumber)
  {
    v4 = [@"SBC" stringByAppendingFormat:@"-%@", modelNumber];
  }

  else
  {
    v4 = @"SBC";
  }

  return v4;
}

- (id)_serialNumber
{
  accessory = [(DADeviceAccessory *)self accessory];
  serialNumber = [accessory serialNumber];

  return serialNumber;
}

- (id)_marketingName
{
  accessory = [(DADeviceAccessory *)self accessory];
  productName = [accessory productName];

  return productName;
}

- (DADeviceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end