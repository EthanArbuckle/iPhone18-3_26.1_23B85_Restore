@interface PHHIDEventMonitor
+ (id)HIDEventMonitor;
- (PHHIDEventMonitor)init;
- (id)stringFromIOHIDUsage:(int64_t)usage;
- (id)stringFromIOHIDUsagePage:(int64_t)page;
- (void)dealloc;
- (void)handleKeyboardEvent:(__IOHIDEvent *)event;
- (void)setHIDEventSystemClient:(__IOHIDEventSystemClient *)client;
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
  block[2] = sub_1000167D4;
  v6 = block[3] = &unk_10010AE30;
  hIDEventSystemClient = [(PHHIDEventMonitor *)self HIDEventSystemClient];
  v3 = v6;
  dispatch_async(v3, block);

  v4.receiver = self;
  v4.super_class = PHHIDEventMonitor;
  [(PHHIDEventMonitor *)&v4 dealloc];
}

- (void)start
{
  dispatchQueue = [(PHHIDEventMonitor *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000168AC;
  block[3] = &unk_10010AD48;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)stop
{
  dispatchQueue = [(PHHIDEventMonitor *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016AE4;
  block[3] = &unk_10010AD48;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)setHIDEventSystemClient:(__IOHIDEventSystemClient *)client
{
  HIDEventSystemClient = self->_HIDEventSystemClient;
  if (HIDEventSystemClient != client)
  {
    if (HIDEventSystemClient)
    {
      dispatchQueue = [(PHHIDEventMonitor *)self dispatchQueue];
      IOHIDEventSystemClientUnscheduleFromDispatchQueue();

      CFRelease(self->_HIDEventSystemClient);
    }

    self->_HIDEventSystemClient = client;
  }
}

- (void)handleKeyboardEvent:(__IOHIDEvent *)event
{
  IntegerValue = IOHIDEventGetIntegerValue();
  v5 = IOHIDEventGetIntegerValue();
  v6 = IOHIDEventGetIntegerValue();
  v7 = [(PHHIDEventMonitor *)self stringFromIOHIDUsagePage:IntegerValue];
  v8 = [(PHHIDEventMonitor *)self stringFromIOHIDUsage:v5];
  if (v7)
  {
    v9 = sub_100003B9C();
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

- (id)stringFromIOHIDUsage:(int64_t)usage
{
  if (usage > 178)
  {
    if (usage <= 183)
    {
      v3 = @"kHIDUsage_Tfon_PhoneKey5";
      v17 = @"kHIDUsage_Tfon_PhoneKey6";
      v18 = @"kHIDUsage_Tfon_PhoneKey7";
      if (usage != 183)
      {
        v18 = 0;
      }

      if (usage != 182)
      {
        v17 = v18;
      }

      if (usage != 181)
      {
        v3 = v17;
      }

      v6 = @"kHIDUsage_Tfon_PhoneKey3";
      v19 = @"kHIDUsage_Tfon_PhoneKey4";
      if (usage != 180)
      {
        v19 = 0;
      }

      if (usage != 179)
      {
        v6 = v19;
      }

      v9 = usage <= 180;
    }

    else
    {
      v3 = @"kHIDUsage_Tfon_PhoneKeyPound";
      v10 = @"kHIDUsage_Csmr_VolumeIncrement";
      v11 = @"kHIDUsage_Csmr_VolumeDecrement";
      if (usage != 234)
      {
        v11 = 0;
      }

      if (usage != 233)
      {
        v10 = v11;
      }

      if (usage != 187)
      {
        v3 = v10;
      }

      v6 = @"kHIDUsage_Tfon_PhoneKey8";
      v12 = @"kHIDUsage_Tfon_PhoneKey9";
      v13 = @"kHIDUsage_Tfon_PhoneKeyStar";
      if (usage != 186)
      {
        v13 = 0;
      }

      if (usage != 185)
      {
        v12 = v13;
      }

      if (usage != 184)
      {
        v6 = v12;
      }

      v9 = usage <= 186;
    }
  }

  else if (usage <= 46)
  {
    v3 = @"kHIDUsage_Tfon_Drop";
    v14 = @"kHIDUsage_KeyboardDeleteOrBackspace";
    v15 = @"kHIDUsage_Tfon_Ring";
    if (usage != 46)
    {
      v15 = 0;
    }

    if (usage != 42)
    {
      v14 = v15;
    }

    if (usage != 38)
    {
      v3 = v14;
    }

    v6 = @"kHIDUsage_Tfon_HookSwitch";
    v16 = @"kHIDUsage_Tfon_Flash";
    if (usage != 33)
    {
      v16 = 0;
    }

    if (usage != 32)
    {
      v6 = v16;
    }

    v9 = usage <= 37;
  }

  else
  {
    v3 = @"kHIDUsage_Tfon_PhoneKey0";
    v4 = @"kHIDUsage_Tfon_PhoneKey1";
    v5 = @"kHIDUsage_Tfon_PhoneKey2";
    if (usage != 178)
    {
      v5 = 0;
    }

    if (usage != 177)
    {
      v4 = v5;
    }

    if (usage != 176)
    {
      v3 = v4;
    }

    v6 = @"kHIDUsage_Tfon_PhoneMute";
    v7 = @"kHIDUsage_Csmr_Power";
    v8 = @"kHIDUsage_Csmr_Menu";
    if (usage != 64)
    {
      v8 = 0;
    }

    if (usage != 48)
    {
      v7 = v8;
    }

    if (usage != 47)
    {
      v6 = v7;
    }

    v9 = usage <= 175;
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

- (id)stringFromIOHIDUsagePage:(int64_t)page
{
  if ((page - 7) > 5)
  {
    return 0;
  }

  else
  {
    return *(&off_10010AE90 + page - 7);
  }
}

@end