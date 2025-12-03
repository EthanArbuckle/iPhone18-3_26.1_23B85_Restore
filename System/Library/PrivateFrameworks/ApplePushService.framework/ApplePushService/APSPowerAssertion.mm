@interface APSPowerAssertion
- (APSPowerAssertion)initWithName:(id)name category:(int)category holdDuration:(double)duration;
- (void)_clear;
- (void)_hold;
- (void)_onQueue_clear;
- (void)_onQueue_hold;
- (void)dealloc;
@end

@implementation APSPowerAssertion

- (APSPowerAssertion)initWithName:(id)name category:(int)category holdDuration:(double)duration
{
  nameCopy = name;
  v24.receiver = self;
  v24.super_class = APSPowerAssertion;
  v10 = [(APSPowerAssertion *)&v24 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_name, name);
    v11->_timeout = duration;
    v11->_powerAssertion = 0;
    v12 = dispatch_queue_create([nameCopy UTF8String], 0);
    queue = v11->_queue;
    v11->_queue = v12;

    v11->_category = category;
    if (duration > 0.0)
    {
      v14 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
      timer = v11->_timer;
      v11->_timer = v14;

      dispatch_source_set_timer(v11->_timer, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
      objc_initWeak(&location, v11);
      v16 = v11->_timer;
      v18 = _NSConcreteStackBlock;
      v19 = 3221225472;
      v20 = sub_1000BBD94;
      v21 = &unk_1001886D8;
      objc_copyWeak(&v22, &location);
      dispatch_source_set_event_handler(v16, &v18);
      dispatch_resume(v11->_timer);
      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
    }

    [(APSPowerAssertion *)v11 _hold:v18];
  }

  return v11;
}

- (void)dealloc
{
  [(APSPowerAssertion *)self _clear];
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
  }

  v4.receiver = self;
  v4.super_class = APSPowerAssertion;
  [(APSPowerAssertion *)&v4 dealloc];
}

- (void)_hold
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BBE9C;
  block[3] = &unk_100186D90;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_onQueue_hold
{
  p_powerAssertion = &self->_powerAssertion;
  powerAssertion = self->_powerAssertion;
  v5 = +[APSLog power];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (powerAssertion)
  {
    if (v6)
    {
      sub_10010D694(self);
    }
  }

  else
  {
    if (v6)
    {
      sub_10010D6FC(self);
    }

    v23[0] = @"AssertType";
    v23[1] = @"AssertName";
    name = self->_name;
    v24[0] = @"NoIdleSleepAssertion";
    v24[1] = name;
    v23[2] = @"TimeoutSeconds";
    v8 = [NSNumber numberWithDouble:self->_timeout];
    v24[2] = v8;
    v23[3] = @"Category";
    v9 = [NSNumber numberWithUnsignedInt:self->_category];
    v24[3] = v9;
    v5 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:4];

    v10 = IOPMAssertionCreateWithProperties(v5, p_powerAssertion);
    if (v10)
    {
      v11 = v10;
      *p_powerAssertion = 0;
      v12 = +[APSLog power];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v16 = self->_name;
        v17 = 138412802;
        selfCopy = self;
        v19 = 2112;
        v20 = v16;
        v21 = 1024;
        v22 = v11;
        _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "%@: Failed to create power assertion %@ result = %d", &v17, 0x1Cu);
      }
    }
  }

  if (self->_timer)
  {
    v13 = +[APSLog power];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_10010D764(self, v13);
    }

    timer = self->_timer;
    v15 = dispatch_time(0, (self->_timeout * 1000000000.0));
    dispatch_source_set_timer(timer, v15, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  }
}

- (void)_clear
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BC168;
  block[3] = &unk_100186D90;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_onQueue_clear
{
  if (self->_powerAssertion)
  {
    v3 = +[APSLog power];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_10010D7F8(self);
    }

    v4 = +[APSWakeStateManager wakeStateManager];
    [v4 acknowledgePowerChangeEvent];

    if (self->_timer)
    {
      v5 = +[APSLog power];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        sub_10010D860(self);
      }

      dispatch_source_set_timer(self->_timer, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    }

    IOPMAssertionRelease(self->_powerAssertion);
    self->_powerAssertion = 0;
  }
}

@end