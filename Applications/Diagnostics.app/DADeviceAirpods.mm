@interface DADeviceAirpods
- (BOOL)isEqual:(id)a3;
- (DADeviceAirpods)initWithBluetoothDevice:(id)a3;
- (DADeviceDelegate)delegate;
- (NSString)description;
- (id)_deviceImageName;
- (id)_deviceType;
- (id)_marketingName;
- (unint64_t)hash;
- (void)_profileWithCommand:(id)a3;
- (void)allowSessionAccessoryDisconnectForDuration:(id)a3;
- (void)cancelTestWithCommand:(id)a3;
- (void)clearAllowSessionAccessoryDisconnect;
- (void)deviceConnection:(id)a3 didRecieveCommand:(id)a4;
- (void)end;
- (void)executeTestWithTestAttributes:(id)a3 parameters:(id)a4 completion:(id)a5;
- (void)getAsset:(id)a3 completion:(id)a4;
- (void)idle;
- (void)requestSessionAccessoryIdentifierWithCompletion:(id)a3;
- (void)resumeTests;
- (void)start;
- (void)startTestWithCommand:(id)a3;
- (void)suspendTests;
- (void)unpairSessionAccessoryOnTestCompletion;
- (void)updateProgress:(id)a3 forTest:(id)a4;
@end

@implementation DADeviceAirpods

- (DADeviceAirpods)initWithBluetoothDevice:(id)a3
{
  v5 = a3;
  v37.receiver = self;
  v37.super_class = DADeviceAirpods;
  v6 = [(DADeviceAirpods *)&v37 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v6->_airpodsDevice, a3);
  v8 = [v5 address];
  macAddress = v7->_macAddress;
  v7->_macAddress = v8;

  v10 = [DADeviceObserverAirpods primarySerialNumberForAirpodsDevice:v5];
  if (v10)
  {
    serialNumber = v7->_serialNumber;
    v7->_serialNumber = v10;
    v12 = v10;

    v38[0] = @"productClass";
    v13 = [(DADeviceAirpods *)v7 _productClass];
    v39[0] = v13;
    v38[1] = @"deviceClass";
    v14 = [(DADeviceAirpods *)v7 _deviceClass];
    v39[1] = v14;
    v38[2] = @"deviceType";
    v15 = [(DADeviceAirpods *)v7 _deviceType];
    v39[2] = v15;
    v38[3] = @"marketingName";
    v16 = [(DADeviceAirpods *)v7 _marketingName];
    v39[3] = v16;
    v38[4] = @"imageName";
    v17 = [(DADeviceAirpods *)v7 _deviceImageName];
    v39[4] = v17;
    v18 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:5];

    v19 = [DADeviceState alloc];
    v20 = [(DADeviceAirpods *)v7 serialNumber];
    v21 = [(DADeviceState *)v19 initWithSerialNumber:v20 attributes:v18];
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
    v31 = [(DADeviceAirpods *)v7 state];
    v32 = [(DADeviceConnectionAirPods *)v30 initWithState:v31 bluetoothDevice:v5];
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
  v2 = [(DADeviceAirpods *)self connection];
  [v2 start];

  +[DADiagnosticAnalyticsManager recordDeviceStart];
}

- (void)idle
{
  v2 = [(DADeviceAirpods *)self connection];
  [v2 idle];

  +[DADiagnosticAnalyticsManager recordDeviceIdle];
}

- (void)suspendTests
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Test launch suspending for %@.", &v6, 0xCu);
  }

  v4 = [(DADeviceAirpods *)self testQueue];
  [v4 setSuspended:1];

  v5 = [(DADeviceAirpods *)self diagnosticsManager];
  [v5 cancelAllDiagnostics];

  +[DADiagnosticAnalyticsManager recordDeviceSuspendTests];
}

- (void)resumeTests
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Test launch resuming for %@.", &v5, 0xCu);
  }

  v4 = [(DADeviceAirpods *)self testQueue];
  [v4 setSuspended:0];

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

- (void)startTestWithCommand:(id)a3
{
  v13 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(DADeviceAirpods *)self connection];
    [v4 setUnpairOnTestCompletion:0];

    v5 = [(DADeviceAirpods *)self diagnosticsManager];
    v6 = [v13 testID];
    v7 = [v5 attributesForIdentifier:v6];

    if (v7)
    {
      v8 = [(DADeviceAirpods *)self testQueue];
      v9 = [v13 parameters];
      v10 = [v13 completion];
      v11 = [v10 copy];
      [v8 enqueueTestWithTestAttributes:v7 parameters:v9 completion:v11];
    }

    else
    {
      v8 = [v13 completion];
      v9 = [NSError errorWithDomain:DKErrorDomain code:-1000 userInfo:0];
      (v8)[2](v8, 0, v9);
    }

    v12 = [v13 testID];
    [DADiagnosticAnalyticsManager recordConnectionDidReceiveStartTestCommand:v12];
  }
}

- (void)cancelTestWithCommand:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(DADeviceAirpods *)self diagnosticsManager];
    [v4 cancelAllDiagnostics];

    v5 = [v6 testID];
    [DADiagnosticAnalyticsManager recordConnectionDidReceiveCancelTestCommand:v5];
  }
}

- (void)executeTestWithTestAttributes:(id)a3 parameters:(id)a4 completion:(id)a5
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100027FB4;
  v15[3] = &unk_1001BCF18;
  v16 = a5;
  v8 = v16;
  v9 = a4;
  v10 = a3;
  v11 = objc_retainBlock(v15);
  v12 = [(DADeviceAirpods *)self diagnosticsManager];
  v13 = [v10 identifier];
  [v12 beginDiagnosticWithIdentifier:v13 parameters:v9 completion:v11];

  v14 = [v10 identifier];

  [DADiagnosticAnalyticsManager recordExecuteTestWith:v14];
}

- (void)deviceConnection:(id)a3 didRecieveCommand:(id)a4
{
  v7 = a4;
  v5 = [v7 commandType];
  if (v5 == 2)
  {
    [(DADeviceAirpods *)self _profileWithCommand:v7];
  }

  else if (v5 == 1)
  {
    [(DADeviceAirpods *)self cancelTestWithCommand:v7];
  }

  else
  {
    v6 = v7;
    if (v5)
    {
      goto LABEL_8;
    }

    [(DADeviceAirpods *)self startTestWithCommand:v7];
  }

  v6 = v7;
LABEL_8:
}

- (unint64_t)hash
{
  v2 = [(DADeviceAirpods *)self macAddress];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(DADeviceAirpods *)self macAddress];
    v7 = [v5 macAddress];

    v8 = [v6 isEqualToString:v7];
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
  v5 = [(DADeviceAirpods *)self state];
  v6 = [v5 serialNumber];
  v7 = [NSString stringWithFormat:@"<%@ %p: %@>", v4, self, v6];;

  return v7;
}

- (void)_profileWithCommand:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = dispatch_group_create();
    dispatch_group_enter(v5);
    v6 = [(DADeviceAirpods *)self diagnosticsManager];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_100028678;
    v40[3] = &unk_1001BD5F0;
    v7 = v4;
    v41 = v7;
    v8 = v5;
    v42 = v8;
    [v6 diagnosticsWithCompletion:v40];

    v9 = [v7 components];
    if (v9 && (v10 = v9, [v7 components], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v11, v10, v12))
    {
      v29 = self;
      v30 = v4;
      v31 = +[NSMutableSet set];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v13 = [v7 components];
      v14 = [v13 countByEnumeratingWithState:&v36 objects:v43 count:16];
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
              objc_enumerationMutation(v13);
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

          v15 = [v13 countByEnumeratingWithState:&v36 objects:v43 count:16];
        }

        while (v15);
      }

      self = v29;
      v4 = v30;
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
    v23 = [(DADeviceAirpods *)self reportManager];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000288C8;
    v32[3] = &unk_1001BD508;
    v24 = v7;
    v33 = v24;
    v34 = v8;
    v25 = v8;
    [v23 reportWithComponentPredicateManifest:v31 completion:v32];

    v26 = dispatch_time(0, 60000000000);
    dispatch_group_wait(v25, v26);
    v27 = [v24 completion];
    v28 = [v24 profile];
    (v27)[2](v27, v28);

    +[DADiagnosticAnalyticsManager recordConnectionDidReceiveProfileCommand];
  }
}

- (id)_deviceImageName
{
  v2 = [(DADeviceAirpods *)self _deviceType];
  v3 = [NSString stringWithFormat:@"%@-0.png", v2];
  v4 = [v3 stringByReplacingReservedURLCharactersUsingEncoding:1];

  return v4;
}

- (id)_deviceType
{
  v2 = [(DADeviceAirpods *)self airpodsDevice];
  v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"AirPods_%u", [v2 productId]);

  return v3;
}

- (id)_marketingName
{
  v2 = [(DADeviceAirpods *)self airpodsDevice];
  v3 = [v2 productId];

  result = @"AirPods";
  if (v3 > 8203)
  {
    if (v3 > 8208)
    {
      if (v3 == 8209)
      {
        return @"Beats Studio Buds";
      }

      if (v3 == 8228)
      {
        return @"AirPods Pro";
      }

      v9 = 8212;
    }

    else
    {
      if (v3 == 8204)
      {
        return @"Beats Solo Pro";
      }

      if (v3 == 8205)
      {
        return @"Powerbeats⁴";
      }

      v9 = 8206;
    }

    if (v3 != v9)
    {
      return result;
    }

    return @"AirPods Pro";
  }

  v5 = @"Powerbeats Pro";
  if (v3 != 8203)
  {
    v5 = @"AirPods";
  }

  if (v3 == 8202)
  {
    v5 = @"AirPods Max";
  }

  if (v3 == 8201)
  {
    v5 = @"Beats Studio³";
  }

  v6 = @"BeatsX";
  v7 = @"Beats Solo³";
  if (v3 != 8198)
  {
    v7 = @"AirPods";
  }

  if (v3 != 8197)
  {
    v6 = v7;
  }

  if (v3 == 8195)
  {
    v8 = @"Powerbeats³";
  }

  else
  {
    v8 = v6;
  }

  if (v3 <= 8200)
  {
    return v8;
  }

  else
  {
    return v5;
  }
}

- (void)updateProgress:(id)a3 forTest:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(DADeviceAirpods *)self connection];
  v8 = [v9 progressForTest];
  [v8 setObject:v7 forKeyedSubscript:v6];
}

- (void)getAsset:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DADeviceAirpods *)self connection];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(DADeviceAirpods *)self connection];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100028DF0;
    v11[3] = &unk_1001BCF90;
    v12 = v6;
    v13 = v7;
    [v10 requestAsset:v12 completionHandler:v11];
  }
}

- (void)unpairSessionAccessoryOnTestCompletion
{
  v2 = [(DADeviceAirpods *)self connection];
  [v2 setUnpairOnTestCompletion:1];
}

- (void)allowSessionAccessoryDisconnectForDuration:(id)a3
{
  v4 = a3;
  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "DK requested to allow accessory disconnect for %@", &v7, 0xCu);
  }

  v6 = [(DADeviceAirpods *)self connection];
  [v6 allowSessionAccessoryDisconnectForDuration:v4];
}

- (void)clearAllowSessionAccessoryDisconnect
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "DK requested to clear allowing accessory disconnects", v5, 2u);
  }

  v4 = [(DADeviceAirpods *)self connection];
  [v4 clearAllowSessionAccessoryDisconnect];
}

- (void)requestSessionAccessoryIdentifierWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(DADeviceAirpods *)self airpodsUUID];

  if (!v5)
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
        v27 = v4;
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
            v10 = [v9 serialNumber];
            v11 = [(DADeviceAirpods *)self serialNumber];
            if ([v10 isEqualToString:v11])
            {
              goto LABEL_15;
            }

            v12 = [v9 serialNumberLeft];
            v13 = [(DADeviceAirpods *)self serialNumber];
            if ([v12 isEqualToString:v13])
            {

LABEL_15:
LABEL_16:
              v17 = [NSUUID alloc];
              v18 = [v9 identifier];
              v19 = [v17 initWithUUIDString:v18];
              [(DADeviceAirpods *)self setAirpodsUUID:v19];

              v6 = v26;
              v4 = v27;
              v7 = v25;
              goto LABEL_17;
            }

            v14 = [v9 serialNumberRight];
            v15 = [(DADeviceAirpods *)self serialNumber];
            v16 = [v14 isEqualToString:v15];

            if (v16)
            {
              goto LABEL_16;
            }
          }

          v6 = v26;
          v4 = v27;
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

  v20 = [(DADeviceAirpods *)self airpodsUUID];

  if (v20)
  {
    v21 = [(DADeviceAirpods *)self airpodsUUID];
    v22 = [v21 UUIDString];
    v4[2](v4, v22, 0);
  }

  else
  {
    v23 = [NSError alloc];
    v36 = NSLocalizedDescriptionKey;
    v37 = @"Unable to find CoreBluetooth identifier for session accessory";
    v24 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v21 = [v23 initWithDomain:@"com.apple.Diagnostics" code:-1 userInfo:v24];

    (v4)[2](v4, &stru_1001C9EA8, v21);
  }
}

- (DADeviceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end