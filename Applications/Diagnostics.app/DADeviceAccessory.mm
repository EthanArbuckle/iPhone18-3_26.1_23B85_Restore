@interface DADeviceAccessory
- (BOOL)isEqual:(id)a3;
- (DADeviceAccessory)initWithAccessory:(id)a3;
- (DADeviceDelegate)delegate;
- (NSString)description;
- (id)_deviceImageName;
- (id)_marketingName;
- (id)_serialNumber;
- (unint64_t)hash;
- (void)_profileWithCommand:(id)a3;
- (void)cancelTestWithCommand:(id)a3;
- (void)deviceConnection:(id)a3 didRecieveCommand:(id)a4;
- (void)end;
- (void)executeTestWithTestAttributes:(id)a3 parameters:(id)a4 completion:(id)a5;
- (void)idle;
- (void)resumeTests;
- (void)start;
- (void)startTestWithCommand:(id)a3;
- (void)suspendTests;
@end

@implementation DADeviceAccessory

- (DADeviceAccessory)initWithAccessory:(id)a3
{
  v5 = a3;
  v28.receiver = self;
  v28.super_class = DADeviceAccessory;
  v6 = [(DADeviceAccessory *)&v28 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accessory, a3);
    v29[0] = @"productClass";
    v8 = [(DADeviceAccessory *)v7 _productClass];
    v30[0] = v8;
    v29[1] = @"marketingName";
    v9 = [(DADeviceAccessory *)v7 _marketingName];
    v30[1] = v9;
    v29[2] = @"imageName";
    v10 = [(DADeviceAccessory *)v7 _deviceImageName];
    v30[2] = v10;
    v11 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:3];

    v12 = [DADeviceState alloc];
    v13 = [(DADeviceAccessory *)v7 _serialNumber];
    v14 = [(DADeviceState *)v12 initWithSerialNumber:v13 attributes:v11];
    state = v7->_state;
    v7->_state = v14;

    v16 = [DATestQueue testQueueWithDelegate:v7];
    testQueue = v7->_testQueue;
    v7->_testQueue = v16;

    v18 = kDKDefaultBundleIdentifier;
    accessory = v7->_accessory;
    if (accessory)
    {
      v20 = [(DAAdapterAccessory *)accessory identifier];

      v18 = v20;
    }

    v21 = [[DKReportManager alloc] initWithBundleIdentifier:v18];
    reportManager = v7->_reportManager;
    v7->_reportManager = v21;

    v23 = [DADeviceConnectionLocal alloc];
    v24 = [(DADeviceAccessory *)v7 state];
    v25 = [(DADeviceConnectionLocal *)v23 initWithState:v24];
    connection = v7->_connection;
    v7->_connection = v25;

    [(DADeviceConnectionLocal *)v7->_connection setDelegate:v7];
  }

  return v7;
}

- (void)start
{
  v2 = [(DADeviceAccessory *)self connection];
  [v2 start];

  +[DADiagnosticAnalyticsManager recordDeviceStart];
}

- (void)idle
{
  v2 = [(DADeviceAccessory *)self connection];
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

  v4 = [(DADeviceAccessory *)self testQueue];
  [v4 setSuspended:1];

  v5 = [(DADeviceAccessory *)self diagnosticsManager];
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

  v4 = [(DADeviceAccessory *)self testQueue];
  [v4 setSuspended:0];

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

- (void)startTestWithCommand:(id)a3
{
  v12 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(DADeviceAccessory *)self diagnosticsManager];
    v5 = [v12 testID];
    v6 = [v4 attributesForIdentifier:v5];

    if (v6)
    {
      v7 = [(DADeviceAccessory *)self testQueue];
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
    v4 = [(DADeviceAccessory *)self diagnosticsManager];
    [v4 cancelAllDiagnostics];

    v5 = [v6 testID];
    [DADiagnosticAnalyticsManager recordConnectionDidReceiveCancelTestCommand:v5];
  }
}

- (void)executeTestWithTestAttributes:(id)a3 parameters:(id)a4 completion:(id)a5
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100022B84;
  v15[3] = &unk_1001BCF18;
  v16 = a5;
  v8 = v16;
  v9 = a4;
  v10 = a3;
  v11 = objc_retainBlock(v15);
  v12 = [(DADeviceAccessory *)self diagnosticsManager];
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
    [(DADeviceAccessory *)self _profileWithCommand:v7];
  }

  else if (v5 == 1)
  {
    [(DADeviceAccessory *)self cancelTestWithCommand:v7];
  }

  else
  {
    v6 = v7;
    if (v5)
    {
      goto LABEL_8;
    }

    [(DADeviceAccessory *)self startTestWithCommand:v7];
  }

  v6 = v7;
LABEL_8:
}

- (unint64_t)hash
{
  v2 = [(DADeviceAccessory *)self _serialNumber];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(DADeviceAccessory *)self _serialNumber];
    v6 = [v4 _serialNumber];
    v7 = [v5 isEqualToString:v6];
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
  v5 = [(DADeviceAccessory *)self state];
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
    v6 = [v4 profile];
    [v6 setTests:&__NSArray0__struct];

    v7 = [v4 components];
    if (v7 && (v8 = v7, [v4 components], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, v8, v10))
    {
      v27 = self;
      v28 = v5;
      v29 = +[NSMutableSet set];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v11 = [v4 components];
      v12 = [v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
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
              objc_enumerationMutation(v11);
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

          v13 = [v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v13);
      }

      v5 = v28;
      self = v27;
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
    v21 = [(DADeviceAccessory *)self reportManager];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000231B0;
    v30[3] = &unk_1001BD508;
    v22 = v4;
    v31 = v22;
    v32 = v5;
    v23 = v5;
    [v21 reportWithComponentPredicateManifest:v29 completion:v30];

    v24 = dispatch_time(0, 60000000000);
    dispatch_group_wait(v23, v24);
    v25 = [v22 completion];
    v26 = [v22 profile];
    (v25)[2](v25, v26);

    +[DADiagnosticAnalyticsManager recordConnectionDidReceiveProfileCommand];
  }
}

- (id)_deviceImageName
{
  v2 = [(DAAdapterAccessory *)self->_accessory modelNumber];
  v3 = v2;
  if (v2)
  {
    v4 = [@"SBC" stringByAppendingFormat:@"-%@", v2];
  }

  else
  {
    v4 = @"SBC";
  }

  return v4;
}

- (id)_serialNumber
{
  v2 = [(DADeviceAccessory *)self accessory];
  v3 = [v2 serialNumber];

  return v3;
}

- (id)_marketingName
{
  v2 = [(DADeviceAccessory *)self accessory];
  v3 = [v2 productName];

  return v3;
}

- (DADeviceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end