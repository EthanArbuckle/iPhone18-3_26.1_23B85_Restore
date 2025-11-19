@interface OSAGPUEventReport
- (OSAGPUEventReport)initWithDictionary:(id)a3;
- (id)reportNamePrefix;
- (void)generateLogAtLevel:(BOOL)a3 withBlock:(id)a4;
@end

@implementation OSAGPUEventReport

- (OSAGPUEventReport)initWithDictionary:(id)a3
{
  v5 = a3;
  v23.receiver = self;
  v23.super_class = OSAGPUEventReport;
  v6 = [(OSAGPUEventReport *)&v23 init];
  if (v6)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v8 = OBJC_IVAR___OSAReport__capture_time;
    *&v6->OSAReport_opaque[OBJC_IVAR___OSAReport__capture_time] = Current;
    objc_storeStrong(&v6->_event, a3);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v9 = [(NSDictionary *)v6->_event count];
      *buf = 134217984;
      v25 = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "GPURestartReport: event with %lu keys", buf, 0xCu);
    }

    v10 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.osanalytics"];
    v11 = +[OSASystemConfiguration sharedInstance];
    if ([v11 appleInternal])
    {
      v12 = [v10 BOOLForKey:@"includeTailspinWithGPUEvents"];

      if (v12)
      {
        if (qword_100054078 != -1)
        {
          sub_10002FF84();
        }

        v13 = [(OSAGPUEventReport *)v6 reportNamePrefix];
        v14 = *&v6->OSAReport_opaque[v8];
        v15 = OSADateFormat();
        v16 = [NSString stringWithFormat:@"%@-%@.tailspin", v13, v15];

        v17 = [@"/var/root/Library/Logs/tailspin" stringByAppendingPathComponent:v16];
        tailspinPath = v6->_tailspinPath;
        v6->_tailspinPath = v17;

        v19 = qword_100054070;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10000FBA4;
        block[3] = &unk_100045258;
        v22 = v6;
        dispatch_async(v19, block);

LABEL_12:
        goto LABEL_13;
      }
    }

    else
    {
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10002FF3C();
    }

    goto LABEL_12;
  }

LABEL_13:

  return v6;
}

- (id)reportNamePrefix
{
  v2 = [(NSDictionary *)self->_event objectForKeyedSubscript:@"process_name"];
  v3 = @"unknown";
  if (v2)
  {
    v3 = v2;
  }

  v4 = [NSString stringWithFormat:@"gpuEvent-%@", v3];

  return v4;
}

- (void)generateLogAtLevel:(BOOL)a3 withBlock:(id)a4
{
  v9 = a4;
  if (self->_tailspinPath)
  {
    v5 = [(NSDictionary *)self->_event mutableCopy];
    [(NSDictionary *)v5 setObject:self->_tailspinPath forKeyedSubscript:@"tailspin_pathname"];
    event = self->_event;
    self->_event = v5;
  }

  v7 = [(OSAGPUEventReport *)self problemType];
  v8 = [OSALog commonFieldsForBody:v7];
  v9[2](v9, v8);

  v9[2](v9, self->_event);
}

@end