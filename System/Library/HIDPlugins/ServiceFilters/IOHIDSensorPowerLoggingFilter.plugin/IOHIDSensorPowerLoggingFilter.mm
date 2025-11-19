void sub_E3C(id a1)
{
  qword_8658 = dispatch_queue_create("com.apple.HID.SensorPowerLog", 0);

  _objc_release_x1();
}

void sub_17E8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "IOHIDSensorPowerLoggingFilter: sending telemetry: %@\n", &v2, 0xCu);
}

a3 withUsagePage:(id)a4 andUsage:(id)a5 forClient:(id)a6;
- (void)setCancelHandler:(id)a3;
@end

@implementation IOHIDSensorPowerLoggingFilter

- (IOHIDSensorPowerLoggingFilter)initWithService:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = IOHIDSensorPowerLoggingFilter;
  v5 = [(IOHIDSensorPowerLoggingFilter *)&v19 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_service, v4);
    v7 = objc_opt_new();
    clients = v6->_clients;
    v6->_clients = v7;

    WeakRetained = objc_loadWeakRetained(&v6->_service);
    v10 = [WeakRetained propertyForKey:@"PrimaryUsagePage"];
    usagePage = v6->_usagePage;
    v6->_usagePage = v10;

    v12 = objc_loadWeakRetained(&v6->_service);
    v13 = [v12 propertyForKey:@"PrimaryUsage"];
    usage = v6->_usage;
    v6->_usage = v13;

    v6->_ppsCount = 0;
    if (qword_8650 != -1)
    {
      sub_1798();
    }

    if (qword_8660 != -1)
    {
      sub_17C0();
    }

    v15 = _IOHIDLogCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_loadWeakRetained(&v6->_service);
      *buf = 138412290;
      v21 = v16;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "IOHIDSensorPowerLoggingFilter::initWithService: %@\n", buf, 0xCu);
    }

    v17 = v6;
  }

  return v6;
}

- (id)propertyForKey:(id)a3 client:(id)a4
{
  v5 = a3;
  if ([v5 isEqualToString:@"ServiceFilterDebug"])
  {
    v6 = objc_opt_new();
    [v6 setObject:@"IOHIDSensorPowerLoggingFilter" forKeyedSubscript:@"Class"];
    if (self->_cancelHandler)
    {
      v7 = &__kCFBooleanTrue;
    }

    else
    {
      v7 = &__kCFBooleanFalse;
    }

    v8 = @"cancelHandler";
LABEL_11:
    [v6 setObject:v7 forKeyedSubscript:v8];
    goto LABEL_13;
  }

  if ([v5 isEqualToString:@"TestHIDSensorPowerLoggingFilterKey"])
  {
    v6 = objc_opt_new();
    [v6 setObject:self->_clients forKeyedSubscript:@"clients"];
    v9 = [NSNumber numberWithUnsignedLongLong:self->_ppsCount];
    [v6 setObject:v9 forKeyedSubscript:@"logCount"];

    v10 = [NSNumber numberWithUnsignedLongLong:self->_lastInterval];
    [v6 setObject:v10 forKeyedSubscript:@"lastInterval"];

    if (qword_8668)
    {
      v7 = &__kCFBooleanTrue;
    }

    else
    {
      v7 = &__kCFBooleanFalse;
    }

    v8 = @"PPSInitDone";
    goto LABEL_11;
  }

  v6 = 0;
LABEL_13:

  return v6;
}

- (void)setCancelHandler:(id)a3
{
  v4 = objc_retainBlock(a3);
  cancelHandler = self->_cancelHandler;
  self->_cancelHandler = v4;

  _objc_release_x1();
}

- (void)cancel
{
  (*(self->_cancelHandler + 2))();
  cancelHandler = self->_cancelHandler;
  self->_cancelHandler = 0;
}

- (void)sendPPSTelemetry:(id)a3 withUsagePage:(id)a4 andUsage:(id)a5 forClient:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (qword_8668)
  {
    v21[0] = @"ProcessName";
    v21[1] = @"ReportInterval";
    v22[0] = v13;
    v22[1] = v10;
    v21[2] = @"UsagePage";
    v21[3] = @"Usage";
    v22[2] = v11;
    v22[3] = v12;
    v15 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:4];
    v16 = _IOHIDLogCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_17E8(v15, v16);
    }

    ++self->_ppsCount;
    self->_lastInterval = [v10 unsignedLongLongValue];
    v17 = qword_8658;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1294;
    v19[3] = &unk_4210;
    v20 = v15;
    v18 = v15;
    dispatch_async(v17, v19);
  }
}

- (HIDEventService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

- (BOOL)setProperty:(id)a3 forKey:(id)a4 client:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [a4 isEqualToString:@"ReportInterval"];
  v11 = 0;
  if (v8 && v10)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = 0;
      goto LABEL_18;
    }

    v12 = v8;
    if (v9)
    {
      v13 = [IOHIDSensorPowerLoggingFilter getClientProcessName:v9];
    }

    else
    {
      v13 = @"Unknown Client";
    }

    v14 = _IOHIDLogCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v27 = v12;
      v28 = 2112;
      v29 = v9;
      _os_log_debug_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "IOHIDSensorPowerLoggingFilter: set report interval:%@ client:%@\n", buf, 0x16u);
    }

    v15 = [v9 uuid];

    if (v15)
    {
      clients = self->_clients;
      v17 = [v9 uuid];
      v18 = [(NSMutableDictionary *)clients objectForKeyedSubscript:v17];

      if (v18)
      {
        v19 = [v18 objectForKeyedSubscript:@"ReportInterval"];
        if ([v19 isEqualToNumber:v12])
        {

LABEL_17:
          v11 = 1;
          goto LABEL_18;
        }

        [v18 setObject:v12 forKeyedSubscript:@"ReportInterval"];
      }

      else
      {
        v20 = [NSMutableDictionary alloc];
        v24[0] = @"ReportInterval";
        v24[1] = @"ProcessName";
        v25[0] = v12;
        v25[1] = v13;
        v19 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
        v18 = [v20 initWithDictionary:v19];
      }

      v21 = self->_clients;
      v22 = [v9 uuid];
      [(NSMutableDictionary *)v21 setObject:v18 forKey:v22];
    }

    [(IOHIDSensorPowerLoggingFilter *)self sendPPSTelemetry:v12 withUsagePage:self->_usagePage andUsage:self->_usage forClient:v13];
    goto LABEL_17;
  }

LABEL_18:

  return v11;
}

- (void)clientNotification:(id)a3 added:(BOOL)a4
{
  v6 = a3;
  v7 = v6;
  v8 = 0;
  v9 = 0;
  if (v6 && !a4)
  {
    v9 = [v6 uuid];

    if (v9 && (v10 = self->_clients, [v7 uuid], v11 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKey:](v10, "objectForKey:", v11), v9 = objc_claimAutoreleasedReturnValue(), v11, v9))
    {
      v12 = _IOHIDLogCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v16 = 138412290;
        v17 = v7;
        _os_log_debug_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "IOHIDSensorPowerLoggingFilter: client removed:%@\n", &v16, 0xCu);
      }

      clients = self->_clients;
      v14 = [v7 uuid];
      [(NSMutableDictionary *)clients removeObjectForKey:v14];

      v8 = [v9 objectForKeyedSubscript:@"ReportInterval"];
      if (([v8 isEqualToNumber:&off_4498] & 1) == 0)
      {
        v15 = [v9 objectForKeyedSubscript:@"ProcessName"];
        [(IOHIDSensorPowerLoggingFilter *)self sendPPSTelemetry:&off_4498 withUsagePage:self->_usagePage andUsage:self->_usage forClient:v15];
      }
    }

    else
    {
      v8 = 0;
    }
  }
}

@end