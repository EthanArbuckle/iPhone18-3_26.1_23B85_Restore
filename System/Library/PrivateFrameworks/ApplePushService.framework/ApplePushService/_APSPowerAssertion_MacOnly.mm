@interface _APSPowerAssertion_MacOnly
+ (void)_lingerAfterLastPowerAssertionIsReleased;
+ (void)prepareForWake;
+ (void)setUseInteractivePowerAssertion:(BOOL)assertion;
- (_APSPowerAssertion_MacOnly)initWithName:(id)name category:(int)category holdDuration:(double)duration;
- (void)_clear;
- (void)_hold;
- (void)clear;
- (void)dealloc;
- (void)hold;
@end

@implementation _APSPowerAssertion_MacOnly

- (_APSPowerAssertion_MacOnly)initWithName:(id)name category:(int)category holdDuration:(double)duration
{
  nameCopy = name;
  v22.receiver = self;
  v22.super_class = _APSPowerAssertion_MacOnly;
  v10 = [(_APSPowerAssertion_MacOnly *)&v22 init];
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
      v16 = [CUTWeakReference weakRefWithObject:v11];
      v17 = v11->_timer;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10006FAA0;
      handler[3] = &unk_100186D90;
      v21 = v16;
      v18 = v16;
      dispatch_source_set_event_handler(v17, handler);
      dispatch_resume(v11->_timer);
    }
  }

  return v11;
}

- (void)dealloc
{
  queue = self->_queue;
  if (queue)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006FB8C;
    block[3] = &unk_100186D90;
    block[4] = self;
    dispatch_sync(queue, block);
    timer = self->_timer;
    if (timer)
    {
      dispatch_source_cancel(timer);
    }
  }

  v5.receiver = self;
  v5.super_class = _APSPowerAssertion_MacOnly;
  [(_APSPowerAssertion_MacOnly *)&v5 dealloc];
}

- (void)hold
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006FC08;
  block[3] = &unk_100186D90;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_hold
{
  p_powerAssertion = &self->_powerAssertion;
  powerAssertion = self->_powerAssertion;
  v5 = +[APSLog power];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (powerAssertion)
  {
    if (v6)
    {
      sub_10010AA44(self);
    }
  }

  else
  {
    if (v6)
    {
      sub_10010AAB4(self);
    }

    v27[0] = @"AssertType";
    v27[1] = @"AssertName";
    name = self->_name;
    v28[0] = off_1001BBFE0;
    v28[1] = name;
    v27[2] = @"TimeoutSeconds";
    v8 = [NSNumber numberWithDouble:self->_timeout];
    v28[2] = v8;
    v27[3] = @"Category";
    v9 = [NSNumber numberWithUnsignedInt:self->_category];
    v28[3] = v9;
    v5 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:4];

    v10 = IOPMAssertionCreateWithProperties(v5, p_powerAssertion);
    if (v10)
    {
      v11 = v10;
      *p_powerAssertion = 0;
      v12 = +[APSLog power];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v20 = self->_name;
        v21 = 138412802;
        selfCopy = self;
        v23 = 2112;
        v24 = v20;
        v25 = 1024;
        v26 = v11;
        _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "%@: Failed to create power assertion %@ result = %d", &v21, 0x1Cu);
      }
    }

    else if (qword_1001BF748 != self)
    {
      atomic_fetch_add(&qword_1001BF750, 1uLL);
    }

    v13 = +[APSLog power];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_10010AB34();
    }
  }

  if (self->_timer)
  {
    v14 = +[APSLog power];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_10010ABB8(self);
    }

    timer = self->_timer;
    v16 = dispatch_time(0, (self->_timeout * 1000000000.0));
    dispatch_source_set_timer(timer, v16, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  }

  if (off_1001BBFE0 == @"InteractivePushServiceTask")
  {
    v17 = +[APSWakeStateManager wakeStateManager];
    isGoingToSleep = [v17 isGoingToSleep];

    if (isGoingToSleep)
    {
      v19 = +[APSLog power];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_10010AC38(self);
      }

      byte_1001BF758 = 1;
    }
  }
}

+ (void)prepareForWake
{
  if (byte_1001BF758 == 1)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    if (v2 - *&qword_1001BF760 >= 20.0)
    {
      v3 = +[APSLog power];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        sub_10010AD28();
      }
    }

    else
    {
      ++qword_1001BF768;
      v3 = +[APSLog power];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        sub_10010AD98();
      }
    }

    byte_1001BF758 = 0;
    qword_1001BF760 = 0;
  }

  else if (qword_1001BF768)
  {
    v4 = +[APSLog power];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_10010ACB8();
    }

    qword_1001BF768 = 0;
  }
}

+ (void)setUseInteractivePowerAssertion:(BOOL)assertion
{
  assertionCopy = assertion;
  if (assertion)
  {
    v5 = @"InteractivePushServiceTask";
  }

  else
  {
    v5 = @"ApplePushServiceTask";
  }

  v6 = +[APSLog power];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10010AE1C();
  }

  if (v5 != off_1001BBFE0)
  {
    v7 = qword_1001BF768;
    v8 = +[APSLog power];
    v9 = v8;
    if (v7 >= 0xB && assertionCopy)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: Sleep reverted too often, ignoring request to change power assertion type", &v10, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        sub_10010AEBC();
      }

      off_1001BBFE0 = v5;
    }
  }
}

+ (void)_lingerAfterLastPowerAssertionIsReleased
{
  +[NSDate timeIntervalSinceReferenceDate];
  v3 = v2;
  v4 = *&qword_1001BF778;
  if (qword_1001BF770 != -1)
  {
    sub_10010AF2C();
  }

  if (([qword_1001BF748 isClear] & 1) != 0 || (v5 = v3 - v4, v3 - v4 >= 0.8))
  {
    [qword_1001BF748 _hold];
    qword_1001BF778 = *&v3;
  }

  else
  {
    v6 = +[APSLog power];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10010AF40();
    }
  }
}

- (void)clear
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100070378;
  block[3] = &unk_100186D90;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_clear
{
  if (self->_powerAssertion)
  {
    v3 = +[APSLog power];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_10010AFC4(self);
    }

    if (qword_1001BF748 == self)
    {
      if (qword_1001BF750)
      {
        v5 = +[APSLog power];
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          sub_10010B0B8(self);
        }
      }

      else
      {
        if (byte_1001BF758 == 1 && off_1001BBFE0 == @"InteractivePushServiceTask")
        {
          v6 = +[APSLog power];
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
          {
            sub_10010B13C(self);
          }

          +[NSDate timeIntervalSinceReferenceDate];
          qword_1001BF760 = v7;
        }

        [objc_opt_class() setUseInteractivePowerAssertion:0];
        v5 = +[APSWakeStateManager wakeStateManager];
        [v5 acknowledgePowerChangeEvent];
      }
    }

    else if (atomic_fetch_add(&qword_1001BF750, 0xFFFFFFFFFFFFFFFFLL) == 1)
    {
      v4 = +[APSLog power];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        sub_10010B034(self);
      }

      [objc_opt_class() _lingerAfterLastPowerAssertionIsReleased];
    }

    if (self->_timer)
    {
      v8 = +[APSLog power];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        sub_10010B1AC(self);
      }

      dispatch_source_set_timer(self->_timer, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    }

    IOPMAssertionRelease(self->_powerAssertion);
    self->_powerAssertion = 0;
  }
}

@end