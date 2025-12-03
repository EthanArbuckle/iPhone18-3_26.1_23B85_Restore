@interface DADeviceAirpods
- (BOOL)isEqual:(id)equal;
- (DADeviceAirpods)initWithBluetoothDevice:(id)device;
- (DADeviceDelegate)delegate;
- (NSString)description;
- (id)_deviceImageName;
- (id)_deviceType;
- (id)_marketingName;
- (unint64_t)hash;
- (void)_profileWithCommand:(id)command;
- (void)allowSessionAccessoryDisconnectForDuration:(id)duration;
- (void)cancelTestWithCommand:(id)command;
- (void)clearAllowSessionAccessoryDisconnect;
- (void)deviceConnection:(id)connection didRecieveCommand:(id)command;
- (void)end;
- (void)executeTestWithTestAttributes:(id)attributes parameters:(id)parameters completion:(id)completion;
- (void)getAsset:(id)asset completion:(id)completion;
- (void)idle;
- (void)requestSessionAccessoryIdentifierWithCompletion:(id)completion;
- (void)resumeTests;
- (void)start;
- (void)startTestWithCommand:(id)command;
- (void)suspendTests;
- (void)unpairSessionAccessoryOnTestCompletion;
- (void)updateProgress:(id)progress forTest:(id)test;
@end

@implementation DADeviceAirpods

- (DADeviceAirpods)initWithBluetoothDevice:(id)device
{
  deviceCopy = device;
  v37.receiver = self;
  v37.super_class = DADeviceAirpods;
  v6 = [(DADeviceAirpods *)&v37 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v6->_airpodsDevice, device);
  address = [deviceCopy address];
  macAddress = v7->_macAddress;
  v7->_macAddress = address;

  v10 = [DADeviceObserverAirpods primarySerialNumberForAirpodsDevice:deviceCopy];
  if (v10)
  {
    serialNumber = v7->_serialNumber;
    v7->_serialNumber = v10;
    v12 = v10;

    v38[0] = @"productClass";
    _productClass = [(DADeviceAirpods *)v7 _productClass];
    v39[0] = _productClass;
    v38[1] = @"deviceClass";
    _deviceClass = [(DADeviceAirpods *)v7 _deviceClass];
    v39[1] = _deviceClass;
    v38[2] = @"deviceType";
    _deviceType = [(DADeviceAirpods *)v7 _deviceType];
    v39[2] = _deviceType;
    v38[3] = @"marketingName";
    _marketingName = [(DADeviceAirpods *)v7 _marketingName];
    v39[3] = _marketingName;
    v38[4] = @"imageName";
    _deviceImageName = [(DADeviceAirpods *)v7 _deviceImageName];
    v39[4] = _deviceImageName;
    v18 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:5];

    v19 = [DADeviceState alloc];
    serialNumber = [(DADeviceAirpods *)v7 serialNumber];
    v21 = [(DADeviceState *)v19 initWithSerialNumber:serialNumber attributes:v18];
    state = v7->_state;
    v7->_state = v21;

    v23 = [DATestQueue testQueueWithDelegate:v7];
    testQueue = v7->_testQueue;
    v7->_testQueue = v23;

    v25 = objc_opt_new();
    diagnosticsManager = v7->_diagnosticsManager;
    v7->_diagnosticsManager = v25;

    [(DKDiagnosticManager *)v7->_diagnosticsManager setProgressResponder:v7];
    [(DKDiagnosticManager *)v7->_diagnosticsManager setAssetResponder:v7];
    [(DKDiagnosticManager *)v7->_diagnosticsManager setAccessoryResponder:v7];
    airpodsUUID = v7->_airpodsUUID;
    v7->_airpodsUUID = 0;

    v28 = [[DKReportManager alloc] initWithBundleIdentifier:@"AirPods"];
    reportManager = v7->_reportManager;
    v7->_reportManager = v28;

    v30 = [DADeviceConnectionAirPods alloc];
    state = [(DADeviceAirpods *)v7 state];
    v32 = [(DADeviceConnectionAirPods *)v30 initWithState:state bluetoothDevice:deviceCopy];
    connection = v7->_connection;
    v7->_connection = v32;

    [(DADeviceConnectionLocal *)v7->_connection setDelegate:v7];
LABEL_4:
    v34 = v7;
    goto LABEL_8;
  }

  v35 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    sub_1001594E8(v35);
  }

  v34 = 0;
LABEL_8:

  return v34;
}

- (void)start
{
  connection = [(DADeviceAirpods *)self connection];
  [connection start];

  +[DADiagnosticAnalyticsManager recordDeviceStart];
}

- (void)idle
{
  connection = [(DADeviceAirpods *)self connection];
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

  testQueue = [(DADeviceAirpods *)self testQueue];
  [testQueue setSuspended:1];

  diagnosticsManager = [(DADeviceAirpods *)self diagnosticsManager];
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

  testQueue = [(DADeviceAirpods *)self testQueue];
  [testQueue setSuspended:0];

  +[DADiagnosticAnalyticsManager recordDeviceResumeTests];
}

- (void)end
{
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100027BFC;
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
    connection = [(DADeviceAirpods *)self connection];
    [connection setUnpairOnTestCompletion:0];

    diagnosticsManager = [(DADeviceAirpods *)self diagnosticsManager];
    testID = [commandCopy testID];
    v7 = [diagnosticsManager attributesForIdentifier:testID];

    if (v7)
    {
      testQueue = [(DADeviceAirpods *)self testQueue];
      parameters = [commandCopy parameters];
      completion = [commandCopy completion];
      v11 = [completion copy];
      [testQueue enqueueTestWithTestAttributes:v7 parameters:parameters completion:v11];
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
    diagnosticsManager = [(DADeviceAirpods *)self diagnosticsManager];
    [diagnosticsManager cancelAllDiagnostics];

    testID = [commandCopy testID];
    [DADiagnosticAnalyticsManager recordConnectionDidReceiveCancelTestCommand:testID];
  }
}

- (void)executeTestWithTestAttributes:(id)attributes parameters:(id)parameters completion:(id)completion
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100027FB4;
  v15[3] = &unk_1001BCF18;
  completionCopy = completion;
  v8 = completionCopy;
  parametersCopy = parameters;
  attributesCopy = attributes;
  v11 = objc_retainBlock(v15);
  diagnosticsManager = [(DADeviceAirpods *)self diagnosticsManager];
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
    [(DADeviceAirpods *)self _profileWithCommand:commandCopy];
  }

  else if (commandType == 1)
  {
    [(DADeviceAirpods *)self cancelTestWithCommand:commandCopy];
  }

  else
  {
    v6 = commandCopy;
    if (commandType)
    {
      goto LABEL_8;
    }

    [(DADeviceAirpods *)self startTestWithCommand:commandCopy];
  }

  v6 = commandCopy;
LABEL_8:
}

- (unint64_t)hash
{
  macAddress = [(DADeviceAirpods *)self macAddress];
  v3 = [macAddress hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    macAddress = [(DADeviceAirpods *)self macAddress];
    macAddress2 = [v5 macAddress];

    v8 = [macAddress isEqualToString:macAddress2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  state = [(DADeviceAirpods *)self state];
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
    dispatch_group_enter(v5);
    diagnosticsManager = [(DADeviceAirpods *)self diagnosticsManager];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_100028678;
    v40[3] = &unk_1001BD5F0;
    v7 = commandCopy;
    v41 = v7;
    v8 = v5;
    v42 = v8;
    [diagnosticsManager diagnosticsWithCompletion:v40];

    components = [v7 components];
    if (components && (v10 = components, [v7 components], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v11, v10, v12))
    {
      selfCopy = self;
      v30 = commandCopy;
      v31 = +[NSMutableSet set];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      components2 = [v7 components];
      v14 = [components2 countByEnumeratingWithState:&v36 objects:v43 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v37;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v37 != v16)
            {
              objc_enumerationMutation(components2);
            }

            v18 = *(*(&v36 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = [v18 objectForKeyedSubscript:@"identifier"];
              v20 = [v18 objectForKeyedSubscript:@"type"];
              if (v20)
              {
                v21 = [DKComponentPredicate componentPredicateWithType:v20 identifier:v19];
                [v31 addObject:v21];
              }
            }
          }

          v15 = [components2 countByEnumeratingWithState:&v36 objects:v43 count:16];
        }

        while (v15);
      }

      self = selfCopy;
      commandCopy = v30;
    }

    else
    {
      v31 = 0;
    }

    v22 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Starting report...", buf, 2u);
    }

    dispatch_group_enter(v8);
    reportManager = [(DADeviceAirpods *)self reportManager];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000288C8;
    v32[3] = &unk_1001BD508;
    v24 = v7;
    v33 = v24;
    v34 = v8;
    v25 = v8;
    [reportManager reportWithComponentPredicateManifest:v31 completion:v32];

    v26 = dispatch_time(0, 60000000000);
    dispatch_group_wait(v25, v26);
    completion = [v24 completion];
    profile = [v24 profile];
    (completion)[2](completion, profile);

    +[DADiagnosticAnalyticsManager recordConnectionDidReceiveProfileCommand];
  }
}

- (id)_deviceImageName
{
  _deviceType = [(DADeviceAirpods *)self _deviceType];
  v3 = [NSString stringWithFormat:@"%@-0.png", _deviceType];
  v4 = [v3 stringByReplacingReservedURLCharactersUsingEncoding:1];

  return v4;
}

- (id)_deviceType
{
  airpodsDevice = [(DADeviceAirpods *)self airpodsDevice];
  v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"AirPods_%u", [airpodsDevice productId]);

  return v3;
}

- (id)_marketingName
{
  airpodsDevice = [(DADeviceAirpods *)self airpodsDevice];
  productId = [airpodsDevice productId];

  result = @"AirPods";
  if (productId > 8203)
  {
    if (productId > 8208)
    {
      if (productId == 8209)
      {
        return @"Beats Studio Buds";
      }

      if (productId == 8228)
      {
        return @"AirPods Pro";
      }

      v9 = 8212;
    }

    else
    {
      if (productId == 8204)
      {
        return @"Beats Solo Pro";
      }

      if (productId == 8205)
      {
        return @"Powerbeats⁴";
      }

      v9 = 8206;
    }

    if (productId != v9)
    {
      return result;
    }

    return @"AirPods Pro";
  }

  v5 = @"Powerbeats Pro";
  if (productId != 8203)
  {
    v5 = @"AirPods";
  }

  if (productId == 8202)
  {
    v5 = @"AirPods Max";
  }

  if (productId == 8201)
  {
    v5 = @"Beats Studio³";
  }

  v6 = @"BeatsX";
  v7 = @"Beats Solo³";
  if (productId != 8198)
  {
    v7 = @"AirPods";
  }

  if (productId != 8197)
  {
    v6 = v7;
  }

  if (productId == 8195)
  {
    v8 = @"Powerbeats³";
  }

  else
  {
    v8 = v6;
  }

  if (productId <= 8200)
  {
    return v8;
  }

  else
  {
    return v5;
  }
}

- (void)updateProgress:(id)progress forTest:(id)test
{
  testCopy = test;
  progressCopy = progress;
  connection = [(DADeviceAirpods *)self connection];
  progressForTest = [connection progressForTest];
  [progressForTest setObject:progressCopy forKeyedSubscript:testCopy];
}

- (void)getAsset:(id)asset completion:(id)completion
{
  assetCopy = asset;
  completionCopy = completion;
  connection = [(DADeviceAirpods *)self connection];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    connection2 = [(DADeviceAirpods *)self connection];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100028DF0;
    v11[3] = &unk_1001BCF90;
    v12 = assetCopy;
    v13 = completionCopy;
    [connection2 requestAsset:v12 completionHandler:v11];
  }
}

- (void)unpairSessionAccessoryOnTestCompletion
{
  connection = [(DADeviceAirpods *)self connection];
  [connection setUnpairOnTestCompletion:1];
}

- (void)allowSessionAccessoryDisconnectForDuration:(id)duration
{
  durationCopy = duration;
  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = durationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "DK requested to allow accessory disconnect for %@", &v7, 0xCu);
  }

  connection = [(DADeviceAirpods *)self connection];
  [connection allowSessionAccessoryDisconnectForDuration:durationCopy];
}

- (void)clearAllowSessionAccessoryDisconnect
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "DK requested to clear allowing accessory disconnects", v5, 2u);
  }

  connection = [(DADeviceAirpods *)self connection];
  [connection clearAllowSessionAccessoryDisconnect];
}

- (void)requestSessionAccessoryIdentifierWithCompletion:(id)completion
{
  completionCopy = completion;
  airpodsUUID = [(DADeviceAirpods *)self airpodsUUID];

  if (!airpodsUUID)
  {
    v35 = 0;
    v6 = [CBDiscovery devicesWithDiscoveryFlags:0x800000 error:&v35];
    v7 = v35;
    if (v6)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      obj = v6;
      v29 = [obj countByEnumeratingWithState:&v31 objects:v38 count:16];
      if (v29)
      {
        v30 = *v32;
        v26 = v6;
        v27 = completionCopy;
        v25 = v7;
        while (2)
        {
          for (i = 0; i != v29; i = i + 1)
          {
            if (*v32 != v30)
            {
              objc_enumerationMutation(obj);
            }

            v9 = *(*(&v31 + 1) + 8 * i);
            serialNumber = [v9 serialNumber];
            serialNumber2 = [(DADeviceAirpods *)self serialNumber];
            if ([serialNumber isEqualToString:serialNumber2])
            {
              goto LABEL_15;
            }

            serialNumberLeft = [v9 serialNumberLeft];
            serialNumber3 = [(DADeviceAirpods *)self serialNumber];
            if ([serialNumberLeft isEqualToString:serialNumber3])
            {

LABEL_15:
LABEL_16:
              v17 = [NSUUID alloc];
              identifier = [v9 identifier];
              v19 = [v17 initWithUUIDString:identifier];
              [(DADeviceAirpods *)self setAirpodsUUID:v19];

              v6 = v26;
              completionCopy = v27;
              v7 = v25;
              goto LABEL_17;
            }

            serialNumberRight = [v9 serialNumberRight];
            serialNumber4 = [(DADeviceAirpods *)self serialNumber];
            v16 = [serialNumberRight isEqualToString:serialNumber4];

            if (v16)
            {
              goto LABEL_16;
            }
          }

          v6 = v26;
          completionCopy = v27;
          v7 = v25;
          v29 = [obj countByEnumeratingWithState:&v31 objects:v38 count:16];
          if (v29)
          {
            continue;
          }

          break;
        }
      }

LABEL_17:
    }
  }

  airpodsUUID2 = [(DADeviceAirpods *)self airpodsUUID];

  if (airpodsUUID2)
  {
    airpodsUUID3 = [(DADeviceAirpods *)self airpodsUUID];
    uUIDString = [airpodsUUID3 UUIDString];
    completionCopy[2](completionCopy, uUIDString, 0);
  }

  else
  {
    v23 = [NSError alloc];
    v36 = NSLocalizedDescriptionKey;
    v37 = @"Unable to find CoreBluetooth identifier for session accessory";
    v24 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    airpodsUUID3 = [v23 initWithDomain:@"com.apple.Diagnostics" code:-1 userInfo:v24];

    (completionCopy)[2](completionCopy, &stru_1001C9EA8, airpodsUUID3);
  }
}

- (DADeviceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end