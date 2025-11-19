@interface PHHIDEventMonitor
+ (id)HIDEventMonitor;
- (PHHIDEventMonitor)init;
- (id)stringFromIOHIDUsage:(int64_t)a3;
- (id)stringFromIOHIDUsagePage:(int64_t)a3;
- (void)dealloc;
- (void)handleKeyboardEvent:(__IOHIDEvent *)a3;
- (void)setHIDEventSystemClient:(__IOHIDEventSystemClient *)a3;
- (void)start;
- (void)stop;
@end

@implementation PHHIDEventMonitor

+ (id)HIDEventMonitor
{
  v2 = objc_alloc_init(PHHIDEventMonitor);

  return v2;
}

- (PHHIDEventMonitor)init
{
  v7.receiver = self;
  v7.super_class = PHHIDEventMonitor;
  v2 = [(PHHIDEventMonitor *)&v7 init];
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v4 = dispatch_queue_create("PHHIDEventMonitor.serialQueue", v3);
  dispatchQueue = v2->_dispatchQueue;
  v2->_dispatchQueue = v4;

  v2->_HIDEventSystemClient = 0;
  return v2;
}

- (void)dealloc
{
  [(PHHIDEventMonitor *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __28__PHHIDEventMonitor_dealloc__block_invoke;
  v6 = block[3] = &unk_1002852B8;
  v7 = [(PHHIDEventMonitor *)self HIDEventSystemClient];
  v3 = v6;
  dispatch_async(v3, block);

  v4.receiver = self;
  v4.super_class = PHHIDEventMonitor;
  [(PHHIDEventMonitor *)&v4 dealloc];
}

void __28__PHHIDEventMonitor_dealloc__block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    IOHIDEventSystemClientUnscheduleFromDispatchQueue();
    v2 = *(a1 + 40);

    CFRelease(v2);
  }
}

- (void)start
{
  v3 = [(PHHIDEventMonitor *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __26__PHHIDEventMonitor_start__block_invoke;
  block[3] = &unk_100284FD0;
  block[4] = self;
  dispatch_async(v3, block);
}

id __26__PHHIDEventMonitor_start__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) HIDEventSystemClient];
  if (!result)
  {
    result = IOHIDEventSystemClientCreate();
    if (result)
    {
      v3 = result;
      v5[0] = @"DeviceUsagePage";
      v5[1] = @"DeviceUsage";
      v6[0] = &off_1002953C0;
      v6[1] = &off_1002953D8;
      [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
      IOHIDEventSystemClientSetMatching();
      IOHIDEventSystemClientRegisterEventBlock();
      v4 = [*(a1 + 32) dispatchQueue];
      IOHIDEventSystemClientScheduleWithDispatchQueue();

      return [*(a1 + 32) setHIDEventSystemClient:v3];
    }
  }

  return result;
}

void __26__PHHIDEventMonitor_start__block_invoke_72(id a1, void *a2, void *a3, void *a4, __IOHIDEvent *a5)
{
  if (a2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = a2;
      if (IOHIDEventGetType() == 3)
      {
        [v9 handleKeyboardEvent:a5];
      }

      v8 = v9;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }
}

- (void)stop
{
  v3 = [(PHHIDEventMonitor *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __25__PHHIDEventMonitor_stop__block_invoke;
  block[3] = &unk_100284FD0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)setHIDEventSystemClient:(__IOHIDEventSystemClient *)a3
{
  HIDEventSystemClient = self->_HIDEventSystemClient;
  if (HIDEventSystemClient != a3)
  {
    if (HIDEventSystemClient)
    {
      v6 = [(PHHIDEventMonitor *)self dispatchQueue];
      IOHIDEventSystemClientUnscheduleFromDispatchQueue();

      CFRelease(self->_HIDEventSystemClient);
    }

    self->_HIDEventSystemClient = a3;
  }
}

- (void)handleKeyboardEvent:(__IOHIDEvent *)a3
{
  IntegerValue = IOHIDEventGetIntegerValue();
  v5 = IOHIDEventGetIntegerValue();
  v6 = IOHIDEventGetIntegerValue();
  v7 = [(PHHIDEventMonitor *)self stringFromIOHIDUsagePage:IntegerValue];
  v8 = [(PHHIDEventMonitor *)self stringFromIOHIDUsage:v5];
  if (v7)
  {
    v9 = PHDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134219010;
      v11 = IntegerValue;
      v12 = 2048;
      v13 = v5;
      v14 = 2048;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%li - %li keyDown: %li (%@ - %@)", &v10, 0x34u);
    }
  }
}

- (id)stringFromIOHIDUsage:(int64_t)a3
{
  if (a3 > 178)
  {
    if (a3 <= 183)
    {
      v3 = @"kHIDUsage_Tfon_PhoneKey5";
      v17 = @"kHIDUsage_Tfon_PhoneKey6";
      v18 = @"kHIDUsage_Tfon_PhoneKey7";
      if (a3 != 183)
      {
        v18 = 0;
      }

      if (a3 != 182)
      {
        v17 = v18;
      }

      if (a3 != 181)
      {
        v3 = v17;
      }

      v6 = @"kHIDUsage_Tfon_PhoneKey3";
      v19 = @"kHIDUsage_Tfon_PhoneKey4";
      if (a3 != 180)
      {
        v19 = 0;
      }

      if (a3 != 179)
      {
        v6 = v19;
      }

      v9 = a3 <= 180;
    }

    else
    {
      v3 = @"kHIDUsage_Tfon_PhoneKeyPound";
      v10 = @"kHIDUsage_Csmr_VolumeIncrement";
      v11 = @"kHIDUsage_Csmr_VolumeDecrement";
      if (a3 != 234)
      {
        v11 = 0;
      }

      if (a3 != 233)
      {
        v10 = v11;
      }

      if (a3 != 187)
      {
        v3 = v10;
      }

      v6 = @"kHIDUsage_Tfon_PhoneKey8";
      v12 = @"kHIDUsage_Tfon_PhoneKey9";
      v13 = @"kHIDUsage_Tfon_PhoneKeyStar";
      if (a3 != 186)
      {
        v13 = 0;
      }

      if (a3 != 185)
      {
        v12 = v13;
      }

      if (a3 != 184)
      {
        v6 = v12;
      }

      v9 = a3 <= 186;
    }
  }

  else if (a3 <= 46)
  {
    v3 = @"kHIDUsage_Tfon_Drop";
    v14 = @"kHIDUsage_KeyboardDeleteOrBackspace";
    v15 = @"kHIDUsage_Tfon_Ring";
    if (a3 != 46)
    {
      v15 = 0;
    }

    if (a3 != 42)
    {
      v14 = v15;
    }

    if (a3 != 38)
    {
      v3 = v14;
    }

    v6 = @"kHIDUsage_Tfon_HookSwitch";
    v16 = @"kHIDUsage_Tfon_Flash";
    if (a3 != 33)
    {
      v16 = 0;
    }

    if (a3 != 32)
    {
      v6 = v16;
    }

    v9 = a3 <= 37;
  }

  else
  {
    v3 = @"kHIDUsage_Tfon_PhoneKey0";
    v4 = @"kHIDUsage_Tfon_PhoneKey1";
    v5 = @"kHIDUsage_Tfon_PhoneKey2";
    if (a3 != 178)
    {
      v5 = 0;
    }

    if (a3 != 177)
    {
      v4 = v5;
    }

    if (a3 != 176)
    {
      v3 = v4;
    }

    v6 = @"kHIDUsage_Tfon_PhoneMute";
    v7 = @"kHIDUsage_Csmr_Power";
    v8 = @"kHIDUsage_Csmr_Menu";
    if (a3 != 64)
    {
      v8 = 0;
    }

    if (a3 != 48)
    {
      v7 = v8;
    }

    if (a3 != 47)
    {
      v6 = v7;
    }

    v9 = a3 <= 175;
  }

  if (v9)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

- (id)stringFromIOHIDUsagePage:(int64_t)a3
{
  if ((a3 - 7) > 5)
  {
    return 0;
  }

  else
  {
    return *(&off_100285FD0 + a3 - 7);
  }
}

@end